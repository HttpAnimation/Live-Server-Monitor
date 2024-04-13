#!/bin/bash

# Function to generate HTML header
generate_header() {
    echo "<!DOCTYPE html>
<html>
<head>
    <title>Live Server Monitor</title>
    <style>
        body {
            font-family: monospace;
            background-color: #000;
            color: #00ff00;
            padding: 20px;
        }
        pre {
            white-space: pre-wrap;
            word-wrap: break-word;
            overflow: auto;
            height: 80vh;
            border: 2px solid #00ff00;
            padding: 10px;
            font-size: 14px;
            line-height: 1.2;
        }
    </style>
</head>
<body>
    <pre>"
}

# Function to generate HTML footer
generate_footer() {
    echo "</pre>
</body>
</html>"
}

# Main function to continuously monitor server and update HTML
monitor_server() {
    generate_header > index.html
    while true; do
        # Command to monitor server (replace with your own command)
        # Example command: ping -c 5 google.com
        # You can replace it with any command or script that monitors your server
        output=$(ping -c 5 google.com)

        # Append output to HTML file
        echo "$output" >> index.html

        # Sleep for 5 seconds before next check
        sleep 5
    done
    generate_footer >> index.html
}

# Call the main function to start monitoring the server
monitor_server
