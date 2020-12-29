Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CF92E70B1
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 13:49:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3BA98929C;
	Tue, 29 Dec 2020 12:49:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 01B4189272;
 Tue, 29 Dec 2020 12:49:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EEFB3AA0EB;
 Tue, 29 Dec 2020 12:49:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 29 Dec 2020 12:49:35 -0000
Message-ID: <160924617594.17549.15520889314162371656@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201229120145.26045-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201229120145.26045-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/56=5D_drm/i915/gt=3A_Restore_ce-=3Esign?=
 =?utf-8?q?al_flush_before_releasing_virtual_engine?=
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
Content-Type: multipart/mixed; boundary="===============1470768920=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1470768920==
Content-Type: multipart/alternative;
 boundary="===============4984164204408486113=="

--===============4984164204408486113==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/56] drm/i915/gt: Restore ce->signal flush before releasing virtual engine
URL   : https://patchwork.freedesktop.org/series/85294/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9530 -> Patchwork_19220
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19220 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19220, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19220/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19220:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gtt:
    - fi-bsw-n3050:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-bsw-n3050/igt@i915_selftest@live@gtt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19220/fi-bsw-n3050/igt@i915_selftest@live@gtt.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9530 and Patchwork_19220:

### New IGT tests (1) ###

  * igt@i915_selftest@live@scheduler:
    - Statuses : 34 pass(s)
    - Exec time: [0.67, 9.61] s

  

Known issues
------------

  Here are the changes found in Patchwork_19220 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-byt-j1900:       NOTRUN -> [SKIP][3] ([fdo#109271]) +27 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19220/fi-byt-j1900/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-bsw-n3050:       [PASS][4] -> [INCOMPLETE][5] ([i915#2369])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19220/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-byt-j1900:       NOTRUN -> [SKIP][6] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19220/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([i915#402])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19220/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  * igt@runner@aborted:
    - fi-bsw-n3050:       NOTRUN -> [FAIL][9] ([i915#1436] / [i915#483])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19220/fi-bsw-n3050/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [DMESG-WARN][10] ([i915#2411] / [i915#402]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19220/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-bsw-nick:        [DMESG-FAIL][12] ([i915#2675] / [i915#541]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19220/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-y:           [DMESG-WARN][14] ([i915#402]) -> [PASS][15] +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-tgl-y/igt@prime_vgem@basic-userptr.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19220/fi-tgl-y/igt@prime_vgem@basic-userptr.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2675]: https://gitlab.freedesktop.org/drm/intel/issues/2675
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (39 -> 38)
------------------------------

  Additional (1): fi-byt-j1900 
  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9530 -> Patchwork_19220

  CI-20190529: 20190529
  CI_DRM_9530: 4b094e30c7d79e59faef5ce793d6ebbcdbede5a2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5926: c81567cf1c05050f7becd4d78ebe349dfb2f9520 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19220: e89b9a4f59ca38398a238fd9523af2710945bd23 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e89b9a4f59ca drm/i915/gt: Limit C-states while waiting for requests
633bc777ab49 drm/i915/gt: Enable ring scheduling for gen6/7
16247b692dd4 drm/i915/gt: Implement ring scheduler for gen6/7
a326b4b56178 drm/i915/gt: Enable busy-stats for ring-scheduler
0ca0db3206f9 drm/i915/gt: Infrastructure for ring scheduling
d23d8470fe37 drm/i915/gt: Use client timeline address for seqno writes
2f3a563d0c64 drm/i915/gt: Support creation of 'internal' rings
c92ce77adff2 drm/i915/gt: Couple tasklet scheduling for all CS interrupts
4dd9da9947ea Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"
92e978ab04b4 drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines
3745e1be3ac7 drm/i915/selftests: Exercise relative timeline modes
0f154e95943a drm/i915/gt: Use indices for writing into relative timelines
d3fc994ef822 drm/i915/gt: Add timeline "mode"
2d030b16c499 drm/i915/gt: Track timeline GGTT offset separately from subpage offset
92bb940c953e drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb
c075709f4766 drm/i915: Bump default timeslicing quantum to 5ms
8e5ab6362632 drm/i915: Move saturated workload detection back to the context
c1d3e8da3441 drm/i915/gt: Support virtual engine queues
2fc331d15f56 drm/i915: Extend the priority boosting for the display with a deadline
3a61917c28fa drm/i915/gt: Specify a deadline for the heartbeat
cf1ea11d4f9f drm/i915: Fair low-latency scheduling
513af0b3e8c7 drm/i915: Wrap cmpxchg64 with try_cmpxchg64() helper
1c7ec2edd9ef drm/i915: Replace priolist rbtree with a skiplist
cd4ba685c265 drm/i915: Move tasklet from execlists to sched
c5bd056345df drm/i915: Move scheduler queue
0500494008c6 drm/i915: Move common active lists from engine to i915_scheduler
c9548999367a drm/i915: Fix the iterative dfs for defering requests
7ee390647b0c drm/i915: Extract the ability to defer and rerun a request later
f5765931129f drm/i915: Extract request suspension from the execlists backend
0985b4fb1bbc drm/i915: Extract request rewinding from execlists
df9a037a9db9 drm/i915: Extract request submission from execlists
d1bcccf864ff drm/i915: Improve DFS for priority inheritance
fa0560675867 drm/i915/selftests: Exercise priority inheritance around an engine loop
1e1b4d8257b8 drm/i915/selftests: Measure set-priority duration
65ec8303e7be drm/i915: Restructure priority inheritance
633b60d3ab4a drm/i915: Teach the i915_dependency to use a double-lock
ab7543b6a53b drm/i915: Replace engine->schedule() with a known request operation
3e9b37304663 drm/i915: Remove I915_USER_PRIORITY_SHIFT
f2dd5e0bd198 drm/i915: Strip out internal priorities
1416d1c632b4 drm/i915/gt: Skip over completed active execlists, again
5290a2049e43 drm/i915/gt: Remove timeslice suppression
5ee474627f5c drm/i915/gt: Do not suspend bonded requests if one hangs
a1db817adb4f drm/i915/gt: Convert stats.active to plain unsigned int
5b4b4f36ae61 drm/i915/gt: Extract busy-stats for ring-scheduler
c4ed88ca7714 drm/i915/gt: Drop atomic for engine->fw_active tracking
3348d18ca3ea drm/i915: Reduce test_and_set_bit to set_bit in i915_request_submit()
37f7bcca5bf7 drm/i915/gem: Reduce ctx->engines_mutex for get_engines()
f92a7ed45c5b drm/i915/gem: Reduce ctx->engine_mutex for reading the clone source
34d4b5110ba9 drm/i915: Drop i915_request.lock requirement for intel_rps_boost()
376a3fd1aa70 drm/i915: Drop i915_request.lock serialisation around await_start
9b223bba4489 drm/i915: Mark up protected uses of 'i915_request_completed'
16d47e1aed72 drm/i915/gem: Peek at the inflight context
d39c3dc09659 drm/i915/gt: Pull context closure check from request submit to schedule-in
b23f3eb56bd4 drm/i915/gt: Cancel submitted requests upon context reset
08fea6cdbfe1 drm/i915/gt: Only retire on the last breadcrumb if the last request
5d253c820f98 drm/i915/gt: Restore ce->signal flush before releasing virtual engine

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19220/index.html

--===============4984164204408486113==
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
<tr><td><b>Series:</b></td><td>series starting with [01/56] drm/i915/gt: Restore ce-&gt;signal flush before releasing virtual engine</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85294/">https://patchwork.freedesktop.org/series/85294/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19220/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19220/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9530 -&gt; Patchwork_19220</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19220 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19220, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19220/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19220:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gtt:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-bsw-n3050/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19220/fi-bsw-n3050/igt@i915_selftest@live@gtt.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9530 and Patchwork_19220:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@scheduler:<ul>
<li>Statuses : 34 pass(s)</li>
<li>Exec time: [0.67, 9.61] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19220 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19220/fi-byt-j1900/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19220/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2369">i915#2369</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19220/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo_two_files:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19220/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19220/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19220/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2675">i915#2675</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19220/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/fi-tgl-y/igt@prime_vgem@basic-userptr.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19220/fi-tgl-y/igt@prime_vgem@basic-userptr.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Additional (1): fi-byt-j1900 <br />
  Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9530 -&gt; Patchwork_19220</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9530: 4b094e30c7d79e59faef5ce793d6ebbcdbede5a2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5926: c81567cf1c05050f7becd4d78ebe349dfb2f9520 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19220: e89b9a4f59ca38398a238fd9523af2710945bd23 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e89b9a4f59ca drm/i915/gt: Limit C-states while waiting for requests<br />
633bc777ab49 drm/i915/gt: Enable ring scheduling for gen6/7<br />
16247b692dd4 drm/i915/gt: Implement ring scheduler for gen6/7<br />
a326b4b56178 drm/i915/gt: Enable busy-stats for ring-scheduler<br />
0ca0db3206f9 drm/i915/gt: Infrastructure for ring scheduling<br />
d23d8470fe37 drm/i915/gt: Use client timeline address for seqno writes<br />
2f3a563d0c64 drm/i915/gt: Support creation of 'internal' rings<br />
c92ce77adff2 drm/i915/gt: Couple tasklet scheduling for all CS interrupts<br />
4dd9da9947ea Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"<br />
92e978ab04b4 drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines<br />
3745e1be3ac7 drm/i915/selftests: Exercise relative timeline modes<br />
0f154e95943a drm/i915/gt: Use indices for writing into relative timelines<br />
d3fc994ef822 drm/i915/gt: Add timeline "mode"<br />
2d030b16c499 drm/i915/gt: Track timeline GGTT offset separately from subpage offset<br />
92bb940c953e drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb<br />
c075709f4766 drm/i915: Bump default timeslicing quantum to 5ms<br />
8e5ab6362632 drm/i915: Move saturated workload detection back to the context<br />
c1d3e8da3441 drm/i915/gt: Support virtual engine queues<br />
2fc331d15f56 drm/i915: Extend the priority boosting for the display with a deadline<br />
3a61917c28fa drm/i915/gt: Specify a deadline for the heartbeat<br />
cf1ea11d4f9f drm/i915: Fair low-latency scheduling<br />
513af0b3e8c7 drm/i915: Wrap cmpxchg64 with try_cmpxchg64() helper<br />
1c7ec2edd9ef drm/i915: Replace priolist rbtree with a skiplist<br />
cd4ba685c265 drm/i915: Move tasklet from execlists to sched<br />
c5bd056345df drm/i915: Move scheduler queue<br />
0500494008c6 drm/i915: Move common active lists from engine to i915_scheduler<br />
c9548999367a drm/i915: Fix the iterative dfs for defering requests<br />
7ee390647b0c drm/i915: Extract the ability to defer and rerun a request later<br />
f5765931129f drm/i915: Extract request suspension from the execlists backend<br />
0985b4fb1bbc drm/i915: Extract request rewinding from execlists<br />
df9a037a9db9 drm/i915: Extract request submission from execlists<br />
d1bcccf864ff drm/i915: Improve DFS for priority inheritance<br />
fa0560675867 drm/i915/selftests: Exercise priority inheritance around an engine loop<br />
1e1b4d8257b8 drm/i915/selftests: Measure set-priority duration<br />
65ec8303e7be drm/i915: Restructure priority inheritance<br />
633b60d3ab4a drm/i915: Teach the i915_dependency to use a double-lock<br />
ab7543b6a53b drm/i915: Replace engine-&gt;schedule() with a known request operation<br />
3e9b37304663 drm/i915: Remove I915_USER_PRIORITY_SHIFT<br />
f2dd5e0bd198 drm/i915: Strip out internal priorities<br />
1416d1c632b4 drm/i915/gt: Skip over completed active execlists, again<br />
5290a2049e43 drm/i915/gt: Remove timeslice suppression<br />
5ee474627f5c drm/i915/gt: Do not suspend bonded requests if one hangs<br />
a1db817adb4f drm/i915/gt: Convert stats.active to plain unsigned int<br />
5b4b4f36ae61 drm/i915/gt: Extract busy-stats for ring-scheduler<br />
c4ed88ca7714 drm/i915/gt: Drop atomic for engine-&gt;fw_active tracking<br />
3348d18ca3ea drm/i915: Reduce test_and_set_bit to set_bit in i915_request_submit()<br />
37f7bcca5bf7 drm/i915/gem: Reduce ctx-&gt;engines_mutex for get_engines()<br />
f92a7ed45c5b drm/i915/gem: Reduce ctx-&gt;engine_mutex for reading the clone source<br />
34d4b5110ba9 drm/i915: Drop i915_request.lock requirement for intel_rps_boost()<br />
376a3fd1aa70 drm/i915: Drop i915_request.lock serialisation around await_start<br />
9b223bba4489 drm/i915: Mark up protected uses of 'i915_request_completed'<br />
16d47e1aed72 drm/i915/gem: Peek at the inflight context<br />
d39c3dc09659 drm/i915/gt: Pull context closure check from request submit to schedule-in<br />
b23f3eb56bd4 drm/i915/gt: Cancel submitted requests upon context reset<br />
08fea6cdbfe1 drm/i915/gt: Only retire on the last breadcrumb if the last request<br />
5d253c820f98 drm/i915/gt: Restore ce-&gt;signal flush before releasing virtual engine</p>

</body>
</html>

--===============4984164204408486113==--

--===============1470768920==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1470768920==--
