import cx_Oracle
import plotly.offline as py
import plotly.graph_objs as go
 
 
dsn_tns = cx_Oracle.makedsn('DESKTOP-QCKCHB8', '1521', service_name='XE')
connection = cx_Oracle.connect(user='Demaga', password='31415Bog', dsn=dsn_tns)


##################################################################
# TOTAL NUMBER OF CLIENTS BY EDUCATION - BAR CHART
##################################################################
cursor = connection.cursor()
 
cursor.execute("""
SELECT 
    education_type_name,
    COUNT(education_type_name) as education_count
FROM
    customer
GROUP BY
    education_type_name""")
 

degrees = []
count = []
 

print("\nClients by education level")
for row in cursor:
    print(row[0] + ": " + str(row[1]))
    degrees.append(row[0])
    count.append(row[1])

 
data = [go.Bar(
            x=degrees,
            y=count
    )]
 
layout = go.Layout(
    title='Total # of clients with a corresponding degree',
    xaxis=dict(
        title='Degree',
        titlefont=dict(
            family='Courier New, monospace',
            size=18,
            color='#7f7f7f'
        )
    ),
    yaxis=dict(
        title='# of clients',
        rangemode='nonnegative',
        autorange=True,
        titlefont=dict(
            family='Courier New, monospace',
            size=18,
            color='#7f7f7f'
        )
    )
)
fig = go.Figure(data=data, layout=layout)
 
customers_orders_sum = py.plot(fig)
 
 
##################################################################
# CAPITAL LOSS BY SEX - PIE CHART
##################################################################
cursor.execute("""
SELECT
    sex,
    SUM(capital_loss)
FROM (
    SELECT
        i.capital_loss,
        c.sex,
        c.policy_number
    FROM
        incident i,
        customer c
    WHERE
        c.policy_number = i.policy_number
)
GROUP BY
    sex
""")
 

sex = []
total_loss = []
 

print("\nCapital loss by sex")
for row in cursor:
    print(row[0] + ": " + str(row[1]))
    sex.append(row[0])
    total_loss.append(abs(row[1]))

 
data = [go.Pie(
            labels=sex,
            values=total_loss
    )]
 
layout = go.Layout(
    title='Total amount of clients\' capital loss by sex',
    xaxis=dict(
        title='Degree',
        titlefont=dict(
            family='Courier New, monospace',
            size=18,
            color='#7f7f7f'
        )
    ),
    yaxis=dict(
        title='# of clients',
        rangemode='nonnegative',
        autorange=True,
        titlefont=dict(
            family='Courier New, monospace',
            size=18,
            color='#7f7f7f'
        )
    )
)
fig = go.Figure(data=data, layout=layout)
 
capital_loss_by_sex = py.plot(fig)
 



##################################################################
# CAPITAL LOSS BY SEX - PIE CHART
##################################################################
cursor.execute("""
SELECT 
    COUNT(incident_date),
    incident_date
FROM 
    incident
GROUP BY
    incident_date
""")
 

incident_dates = []
number_of_incidents = []
 

print("\nDynamic of incidents")
for row in cursor:
    incident_date = row[1]
    incident_date = incident_date.date()
    print(str(incident_date) + ": " + str(row[0]))
    incident_dates.append(incident_date)
    number_of_incidents.append(row[0])

incident_dates.sort() 

incidents_by_date = go.Scatter(
    x=incident_dates,
    y=number_of_incidents,
    mode='lines+markers'
)
data = [incidents_by_date]
layout = go.Layout(title='Dynamic of the amount of incidents by day',
    xaxis=dict(
        range=[incident_dates[0], incident_dates[-1]],
        title='Day',
        titlefont=dict(
            family='Courier New, monospace',
            size=18,
            color='#7f7f7f'
        )
    ),
    yaxis=dict(
        title='# of incidents',
        rangemode='nonnegative',
        autorange=True,
        titlefont=dict(
            family='Courier New, monospace',
            size=18,
            color='#7f7f7f'
        )
    ))
fig = go.Figure(data=data, layout=layout)
dynamic_of_incidents = py.plot(fig)