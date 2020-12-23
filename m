Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9DA2E1D99
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Dec 2020 15:50:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EE406E0C2;
	Wed, 23 Dec 2020 14:50:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 745A26E0C1;
 Wed, 23 Dec 2020 14:50:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6705EA0118;
 Wed, 23 Dec 2020 14:50:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 23 Dec 2020 14:50:17 -0000
Message-ID: <160873501740.26585.10832031373822782508@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201223111126.3338-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201223111126.3338-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/62=5D_drm/i915/gt=3A_Replace_direct_sub?=
 =?utf-8?q?mit_with_direct_call_to_tasklet?=
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
Content-Type: multipart/mixed; boundary="===============1930629014=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1930629014==
Content-Type: multipart/alternative;
 boundary="===============7482532388373973697=="

--===============7482532388373973697==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/62] drm/i915/gt: Replace direct submit with direct call to tasklet
URL   : https://patchwork.freedesktop.org/series/85184/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9515 -> Patchwork_19200
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19200/index.html

New tests
---------

  New tests have been introduced between CI_DRM_9515 and Patchwork_19200:

### New IGT tests (1) ###

  * igt@i915_selftest@live@scheduler:
    - Statuses : 35 pass(s)
    - Exec time: [0.59, 9.37] s

  

Known issues
------------

  Here are the changes found in Patchwork_19200 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-apl-guc:         [PASS][1] -> [DMESG-WARN][2] ([i915#62])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9515/fi-apl-guc/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19200/fi-apl-guc/igt@debugfs_test@read_all_entries.html

  * igt@fbdev@write:
    - fi-bdw-gvtdvm:      NOTRUN -> [SKIP][3] ([fdo#109271]) +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19200/fi-bdw-gvtdvm/igt@fbdev@write.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-apl-guc:         [PASS][4] -> [DMESG-WARN][5] ([i915#180] / [i915#62])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9515/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19200/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html
    - fi-bdw-gvtdvm:      NOTRUN -> [INCOMPLETE][6] ([i915#146])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19200/fi-bdw-gvtdvm/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-tgl-y:           [PASS][7] -> [DMESG-FAIL][8] ([i915#2601])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9515/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19200/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html

  * igt@vgem_basic@setversion:
    - fi-tgl-y:           [PASS][9] -> [DMESG-WARN][10] ([i915#402]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9515/fi-tgl-y/igt@vgem_basic@setversion.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19200/fi-tgl-y/igt@vgem_basic@setversion.html

  
#### Possible fixes ####

  * igt@prime_vgem@basic-write:
    - fi-tgl-y:           [DMESG-WARN][11] ([i915#402]) -> [PASS][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9515/fi-tgl-y/igt@prime_vgem@basic-write.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19200/fi-tgl-y/igt@prime_vgem@basic-write.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#2601]: https://gitlab.freedesktop.org/drm/intel/issues/2601
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Participating hosts (42 -> 38)
------------------------------

  Additional (1): fi-bdw-gvtdvm 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9515 -> Patchwork_19200

  CI-20190529: 20190529
  CI_DRM_9515: fc7c8ab3de81a7382017db8cdb35baae97c150f0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5918: 137c8f1edd9cc769e8a62808c6dcd36b233e2d05 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19200: 0167812eaa7f3765223f9950cf1bae4bd3c1a346 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0167812eaa7f drm/i915: Mark up protected uses of 'i915_request_completed'
58747522a4fc drm/i915/gt: Enable ring scheduling for gen6/7
b9f7ad160192 drm/i915/gt: Implement ring scheduler for gen6/7
dc748355fd5a drm/i915/gt: Enable busy-stats for ring-scheduler
01ac9a884ed0 drm/i915/gt: Infrastructure for ring scheduling
9899406a944a drm/i915/gt: Use client timeline address for seqno writes
fef880930860 drm/i915/gt: Support creation of 'internal' rings
0714dcad606d drm/i915/gt: Couple tasklet scheduling for all CS interrupts
d1d29911e5a0 Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"
1c8f8f226ec3 drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines
e63e15540e94 drm/i915/selftests: Exercise relative timeline modes
a80e287deb01 drm/i915/gt: Use indices for writing into relative timelines
497d8e60daa0 drm/i915/gt: Add timeline "mode"
0a1f9167779e drm/i915/gt: Track timeline GGTT offset separately from subpage offset
4f5204545c50 drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb
6a525ef3a97d drm/i915: Bump default timeslicing quantum to 5ms
9fce6e1cde33 drm/i915: Move saturated workload detection back to the context
0ecd53938439 drm/i915/gt: Support virtual engine queues
49e08f2d50fd drm/i915/gt: Skip over completed active execlists, again
9fcbcc9f2d17 drm/i915: Extend the priority boosting for the display with a deadline
5cef41e5cbf1 drm/i915/gt: Specify a deadline for the heartbeat
c1315fa192f5 drm/i915: Fair low-latency scheduling
a9fdc2e2c3bf drm/i915: Wrap cmpxchg64 with try_cmpxchg64() helper
0113a5e42835 drm/i915: Replace priolist rbtree with a skiplist
f728914b401f drm/i915: Move tasklet from execlists to sched
4f4afaec9d87 drm/i915: Move scheduler queue
56d3c8f1f0e2 drm/i915: Move common active lists from engine to i915_scheduler
db66ed30fd5d drm/i915: Fix the iterative dfs for defering requests
1edcba02be27 drm/i915: Extract the ability to defer and rerun a request later
26a78cab587f drm/i915: Extract request suspension from the execlists backend
f48c38d2c375 drm/i915: Extract request rewinding from execlists
5593476c2a97 drm/i915: Extract request submission from execlists
eabb4969d40f drm/i915: Improve DFS for priority inheritance
7b37857ec9d6 drm/i915/selftests: Exercise priority inheritance around an engine loop
5274e559d740 drm/i915/selftests: Measure set-priority duration
660e34df14a0 drm/i915: Restructure priority inheritance
d23c18eec355 drm/i915: Teach the i915_dependency to use a double-lock
b6680c4d807c drm/i915: Replace engine->schedule() with a known request operation
0fc466b30b40 drm/i915: Remove I915_USER_PRIORITY_SHIFT
43182c3b43b9 drm/i915: Strip out internal priorities
7f7cfa94210d drm/i915/gt: Remove timeslice suppression
915e2215b56c drm/i915/gt: Do not suspend bonded requests if one hangs
3e32d2a70598 drm/i915/gt: Refactor heartbeat request construction and submission
1ad786b3dafd drm/i915/gt: Convert stats.active to plain unsigned int
761f42694117 drm/i915/gt: Extract busy-stats for ring-scheduler
d4ab3dd23cec drm/i915/gt: Drop atomic for engine->fw_active tracking
f3eb0734aa17 drm/i915: Reduce test_and_set_bit to set_bit in i915_request_submit()
8f7854833c40 drm/i915/gem: Reduce ctx->engines_mutex for get_engines()
cad1adec9393 drm/i915/gem: Reduce ctx->engine_mutex for reading the clone source
9214c519cc1b drm/i915: Drop i915_request.lock requirement for intel_rps_boost()
b45af9eeb47e drm/i915: Drop i915_request.lock serialisation around await_start
9b6e9d3440df drm/i915/gt: Consolidate the CS timestamp clocks
ec26a9257ebb drm/i915/selftests: Confirm CS_TIMESTAMP / CTX_TIMESTAMP share a clock
f1bc3696961a drm/i915/gt: ce->inflight updates are now serialised
fd614fdd85e4 drm/i915/gt: Simplify virtual engine handling for execlists_hold()
535418e46847 drm/i915/gt: Resubmit the virtual engine on schedule-out
5fcc092512e9 drm/i915/gt: Shrink the critical section for irq signaling
4cf4ad3a878b drm/i915/gt: Remove virtual breadcrumb before transfer
e67f6b85391f drm/i915/gt: Defer schedule_out until after the next dequeue
2a533c166dca drm/i915/gt: Decouple inflight virtual engines
5e8040a840bc drm/i915/gt: Use virtual_engine during execlists_dequeue
11ff28d8f6d3 drm/i915/gt: Replace direct submit with direct call to tasklet

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19200/index.html

--===============7482532388373973697==
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
<tr><td><b>Series:</b></td><td>series starting with [01/62] drm/i915/gt: Replace direct submit with direct call to tasklet</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85184/">https://patchwork.freedesktop.org/series/85184/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19200/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19200/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9515 -&gt; Patchwork_19200</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19200/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9515 and Patchwork_19200:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@scheduler:<ul>
<li>Statuses : 35 pass(s)</li>
<li>Exec time: [0.59, 9.37] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19200 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9515/fi-apl-guc/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19200/fi-apl-guc/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19200/fi-bdw-gvtdvm/igt@fbdev@write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9515/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19200/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>)</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19200/fi-bdw-gvtdvm/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9515/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19200/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2601">i915#2601</a>)</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@setversion:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9515/fi-tgl-y/igt@vgem_basic@setversion.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19200/fi-tgl-y/igt@vgem_basic@setversion.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@prime_vgem@basic-write:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9515/fi-tgl-y/igt@prime_vgem@basic-write.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19200/fi-tgl-y/igt@prime_vgem@basic-write.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 38)</h2>
<p>Additional (1): fi-bdw-gvtdvm <br />
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9515 -&gt; Patchwork_19200</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9515: fc7c8ab3de81a7382017db8cdb35baae97c150f0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5918: 137c8f1edd9cc769e8a62808c6dcd36b233e2d05 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19200: 0167812eaa7f3765223f9950cf1bae4bd3c1a346 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>0167812eaa7f drm/i915: Mark up protected uses of 'i915_request_completed'<br />
58747522a4fc drm/i915/gt: Enable ring scheduling for gen6/7<br />
b9f7ad160192 drm/i915/gt: Implement ring scheduler for gen6/7<br />
dc748355fd5a drm/i915/gt: Enable busy-stats for ring-scheduler<br />
01ac9a884ed0 drm/i915/gt: Infrastructure for ring scheduling<br />
9899406a944a drm/i915/gt: Use client timeline address for seqno writes<br />
fef880930860 drm/i915/gt: Support creation of 'internal' rings<br />
0714dcad606d drm/i915/gt: Couple tasklet scheduling for all CS interrupts<br />
d1d29911e5a0 Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"<br />
1c8f8f226ec3 drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines<br />
e63e15540e94 drm/i915/selftests: Exercise relative timeline modes<br />
a80e287deb01 drm/i915/gt: Use indices for writing into relative timelines<br />
497d8e60daa0 drm/i915/gt: Add timeline "mode"<br />
0a1f9167779e drm/i915/gt: Track timeline GGTT offset separately from subpage offset<br />
4f5204545c50 drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb<br />
6a525ef3a97d drm/i915: Bump default timeslicing quantum to 5ms<br />
9fce6e1cde33 drm/i915: Move saturated workload detection back to the context<br />
0ecd53938439 drm/i915/gt: Support virtual engine queues<br />
49e08f2d50fd drm/i915/gt: Skip over completed active execlists, again<br />
9fcbcc9f2d17 drm/i915: Extend the priority boosting for the display with a deadline<br />
5cef41e5cbf1 drm/i915/gt: Specify a deadline for the heartbeat<br />
c1315fa192f5 drm/i915: Fair low-latency scheduling<br />
a9fdc2e2c3bf drm/i915: Wrap cmpxchg64 with try_cmpxchg64() helper<br />
0113a5e42835 drm/i915: Replace priolist rbtree with a skiplist<br />
f728914b401f drm/i915: Move tasklet from execlists to sched<br />
4f4afaec9d87 drm/i915: Move scheduler queue<br />
56d3c8f1f0e2 drm/i915: Move common active lists from engine to i915_scheduler<br />
db66ed30fd5d drm/i915: Fix the iterative dfs for defering requests<br />
1edcba02be27 drm/i915: Extract the ability to defer and rerun a request later<br />
26a78cab587f drm/i915: Extract request suspension from the execlists backend<br />
f48c38d2c375 drm/i915: Extract request rewinding from execlists<br />
5593476c2a97 drm/i915: Extract request submission from execlists<br />
eabb4969d40f drm/i915: Improve DFS for priority inheritance<br />
7b37857ec9d6 drm/i915/selftests: Exercise priority inheritance around an engine loop<br />
5274e559d740 drm/i915/selftests: Measure set-priority duration<br />
660e34df14a0 drm/i915: Restructure priority inheritance<br />
d23c18eec355 drm/i915: Teach the i915_dependency to use a double-lock<br />
b6680c4d807c drm/i915: Replace engine-&gt;schedule() with a known request operation<br />
0fc466b30b40 drm/i915: Remove I915_USER_PRIORITY_SHIFT<br />
43182c3b43b9 drm/i915: Strip out internal priorities<br />
7f7cfa94210d drm/i915/gt: Remove timeslice suppression<br />
915e2215b56c drm/i915/gt: Do not suspend bonded requests if one hangs<br />
3e32d2a70598 drm/i915/gt: Refactor heartbeat request construction and submission<br />
1ad786b3dafd drm/i915/gt: Convert stats.active to plain unsigned int<br />
761f42694117 drm/i915/gt: Extract busy-stats for ring-scheduler<br />
d4ab3dd23cec drm/i915/gt: Drop atomic for engine-&gt;fw_active tracking<br />
f3eb0734aa17 drm/i915: Reduce test_and_set_bit to set_bit in i915_request_submit()<br />
8f7854833c40 drm/i915/gem: Reduce ctx-&gt;engines_mutex for get_engines()<br />
cad1adec9393 drm/i915/gem: Reduce ctx-&gt;engine_mutex for reading the clone source<br />
9214c519cc1b drm/i915: Drop i915_request.lock requirement for intel_rps_boost()<br />
b45af9eeb47e drm/i915: Drop i915_request.lock serialisation around await_start<br />
9b6e9d3440df drm/i915/gt: Consolidate the CS timestamp clocks<br />
ec26a9257ebb drm/i915/selftests: Confirm CS_TIMESTAMP / CTX_TIMESTAMP share a clock<br />
f1bc3696961a drm/i915/gt: ce-&gt;inflight updates are now serialised<br />
fd614fdd85e4 drm/i915/gt: Simplify virtual engine handling for execlists_hold()<br />
535418e46847 drm/i915/gt: Resubmit the virtual engine on schedule-out<br />
5fcc092512e9 drm/i915/gt: Shrink the critical section for irq signaling<br />
4cf4ad3a878b drm/i915/gt: Remove virtual breadcrumb before transfer<br />
e67f6b85391f drm/i915/gt: Defer schedule_out until after the next dequeue<br />
2a533c166dca drm/i915/gt: Decouple inflight virtual engines<br />
5e8040a840bc drm/i915/gt: Use virtual_engine during execlists_dequeue<br />
11ff28d8f6d3 drm/i915/gt: Replace direct submit with direct call to tasklet</p>

</body>
</html>

--===============7482532388373973697==--

--===============1930629014==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1930629014==--
