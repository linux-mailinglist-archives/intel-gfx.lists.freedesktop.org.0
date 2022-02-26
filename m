Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A94C4C553A
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Feb 2022 11:43:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1E0310EABF;
	Sat, 26 Feb 2022 10:43:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B45DF10EAC0;
 Sat, 26 Feb 2022 10:43:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B1AF5A00E8;
 Sat, 26 Feb 2022 10:43:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1777144928494869736=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Sat, 26 Feb 2022 10:43:20 -0000
Message-ID: <164587220070.9640.14593873965494548098@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220226095541.1010534-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220226095541.1010534-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQWRk?=
 =?utf-8?q?_GuC_Error_Capture_Support_=28rev7=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1777144928494869736==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add GuC Error Capture Support (rev7)
URL   : https://patchwork.freedesktop.org/series/97187/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11291 -> Patchwork_22428
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22428 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22428, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/index.html

Participating hosts (40 -> 41)
------------------------------

  Additional (2): bat-jsl-2 fi-pnv-d510 
  Missing    (1): fi-bsw-cyan 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22428:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_hangman@error-state-basic:
    - bat-dg1-5:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11291/bat-dg1-5/igt@i915_hangman@error-state-basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/bat-dg1-5/igt@i915_hangman@error-state-basic.html
    - bat-dg1-6:          [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11291/bat-dg1-6/igt@i915_hangman@error-state-basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/bat-dg1-6/igt@i915_hangman@error-state-basic.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_hangman@error-state-basic:
    - {bat-adlp-6}:       [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11291/bat-adlp-6/igt@i915_hangman@error-state-basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/bat-adlp-6/igt@i915_hangman@error-state-basic.html

  * igt@runner@aborted:
    - {bat-dg2-9}:        [FAIL][7] ([i915#4312]) -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11291/bat-dg2-9/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/bat-dg2-9/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_22428 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-skl-6600u:       NOTRUN -> [FAIL][9] ([i915#4547])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_hangman@error-state-basic:
    - fi-kbl-guc:         [PASS][10] -> [DMESG-WARN][11] ([i915#1610])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11291/fi-kbl-guc/igt@i915_hangman@error-state-basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/fi-kbl-guc/igt@i915_hangman@error-state-basic.html
    - fi-skl-guc:         [PASS][12] -> [DMESG-WARN][13] ([i915#1610])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11291/fi-skl-guc/igt@i915_hangman@error-state-basic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/fi-skl-guc/igt@i915_hangman@error-state-basic.html
    - fi-cfl-guc:         [PASS][14] -> [DMESG-WARN][15] ([i915#1610])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11291/fi-cfl-guc/igt@i915_hangman@error-state-basic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/fi-cfl-guc/igt@i915_hangman@error-state-basic.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][16] ([fdo#109271]) +57 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - bat-dg1-5:          NOTRUN -> [FAIL][17] ([i915#4312])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/bat-dg1-5/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][18] ([i915#2426] / [i915#4312])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/fi-kbl-guc/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][19] ([i915#2426])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/fi-rkl-guc/igt@runner@aborted.html
    - bat-dg1-6:          NOTRUN -> [FAIL][20] ([i915#4312])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/bat-dg1-6/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][21] ([i915#2426] / [i915#4312])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/fi-cfl-guc/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][22] ([i915#2426] / [i915#4312])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/fi-skl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@perf:
    - {fi-tgl-dsi}:       [DMESG-WARN][23] ([i915#2867]) -> [PASS][24] +17 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11291/fi-tgl-dsi/igt@i915_selftest@live@perf.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/fi-tgl-dsi/igt@i915_selftest@live@perf.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Build changes
-------------

  * Linux: CI_DRM_11291 -> Patchwork_22428

  CI-20190529: 20190529
  CI_DRM_11291: 1e3f898ee67cb2fd8c58799ae8a094f73054c8b9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6359: 57049558c452272b27eeb099fac07e55a924bbf9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22428: ba46f0a21c5138624da12566e3e6ab9ea1d5fe65 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ba46f0a21c51 drm/i915/guc: Print the GuC error capture output register list.
29b77d53fd35 drm/i915/guc: Plumb GuC-capture into gpu_coredump
ee1209b4b0cb drm/i915/guc: Pre-allocate output nodes for extraction
1ca524a02f27 drm/i915/guc: Extract GuC error capture lists on G2H notification.
c7f73c19f253 drm/i915/guc: Check sizing of guc_capture output
ab1d23c2c860 drm/i915/guc: Add capture region into intel_guc_log
fb2d26808423 drm/i915/guc: Update GuC-log relay function names
5811889fcbe8 drm/i915/guc: Add GuC's error state capture output structures.
630f7006ffde drm/i915/guc: Add Gen9 registers for GuC error state capture.
b3559be6c43d drm/i915/guc: Add DG2 registers for GuC error state capture.
6de0bc96b40d drm/i915/guc: Add XE_LP steered register lists support
47efff77442d drm/i915/guc: Add XE_LP static registers for GuC error capture.
fa51e0f956f6 drm/i915/guc: Update GuC ADS size for error capture lists

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/index.html

--===============1777144928494869736==
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
<tr><td><b>Series:</b></td><td>Add GuC Error Capture Support (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/97187/">https://patchwork.freedesktop.org/series/97187/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11291 -&gt; Patchwork_22428</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22428 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22428, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/index.html</p>
<h2>Participating hosts (40 -&gt; 41)</h2>
<p>Additional (2): bat-jsl-2 fi-pnv-d510 <br />
  Missing    (1): fi-bsw-cyan </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22428:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11291/bat-dg1-5/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/bat-dg1-5/igt@i915_hangman@error-state-basic.html">DMESG-WARN</a></p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11291/bat-dg1-6/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/bat-dg1-6/igt@i915_hangman@error-state-basic.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11291/bat-adlp-6/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/bat-adlp-6/igt@i915_hangman@error-state-basic.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11291/bat-dg2-9/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/bat-dg2-9/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22428 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11291/fi-kbl-guc/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/fi-kbl-guc/igt@i915_hangman@error-state-basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11291/fi-skl-guc/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/fi-skl-guc/igt@i915_hangman@error-state-basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11291/fi-cfl-guc/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/fi-cfl-guc/igt@i915_hangman@error-state-basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@perf:<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11291/fi-tgl-dsi/igt@i915_selftest@live@perf.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22428/fi-tgl-dsi/igt@i915_selftest@live@perf.html">PASS</a> +17 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11291 -&gt; Patchwork_22428</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11291: 1e3f898ee67cb2fd8c58799ae8a094f73054c8b9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6359: 57049558c452272b27eeb099fac07e55a924bbf9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22428: ba46f0a21c5138624da12566e3e6ab9ea1d5fe65 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ba46f0a21c51 drm/i915/guc: Print the GuC error capture output register list.<br />
29b77d53fd35 drm/i915/guc: Plumb GuC-capture into gpu_coredump<br />
ee1209b4b0cb drm/i915/guc: Pre-allocate output nodes for extraction<br />
1ca524a02f27 drm/i915/guc: Extract GuC error capture lists on G2H notification.<br />
c7f73c19f253 drm/i915/guc: Check sizing of guc_capture output<br />
ab1d23c2c860 drm/i915/guc: Add capture region into intel_guc_log<br />
fb2d26808423 drm/i915/guc: Update GuC-log relay function names<br />
5811889fcbe8 drm/i915/guc: Add GuC's error state capture output structures.<br />
630f7006ffde drm/i915/guc: Add Gen9 registers for GuC error state capture.<br />
b3559be6c43d drm/i915/guc: Add DG2 registers for GuC error state capture.<br />
6de0bc96b40d drm/i915/guc: Add XE_LP steered register lists support<br />
47efff77442d drm/i915/guc: Add XE_LP static registers for GuC error capture.<br />
fa51e0f956f6 drm/i915/guc: Update GuC ADS size for error capture lists</p>

</body>
</html>

--===============1777144928494869736==--
