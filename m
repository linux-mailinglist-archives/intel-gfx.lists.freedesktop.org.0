Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB8E302910
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 18:38:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FFCD89CDE;
	Mon, 25 Jan 2021 17:38:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1DE988997E;
 Mon, 25 Jan 2021 17:38:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1730DA47EB;
 Mon, 25 Jan 2021 17:38:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 25 Jan 2021 17:38:25 -0000
Message-ID: <161159630509.3418.3287482928892162421@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210125140136.10494-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/41=5D_drm/i915/selftests=3A_Check_for_e?=
 =?utf-8?q?ngine-reset_errors_in_the_middle_of_workarounds?=
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
Content-Type: multipart/mixed; boundary="===============1974592284=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1974592284==
Content-Type: multipart/alternative;
 boundary="===============3432247990545126906=="

--===============3432247990545126906==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/41] drm/i915/selftests: Check for engine-reset errors in the middle of workarounds
URL   : https://patchwork.freedesktop.org/series/86259/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9680 -> Patchwork_19487
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19487/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19487:

### IGT changes ###

#### Possible regressions ####

  * {igt@i915_selftest@live@scheduler} (NEW):
    - fi-snb-2520m:       NOTRUN -> [DMESG-FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19487/fi-snb-2520m/igt@i915_selftest@live@scheduler.html
    - fi-snb-2600:        NOTRUN -> [DMESG-FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19487/fi-snb-2600/igt@i915_selftest@live@scheduler.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9680 and Patchwork_19487:

### New IGT tests (1) ###

  * igt@i915_selftest@live@scheduler:
    - Statuses : 2 dmesg-fail(s) 29 pass(s)
    - Exec time: [0.72, 8.80] s

  

Known issues
------------

  Here are the changes found in Patchwork_19487 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@prime_vgem@basic-gtt:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/fi-tgl-y/igt@prime_vgem@basic-gtt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19487/fi-tgl-y/igt@prime_vgem@basic-gtt.html

  
#### Possible fixes ####

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-y:           [DMESG-WARN][5] ([i915#402]) -> [PASS][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19487/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (39 -> 35)
------------------------------

  Missing    (4): fi-ctg-p8600 fi-jsl-1 fi-ilk-m540 fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9680 -> Patchwork_19487

  CI-20190529: 20190529
  CI_DRM_9680: 9e03236ed9687144929d42404341384cc1e501b7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5971: abef2b7d6ff30f3b948b3e5d39653debb73083f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19487: ac942d24c88f5e0b7247d62f73b254f29a02145c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ac942d24c88f drm/i915: Support secure dispatch on gen6/gen7
4743bbd27620 drm/i915/gt: Enable ring scheduling for gen5-7
bf0a549d2293 drm/i915/gt: Implement ring scheduler for gen4-7
a07f5ba0a10d drm/i915/gt: Infrastructure for ring scheduling
0337feb5791a drm/i915/gt: Use client timeline address for seqno writes
209430537935 drm/i915/gt: Support creation of 'internal' rings
593e08f61ffd drm/i915/gt: Couple tasklet scheduling for all CS interrupts
cf05a88e82c0 Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"
913207bf89cd drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines
b9b643d59b9d drm/i915/selftests: Exercise relative timeline modes
0a3936960afc drm/i915/gt: Use indices for writing into relative timelines
9bb8f60faea0 drm/i915/gt: Add timeline "mode"
fc7e917f62a1 drm/i915/gt: Track timeline GGTT offset separately from subpage offset
1edd11623282 drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb
75ecbfad42e2 drm/i915: Bump default timeslicing quantum to 5ms
4e61621ac116 drm/i915: Move saturated workload detection back to the context
e4a776414370 drm/i915/gt: Support virtual engine queues
010d86d0ecb1 drm/i915: Extend the priority boosting for the display with a deadline
f93f85ad482a drm/i915/gt: Specify a deadline for the heartbeat
4cabd30226f5 drm/i915: Fair low-latency scheduling
48a6729c987b drm/i915: Wrap cmpxchg64 with try_cmpxchg64() helper
4abff63c4cfe drm/i915: Replace priolist rbtree with a skiplist
3839efb97bae drm/i915/gt: Show scheduler queues when dumping state
3744cfde0c1b drm/i915: Move tasklet from execlists to sched
0597492c1e44 drm/i915: Move scheduler queue
4ab371f1d39d drm/i915: Move common active lists from engine to i915_scheduler
d6eb9d01bae2 drm/i915: Fix the iterative dfs for defering requests
bf3ba20370f6 drm/i915: Extract the ability to defer and rerun a request later
f04573d14fc7 drm/i915: Extract request suspension from the execlists
db49df2e5ac7 drm/i915: Extract request rewinding from execlists
1dac44d403d7 drm/i915: Extract request submission from execlists
f6b8b7362118 drm/i915/selftests: Exercise cross-process context isolation
ddf444ae329e drm/i915/selftests: Exercise relative mmio paths to non-privileged registers
9b002fc62d1f drm/i915: Improve DFS for priority inheritance
22c3f3836779 drm/i915/selftests: Exercise priority inheritance around an engine loop
f1443908248f drm/i915/selftests: Measure set-priority duration
7b140da51266 drm/i915: Restructure priority inheritance
b5ca2c04b198 drm/i915: Teach the i915_dependency to use a double-lock
0611644e4ddf drm/i915: Replace engine->schedule() with a known request operation
367f5e603c5d drm/i915/gt: Move the defer_request waiter active assertion
e4e577627c26 drm/i915/selftests: Check for engine-reset errors in the middle of workarounds

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19487/index.html

--===============3432247990545126906==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>series starting with [01/41] drm/i915/selftests: Check for engine-reset errors in the middle of workarounds</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86259/">https://patchwork.freedesktop.org/series/86259/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19487/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19487/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9680 -&gt; Patchwork_19487</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19487/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19487:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>{igt@i915_selftest@live@scheduler} (NEW):</p>
<ul>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19487/fi-snb-2520m/igt@i915_selftest@live@scheduler.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19487/fi-snb-2600/igt@i915_selftest@live@scheduler.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9680 and Patchwork_19487:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@scheduler:<ul>
<li>Statuses : 2 dmesg-fail(s) 29 pass(s)</li>
<li>Exec time: [0.72, 8.80] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19487 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@prime_vgem@basic-gtt:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/fi-tgl-y/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19487/fi-tgl-y/igt@prime_vgem@basic-gtt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@prime_vgem@basic-fence-flip:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19487/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 35)</h2>
<p>Missing    (4): fi-ctg-p8600 fi-jsl-1 fi-ilk-m540 fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9680 -&gt; Patchwork_19487</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9680: 9e03236ed9687144929d42404341384cc1e501b7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5971: abef2b7d6ff30f3b948b3e5d39653debb73083f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19487: ac942d24c88f5e0b7247d62f73b254f29a02145c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ac942d24c88f drm/i915: Support secure dispatch on gen6/gen7<br />
4743bbd27620 drm/i915/gt: Enable ring scheduling for gen5-7<br />
bf0a549d2293 drm/i915/gt: Implement ring scheduler for gen4-7<br />
a07f5ba0a10d drm/i915/gt: Infrastructure for ring scheduling<br />
0337feb5791a drm/i915/gt: Use client timeline address for seqno writes<br />
209430537935 drm/i915/gt: Support creation of 'internal' rings<br />
593e08f61ffd drm/i915/gt: Couple tasklet scheduling for all CS interrupts<br />
cf05a88e82c0 Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"<br />
913207bf89cd drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines<br />
b9b643d59b9d drm/i915/selftests: Exercise relative timeline modes<br />
0a3936960afc drm/i915/gt: Use indices for writing into relative timelines<br />
9bb8f60faea0 drm/i915/gt: Add timeline "mode"<br />
fc7e917f62a1 drm/i915/gt: Track timeline GGTT offset separately from subpage offset<br />
1edd11623282 drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb<br />
75ecbfad42e2 drm/i915: Bump default timeslicing quantum to 5ms<br />
4e61621ac116 drm/i915: Move saturated workload detection back to the context<br />
e4a776414370 drm/i915/gt: Support virtual engine queues<br />
010d86d0ecb1 drm/i915: Extend the priority boosting for the display with a deadline<br />
f93f85ad482a drm/i915/gt: Specify a deadline for the heartbeat<br />
4cabd30226f5 drm/i915: Fair low-latency scheduling<br />
48a6729c987b drm/i915: Wrap cmpxchg64 with try_cmpxchg64() helper<br />
4abff63c4cfe drm/i915: Replace priolist rbtree with a skiplist<br />
3839efb97bae drm/i915/gt: Show scheduler queues when dumping state<br />
3744cfde0c1b drm/i915: Move tasklet from execlists to sched<br />
0597492c1e44 drm/i915: Move scheduler queue<br />
4ab371f1d39d drm/i915: Move common active lists from engine to i915_scheduler<br />
d6eb9d01bae2 drm/i915: Fix the iterative dfs for defering requests<br />
bf3ba20370f6 drm/i915: Extract the ability to defer and rerun a request later<br />
f04573d14fc7 drm/i915: Extract request suspension from the execlists<br />
db49df2e5ac7 drm/i915: Extract request rewinding from execlists<br />
1dac44d403d7 drm/i915: Extract request submission from execlists<br />
f6b8b7362118 drm/i915/selftests: Exercise cross-process context isolation<br />
ddf444ae329e drm/i915/selftests: Exercise relative mmio paths to non-privileged registers<br />
9b002fc62d1f drm/i915: Improve DFS for priority inheritance<br />
22c3f3836779 drm/i915/selftests: Exercise priority inheritance around an engine loop<br />
f1443908248f drm/i915/selftests: Measure set-priority duration<br />
7b140da51266 drm/i915: Restructure priority inheritance<br />
b5ca2c04b198 drm/i915: Teach the i915_dependency to use a double-lock<br />
0611644e4ddf drm/i915: Replace engine-&gt;schedule() with a known request operation<br />
367f5e603c5d drm/i915/gt: Move the defer_request waiter active assertion<br />
e4e577627c26 drm/i915/selftests: Check for engine-reset errors in the middle of workarounds</p>

</body>
</html>

--===============3432247990545126906==--

--===============1974592284==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1974592284==--
