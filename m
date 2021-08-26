Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F533F8F34
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 21:50:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10C2B6E8A8;
	Thu, 26 Aug 2021 19:50:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 452C26E8A7;
 Thu, 26 Aug 2021 19:50:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3E791A363C;
 Thu, 26 Aug 2021 19:50:40 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3217419619251986483=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Aug 2021 19:50:40 -0000
Message-ID: <163000744022.15047.539640935171001748@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210826032327.18078-1-matthew.brost@intel.com>
In-Reply-To: <20210826032327.18078-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQ2xl?=
 =?utf-8?q?an_up_GuC_CI_failures=2C_simplify_locking=2C_and_kernel_DOC_=28?=
 =?utf-8?q?rev7=29?=
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

--===============3217419619251986483==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Clean up GuC CI failures, simplify locking, and kernel DOC (rev7)
URL   : https://patchwork.freedesktop.org/series/93704/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10526 -> Patchwork_20907
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/index.html

New tests
---------

  New tests have been introduced between CI_DRM_10526 and Patchwork_20907:

### New IGT tests (1) ###

  * igt@i915_selftest@live@guc:
    - Statuses : 30 pass(s)
    - Exec time: [0.42, 3.61] s

  

Known issues
------------

  Here are the changes found in Patchwork_20907 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][1] ([i915#1888])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][2] ([i915#2190])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][3] ([i915#1155])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rpm@module-reload:
    - fi-tgl-1115g4:      NOTRUN -> [INCOMPLETE][4] ([i915#4006])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html

  * igt@kms_addfb_basic@too-wide:
    - fi-tgl-1115g4:      NOTRUN -> [DMESG-WARN][5] ([i915#4002]) +89 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-tgl-1115g4/igt@kms_addfb_basic@too-wide.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][6] ([fdo#111827]) +7 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][7] ([fdo#111827] / [i915#1385])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-tgl-1115g4/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][8] ([fdo#109285])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][9] ([i915#1072]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_psr@primary_page_flip:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][10] ([i915#1072] / [i915#1385])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-tgl-1115g4/igt@kms_psr@primary_page_flip.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][11] ([i915#3301])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][12] ([i915#2722] / [i915#3834])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-tgl-1115g4/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-rkl-guc:         [SKIP][13] ([fdo#109308]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10526/fi-rkl-guc/igt@i915_pm_rpm@basic-rte.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-rkl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         [DMESG-WARN][15] ([i915#3958]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10526/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@requests:
    - fi-rkl-guc:         [DMESG-FAIL][17] -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10526/fi-rkl-guc/igt@i915_selftest@live@requests.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-rkl-guc/igt@i915_selftest@live@requests.html

  
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1385]: https://gitlab.freedesktop.org/drm/intel/issues/1385
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3834]: https://gitlab.freedesktop.org/drm/intel/issues/3834
  [i915#3958]: https://gitlab.freedesktop.org/drm/intel/issues/3958
  [i915#4002]: https://gitlab.freedesktop.org/drm/intel/issues/4002
  [i915#4006]: https://gitlab.freedesktop.org/drm/intel/issues/4006


Participating hosts (39 -> 33)
------------------------------

  Additional (1): fi-tgl-1115g4 
  Missing    (7): fi-kbl-soraka fi-ilk-m540 bat-adls-5 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10526 -> Patchwork_20907

  CI-20190529: 20190529
  CI_DRM_10526: 3fa65092ec18cc516b219a3a7980be163387803e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6187: 1afd52c1471dafdf521eae431f3e228826de6de2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20907: d18d0c97031f5ad61011d9a32731c6bc845c9d6b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d18d0c97031f drm/i915/guc: Drop static inline functions intel_guc_submission.c
2847489a97ab drm/i915/guc: Add GuC kernel doc
8d7454b6d5bf drm/i915/guc: Drop guc_active move everything into guc_state
515567407bed drm/i915/guc: Move fields protected by guc->contexts_lock into sub structure
d898d084dfd7 drm/i915/guc: Move GuC priority fields in context under guc_active
2815870d2076 drm/i915/guc: Drop pin count check trick between sched_disable and re-pin
0e16363d8865 drm/i915/guc: Proper xarray usage for contexts_lookup
0df9cd86f965 drm/i915/guc: Rework and simplify locking
c98d42a500e0 drm/i915/guc: Move guc_blocked fence to struct guc_state
1308964ace8e drm/i915/guc: Release submit fence from an irq_work
dae3a133265a drm/i915/guc: Flush G2H work queue during reset
0fba3913bf23 drm/i915: Allocate error capture in nowait context
11bb5b5e2f49 drm/i915/guc: Reset LRC descriptor if register returns -ENODEV
8d24ad7df290 drm/i915/guc: Don't touch guc_state.sched_state without a lock
af7d6c0767f7 drm/i915/guc: Take context ref when cancelling request
7fe07569686e drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H
b663fb835571 drm/i915/guc: Copy whole golden context, set engine state size of subset
afc29a46456f drm/i915/guc: Don't enable scheduling on a banned context, guc_id invalid, not registered
dce056059ff5 drm/i915/guc: Kick tasklet after queuing a request
4253aac3070d drm/i915/selftests: Add a cancel request selftest that triggers a reset
36182517bd1a Revert "drm/i915/gt: Propagate change in error status to children on unhold"
a2475cc1bce0 drm/i915/guc: Workaround reset G2H is received after schedule done G2H
7bd2db9a1759 drm/i915/guc: Process all G2H message at once in work queue
d105ec255b1d drm/i915/guc: Don't drop ce->guc_active.lock when unwinding context
2e610b253118 drm/i915/guc: Unwind context requests in reverse order
4970f2849625 drm/i915/guc: Fix outstanding G2H accounting
7fe22714f5a9 drm/i915/guc: Fix blocked context accounting

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/index.html

--===============3217419619251986483==
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
<tr><td><b>Series:</b></td><td>Clean up GuC CI failures, simplify locking, and kernel DOC (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93704/">https://patchwork.freedesktop.org/series/93704/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10526 -&gt; Patchwork_20907</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10526 and Patchwork_20907:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@guc:<ul>
<li>Statuses : 30 pass(s)</li>
<li>Exec time: [0.42, 3.61] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20907 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1155">i915#1155</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4006">i915#4006</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-wide:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-tgl-1115g4/igt@kms_addfb_basic@too-wide.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4002">i915#4002</a>) +89 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-tgl-1115g4/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1385">i915#1385</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-tgl-1115g4/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1385">i915#1385</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3834">i915#3834</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10526/fi-rkl-guc/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109308">fdo#109308</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-rkl-guc/igt@i915_pm_rpm@basic-rte.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10526/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3958">i915#3958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10526/fi-rkl-guc/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20907/fi-rkl-guc/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (39 -&gt; 33)</h2>
<p>Additional (1): fi-tgl-1115g4 <br />
  Missing    (7): fi-kbl-soraka fi-ilk-m540 bat-adls-5 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10526 -&gt; Patchwork_20907</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10526: 3fa65092ec18cc516b219a3a7980be163387803e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6187: 1afd52c1471dafdf521eae431f3e228826de6de2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20907: d18d0c97031f5ad61011d9a32731c6bc845c9d6b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d18d0c97031f drm/i915/guc: Drop static inline functions intel_guc_submission.c<br />
2847489a97ab drm/i915/guc: Add GuC kernel doc<br />
8d7454b6d5bf drm/i915/guc: Drop guc_active move everything into guc_state<br />
515567407bed drm/i915/guc: Move fields protected by guc-&gt;contexts_lock into sub structure<br />
d898d084dfd7 drm/i915/guc: Move GuC priority fields in context under guc_active<br />
2815870d2076 drm/i915/guc: Drop pin count check trick between sched_disable and re-pin<br />
0e16363d8865 drm/i915/guc: Proper xarray usage for contexts_lookup<br />
0df9cd86f965 drm/i915/guc: Rework and simplify locking<br />
c98d42a500e0 drm/i915/guc: Move guc_blocked fence to struct guc_state<br />
1308964ace8e drm/i915/guc: Release submit fence from an irq_work<br />
dae3a133265a drm/i915/guc: Flush G2H work queue during reset<br />
0fba3913bf23 drm/i915: Allocate error capture in nowait context<br />
11bb5b5e2f49 drm/i915/guc: Reset LRC descriptor if register returns -ENODEV<br />
8d24ad7df290 drm/i915/guc: Don't touch guc_state.sched_state without a lock<br />
af7d6c0767f7 drm/i915/guc: Take context ref when cancelling request<br />
7fe07569686e drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H<br />
b663fb835571 drm/i915/guc: Copy whole golden context, set engine state size of subset<br />
afc29a46456f drm/i915/guc: Don't enable scheduling on a banned context, guc_id invalid, not registered<br />
dce056059ff5 drm/i915/guc: Kick tasklet after queuing a request<br />
4253aac3070d drm/i915/selftests: Add a cancel request selftest that triggers a reset<br />
36182517bd1a Revert "drm/i915/gt: Propagate change in error status to children on unhold"<br />
a2475cc1bce0 drm/i915/guc: Workaround reset G2H is received after schedule done G2H<br />
7bd2db9a1759 drm/i915/guc: Process all G2H message at once in work queue<br />
d105ec255b1d drm/i915/guc: Don't drop ce-&gt;guc_active.lock when unwinding context<br />
2e610b253118 drm/i915/guc: Unwind context requests in reverse order<br />
4970f2849625 drm/i915/guc: Fix outstanding G2H accounting<br />
7fe22714f5a9 drm/i915/guc: Fix blocked context accounting</p>

</body>
</html>

--===============3217419619251986483==--
