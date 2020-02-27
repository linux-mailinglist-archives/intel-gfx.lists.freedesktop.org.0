Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDE91721CF
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 16:06:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D45D6E90F;
	Thu, 27 Feb 2020 15:06:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DA7F66E90D;
 Thu, 27 Feb 2020 15:06:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D2591A7DFA;
 Thu, 27 Feb 2020 15:06:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 27 Feb 2020 15:06:14 -0000
Message-ID: <158281597485.29659.13996099198239112033@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200227085723.1961649-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200227085723.1961649-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/20=5D_drm/i915=3A_Skip_barriers_?=
 =?utf-8?q?inside_waits_=28rev4=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [01/20] drm/i915: Skip barriers inside waits (rev4)
URL   : https://patchwork.freedesktop.org/series/73999/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ea6f01e92c61 drm/i915: Skip barriers inside waits
b03376b455cc drm/i915/perf: Mark up the racy use of perf->exclusive_stream
f20fed23b607 drm/i915/perf: Manually acquire engine-wakeref around use of kernel_context
98bae29ebe79 drm/i915/perf: Wait for lrc_reconfigure on disable
47888c782e0c drm/i915/gem: Consolidate ctx->engines[] release
94b9a31f328b drm/i915/gt: Prevent allocation on a banned context
68e1c6076e91 drm/i915/gem: Check that the context wasn't closed during setup
695b915be561 drm/i915/selftests: Disable heartbeat around manual pulse tests
03901330ffff drm/i915/gt: Reset queue_priority_hint after wedging
-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
<0> [574.303565] i915_sel-6278    2.... 481822445us : __i915_subtests: Running intel_execlists_live_selftests/live_error_interrupt

total: 0 errors, 1 warnings, 0 checks, 10 lines checked
19d8a9ec5a90 drm/i915/gt: Pull marking vm as closed underneath the vm->mutex
-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
References: 00de702c6c6f ("drm/i915: Check that the vma hasn't been closed before we insert it")

-:12: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 00de702c6c6f ("drm/i915: Check that the vma hasn't been closed before we insert it")'
#12: 
References: 00de702c6c6f ("drm/i915: Check that the vma hasn't been closed before we insert it")

total: 1 errors, 1 warnings, 0 checks, 26 lines checked
d144797bcc6e drm/i915: Protect i915_request_await_start from early waits
0258eb86abee drm/i915/selftests: Verify LRC isolation
-:449: WARNING:MEMORY_BARRIER: memory barrier without comment
#449: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:5179:
+	wmb();

total: 0 errors, 1 warnings, 0 checks, 557 lines checked
dac7e7aa2e04 drm/i915/selftests: Check recovery from corrupted LRC
097feb8cc312 drm/i915/selftests: Wait for the kernel context switch
f6ebc42863d7 drm/i915/selftests: Be a little more lenient for reset workers
cceba24157d6 drm/i915/selftests: Add request throughput measurement to perf
-:90: WARNING:LINE_SPACING: Missing a blank line after declarations
#90: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1515:
+	struct intel_context *ce;
+	IGT_TIMEOUT(end_time);

-:157: WARNING:LINE_SPACING: Missing a blank line after declarations
#157: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1582:
+	struct intel_context *ce;
+	IGT_TIMEOUT(end_time);

-:213: WARNING:LINE_SPACING: Missing a blank line after declarations
#213: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1638:
+	struct drm_i915_private *i915 = arg;
+	static int (* const func[])(void *arg) = {

-:221: WARNING:LINE_SPACING: Missing a blank line after declarations
#221: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1646:
+	struct intel_engine_cs *engine;
+	int (* const *fn)(void *arg);

-:263: WARNING:YIELD: Using yield() is generally wrong. See yield() kernel-doc (sched/core.c)
#263: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1688:
+		yield(); /* start all threads before we kthread_stop() */

total: 0 errors, 5 warnings, 0 checks, 301 lines checked
ad7bfc55d410 drm/i915/gt: Declare when we enabled timeslicing
9f8c2239da44 drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
8744e278c5f7 drm/i915/execlists: Check the sentinel is alone in the ELSP
720aff89c6c8 drm/i915/execlists: Reduce preempt-to-busy roundtrip delay

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
