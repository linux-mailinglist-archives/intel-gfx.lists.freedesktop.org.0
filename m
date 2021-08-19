Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD163F148E
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Aug 2021 09:51:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 132BD6E94D;
	Thu, 19 Aug 2021 07:51:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AAC656E80B;
 Thu, 19 Aug 2021 07:51:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A2CC9A47DB;
 Thu, 19 Aug 2021 07:51:13 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7937981420905659278=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Aug 2021 07:51:13 -0000
Message-ID: <162935947366.11707.8783380742930092783@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210819061639.21051-1-matthew.brost@intel.com>
In-Reply-To: <20210819061639.21051-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQ2xl?=
 =?utf-8?q?an_up_GuC_CI_failures=2C_simplify_locking=2C_and_kernel_DOC_=28?=
 =?utf-8?q?rev3=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============7937981420905659278==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Clean up GuC CI failures, simplify locking, and kernel DOC (rev3)
URL   : https://patchwork.freedesktop.org/series/93704/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10498 -> Patchwork_20851
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20851/index.html

New tests
---------

  New tests have been introduced between CI_DRM_10498 and Patchwork_20851:

### New IGT tests (1) ###

  * igt@i915_selftest@live@guc:
    - Statuses : 29 pass(s)
    - Exec time: [0.41, 5.16] s

  

Known issues
------------

  Here are the changes found in Patchwork_20851 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - fi-kbl-soraka:      [PASS][1] -> [FAIL][2] ([i915#2346])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/fi-kbl-soraka/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20851/fi-kbl-soraka/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][3] ([i915#1602] / [i915#2029])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20851/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-tgl-1115g4:      [DMESG-WARN][4] -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/fi-tgl-1115g4/igt@i915_module_load@reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20851/fi-tgl-1115g4/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gtt:
    - {fi-tgl-dsi}:       [DMESG-WARN][6] -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/fi-tgl-dsi/igt@i915_selftest@live@gtt.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20851/fi-tgl-dsi/igt@i915_selftest@live@gtt.html

  * igt@i915_selftest@live@perf:
    - {fi-tgl-dsi}:       [DMESG-WARN][8] ([i915#2867]) -> [PASS][9] +6 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/fi-tgl-dsi/igt@i915_selftest@live@perf.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20851/fi-tgl-dsi/igt@i915_selftest@live@perf.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867


Participating hosts (35 -> 34)
------------------------------

  Missing    (1): fi-bsw-cyan 


Build changes
-------------

  * Linux: CI_DRM_10498 -> Patchwork_20851

  CI-20190529: 20190529
  CI_DRM_10498: b66f2ed13db3f8f7bcf616cea0e59ebe8728b131 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6178: 146260200f9a6d4536e48a195e2ab49a07d4f0c1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20851: 516f3fcdd0dda3d21d60a2644a099d50d7933835 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

516f3fcdd0dd drm/i915/guc: Drop static inline functions intel_guc_submission.c
16fdda30af6b drm/i915/guc: Add GuC kernel doc
a0ff703dedb1 drm/i915/guc: Drop guc_active move everything into guc_state
0e84142a2b56 drm/i915/guc: Move fields protected by guc->contexts_lock into sub structure
9b10873534b2 drm/i915/guc: Move GuC priority fields in context under guc_active
2fd6d9d96159 drm/i915/guc: Drop pin count check trick between sched_disable and re-pin
3bf483be619f drm/i915/guc: Proper xarray usage for contexts_lookup
c8b2f80e4529 drm/i915/guc: Rework and simplify locking
1debca6b1bd8 drm/i915/guc: Move guc_blocked fence to struct guc_state
f7a536406581 drm/i915/guc: Release submit fence from an irq_work
8081613c600f drm/i915/guc: Flush G2H work queue during reset
f739dd54a7ee drm/i915: Allocate error capture in nowait context
23d73efe3398 drm/i915/guc: Reset LRC descriptor if register returns -ENODEV
fe52b71dec8a drm/i915/guc: Don't touch guc_state.sched_state without a lock
95c83c9a3e05 drm/i915/guc: Take context ref when cancelling request
24f6154536c7 drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H
c328800aa348 drm/i915/selftests: Fix memory corruption in live_lrc_isolation
be92b59039f4 drm/i915/guc: Don't enable scheduling on a banned context, guc_id invalid, not registered
72e6f5ea745f drm/i915/guc: Kick tasklet after queuing a request
b13cbbf2cc00 drm/i915/selftests: Add a cancel request selftest that triggers a reset
7cc5849adb41 Revert "drm/i915/gt: Propagate change in error status to children on unhold"
54c8cf84e527 drm/i915/guc: Workaround reset G2H is received after schedule done G2H
c2e59d2d1528 drm/i915/guc: Process all G2H message at once in work queue
ef46dfb56828 drm/i915/guc: Don't drop ce->guc_active.lock when unwinding context
75fb55198651 drm/i915/guc: Unwind context requests in reverse order
de712a42478e drm/i915/guc: Fix outstanding G2H accounting
cdd86549dd1d drm/i915/guc: Fix blocked context accounting

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20851/index.html

--===============7937981420905659278==
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
<tr><td><b>Series:</b></td><td>Clean up GuC CI failures, simplify locking, and kernel DOC (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93704/">https://patchwork.freedesktop.org/series/93704/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20851/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20851/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10498 -&gt; Patchwork_20851</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20851/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10498 and Patchwork_20851:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@guc:<ul>
<li>Statuses : 29 pass(s)</li>
<li>Exec time: [0.41, 5.16] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20851 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/fi-kbl-soraka/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20851/fi-kbl-soraka/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20851/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/fi-tgl-1115g4/igt@i915_module_load@reload.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20851/fi-tgl-1115g4/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/fi-tgl-dsi/igt@i915_selftest@live@gtt.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20851/fi-tgl-dsi/igt@i915_selftest@live@gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10498/fi-tgl-dsi/igt@i915_selftest@live@perf.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20851/fi-tgl-dsi/igt@i915_selftest@live@perf.html">PASS</a> +6 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (35 -&gt; 34)</h2>
<p>Missing    (1): fi-bsw-cyan </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10498 -&gt; Patchwork_20851</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10498: b66f2ed13db3f8f7bcf616cea0e59ebe8728b131 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6178: 146260200f9a6d4536e48a195e2ab49a07d4f0c1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20851: 516f3fcdd0dda3d21d60a2644a099d50d7933835 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>516f3fcdd0dd drm/i915/guc: Drop static inline functions intel_guc_submission.c<br />
16fdda30af6b drm/i915/guc: Add GuC kernel doc<br />
a0ff703dedb1 drm/i915/guc: Drop guc_active move everything into guc_state<br />
0e84142a2b56 drm/i915/guc: Move fields protected by guc-&gt;contexts_lock into sub structure<br />
9b10873534b2 drm/i915/guc: Move GuC priority fields in context under guc_active<br />
2fd6d9d96159 drm/i915/guc: Drop pin count check trick between sched_disable and re-pin<br />
3bf483be619f drm/i915/guc: Proper xarray usage for contexts_lookup<br />
c8b2f80e4529 drm/i915/guc: Rework and simplify locking<br />
1debca6b1bd8 drm/i915/guc: Move guc_blocked fence to struct guc_state<br />
f7a536406581 drm/i915/guc: Release submit fence from an irq_work<br />
8081613c600f drm/i915/guc: Flush G2H work queue during reset<br />
f739dd54a7ee drm/i915: Allocate error capture in nowait context<br />
23d73efe3398 drm/i915/guc: Reset LRC descriptor if register returns -ENODEV<br />
fe52b71dec8a drm/i915/guc: Don't touch guc_state.sched_state without a lock<br />
95c83c9a3e05 drm/i915/guc: Take context ref when cancelling request<br />
24f6154536c7 drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H<br />
c328800aa348 drm/i915/selftests: Fix memory corruption in live_lrc_isolation<br />
be92b59039f4 drm/i915/guc: Don't enable scheduling on a banned context, guc_id invalid, not registered<br />
72e6f5ea745f drm/i915/guc: Kick tasklet after queuing a request<br />
b13cbbf2cc00 drm/i915/selftests: Add a cancel request selftest that triggers a reset<br />
7cc5849adb41 Revert "drm/i915/gt: Propagate change in error status to children on unhold"<br />
54c8cf84e527 drm/i915/guc: Workaround reset G2H is received after schedule done G2H<br />
c2e59d2d1528 drm/i915/guc: Process all G2H message at once in work queue<br />
ef46dfb56828 drm/i915/guc: Don't drop ce-&gt;guc_active.lock when unwinding context<br />
75fb55198651 drm/i915/guc: Unwind context requests in reverse order<br />
de712a42478e drm/i915/guc: Fix outstanding G2H accounting<br />
cdd86549dd1d drm/i915/guc: Fix blocked context accounting</p>

</body>
</html>

--===============7937981420905659278==--
