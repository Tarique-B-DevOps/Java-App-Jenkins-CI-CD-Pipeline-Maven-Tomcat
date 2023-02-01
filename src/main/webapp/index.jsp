<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Web Calculator</title>
<style>
  body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-color: #000000;
    font-family: Arial, sans-serif;
  }

  form {
    display: flex;
    flex-direction: column;
    padding: 30px;
    color: #f2f2f2;
    background-color: #1f1e1e;
    border-radius: 20px;
  }

  input[type="text"] {
    border: 2px black;
    border-radius: 4px;
    padding: 20px;
    margin: 20px 0;
    font-size: 1rem;
    color: white;
    background-color: #404040;
    border-radius: 10px;
  }

  select {
    border: 2px black;
    border-radius: 4px;
    padding: 20px;
    margin: 20px 0;
    font-size: 1rem;
    color: white;
    background-color: #404040;
    border-radius: 10px;
  }

  input[type="submit"] {
    padding: 20px 40px;
    background-color: blue;
    color: white;
    border: none;
    border-radius: 10px;
    font-size: 1.2rem;
    cursor: pointer;
  }

  input[type="submit"]:hover {
    background-color: #0077be;
  }
</style>
</head>
<body>
  <form action="calculate" method="post">
    <h2>Web Calculator</h2>
    <label>First Number:</label>
    <input type="text" name="firstNumber" required><br>
    <label>Second Number:</label>
    <input type="text" name="secondNumber" required><br>
    <label>Operator:</label>
    <select name="operator" required>
      <option value="+">+</option>
      <option value="-">-</option>
      <option value="*">*</option>
      <option value="/">/</option>
    </select><br>
    <input type="submit" value="Calculate">
  </form>
</body>
</html>
