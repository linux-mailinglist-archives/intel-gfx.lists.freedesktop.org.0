Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6213C17088C
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 20:12:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B85D36EBB1;
	Wed, 26 Feb 2020 19:12:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C59CC6EB99;
 Wed, 26 Feb 2020 19:12:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BEE1BA0088;
 Wed, 26 Feb 2020 19:12:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 26 Feb 2020 19:12:06 -0000
Message-ID: <158274432675.21011.11573924751100681636@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200226094314.1500667-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200226094314.1500667-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/17=5D_drm/i915/gt=3A_Reset_queue?=
 =?utf-8?q?=5Fpriority=5Fhint_after_wedging?=
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

Series: series starting with [01/17] drm/i915/gt: Reset queue_priority_hint after wedging
URL   : https://patchwork.freedesktop.org/series/73947/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
aa291c2295eb drm/i915/gt: Reset queue_priority_hint after wedging
-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
<0> [574.303565] i915_sel-6278    2.... 481822445us : __i915_subtests: Running intel_execlists_live_selftests/live_error_interrupt

total: 0 errors, 1 warnings, 0 checks, 10 lines checked
484da80f25b3 drm/i915/perf: Mark up the racy use of perf->exclusive_stream
9e5ee39ddb1c drm/i915: Manually acquire engine-wakeref around use of kernel_context
4527d2916345 drm/i915/gt: Pull marking vm as closed underneath the vm->mutex
-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
References: 00de702c6c6f ("drm/i915: Check that the vma hasn't been closed before we insert it")

-:12: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 00de702c6c6f ("drm/i915: Check that the vma hasn't been closed before we insert it")'
#12: 
References: 00de702c6c6f ("drm/i915: Check that the vma hasn't been closed before we insert it")

total: 1 errors, 1 warnings, 0 checks, 26 lines checked
eb2b326b0dea drm/i915: Protect i915_request_await_start from early waits
c607016634a6 drm/i915/selftests: Verify LRC isolation
-:449: WARNING:MEMORY_BARRIER: memory barrier without comment
#449: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:5179:
+	wmb();

total: 0 errors, 1 warnings, 0 checks, 557 lines checked
c99201ca8f26 drm/i915/selftests: Check recovery from corrupted LRC
8da3c4b72fce drm/i915/selftests: Wait for the kernel context switch
b89f481f3c16 drm/i915/selftests: Be a little more lenient for reset workers
2fc8b161a281 drm/i915/selftests: Add request throughput measurement to perf
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
427424c22617 drm/i915/gem: Consolidate ctx->engines[] release
e3f8fe7b97da drm/i915/gt: Prevent allocation on a banned context
5bf996f43d21 drm/i915/gem: Check that the context wasn't closed during setup
849c205f51cd drm/i915/gt: Declare when we enabled timeslicing
3cb060d11b8b drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
420dfaf3f69f drm/i915/execlists: Check the sentinel is alone in the ELSP
2fa006f39991 drm/i915/execlists: Reduce preempt-to-busy roundtrip delay

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
