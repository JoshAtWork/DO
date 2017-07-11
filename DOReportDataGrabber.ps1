<# Formats database-acquired values for the monthly Dissolved Oxygen report. Please read the directions in the top paragraph.

    Joshua Clark
    July 10, 2017

#>

# Change these strings to the date range to acquire data from:
$startDate = 
$endDate = 
# Change this string to the output file's destination and filename:
$output = 'C:\Users\clarkj\Desktop\StuffThatWontWorkOnVdrive\DO\June2017DOData.xlsx'



# Acquire data
# Only interested in datapoints when the generator is on. Pretty sure that just means non-zero readings...


# Split up datetime column -> Date  Time


# Convert time to 24hr


# Turn 00:00 readings to 23:59 on the previous day
<#
for(each line of csv)
{
    if(time -eq 00:00)
    {
        time = 23:59
        if(day -eq 1)
        {
            if(month -eq 1)
            {
                month = 12
            }
            else
            {
                month = month - 1
            }
            
            day = lastdayofprevmonth
        }
        else
        {
            day = day - 1
        }
    }
}
#>