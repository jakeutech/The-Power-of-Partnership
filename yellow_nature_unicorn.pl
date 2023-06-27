#!/usr/bin/perl
# File: The Power of Partnership

# The Power of Partnership is a Perl program written to explore the potential of using
# collaborative forces to achieve success.

# This program will demonstrate how to solve complex problems using a combination
# of individual programming skills combined with the power of partnership.

# First, create a subroutine for each of the tasks that need to be accomplished. 
# This will make the code more organized and easier to read.

sub readDatafile {
	# Read data file and return array of lines
	my($filename) = @_;

	open(my $fh, '<', $filename) or die "Could not open file $filename: $!";
	my @lines = <$fh>;
	chomp @lines;

	close $fh;

	return @lines;
}

sub processData {
	# Process data and return array of results
	my($data) = @_;

	my @results;
	foreach my $line (@$data) {
		# Process data here
		push(@results, $line);
	}

	return @results;
}

sub saveOutput {
	# Save output to a file
	my($filename, $output) = @_;

	open(my $fh, '>', $filename) or die "Could not open file $filename: $!";
	foreach my $line (@$output) {
		print $fh "$line\n";
	}
	close $fh;
}

# Now that we have the basic structure of the program, it’s time to start
# collaborating. Have each programmer write a function which accomplishes
# one aspect of the program.

sub partnerOne {
	# Calculate average
	my($data) = @_;

	my $sum = 0;
	foreach (@$data) {
		$sum += $_;
	}

	my $avg = $sum / scalar(@$data);

	return $avg;
}

sub partnerTwo {
	# Find maximum value
	my($data) = @_;

	my $max = 0;
	foreach (@$data) {
		$max = $_ if ($_ > $max);
	}

	return $max;
}

sub partnerThree {
	# Find minimum value
	my($data) = @_;

	my $min = $data->[0];
	foreach (@$data) {
		$min = $_ if ($_ < $min);
	}

	return $min;
}

# Now that the functions have been written, it’s time to put everything 
# together and see the desired result.

# Open the data file
my @data = &readDatafile('data.txt');

# Process the data
my @processed_data = &processData(\@data);

# Calculate average
my $avg = &partnerOne(\@processed_data);

# Calculate maximum
my $max = &partnerTwo(\@processed_data);

# Calculate minimum
my $min = &partnerThree(\@processed_data);

# Save the results
my @output_data = ($avg, $max, $min);
&saveOutput('output.txt', \@output_data);

# That’s it! We have successfully used the power of partnership to solve
# a complex problem. Congratulations!