Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 021B2899D33
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 14:40:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4628F113BBB;
	Fri,  5 Apr 2024 12:40:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2116113BBA;
 Fri,  5 Apr 2024 12:40:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7638306388160845478=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_QGV/SAGV_related_fixes_=28r?=
 =?utf-8?q?ev10=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 05 Apr 2024 12:40:19 -0000
Message-ID: <171232081998.1229455.7101314997013125118@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240405113533.338553-1-vinod.govindapillai@intel.com>
In-Reply-To: <20240405113533.338553-1-vinod.govindapillai@intel.com>
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

--===============7638306388160845478==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: QGV/SAGV related fixes (rev10)
URL   : https://patchwork.freedesktop.org/series/126962/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14533 -> Patchwork_126962v10
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126962v10 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126962v10, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/index.html

Participating hosts (38 -> 38)
------------------------------

  Additional (3): bat-dg1-7 fi-glk-j4005 fi-elk-e7500 
  Missing    (3): bat-mtlp-8 bat-dg2-11 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126962v10:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@engines@fds:
    - bat-arls-2:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14533/bat-arls-2/igt@gem_exec_parallel@engines@fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-arls-2/igt@gem_exec_parallel@engines@fds.html

  
Known issues
------------

  Here are the changes found in Patchwork_126962v10 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-glk-j4005:       NOTRUN -> [SKIP][3] ([i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][4] ([i915#4613]) +3 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/fi-glk-j4005/igt@gem_lmem_swapping@basic.html

  * igt@gem_mmap@basic:
    - bat-dg1-7:          NOTRUN -> [SKIP][5] ([i915#4083])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@gem_mmap@basic.html

  * igt@gem_tiled_fence_blits@basic:
    - bat-dg1-7:          NOTRUN -> [SKIP][6] ([i915#4077]) +2 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@gem_tiled_fence_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-dg1-7:          NOTRUN -> [SKIP][7] ([i915#4079]) +1 other test skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg1-7:          NOTRUN -> [SKIP][8] ([i915#6621])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@i915_pm_rps@basic-api.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - bat-dg1-7:          NOTRUN -> [SKIP][9] ([i915#4212]) +7 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-dg1-7:          NOTRUN -> [SKIP][10] ([i915#4215])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][11] +10 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-dg1-7:          NOTRUN -> [SKIP][12] ([i915#4103] / [i915#4213]) +1 other test skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-dg1-7:          NOTRUN -> [SKIP][13] ([i915#3555] / [i915#3840])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-dg1-7:          NOTRUN -> [SKIP][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_hdmi_inject@inject-audio:
    - bat-dg1-7:          NOTRUN -> [SKIP][15] ([i915#433])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-dg1-7:          NOTRUN -> [SKIP][16] ([i915#5354])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-elk-e7500:       NOTRUN -> [SKIP][17] +24 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/fi-elk-e7500/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@kms_psr@psr-primary-page-flip:
    - bat-dg1-7:          NOTRUN -> [SKIP][18] ([i915#1072] / [i915#9732]) +3 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@kms_psr@psr-primary-page-flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-dg1-7:          NOTRUN -> [SKIP][19] ([i915#3555])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-dg1-7:          NOTRUN -> [SKIP][20] ([i915#3708]) +3 other tests skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-dg1-7:          NOTRUN -> [SKIP][21] ([i915#3708] / [i915#4077]) +1 other test skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@prime_vgem@basic-fence-mmap.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@slpc:
    - bat-dg2-8:          [ABORT][22] ([i915#10366]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14533/bat-dg2-8/igt@i915_selftest@live@slpc.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg2-8/igt@i915_selftest@live@slpc.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][24] ([i915#10689] / [i915#10695]) -> [FAIL][25] ([i915#10689])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14533/fi-kbl-8809g/igt@runner@aborted.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/fi-kbl-8809g/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#10436]: https://gitlab.freedesktop.org/drm/intel/issues/10436
  [i915#10689]: https://gitlab.freedesktop.org/drm/intel/issues/10689
  [i915#10695]: https://gitlab.freedesktop.org/drm/intel/issues/10695
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732


Build changes
-------------

  * Linux: CI_DRM_14533 -> Patchwork_126962v10

  CI-20190529: 20190529
  CI_DRM_14533: 019010dd870216d30458836f988b4461674a051a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7800: 7800
  Patchwork_126962v10: 019010dd870216d30458836f988b4461674a051a @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

abe9e686e0d2 drm/i915/display: force qgv check after the hw state readout
0965edd484f9 drm/i915/display: handle systems with duplicate psf gv points
95260d990762 drm/i915/display: Disable SAGV on bw init, to force QGV point recalculation
891533e81acf drm/i915/display: extract code to prepare qgv points mask
4aae8b51bc5d drm/i915/display: Extract code required to calculate max qgv/psf gv point
528b54be07b7 drm/i915/display: Add meaningful traces for QGV point info error handling

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/index.html

--===============7638306388160845478==
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
<tr><td><b>Series:</b></td><td>QGV/SAGV related fixes (rev10)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126962/">https://patchwork.freedesktop.org/series/126962/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14533 -&gt; Patchwork_126962v10</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126962v10 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_126962v10, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/index.html</p>
<h2>Participating hosts (38 -&gt; 38)</h2>
<p>Additional (3): bat-dg1-7 fi-glk-j4005 fi-elk-e7500 <br />
  Missing    (3): bat-mtlp-8 bat-dg2-11 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_126962v10:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_parallel@engines@fds:<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14533/bat-arls-2/igt@gem_exec_parallel@engines@fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-arls-2/igt@gem_exec_parallel@engines@fds.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126962v10 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/433">i915#433</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/fi-elk-e7500/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-page-flip:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg1-7/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@slpc:<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14533/bat-dg2-8/igt@i915_selftest@live@slpc.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/bat-dg2-8/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14533/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10689">i915#10689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/10695">i915#10695</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v10/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10689">i915#10689</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14533 -&gt; Patchwork_126962v10</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14533: 019010dd870216d30458836f988b4461674a051a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7800: 7800<br />
  Patchwork_126962v10: 019010dd870216d30458836f988b4461674a051a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>abe9e686e0d2 drm/i915/display: force qgv check after the hw state readout<br />
0965edd484f9 drm/i915/display: handle systems with duplicate psf gv points<br />
95260d990762 drm/i915/display: Disable SAGV on bw init, to force QGV point recalculation<br />
891533e81acf drm/i915/display: extract code to prepare qgv points mask<br />
4aae8b51bc5d drm/i915/display: Extract code required to calculate max qgv/psf gv point<br />
528b54be07b7 drm/i915/display: Add meaningful traces for QGV point info error handling</p>

</body>
</html>

--===============7638306388160845478==--
