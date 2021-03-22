game.ReplicatedStorage.Assets.UserRemotes.ChatRemote.OnClientEvent:Connect(function(text, color)
	wait(0.1)
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = text;
		Color = color;
		Font = Enum.Font.SourceSansBold;
		FontSize = Enum.FontSize.Size18;
		TextStrokeTransparency = 0.75;
	})
end)
