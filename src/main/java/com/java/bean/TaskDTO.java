package com.java.bean;

public class TaskDTO {
	private String taskName;
	private String developerName;
	private String email;
	private String description;
	private String status;
	private String timeLine;

	public String getTaskName() {
		return taskName;
	}

	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}

	public String getDeveloperName() {
		return developerName;
	}

	public void setDeveloperName(String developerName) {
		this.developerName = developerName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getTimeLine() {
		return timeLine;
	}

	public void setTimeLine(String timeLine) {
		this.timeLine = timeLine;
	}

}
