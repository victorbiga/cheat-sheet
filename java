
package com.victorbiga.javacourse.lesson2

import org.junit.Test;

import org.junit.Assert.asserEquals;

public class PersonTest {

	@Test
	public void shouldRetunrHelloWorld(){

		Person victor = new Person ();
		assertEquals("Hello World",victor.helloWorld() );
	}
}
