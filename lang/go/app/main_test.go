package main

import (
	"testing"
)

func TestMain(t *testing.T) {
	var (
		in       = 7
		expected = 7
	)
	actual := in
	if actual != expected {
		t.Errorf("equal(%d) = %d; expected %d", in, actual, expected)
	}
}
