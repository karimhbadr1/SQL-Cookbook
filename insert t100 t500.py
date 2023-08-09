with open('insert_statement_100.sql', 'w') as f:
    for i in range(1, 101):
        f.write(f"INSERT INTO t100 VALUES ({i});\n")

with open('insert_statement_500.sql', 'w') as f:
    for i in range(1, 501):
        f.write(f"INSERT INTO t500 VALUES ({i});\n")
