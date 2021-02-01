Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE27C30AA04
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 15:41:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B29D06E7D7;
	Mon,  1 Feb 2021 14:41:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E11EB6E7D3;
 Mon,  1 Feb 2021 14:41:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DACB1A00CC;
 Mon,  1 Feb 2021 14:41:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 01 Feb 2021 14:41:13 -0000
Message-ID: <161219047386.18682.13293275912921107069@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210201085715.27435-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/57=5D_drm/i915/gt=3A_Restrict_the_GT_cl?=
 =?utf-8?q?ock_override_to_just_Icelake?=
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
Content-Type: multipart/mixed; boundary="===============0905589331=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0905589331==
Content-Type: multipart/alternative;
 boundary="===============8349504456167950889=="

--===============8349504456167950889==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/57] drm/i915/gt: Restrict the GT clock override to just Icelake
URL   : https://patchwork.freedesktop.org/series/86521/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9712 -> Patchwork_19551
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19551/index.html

New tests
---------

  New tests have been introduced between CI_DRM_9712 and Patchwork_19551:

### New IGT tests (1) ###

  * igt@i915_selftest@live@scheduler:
    - Statuses : 1 dmesg-fail(s) 34 pass(s)
    - Exec time: [0.68, 9.30] s

  

Known issues
------------

  Here are the changes found in Patchwork_19551 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@fork-compute0:
    - fi-tgl-u2:          NOTRUN -> [SKIP][1] ([fdo#109315] / [i915#2575]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19551/fi-tgl-u2/igt@amdgpu/amd_cs_nop@fork-compute0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-u2:          NOTRUN -> [SKIP][2] ([i915#2190])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19551/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_linear_blits@basic:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-tgl-y/igt@gem_linear_blits@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19551/fi-tgl-y/igt@gem_linear_blits@basic.html

  * igt@i915_selftest@live@hangcheck:
    - fi-byt-j1900:       [PASS][5] -> [SKIP][6] ([fdo#109271]) +20 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-byt-j1900/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19551/fi-byt-j1900/igt@i915_selftest@live@hangcheck.html

  * {igt@i915_selftest@live@scheduler} (NEW):
    - fi-byt-j1900:       NOTRUN -> [DMESG-FAIL][7] ([i915#2292])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19551/fi-byt-j1900/igt@i915_selftest@live@scheduler.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-tgl-u2:          NOTRUN -> [SKIP][8] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19551/fi-tgl-u2/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-u2:          NOTRUN -> [SKIP][9] ([fdo#109285])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19551/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@runner@aborted:
    - fi-byt-j1900:       NOTRUN -> [FAIL][10] ([i915#2426] / [i915#2505])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19551/fi-byt-j1900/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_ringfill@basic-all:
    - fi-tgl-y:           [DMESG-WARN][11] ([i915#402]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-tgl-y/igt@gem_ringfill@basic-all.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19551/fi-tgl-y/igt@gem_ringfill@basic-all.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [FAIL][13] ([i915#1161] / [i915#262]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19551/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  
#### Warnings ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [DMESG-WARN][15] ([i915#1982] / [i915#402]) -> [DMESG-WARN][16] ([i915#402])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19551/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1161]: https://gitlab.freedesktop.org/drm/intel/issues/1161
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2292]: https://gitlab.freedesktop.org/drm/intel/issues/2292
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 39)
------------------------------

  Additional (1): fi-tgl-u2 
  Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9712 -> Patchwork_19551

  CI-20190529: 20190529
  CI_DRM_9712: 5276d4e84db68c095d7bacc0f3943936b49ef829 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5982: cfb04c4a6171575f8782fe1dd5c63700ad33799e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19551: c95a028fe9ef397894e1de3f63cfe39b5d34a3c6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c95a028fe9ef drm/i915: Support secure dispatch on gen6/gen7
3792ac8f12bf drm/i915/gt: Enable ring scheduling for gen5-7
a6fdbc84692b drm/i915/gt: Implement ring scheduler for gen4-7
ca4963eac3db drm/i915/gt: Infrastructure for ring scheduling
a412ec7bad23 drm/i915/gt: Use client timeline address for seqno writes
07876cc097ab drm/i915/gt: Support creation of 'internal' rings
069f382f469f drm/i915/gt: Couple tasklet scheduling for all CS interrupts
eaa4cd3f228c Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"
2f0c54ac6a70 drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines
db08eb6640fc drm/i915/selftests: Exercise relative timeline modes
6e26e9574360 drm/i915/gt: Use indices for writing into relative timelines
be28ddaf3bb0 drm/i915/gt: Add timeline "mode"
5cbb46815b8e drm/i915/gt: Track timeline GGTT offset separately from subpage offset
86b5296ad1e5 drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb
c90a2524e5fe drm/i915/gt: Delay taking irqoff for execlists submission
c192c49b3bd7 drm/i915: Bump default timeslicing quantum to 5ms
65775c6234be drm/i915: Move saturated workload detection back to the context
a6cae6915e50 drm/i915/gt: Support virtual engine queues
8644267db4b4 drm/i915: Extend the priority boosting for the display with a deadline
24a11bfa8dbf drm/i915/gt: Specify a deadline for the heartbeat
23fa83845f05 drm/i915: Fair low-latency scheduling
2beff973e550 drm/i915: Wrap cmpxchg64 with try_cmpxchg64() helper
8f639a9acdb1 drm/i915: Replace priolist rbtree with a skiplist
8260622919a6 drm/i915: Move preempt-reset flag to the scheduler
6c112fa724bf drm/i915: Move busywaiting control to the scheduler
a73b1d6cc5e3 drm/i915: Move needs-breadcrumb flags to scheduler
8232ce85b9b8 drm/i915/gt: Declare when we enabled timeslicing
d3588f5a9eef drm/i915: Move timeslicing flag to scheduler
94cbab52393f drm/i915: Move scheduler flags
df270cd5e7df drm/i915: Wrap i915_request_use_semaphores()
e7478a72f93a drm/i915: Show execlists queues when dumping state
ccdcb60f774f drm/i915: Move finding the current active request to the scheduler
492e7ec772a6 drm/i915: Move submit_request to i915_sched_engine
60fd8d9b19bc drm/i915/gt: Only kick the scheduler on timeslice/preemption change
2d5deefbefcb drm/i915: Move tasklet from execlists to sched
d985e3531992 drm/i915: Move scheduler queue
ac5293ea766c drm/i915: Move common active lists from engine to i915_scheduler
243b0f26514f drm/i915: Wrap access to intel_engine.active
717bce49e733 drm/i915: Fix the iterative dfs for defering requests
8e964ba6ce2c drm/i915: Extract the ability to defer and rerun a request later
a68bf747a102 drm/i915: Extract request suspension from the execlists
9ab06af43466 drm/i915: Extract request rewinding from execlists
cf0e863b4096 drm/i915: Extract request submission from execlists
89047ac8d3f9 drm/i915: Improve DFS for priority inheritance
eee64a384f1e drm/i915/selftests: Force a rewind if at first we don't succeed
99c1c68a0d6e drm/i915/selftests: Exercise priority inheritance around an engine loop
e49cef4b719f drm/i915/selftests: Measure set-priority duration
e0c808804030 drm/i915: Restructure priority inheritance
afc69f5ccf6a drm/i915: Replace engine->schedule() with a known request operation
95ba0d20edbc drm/i915/gt: Move submission_method into intel_gt
fb9da1a17162 drm/i915/gt: Move engine setup out of set_default_submission
ba9a0134558c drm/i915/gt: Always flush the submission queue on checking for idle
396c9772ff96 drm/i915: Take rcu_read_lock for querying fence's driver/timeline names
812b9702970c drm/i915: Protect against request freeing during cancellation on wedging
67ba4bc3ef45 drm/i915/selftests: Exercise cross-process context isolation
1168085745bb drm/i915/selftests: Exercise relative mmio paths to non-privileged registers
02ff187efe58 drm/i915/gt: Restrict the GT clock override to just Icelake

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19551/index.html

--===============8349504456167950889==
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
<tr><td><b>Series:</b></td><td>series starting with [01/57] drm/i915/gt: Restrict the GT clock override to just Icelake</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86521/">https://patchwork.freedesktop.org/series/86521/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19551/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19551/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9712 -&gt; Patchwork_19551</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19551/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9712 and Patchwork_19551:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@scheduler:<ul>
<li>Statuses : 1 dmesg-fail(s) 34 pass(s)</li>
<li>Exec time: [0.68, 9.30] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19551 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-compute0:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19551/fi-tgl-u2/igt@amdgpu/amd_cs_nop@fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19551/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-tgl-y/igt@gem_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19551/fi-tgl-y/igt@gem_linear_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-byt-j1900/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19551/fi-byt-j1900/igt@i915_selftest@live@hangcheck.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +20 similar issues</li>
</ul>
</li>
<li>
<p>{igt@i915_selftest@live@scheduler} (NEW):</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19551/fi-byt-j1900/igt@i915_selftest@live@scheduler.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2292">i915#2292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19551/fi-tgl-u2/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19551/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19551/fi-byt-j1900/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ringfill@basic-all:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-tgl-y/igt@gem_ringfill@basic-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19551/fi-tgl-y/igt@gem_ringfill@basic-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1161">i915#1161</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19551/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9712/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19551/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 39)</h2>
<p>Additional (1): fi-tgl-u2 <br />
  Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9712 -&gt; Patchwork_19551</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9712: 5276d4e84db68c095d7bacc0f3943936b49ef829 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5982: cfb04c4a6171575f8782fe1dd5c63700ad33799e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19551: c95a028fe9ef397894e1de3f63cfe39b5d34a3c6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c95a028fe9ef drm/i915: Support secure dispatch on gen6/gen7<br />
3792ac8f12bf drm/i915/gt: Enable ring scheduling for gen5-7<br />
a6fdbc84692b drm/i915/gt: Implement ring scheduler for gen4-7<br />
ca4963eac3db drm/i915/gt: Infrastructure for ring scheduling<br />
a412ec7bad23 drm/i915/gt: Use client timeline address for seqno writes<br />
07876cc097ab drm/i915/gt: Support creation of 'internal' rings<br />
069f382f469f drm/i915/gt: Couple tasklet scheduling for all CS interrupts<br />
eaa4cd3f228c Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"<br />
2f0c54ac6a70 drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines<br />
db08eb6640fc drm/i915/selftests: Exercise relative timeline modes<br />
6e26e9574360 drm/i915/gt: Use indices for writing into relative timelines<br />
be28ddaf3bb0 drm/i915/gt: Add timeline "mode"<br />
5cbb46815b8e drm/i915/gt: Track timeline GGTT offset separately from subpage offset<br />
86b5296ad1e5 drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb<br />
c90a2524e5fe drm/i915/gt: Delay taking irqoff for execlists submission<br />
c192c49b3bd7 drm/i915: Bump default timeslicing quantum to 5ms<br />
65775c6234be drm/i915: Move saturated workload detection back to the context<br />
a6cae6915e50 drm/i915/gt: Support virtual engine queues<br />
8644267db4b4 drm/i915: Extend the priority boosting for the display with a deadline<br />
24a11bfa8dbf drm/i915/gt: Specify a deadline for the heartbeat<br />
23fa83845f05 drm/i915: Fair low-latency scheduling<br />
2beff973e550 drm/i915: Wrap cmpxchg64 with try_cmpxchg64() helper<br />
8f639a9acdb1 drm/i915: Replace priolist rbtree with a skiplist<br />
8260622919a6 drm/i915: Move preempt-reset flag to the scheduler<br />
6c112fa724bf drm/i915: Move busywaiting control to the scheduler<br />
a73b1d6cc5e3 drm/i915: Move needs-breadcrumb flags to scheduler<br />
8232ce85b9b8 drm/i915/gt: Declare when we enabled timeslicing<br />
d3588f5a9eef drm/i915: Move timeslicing flag to scheduler<br />
94cbab52393f drm/i915: Move scheduler flags<br />
df270cd5e7df drm/i915: Wrap i915_request_use_semaphores()<br />
e7478a72f93a drm/i915: Show execlists queues when dumping state<br />
ccdcb60f774f drm/i915: Move finding the current active request to the scheduler<br />
492e7ec772a6 drm/i915: Move submit_request to i915_sched_engine<br />
60fd8d9b19bc drm/i915/gt: Only kick the scheduler on timeslice/preemption change<br />
2d5deefbefcb drm/i915: Move tasklet from execlists to sched<br />
d985e3531992 drm/i915: Move scheduler queue<br />
ac5293ea766c drm/i915: Move common active lists from engine to i915_scheduler<br />
243b0f26514f drm/i915: Wrap access to intel_engine.active<br />
717bce49e733 drm/i915: Fix the iterative dfs for defering requests<br />
8e964ba6ce2c drm/i915: Extract the ability to defer and rerun a request later<br />
a68bf747a102 drm/i915: Extract request suspension from the execlists<br />
9ab06af43466 drm/i915: Extract request rewinding from execlists<br />
cf0e863b4096 drm/i915: Extract request submission from execlists<br />
89047ac8d3f9 drm/i915: Improve DFS for priority inheritance<br />
eee64a384f1e drm/i915/selftests: Force a rewind if at first we don't succeed<br />
99c1c68a0d6e drm/i915/selftests: Exercise priority inheritance around an engine loop<br />
e49cef4b719f drm/i915/selftests: Measure set-priority duration<br />
e0c808804030 drm/i915: Restructure priority inheritance<br />
afc69f5ccf6a drm/i915: Replace engine-&gt;schedule() with a known request operation<br />
95ba0d20edbc drm/i915/gt: Move submission_method into intel_gt<br />
fb9da1a17162 drm/i915/gt: Move engine setup out of set_default_submission<br />
ba9a0134558c drm/i915/gt: Always flush the submission queue on checking for idle<br />
396c9772ff96 drm/i915: Take rcu_read_lock for querying fence's driver/timeline names<br />
812b9702970c drm/i915: Protect against request freeing during cancellation on wedging<br />
67ba4bc3ef45 drm/i915/selftests: Exercise cross-process context isolation<br />
1168085745bb drm/i915/selftests: Exercise relative mmio paths to non-privileged registers<br />
02ff187efe58 drm/i915/gt: Restrict the GT clock override to just Icelake</p>

</body>
</html>

--===============8349504456167950889==--

--===============0905589331==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0905589331==--
