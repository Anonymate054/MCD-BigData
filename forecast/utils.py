

import pandas as pd
from sqlalchemy import create_engine

def extractData_fromMariaDb():
    connection_string = "mysql+pymysql://big_data_user:Example123@34.132.226.181:3306/QQP"
    engine = create_engine(connection_string)

    with engine.connect() as conn:
        df = pd.read_sql_table("aggregated", conn)

    df['fecha'] = pd.to_datetime(df['fecha'])
    df_agg = df.groupby('fecha')['precio_avg'].sum().reset_index()
    df_agg.rename(columns={'fecha': 'ds', 'precio_avg': 'y'}, inplace=True)
    df_agg = df_agg[df_agg['ds'] < '2023-08-01']

    return df_agg
