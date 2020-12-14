Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D44BC2D987C
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 14:04:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37B0C89BA5;
	Mon, 14 Dec 2020 13:04:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8695F899AB;
 Mon, 14 Dec 2020 13:04:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 81480A0094;
 Mon, 14 Dec 2020 13:04:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 14 Dec 2020 13:04:47 -0000
Message-ID: <160795108752.28165.6661716163003124772@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201214100949.11387-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201214100949.11387-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/69=5D_drm/i915=3A_Use_cmpxchg64_for_32b?=
 =?utf-8?q?_compatilibity?=
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
Content-Type: multipart/mixed; boundary="===============0271699627=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0271699627==
Content-Type: multipart/alternative;
 boundary="===============7391207938317856153=="

--===============7391207938317856153==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/69] drm/i915: Use cmpxchg64 for 32b compatilibity
URL   : https://patchwork.freedesktop.org/series/84900/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9478 -> Patchwork_19133
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/index.html

New tests
---------

  New tests have been introduced between CI_DRM_9478 and Patchwork_19133:

### New IGT tests (1) ###

  * igt@i915_selftest@live@scheduler:
    - Statuses : 34 pass(s)
    - Exec time: [0.59, 9.15] s

  

Known issues
------------

  Here are the changes found in Patchwork_19133 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_linear_blits@basic:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/fi-tgl-y/igt@gem_linear_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/fi-tgl-y/igt@gem_linear_blits@basic.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][3] ([i915#2029] / [i915#2722])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - fi-tgl-y:           [DMESG-WARN][4] ([i915#402]) -> [PASS][5] +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/fi-tgl-y/igt@fbdev@read.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/fi-tgl-y/igt@fbdev@read.html

  
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (42 -> 38)
------------------------------

  Missing    (4): fi-blb-e6850 fi-hsw-4200u fi-bdw-samus fi-bsw-n3050 


Build changes
-------------

  * Linux: CI_DRM_9478 -> Patchwork_19133

  CI-20190529: 20190529
  CI_DRM_9478: 94cf3a4cc350324f21728c70954c46e535405c87 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5890: 0e209dc3cd7561a57ec45be74b8b299eaf391950 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19133: 70d710616a47edbf414439350c1821774c8b9a6c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

70d710616a47 drm/i915/gt: Support virtual engine queues
eea9c98ae924 drm/i915/gt: Skip over completed active execlists, again
dc3d8fa55043 drm/i915: Move saturated workload detection back to the context
323da02de4eb drm/i915/gt: Enable ring scheduling for gen6/7
f8ed557dd270 drm/i915/gt: Implement ring scheduler for gen6/7
d96ffec133d1 drm/i915/gt: Enable busy-stats for ring-scheduler
413f05d8e17b drm/i915/gt: Infrastructure for ring scheduling
86d6df08c846 drm/i915/gt: Use client timeline address for seqno writes
cd3ce6df8cdc drm/i915/gt: Support creation of 'internal' rings
fc966b2cd073 drm/i915/gt: Couple tasklet scheduling for all CS interrupts
84c52535dbaf Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"
d968c14536c6 drm/i915/gt: Another tweak for flushing the tasklets
115fa74d21c8 drm/i915: Move tasklet from execlists to sched
3fdabb21ae8c drm/i915: Move scheduler queue
307f5103a402 drm/i915: Move common active lists from engine to i915_scheduler
cce02f220b17 drm/i915: Extend the priority boosting for the display with a deadline
ea38b5a2194f drm/i915/gt: Specify a deadline for the heartbeat
ee5f9ad7eee0 drm/i915: Fair low-latency scheduling
48624311bbf0 drm/i915: Wrap cmpxchg64 with try_cmpxchg64() helper
a751859ecb72 drm/i915: Fix the iterative dfs for defering requests
a5ffb8e4d752 drm/i915: Extract the ability to defer and rerun a request later
f0634ef3a719 drm/i915: Extract request suspension from the execlists backend
0c5bc38dac03 drm/i915: Extract request submission from execlists
6463731d3356 drm/i915/gt: Remove timeslice suppression
3835bb8e7018 drm/i915: Improve DFS for priority inheritance
fdf0bf3f6e3e drm/i915/selftests: Exercise priority inheritance around an engine loop
622182a65e16 drm/i915/selftests: Measure set-priority duration
c5834625d876 drm/i915: Restructure priority inheritance
76805c1d568f drm/i915: Teach the i915_dependency to use a double-lock
34b62d953f50 drm/i915/gt: Do not suspend bonded requests if one hangs
b916ef805b71 drm/i915: Replace engine->schedule() with a known request operation
b0f4da50b0fc drm/i915: Prune empty priolists
506d0c1b2d3a drm/i915/gt: Defer the kmem_cache_free() until after the HW submit
70dd8ff805da drm/i915: Remove I915_USER_PRIORITY_SHIFT
19429f06a9d1 drm/i915: Strip out internal priorities
7bbaf73cc381 drm/i915/gt: Refactor heartbeat request construction and submission
f5458bf52a9d drm/i915/gt: Convert stats.active to plain unsigned int
04fb23cb64d2 drm/i915/gt: Extract busy-stats for ring-scheduler
a1dec9510015 drm/i915/gt: Drop atomic for engine->fw_active tracking
aba47aad12c0 drm/i915: Reduce test_and_set_bit to set_bit in i915_request_submit()
ca26a0835509 drm/i915/gem: Reduce ctx->engines_mutex for get_engines()
0874a9ee121d drm/i915/gem: Reduce ctx->engine_mutex for reading the clone source
acb070e009e6 drm/i915: Drop i915_request.lock requirement for intel_rps_boost()
e1ba077c4634 drm/i915: Drop i915_request.lock serialisation around await_start
f41ace3aacd9 drm/i915/gem: Optimistically prune dma-resv from the shrinker.
801b88f03c21 drm/i915/gt: Prefer recycling an idle fence
ccb57dc0aafd drm/i915/gt: Consolidate the CS timestamp clocks
937af88e9869 drm/i915/selftests: Confirm RING_TIMESTAMP / CTX_TIMESTAMP share a clock
99692fe0f319 drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines
722362f35c0d drm/i915/selftests: Exercise relative timeline modes
a3ff02a6c8f0 drm/i915/gt: Use indices for writing into relative timelines
98e9db354de5 drm/i915/gt: Add timeline "mode"
3c050f7bff37 drm/i915/gt: Track timeline GGTT offset separately from subpage offset
5d9534289170 drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb
d77dfac7aad3 drm/i915/gt: Track all timelines created using the HWSP
e4f662259e10 drm/i915/gt: Track the overall awake/busy time
8ccab6df158e drm/i915/gem: Drop free_work for GEM contexts
8ddfebc69fcb drm/i915/gt: ce->inflight updates are now serialised
a28f9e8810aa drm/i915/gt: Simplify virtual engine handling for execlists_hold()
9aefee3ded48 drm/i915/gt: Resubmit the virtual engine on schedule-out
b6c9a8fd2b70 drm/i915/gt: Shrink the critical section for irq signaling
af9dc0dc069e drm/i915/gt: Remove virtual breadcrumb before transfer
a83ac0a0f58e drm/i915/gt: Defer schedule_out until after the next dequeue
b930ba2a83d3 drm/i915/gt: Decouple inflight virtual engines
efdd2df1bc73 drm/i915/gt: Use virtual_engine during execlists_dequeue
4aa9ef6d49f8 drm/i915/gt: Replace direct submit with direct call to tasklet
b674cfb42071 drm/i915: Encode fence specific waitqueue behaviour into the wait.flags
4e8074241dc4 drm/i915/uc: Squelch load failure error message
0dc75ecba54f drm/i915: Use cmpxchg64 for 32b compatilibity

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/index.html

--===============7391207938317856153==
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
<tr><td><b>Series:</b></td><td>series starting with [01/69] drm/i915: Use cmpxchg64 for 32b compatilibity</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84900/">https://patchwork.freedesktop.org/series/84900/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9478 -&gt; Patchwork_19133</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9478 and Patchwork_19133:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@scheduler:<ul>
<li>Statuses : 34 pass(s)</li>
<li>Exec time: [0.59, 9.15] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19133 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/fi-tgl-y/igt@gem_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/fi-tgl-y/igt@gem_linear_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@fbdev@read:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9478/fi-tgl-y/igt@fbdev@read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19133/fi-tgl-y/igt@fbdev@read.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 38)</h2>
<p>Missing    (4): fi-blb-e6850 fi-hsw-4200u fi-bdw-samus fi-bsw-n3050 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9478 -&gt; Patchwork_19133</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9478: 94cf3a4cc350324f21728c70954c46e535405c87 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5890: 0e209dc3cd7561a57ec45be74b8b299eaf391950 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19133: 70d710616a47edbf414439350c1821774c8b9a6c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>70d710616a47 drm/i915/gt: Support virtual engine queues<br />
eea9c98ae924 drm/i915/gt: Skip over completed active execlists, again<br />
dc3d8fa55043 drm/i915: Move saturated workload detection back to the context<br />
323da02de4eb drm/i915/gt: Enable ring scheduling for gen6/7<br />
f8ed557dd270 drm/i915/gt: Implement ring scheduler for gen6/7<br />
d96ffec133d1 drm/i915/gt: Enable busy-stats for ring-scheduler<br />
413f05d8e17b drm/i915/gt: Infrastructure for ring scheduling<br />
86d6df08c846 drm/i915/gt: Use client timeline address for seqno writes<br />
cd3ce6df8cdc drm/i915/gt: Support creation of 'internal' rings<br />
fc966b2cd073 drm/i915/gt: Couple tasklet scheduling for all CS interrupts<br />
84c52535dbaf Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"<br />
d968c14536c6 drm/i915/gt: Another tweak for flushing the tasklets<br />
115fa74d21c8 drm/i915: Move tasklet from execlists to sched<br />
3fdabb21ae8c drm/i915: Move scheduler queue<br />
307f5103a402 drm/i915: Move common active lists from engine to i915_scheduler<br />
cce02f220b17 drm/i915: Extend the priority boosting for the display with a deadline<br />
ea38b5a2194f drm/i915/gt: Specify a deadline for the heartbeat<br />
ee5f9ad7eee0 drm/i915: Fair low-latency scheduling<br />
48624311bbf0 drm/i915: Wrap cmpxchg64 with try_cmpxchg64() helper<br />
a751859ecb72 drm/i915: Fix the iterative dfs for defering requests<br />
a5ffb8e4d752 drm/i915: Extract the ability to defer and rerun a request later<br />
f0634ef3a719 drm/i915: Extract request suspension from the execlists backend<br />
0c5bc38dac03 drm/i915: Extract request submission from execlists<br />
6463731d3356 drm/i915/gt: Remove timeslice suppression<br />
3835bb8e7018 drm/i915: Improve DFS for priority inheritance<br />
fdf0bf3f6e3e drm/i915/selftests: Exercise priority inheritance around an engine loop<br />
622182a65e16 drm/i915/selftests: Measure set-priority duration<br />
c5834625d876 drm/i915: Restructure priority inheritance<br />
76805c1d568f drm/i915: Teach the i915_dependency to use a double-lock<br />
34b62d953f50 drm/i915/gt: Do not suspend bonded requests if one hangs<br />
b916ef805b71 drm/i915: Replace engine-&gt;schedule() with a known request operation<br />
b0f4da50b0fc drm/i915: Prune empty priolists<br />
506d0c1b2d3a drm/i915/gt: Defer the kmem_cache_free() until after the HW submit<br />
70dd8ff805da drm/i915: Remove I915_USER_PRIORITY_SHIFT<br />
19429f06a9d1 drm/i915: Strip out internal priorities<br />
7bbaf73cc381 drm/i915/gt: Refactor heartbeat request construction and submission<br />
f5458bf52a9d drm/i915/gt: Convert stats.active to plain unsigned int<br />
04fb23cb64d2 drm/i915/gt: Extract busy-stats for ring-scheduler<br />
a1dec9510015 drm/i915/gt: Drop atomic for engine-&gt;fw_active tracking<br />
aba47aad12c0 drm/i915: Reduce test_and_set_bit to set_bit in i915_request_submit()<br />
ca26a0835509 drm/i915/gem: Reduce ctx-&gt;engines_mutex for get_engines()<br />
0874a9ee121d drm/i915/gem: Reduce ctx-&gt;engine_mutex for reading the clone source<br />
acb070e009e6 drm/i915: Drop i915_request.lock requirement for intel_rps_boost()<br />
e1ba077c4634 drm/i915: Drop i915_request.lock serialisation around await_start<br />
f41ace3aacd9 drm/i915/gem: Optimistically prune dma-resv from the shrinker.<br />
801b88f03c21 drm/i915/gt: Prefer recycling an idle fence<br />
ccb57dc0aafd drm/i915/gt: Consolidate the CS timestamp clocks<br />
937af88e9869 drm/i915/selftests: Confirm RING_TIMESTAMP / CTX_TIMESTAMP share a clock<br />
99692fe0f319 drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines<br />
722362f35c0d drm/i915/selftests: Exercise relative timeline modes<br />
a3ff02a6c8f0 drm/i915/gt: Use indices for writing into relative timelines<br />
98e9db354de5 drm/i915/gt: Add timeline "mode"<br />
3c050f7bff37 drm/i915/gt: Track timeline GGTT offset separately from subpage offset<br />
5d9534289170 drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb<br />
d77dfac7aad3 drm/i915/gt: Track all timelines created using the HWSP<br />
e4f662259e10 drm/i915/gt: Track the overall awake/busy time<br />
8ccab6df158e drm/i915/gem: Drop free_work for GEM contexts<br />
8ddfebc69fcb drm/i915/gt: ce-&gt;inflight updates are now serialised<br />
a28f9e8810aa drm/i915/gt: Simplify virtual engine handling for execlists_hold()<br />
9aefee3ded48 drm/i915/gt: Resubmit the virtual engine on schedule-out<br />
b6c9a8fd2b70 drm/i915/gt: Shrink the critical section for irq signaling<br />
af9dc0dc069e drm/i915/gt: Remove virtual breadcrumb before transfer<br />
a83ac0a0f58e drm/i915/gt: Defer schedule_out until after the next dequeue<br />
b930ba2a83d3 drm/i915/gt: Decouple inflight virtual engines<br />
efdd2df1bc73 drm/i915/gt: Use virtual_engine during execlists_dequeue<br />
4aa9ef6d49f8 drm/i915/gt: Replace direct submit with direct call to tasklet<br />
b674cfb42071 drm/i915: Encode fence specific waitqueue behaviour into the wait.flags<br />
4e8074241dc4 drm/i915/uc: Squelch load failure error message<br />
0dc75ecba54f drm/i915: Use cmpxchg64 for 32b compatilibity</p>

</body>
</html>

--===============7391207938317856153==--

--===============0271699627==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0271699627==--
