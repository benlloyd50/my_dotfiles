polybar-msg cmd quit

echo "---" | tee -a /tmp/custom1.log
polybar custom1 2>&1 | tee -a /tmp/custom1.log & disown
echo "Bars launched..."
