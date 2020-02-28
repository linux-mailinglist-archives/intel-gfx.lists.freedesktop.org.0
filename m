Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 766FC1732FD
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 09:34:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69AFB6EE6C;
	Fri, 28 Feb 2020 08:34:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E8D446EE6B;
 Fri, 28 Feb 2020 08:34:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E310FA00FD;
 Fri, 28 Feb 2020 08:34:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 28 Feb 2020 08:34:06 -0000
Message-ID: <158287884690.7477.9739716327601323727@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200228082330.2411941-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200228082330.2411941-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/24=5D_drm/i915/gt=3A_Check_engin?=
 =?utf-8?q?e-is-awake_on_reset_later?=
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

Series: series starting with [01/24] drm/i915/gt: Check engine-is-awake on reset later
URL   : https://patchwork.freedesktop.org/series/74064/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
cf35476aba26 drm/i915/gt: Check engine-is-awake on reset later
2d9cb5454fb9 drm/i915: Skip barriers inside waits
eee7935e8b02 drm/i915/perf: Mark up the racy use of perf->exclusive_stream
2595bf7a20cf drm/i915/perf: Manually acquire engine-wakeref around use of kernel_context
970d94f49328 drm/i915/perf: Reintroduce wait on OA configuration completion
7f853a24cf81 drm/i915: Wrap i915_active in a simple kreffed struct
-:44: WARNING:LINE_SPACING: Missing a blank line after declarations
#44: FILE: drivers/gpu/drm/i915/i915_active.c:908:
+	struct auto_active *aa = container_of(ref, typeof(*aa), base);
+	kref_put(&aa->ref, auto_release);

total: 0 errors, 1 warnings, 0 checks, 66 lines checked
3866ade4b94e drm/i915: Extend i915_request_await_active to use all timelines
effe03fbfc33 drm/i915/perf: Schedule oa_config after modifying the contexts
ae1f01773370 drm/i915/gem: Consolidate ctx->engines[] release
79cc4030dfde drm/i915/gt: Prevent allocation on a banned context
2ad577382daf drm/i915/gem: Check that the context wasn't closed during setup
54c591ceb43f drm/i915/selftests: Disable heartbeat around manual pulse tests
10c7bfb49474 drm/i915/gt: Reset queue_priority_hint after wedging
-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
<0> [574.303565] i915_sel-6278    2.... 481822445us : __i915_subtests: Running intel_execlists_live_selftests/live_error_interrupt

total: 0 errors, 1 warnings, 0 checks, 10 lines checked
d6a1ba655f2a drm/i915/gt: Pull marking vm as closed underneath the vm->mutex
-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
References: 00de702c6c6f ("drm/i915: Check that the vma hasn't been closed before we insert it")

-:12: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 00de702c6c6f ("drm/i915: Check that the vma hasn't been closed before we insert it")'
#12: 
References: 00de702c6c6f ("drm/i915: Check that the vma hasn't been closed before we insert it")

total: 1 errors, 1 warnings, 0 checks, 26 lines checked
82df6afb9ed9 drm/i915: Protect i915_request_await_start from early waits
76c4b1fb4c01 drm/i915/selftests: Verify LRC isolation
-:449: WARNING:MEMORY_BARRIER: memory barrier without comment
#449: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:5179:
+	wmb();

total: 0 errors, 1 warnings, 0 checks, 557 lines checked
1df5e762e382 drm/i915/selftests: Check recovery from corrupted LRC
4dfb2ecef5a8 drm/i915/selftests: Wait for the kernel context switch
8082262f522d drm/i915/selftests: Be a little more lenient for reset workers
03d66544ebb8 drm/i915/selftests: Add request throughput measurement to perf
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
9d4f288874ad drm/i915/gt: Declare when we enabled timeslicing
6dfe74ecc377 drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
79f714f11f81 drm/i915/execlists: Check the sentinel is alone in the ELSP
750fb757725b drm/i915/execlists: Reduce preempt-to-busy roundtrip delay

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
