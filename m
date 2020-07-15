Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FB62211D5
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 18:03:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39DF46EBAF;
	Wed, 15 Jul 2020 16:03:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 609E56EBAD;
 Wed, 15 Jul 2020 16:03:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 58707A363B;
 Wed, 15 Jul 2020 16:03:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 15 Jul 2020 16:03:29 -0000
Message-ID: <159482900932.3437.8785830856171734547@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200715115147.11866-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/66=5D_drm/i915=3A_Reduce_i915=5Frequest?=
 =?utf-8?q?=2Elock_contention_for_i915=5Frequest=5Fwait_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1130979242=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1130979242==
Content-Type: multipart/alternative;
 boundary="===============0196094067317396070=="

--===============0196094067317396070==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/66] drm/i915: Reduce i915_request.lock contention for i915_request_wait (rev2)
URL   : https://patchwork.freedesktop.org/series/79517/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8750 -> Patchwork_18179
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/index.html

Known issues
------------

  Here are the changes found in Patchwork_18179 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [PASS][1] -> [FAIL][2] ([i915#1888]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_flink_basic@flink-lifetime:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-y/igt@i915_pm_rpm@basic-pci-d3-state.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-tgl-y/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:
    - fi-icl-u2:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-byt-j1900:       [DMESG-WARN][9] ([i915#1982]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-byt-j1900/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-byt-j1900/igt@i915_module_load@reload.html
    - fi-bxt-dsi:         [DMESG-WARN][11] ([i915#1635] / [i915#1982]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-bxt-dsi/igt@i915_module_load@reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-bxt-dsi/igt@i915_module_load@reload.html
    - fi-tgl-u2:          [DMESG-WARN][13] ([i915#402]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-u2/igt@i915_module_load@reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-tgl-u2/igt@i915_module_load@reload.html
    - fi-tgl-y:           [DMESG-WARN][15] ([i915#1982]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-y/igt@i915_module_load@reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-tgl-y/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - {fi-tgl-dsi}:       [DMESG-WARN][17] ([i915#1982]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-tgl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-tgl-u2:          [DMESG-FAIL][19] ([i915#1233]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-u2/igt@i915_selftest@live@gt_lrc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-tgl-u2/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - {fi-kbl-7560u}:     [DMESG-WARN][21] ([i915#1982]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-bsw-kefka:       [DMESG-WARN][23] ([i915#1982]) -> [PASS][24] +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@vgem_basic@setversion:
    - fi-tgl-y:           [DMESG-WARN][25] ([i915#402]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-y/igt@vgem_basic@setversion.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-tgl-y/igt@vgem_basic@setversion.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [DMESG-FAIL][27] ([i915#62]) -> [DMESG-FAIL][28] ([i915#62] / [i915#95])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][29] ([i915#62] / [i915#92]) -> [DMESG-WARN][30] ([i915#62] / [i915#92] / [i915#95]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-modeset@a-dp1:
    - fi-kbl-x1275:       [DMESG-WARN][31] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][32] ([i915#62] / [i915#92]) +4 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (47 -> 40)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8750 -> Patchwork_18179

  CI-20190529: 20190529
  CI_DRM_8750: 0714e0ca72205b9c38c4b2a09d8d5981637af2fb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5735: 21f8204e54c122e4a0f8ca4b59e4b2db8d1ba687 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18179: 85f3b20e2a3296847de34a044cd16516b5798d70 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

85f3b20e2a32 drm/i915/gem: Remove timeline nesting from snb relocs
e0e91286252d drm/i915/gt: Enable ring scheduling for gen6/7
eaa788663d0a drm/i915/gt: Implement ring scheduler for gen6/7
3e60e3380101 drm/i915/gt: Infrastructure for ring scheduling
e7bfa5f7c2ca drm/i915/gt: Use client timeline address for seqno writes
0c68e10ca35a drm/i915/gt: Support creation of 'internal' rings
84f48ea3e305 drm/i915/gt: Couple tasklet scheduling for all CS interrupts
b8ed262e9007 Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"
dea960c9f9bc drm/i915: Move saturated workload detection to the GT
ba8e433eb1ad drm/i915: Replace the priority boosting for the display with a deadline
c1be9968e1e1 drm/i915/gt: Specify a deadline for the heartbeat
55f8528025f2 drm/i915: Fair low-latency scheduling
fffa992d3a28 drm/i915/gt: Remove timeslice suppression
53f0f5814c60 drm/i915: Restructure priority inheritance
6423ee0d3c8a drm/i915: Teach the i915_dependency to use a double-lock
56ddf5a9a91a drm/i915/gt: Do not suspend bonded requests if one hangs
2383c96eac81 drm/i915: Replace engine->schedule() with a known request operation
bce06e971029 drm/i915: Remove I915_USER_PRIORITY_SHIFT
000a31affd74 drm/i915: Strip out internal priorities
0618152c0ed3 drm/i915: Lift waiter/signaler iterators
d66ffb59c681 drm/i915/gt: Convert stats.active to plain unsigned int
f21e9ee6ef05 drm/i915/gt: Extract busy-stats for ring-scheduler
f0a8817be8e7 drm/i915/gt: Drop atomic for engine->fw_active tracking
9bc1aca39d8f drm/i915/gt: ce->inflight updates are now serialised
c7b81ba5771a drm/i915/gt: Simplify virtual engine handling for execlists_hold()
9a3abbadb311 drm/i915/gt: Resubmit the virtual engine on schedule-out
0782f33abf51 drm/i915/gt: Defer schedule_out until after the next dequeue
655eecd42876 drm/i915/gt: Decouple inflight virtual engines
28a117fb0f10 drm/i915/gt: Use virtual_engine during execlists_dequeue
a97efde96c6f drm/i915/gt: Free stale request on destroying the virtual engine
364ad467bb9c drm/i915/gt: Replace direct submit with direct call to tasklet
c4ccca3c8899 drm/i915/gt: Check for a completed last request once
8cdadd182cff drm/i915/gt: Decouple completed requests on unwind
35a1391f3c4b drm/i915: Remove unused i915_gem_evict_vm()
cd9d5d1c7e79 drm/i915/gt: Push the wait for the context to bound to the request
f89d50b33136 drm/i915/gt: Acquire backing storage for the context
22e6c1fa7455 drm/i915: Specialise GGTT binding
6cb053b52a1e drm/i915: Hold wakeref for the duration of the vma GGTT binding
69013a1a8c42 drm/i915/gem: Replace i915_gem_object.mm.mutex with reservation_ww_class
90ec819f7195 drm/i915/gem: Pull execbuf dma resv under a single critical section
d3fe2f8baa11 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
9040f3b37f3b drm/i915/gem: Reintroduce multiple passes for reloc processing
c180ca0649ab drm/i915/gem: Include secure batch in common execbuf pinning
2d3e21b38717 drm/i915/gem: Include cmdparser in common execbuf pinning
2ee5a36ee1d9 drm/i915/gem: Bind the fence async for execbuf
d6442826e675 drm/i915/gem: Asynchronous GTT unbinding
dbe18ef2f769 drm/i915/gem: Separate the ww_mutex walker into its own list
339dd5f35caf drm/i915/gem: Assign context id for async work
69b95b2f1b58 drm/i915: Always defer fenced work to the worker
6ac79cc3b262 drm/i915: Add list_for_each_entry_safe_continue_reverse
63d098780e45 drm/i915/gem: Remove the call for no-evict i915_vma_pin
1608dda568ca drm/i915/gem: Break apart the early i915_vma_pin from execbuf object lookup
f3c8a75f8f0d drm/i915/gem: Rename execbuf.bind_link to unbound_link
6bdab21d6597 drm/i915/gem: Don't drop the timeline lock during execbuf
2747217ec2ad drm/i915: Switch to object allocations for page directories
5250859a3025 drm/i915: Preallocate stashes for vma page-directories
638a715d2c30 drm/i915: Soften the tasklet flush frequency before waits
8d7b14253127 drm/i915: Provide a fastpath for waiting on vma bindings
3bfed8a701e1 drm/i915: Make the stale cached active node available for any timeline
db2f42ce7206 drm/i915: Keep the most recently used active-fence upon discard
74f1c669d951 drm/i915: Export a preallocate variant of i915_active_acquire()
e0279073e5d3 drm/i915: Skip taking acquire mutex for no ref->active callback
96f54f935986 drm/i915: Add a couple of missing i915_active_fini()
c0b29c38984e drm/i915: Remove requirement for holding i915_request.lock for breadcrumbs
78b2b4227c1a drm/i915: Remove i915_request.lock requirement for execution callbacks
130497fc98af drm/i915: Reduce i915_request.lock contention for i915_request_wait

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/index.html

--===============0196094067317396070==
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
<tr><td><b>Series:</b></td><td>series starting with [01/66] drm/i915: Reduce i915_request.lock contention for i915_request_wait (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/79517/">https://patchwork.freedesktop.org/series/79517/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8750 -&gt; Patchwork_18179</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18179 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@flink-lifetime:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-y/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-tgl-y/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-byt-j1900/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-byt-j1900/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-bxt-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-bxt-dsi/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-u2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-tgl-u2/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-y/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-tgl-y/igt@i915_module_load@reload.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-tgl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-u2/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1233">i915#1233</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-tgl-u2/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@setversion:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-tgl-y/igt@vgem_basic@setversion.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-tgl-y/igt@vgem_basic@setversion.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-dp1:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8750/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18179/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) +4 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (47 -&gt; 40)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8750 -&gt; Patchwork_18179</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8750: 0714e0ca72205b9c38c4b2a09d8d5981637af2fb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5735: 21f8204e54c122e4a0f8ca4b59e4b2db8d1ba687 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18179: 85f3b20e2a3296847de34a044cd16516b5798d70 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>85f3b20e2a32 drm/i915/gem: Remove timeline nesting from snb relocs<br />
e0e91286252d drm/i915/gt: Enable ring scheduling for gen6/7<br />
eaa788663d0a drm/i915/gt: Implement ring scheduler for gen6/7<br />
3e60e3380101 drm/i915/gt: Infrastructure for ring scheduling<br />
e7bfa5f7c2ca drm/i915/gt: Use client timeline address for seqno writes<br />
0c68e10ca35a drm/i915/gt: Support creation of 'internal' rings<br />
84f48ea3e305 drm/i915/gt: Couple tasklet scheduling for all CS interrupts<br />
b8ed262e9007 Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"<br />
dea960c9f9bc drm/i915: Move saturated workload detection to the GT<br />
ba8e433eb1ad drm/i915: Replace the priority boosting for the display with a deadline<br />
c1be9968e1e1 drm/i915/gt: Specify a deadline for the heartbeat<br />
55f8528025f2 drm/i915: Fair low-latency scheduling<br />
fffa992d3a28 drm/i915/gt: Remove timeslice suppression<br />
53f0f5814c60 drm/i915: Restructure priority inheritance<br />
6423ee0d3c8a drm/i915: Teach the i915_dependency to use a double-lock<br />
56ddf5a9a91a drm/i915/gt: Do not suspend bonded requests if one hangs<br />
2383c96eac81 drm/i915: Replace engine-&gt;schedule() with a known request operation<br />
bce06e971029 drm/i915: Remove I915_USER_PRIORITY_SHIFT<br />
000a31affd74 drm/i915: Strip out internal priorities<br />
0618152c0ed3 drm/i915: Lift waiter/signaler iterators<br />
d66ffb59c681 drm/i915/gt: Convert stats.active to plain unsigned int<br />
f21e9ee6ef05 drm/i915/gt: Extract busy-stats for ring-scheduler<br />
f0a8817be8e7 drm/i915/gt: Drop atomic for engine-&gt;fw_active tracking<br />
9bc1aca39d8f drm/i915/gt: ce-&gt;inflight updates are now serialised<br />
c7b81ba5771a drm/i915/gt: Simplify virtual engine handling for execlists_hold()<br />
9a3abbadb311 drm/i915/gt: Resubmit the virtual engine on schedule-out<br />
0782f33abf51 drm/i915/gt: Defer schedule_out until after the next dequeue<br />
655eecd42876 drm/i915/gt: Decouple inflight virtual engines<br />
28a117fb0f10 drm/i915/gt: Use virtual_engine during execlists_dequeue<br />
a97efde96c6f drm/i915/gt: Free stale request on destroying the virtual engine<br />
364ad467bb9c drm/i915/gt: Replace direct submit with direct call to tasklet<br />
c4ccca3c8899 drm/i915/gt: Check for a completed last request once<br />
8cdadd182cff drm/i915/gt: Decouple completed requests on unwind<br />
35a1391f3c4b drm/i915: Remove unused i915_gem_evict_vm()<br />
cd9d5d1c7e79 drm/i915/gt: Push the wait for the context to bound to the request<br />
f89d50b33136 drm/i915/gt: Acquire backing storage for the context<br />
22e6c1fa7455 drm/i915: Specialise GGTT binding<br />
6cb053b52a1e drm/i915: Hold wakeref for the duration of the vma GGTT binding<br />
69013a1a8c42 drm/i915/gem: Replace i915_gem_object.mm.mutex with reservation_ww_class<br />
90ec819f7195 drm/i915/gem: Pull execbuf dma resv under a single critical section<br />
d3fe2f8baa11 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.<br />
9040f3b37f3b drm/i915/gem: Reintroduce multiple passes for reloc processing<br />
c180ca0649ab drm/i915/gem: Include secure batch in common execbuf pinning<br />
2d3e21b38717 drm/i915/gem: Include cmdparser in common execbuf pinning<br />
2ee5a36ee1d9 drm/i915/gem: Bind the fence async for execbuf<br />
d6442826e675 drm/i915/gem: Asynchronous GTT unbinding<br />
dbe18ef2f769 drm/i915/gem: Separate the ww_mutex walker into its own list<br />
339dd5f35caf drm/i915/gem: Assign context id for async work<br />
69b95b2f1b58 drm/i915: Always defer fenced work to the worker<br />
6ac79cc3b262 drm/i915: Add list_for_each_entry_safe_continue_reverse<br />
63d098780e45 drm/i915/gem: Remove the call for no-evict i915_vma_pin<br />
1608dda568ca drm/i915/gem: Break apart the early i915_vma_pin from execbuf object lookup<br />
f3c8a75f8f0d drm/i915/gem: Rename execbuf.bind_link to unbound_link<br />
6bdab21d6597 drm/i915/gem: Don't drop the timeline lock during execbuf<br />
2747217ec2ad drm/i915: Switch to object allocations for page directories<br />
5250859a3025 drm/i915: Preallocate stashes for vma page-directories<br />
638a715d2c30 drm/i915: Soften the tasklet flush frequency before waits<br />
8d7b14253127 drm/i915: Provide a fastpath for waiting on vma bindings<br />
3bfed8a701e1 drm/i915: Make the stale cached active node available for any timeline<br />
db2f42ce7206 drm/i915: Keep the most recently used active-fence upon discard<br />
74f1c669d951 drm/i915: Export a preallocate variant of i915_active_acquire()<br />
e0279073e5d3 drm/i915: Skip taking acquire mutex for no ref-&gt;active callback<br />
96f54f935986 drm/i915: Add a couple of missing i915_active_fini()<br />
c0b29c38984e drm/i915: Remove requirement for holding i915_request.lock for breadcrumbs<br />
78b2b4227c1a drm/i915: Remove i915_request.lock requirement for execution callbacks<br />
130497fc98af drm/i915: Reduce i915_request.lock contention for i915_request_wait</p>

</body>
</html>

--===============0196094067317396070==--

--===============1130979242==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1130979242==--
