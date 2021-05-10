<?php

//Api.php

class API
{
	private $connect;

	function __construct()
	{
		$this->database_connection();
	}

	function database_connection()
	{
		$this->connect = new PDO("mysql:host=localhost;dbname=blog", "root", "");
	}

	function fetch_all()
	{
		$query = "SELECT * FROM posts ORDER BY id";
		$statement = $this->connect->prepare($query);
		if($statement->execute())
		{
			while($row = $statement->fetch(PDO::FETCH_ASSOC))
			{
				$data[] = $row;
			}
			return $data;
		}
	}

	function insert()
	{
		if(isset($_POST["title"]))
		{
			$form_data = array(
				':title'		=>	$_POST["title"],
				':content'		=>	$_POST["content"]
			);
			$query = "INSERT INTO posts 
			(title, content) VALUES 
			(:title, :content)";
			$statement = $this->connect->prepare($query);
			if($statement->execute($form_data))
			{
				$data[] = array(
					'success'	=>	'1'
				);
			}
			else
			{
				$data[] = array(
					'success'	=>	'0'
				);
			}
		}
		else
		{
			$data[] = array(
				'success'	=>	'0'
			);
		}
		return $data;
	}

	function fetch_single($id)
	{
		$query = "SELECT * FROM posts WHERE id='".$id."'";
		$statement = $this->connect->prepare($query);
		if($statement->execute())
		{
			foreach($statement->fetchAll() as $row)
			{
				$data['title'] = $row['title'];
				$data['content'] = $row['content'];
			}
			return $data;
		}
	}

	function update()
	{
		if(isset($_POST["title"]))
		{
			$form_data = array(
				':title'	=>	$_POST['title'],
				':content'	=>	$_POST['content'],
				':id'			=>	$_POST['id']
			);
			$query = " UPDATE posts 
			SET title = :title, content = :content 
			WHERE id = :id";
			$statement = $this->connect->prepare($query);
			if($statement->execute($form_data))
			{
				$data[] = array(
					'success'	=>	'1'
				);
			}
			else
			{
				$data[] = array(
					'success'	=>	'0'
				);
			}
		}
		else
		{
			$data[] = array(
				'success'	=>	'0'
			);
		}
		return $data;
	}
	function delete($id)
	{
		$query = "DELETE FROM posts WHERE id = '".$id."'";
		$statement = $this->connect->prepare($query);
		if($statement->execute())
		{
			$data[] = array(
				'success'	=>	'1'
			);
		}
		else
		{
			$data[] = array(
				'success'	=>	'0'
			);
		}
		return $data;
	}
}

?>