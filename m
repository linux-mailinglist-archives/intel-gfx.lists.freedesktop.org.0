Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 742A414111B
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 19:49:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56EAA6F8B4;
	Fri, 17 Jan 2020 18:49:33 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7336C6F8B4;
 Fri, 17 Jan 2020 18:49:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 10:49:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,331,1574150400"; d="scan'208";a="218995686"
Received: from mdanino-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.174])
 by orsmga008.jf.intel.com with ESMTP; 17 Jan 2020 10:49:30 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 17 Jan 2020 18:49:24 +0000
Message-Id: <20200117184924.12600-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] scripts/trace.pl: Update for
 preempt-to-busy, heartbeats and timeslicing
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

...

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Tony Ye <tony.ye@intel.com>
---
Tony could you please check if this works for you and even send me some
raw trace files you might have so I see how it looks?

P.S.
I don't yet guarantee the results are 100% reliable and truthful. Or that
it won't crash.
---
 scripts/trace.pl | 283 +++++++++++++++++++++++++----------------------
 1 file changed, 151 insertions(+), 132 deletions(-)

diff --git a/scripts/trace.pl b/scripts/trace.pl
index 77587f24197a..8cad7e6ef65b 100755
--- a/scripts/trace.pl
+++ b/scripts/trace.pl
@@ -34,11 +34,10 @@ my $cid = 0;
 my %queues;
 my @freqs;
 
-use constant VENG => '255:254';
+use constant VENG => '65534:65534';
 
 my $max_requests = 1000;
 my $width_us = 32000;
-my $correct_durations = 0;
 my %ignore_ring;
 my %skip_box;
 my $html = 0;
@@ -224,18 +223,6 @@ sub arg_zoom_width
 	return @_;
 }
 
-sub arg_split_requests
-{
-	return unless scalar(@_);
-
-	if ($_[0] eq '--split-requests' or $_[0] eq '-s') {
-		shift @_;
-		$correct_durations = 1;
-	}
-
-	return @_;
-}
-
 sub arg_ignore_ring
 {
 	my $val;
@@ -299,7 +286,6 @@ while (@args) {
 	@args = arg_trace(@args);
 	@args = arg_max_requests(@args);
 	@args = arg_zoom_width(@args);
-	@args = arg_split_requests(@args);
 	@args = arg_ignore_ring(@args);
 	@args = arg_skip_box(@args);
 	@args = arg_colour_contexts(@args);
@@ -340,7 +326,79 @@ sub is_veng
 {
 	my ($class, $instance) = split ':', shift;
 
-	return $instance eq '254';
+	return 1 if $instance eq '254' or $instance eq '65534';
+}
+
+my (%port_keys, %port_times);
+
+sub port_in
+{
+	my ($ring, $port, $key, $time) = @_;
+	my ($port_key, $port_time);
+	my @slices;
+
+	$db{$key}->{'slices'} = \@slices
+				unless exists $db{$key}->{'slices'};
+
+	$db{$key}->{'in'}++;
+
+	unless (exists $port_keys{$ring}) {
+		my (@keys, @times);
+
+		$port_keys{$ring} = \@keys;
+		$port_times{$ring} = \@times;
+	}
+
+	$port_key = $port_keys{$ring};
+	$port_time = $port_times{$ring};
+
+	unless (defined $port_key->[$port] and $port_key->[$port] eq $key) {
+		$port_key->[$port] = $key;
+		$port_time->[$port] = $time;
+	}
+}
+
+sub port_out
+{
+	my ($ring, $key, $time) = @_;
+	my ($port_key, $port_time);
+	my $port;
+
+	die unless $db{$key}->{'in'};
+	$db{$key}->{'in'}--;
+
+	$port_key = $port_keys{$ring};
+	$port_time = $port_times{$ring};
+
+	for (my $i = 0; $i < scalar(@{$port_key}); $i++) {
+		next unless defined $port_key->[$i];
+
+		if ($port_key->[$i] eq $key) {
+			$port = $i;
+			last;
+		}
+	}
+
+	return unless defined $port;
+
+	if ($port == 0) {
+		my $s = $db{$key}->{'slices'};
+		my $next;
+
+		push @{$s}, [$port_time->[$port], $time];
+
+		$next = $port + 1;
+		if (defined $port_key->[$next]) {
+			$port_time->[$next] = $time;
+			shift @{$port_key};
+			shift @{$port_time};
+		}
+	}
+
+	if ($db{$key}->{'in'} == 0) {
+		$port_key->[$port] = undef;
+		$port_time->[$port] = undef;
+	}
 }
 
 # Main input loop - parse lines and build the internal representation of the
@@ -368,7 +426,6 @@ while (<>) {
 
 		next unless $f =~ m/=/;
 		($k, $v) = ($`, $');
-		$k = 'global' if $k eq 'global_seqno';
 		chop $v if substr($v, -1, 1) eq ',';
 		$tp{$k} = $v;
 
@@ -433,76 +490,89 @@ while (<>) {
 		}
 	} elsif ($tp_name eq 'i915:i915_request_submit:') {
 		die if exists $submit{$key};
-		die unless exists $queue{$key};
+		unless (exists $queue{$key}) { # i915 internal
+			$queue{$key} = $time;
+			$ctxdb{$orig_ctx} = 1;
+		}
 		die if $ring eq VENG and not exists $queues{$ctx};
 
 		$submit{$key} = $time;
 	} elsif ($tp_name eq 'i915:i915_request_in:') {
+		my $port = $tp{'port'};
 		my ($q, $s);
 		my %req;
 
-		# preemption
-		delete $db{$key} if exists $db{$key};
-
 		unless (exists $queue{$key}) {
 			# Virtual engine
 			my $vkey = db_key(VENG, $ctx, $seqno);
 			my %req;
 
 			die unless exists $queues{$ctx};
-			die unless exists $queue{$vkey};
 			die unless exists $submit{$vkey};
 
-			# Create separate request record on the queue timeline
 			$q = $queue{$vkey};
 			$s = $submit{$vkey};
-			$req{'queue'} = $q;
-			$req{'submit'} = $s;
+
+			unless (exists $vdb{$vkey}) {
+				# Create separate request record on the queue
+				# timeline.
+				$req{'queue'} = $q;
+				$req{'submit'} = $s;
+				$req{'start'} = $time;
+				$req{'end'} = $time;
+				$req{'ring'} = VENG;
+				$req{'phys-engine'} = $ring;
+				$req{'seqno'} = $seqno;
+				$req{'ctx'} = $ctx;
+				$req{'name'} = $ctx . '/' . $seqno;
+				$req{'port'} = $port;
+
+				$vdb{$vkey} = \%req;
+			}
+		} else {
+			$q = $queue{$key};
+			$s = $submit{$key};
+		}
+
+		unless (exists $db{$key}) {
 			$req{'start'} = $time;
-			$req{'end'} = $time;
-			$req{'ring'} = VENG;
+			$req{'ring'} = $ring;
 			$req{'seqno'} = $seqno;
 			$req{'ctx'} = $ctx;
+			$ctxtimelines{$ctx . '/' . $ring} = 1;
 			$req{'name'} = $ctx . '/' . $seqno;
-			$req{'global'} = $tp{'global'};
-			$req{'port'} = $tp{'port'};
+			$req{'port'} = $port;
+			$req{'queue'} = $q;
+			$req{'submit'} = $s;
+			$req{'virtual'} = 1 if exists $queues{$ctx};
+			$rings{$ring} = $gid++ unless exists $rings{$ring};
+			$ringmap{$rings{$ring}} = $ring;
+			$db{$key} = \%req;
 
-			$vdb{$vkey} = \%req;
-		} else {
-			$q = $queue{$key};
-			$s = $submit{$key};
 		}
 
-		$req{'start'} = $time;
-		$req{'ring'} = $ring;
-		$req{'seqno'} = $seqno;
-		$req{'ctx'} = $ctx;
-		$ctxtimelines{$ctx . '/' . $ring} = 1;
-		$req{'name'} = $ctx . '/' . $seqno;
-		$req{'global'} = $tp{'global'};
-		$req{'port'} = $tp{'port'};
-		$req{'queue'} = $q;
-		$req{'submit'} = $s;
-		$req{'virtual'} = 1 if exists $queues{$ctx};
-		$rings{$ring} = $gid++ unless exists $rings{$ring};
-		$ringmap{$rings{$ring}} = $ring;
-		$db{$key} = \%req;
+		port_in($ring, $port, $key, $time);
 	} elsif ($tp_name eq 'i915:i915_request_out:') {
-		if ($tp{'completed?'}) {
-			my $nkey;
+		my ($nkey, $completed, $prev_in);
 
-			die unless exists $db{$key};
-			die unless exists $db{$key}->{'start'};
-			die if exists $db{$key}->{'end'};
-
-			$nkey = notify_key($ctx, $seqno);
+		if ($ring eq VENG and not exists $db{$key}) {
+			my $vkey = db_key(VENG, $ctx, $seqno);
 
-			$db{$key}->{'end'} = $time;
-			$db{$key}->{'notify'} = $notify{$nkey}
-						if exists $notify{$nkey};
-		} else {
-			delete $db{$key};
+			$ring = $vdb{$vkey}->{'phys-engine'};
+			$key = db_key($ring, $ctx, $seqno);
 		}
+
+		die unless exists $db{$key};
+		die unless exists $db{$key}->{'start'};
+
+		$nkey = notify_key($ctx, $seqno);
+
+		port_out($ring, $key, $time);
+
+		$db{$key}->{'notify'} = $notify{$nkey}
+					if exists $notify{$nkey};
+		$db{$key}->{'end'} = $time;
+		$db{$key}->{'completed'} = $tp{'completed?'};
 	} elsif ($tp_name eq 'dma_fence:dma_fence_signaled:') {
 		my $nkey;
 
@@ -561,6 +631,18 @@ sub sortStart {
 	return $val;
 }
 
+sub sortEnd {
+	my $as = $db{$a}->{'end'};
+	my $bs = $db{$b}->{'end'};
+	my $val;
+
+say $a unless defined $as;
+	$val = $as <=> $bs;
+	$val = $a cmp $b if $val == 0;
+
+	return $val;
+}
+
 sub get_engine_timeline {
 	my ($ring) = @_;
 	my @timeline;
@@ -568,7 +650,7 @@ sub get_engine_timeline {
 	return $engine_timelines{$ring} if exists $engine_timelines{$ring};
 
 	@timeline = grep { $db{$_}->{'ring'} eq $ring } keys %db;
-	@timeline = sort sortStart @timeline;
+	@timeline = sort sortEnd @timeline;
 	$engine_timelines{$ring} = \@timeline;
 
 	return \@timeline;
@@ -679,73 +761,6 @@ sub get_ctx_timeline {
 	return \@timeline;
 }
 
-# Split out merged batches if requested.
-if ($correct_durations) {
-	# Shift !port0 requests start time to after the previous context on the
-	# same timeline has finished.
-	foreach my $gid (sort keys %rings) {
-		my $ring = $ringmap{$rings{$gid}};
-		my $timeline = get_engine_timeline($ring);
-		my $complete;
-
-		foreach my $pos (0..$#{$timeline}) {
-			my $key = @{$timeline}[$pos];
-			my $prev = $complete;
-			my $pkey;
-
-			$complete = $key unless exists $db{$key}->{'no-end'};
-			$pkey = $complete;
-
-			next if $db{$key}->{'port'} == 0;
-
-			$pkey = $prev if $complete eq $key;
-
-			die unless defined $pkey;
-
-			$db{$key}->{'start'} = $db{$pkey}->{'end'};
-			$db{$key}->{'start'} = $db{$pkey}->{'notify'} if $db{$key}->{'start'} > $db{$key}->{'end'};
-
-			die if $db{$key}->{'start'} > $db{$key}->{'end'};
-
-			$re_sort = 1;
-		}
-	}
-
-	maybe_sort_keys();
-
-	# Batch with no-end (no request_out) means it was submitted as part of
-	# coalesced context. This means it's start time should be set to the end
-	# time of a following request on this context timeline.
-	foreach my $tkey (sort keys %ctxtimelines) {
-		my ($ctx, $ring) = split '/', $tkey;
-		my $timeline = get_ctx_timeline($ctx, $ring, $tkey);
-		my $last_complete = -1;
-		my $complete;
-
-		foreach my $pos (0..$#{$timeline}) {
-			my $key = @{$timeline}[$pos];
-			my $next_key;
-
-			next unless exists $db{$key}->{'no-end'};
-			last if $pos == $#{$timeline};
-
-			# Shift following request to start after the current
-			# one, but only if that wouldn't make it zero duration,
-			# which would indicate notify arrived after context
-			# complete.
-			$next_key = ${$timeline}[$pos + 1];
-			if (exists $db{$key}->{'notify'} and
-			    $db{$key}->{'notify'} < $db{$key}->{'end'}) {
-				$db{$next_key}->{'engine-start'} = $db{$next_key}->{'start'};
-				$db{$next_key}->{'start'} = $db{$key}->{'notify'};
-				$re_sort = 1;
-			}
-		}
-	}
-}
-
-maybe_sort_keys();
-
 # GPU time accounting
 my (%running, %runnable, %queued, %batch_avg, %batch_total_avg, %batch_count);
 my (%submit_avg, %execute_avg, %ctxsave_avg);
@@ -781,8 +796,7 @@ foreach my $key (@sorted_keys) {
 		$db{$key}->{'duration'} = 0;
 	}
 
-	$running{$ring} += $end - $start if $correct_durations or
-					    not exists $db{$key}->{'no-end'};
+	$running{$ring} += $end - $start if not exists $db{$key}->{'no-end'};
 	unless (exists $db{$key}->{'virtual'}) {
 		$runnable{$ring} += $db{$key}->{'execute-delay'};
 		$queued{$ring} += $start - $db{$key}->{'execute-delay'} - $db{$key}->{'queue'};
@@ -1324,9 +1338,14 @@ foreach my $key (sort sortQueue keys %db) {
 		$content .= ' <small><i>++</i></small> ' if exists $db{$key}->{'no-end'};
 		$content .= ' <small><i>+</i></small> ' if exists $db{$key}->{'no-notify'};
 		$content .= "<br>$db{$key}->{'duration'}us <small>($db{$key}->{'context-complete-delay'}us)</small>";
-		$startend = 'start: ' . $start . ', end: ' . $notify;
-		print "\t{id: $i, key: $skey, $type group: $group, subgroup: $subgroup, subgroupOrder: $subgroup, content: '$content', $startend, style: \'$style\'},\n";
-		$i++;
+		foreach my $slice (@{$db{$key}->{'slices'}}) {
+			my ($s, $e) = ($start, $notify);
+			$s = @{$slice}[0] if @{$slice}[0] >= $start;
+			$e = @{$slice}[1] if @{$slice}[1] <= $notify;
+			$startend = 'start: ' . $s . ', end: ' . $e;
+			print "\t{id: $i, key: $skey, $type group: $group, subgroup: $subgroup, subgroupOrder: $subgroup, content: '$content', $startend, style: \'$style\'},\n";
+			$i++;
+		}
 	}
 
 	# user interrupt to context complete
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
