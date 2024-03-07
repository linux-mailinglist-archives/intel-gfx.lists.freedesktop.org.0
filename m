Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F87874828
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 07:29:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5547410ED72;
	Thu,  7 Mar 2024 06:29:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 238C210ED72;
 Thu,  7 Mar 2024 06:29:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1971879313234276274=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Enable_MST_bigjoiner_=28rev?=
 =?utf-8?q?3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vidya Srinivas" <vidya.srinivas@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 07 Mar 2024 06:29:04 -0000
Message-ID: <170979294414.580282.9433788758396897298@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240307051343.26155-1-vidya.srinivas@intel.com>
In-Reply-To: <20240307051343.26155-1-vidya.srinivas@intel.com>
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

--===============1971879313234276274==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable MST bigjoiner (rev3)
URL   : https://patchwork.freedesktop.org/series/130449/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14400 -> Patchwork_130449v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_130449v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_130449v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/index.html

Participating hosts (40 -> 37)
------------------------------

  Additional (1): fi-glk-j4005 
  Missing    (4): bat-mtlp-8 bat-jsl-1 fi-snb-2520m fi-bsw-n3050 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_130449v3:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem_contexts:
    - bat-arls-2:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-arls-2/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-arls-2/igt@i915_selftest@live@gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_130449v3 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-arls-3:         [PASS][3] -> [FAIL][4] ([i915#10234])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-arls-3/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-arls-3/boot.html

  
#### Possible fixes ####

  * boot:
    - fi-cfl-8109u:       [FAIL][5] ([i915#8293]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/fi-cfl-8109u/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/fi-cfl-8109u/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][7] ([i915#2190])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html
    - fi-glk-j4005:       NOTRUN -> [SKIP][8] ([i915#2190])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][9] ([i915#4613]) +3 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/fi-glk-j4005/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-11:         [PASS][10] -> [FAIL][11] ([i915#10378])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-mtlp-6:         NOTRUN -> [SKIP][12] ([i915#4613]) +3 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][13] ([i915#4613]) +3 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_pm_rps@basic-api:
    - bat-mtlp-6:         NOTRUN -> [SKIP][14] ([i915#6621])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-mtlp-6/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg2-11:         [PASS][15] -> [DMESG-FAIL][16] ([i915#9840])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-dg2-11/igt@i915_selftest@live@hangcheck.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-dg2-11/igt@i915_selftest@live@hangcheck.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][17] +10 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-mtlp-6:         NOTRUN -> [SKIP][18] ([i915#9792])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-mtlp-6:         NOTRUN -> [SKIP][19] ([i915#5274] / [i915#9792])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-mtlp-6:         NOTRUN -> [SKIP][20] ([i915#4342] / [i915#5354] / [i915#9792])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - bat-mtlp-6:         NOTRUN -> [SKIP][21] ([i915#10295] / [i915#9792]) +6 other tests skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-mtlp-6/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_pm_backlight@basic-brightness:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][22] +11 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/fi-cfl-8109u/igt@kms_pm_backlight@basic-brightness.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][23] ([i915#5354] / [i915#9792])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-mtlp-6/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_psr@psr-cursor-plane-move:
    - bat-mtlp-6:         NOTRUN -> [SKIP][24] ([i915#9673] / [i915#9732] / [i915#9792]) +3 other tests skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-mtlp-6/igt@kms_psr@psr-cursor-plane-move.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-mtlp-6:         NOTRUN -> [SKIP][25] ([i915#3555] / [i915#8809] / [i915#9792])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-mtlp-6:         NOTRUN -> [SKIP][26] ([i915#3708] / [i915#9792])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-mtlp-6:         NOTRUN -> [SKIP][27] ([i915#3708] / [i915#4077]) +1 other test skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-mtlp-6/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-write:
    - bat-mtlp-6:         NOTRUN -> [SKIP][28] ([i915#3708]) +2 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-mtlp-6/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - {bat-adls-6}:       [DMESG-WARN][29] ([i915#5591]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-adls-6/igt@i915_selftest@live@hangcheck.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-adls-6/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@kms_flip@basic-flip-vs-dpms:
    - bat-atsm-1:         [SKIP][31] ([i915#6078]) -> [INCOMPLETE][32] ([i915#2295])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-atsm-1/igt@kms_flip@basic-flip-vs-dpms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-atsm-1/igt@kms_flip@basic-flip-vs-dpms.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10234]: https://gitlab.freedesktop.org/drm/intel/issues/10234
  [i915#10295]: https://gitlab.freedesktop.org/drm/intel/issues/10295
  [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4342]: https://gitlab.freedesktop.org/drm/intel/issues/4342
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#6078]: https://gitlab.freedesktop.org/drm/intel/issues/6078
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9792]: https://gitlab.freedesktop.org/drm/intel/issues/9792
  [i915#9840]: https://gitlab.freedesktop.org/drm/intel/issues/9840


Build changes
-------------

  * Linux: CI_DRM_14400 -> Patchwork_130449v3

  CI-20190529: 20190529
  CI_DRM_14400: c9b9b8d4449209d2451127f98cdfe2b99bec3da7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7749: 2fd91b8c3cf9aa2b0bb78537a6b5e2bc3de50e0e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_130449v3: c9b9b8d4449209d2451127f98cdfe2b99bec3da7 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

16ae08b43d1a drm/i915: Allow bigjoiner for MST

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/index.html

--===============1971879313234276274==
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
<tr><td><b>Series:</b></td><td>Enable MST bigjoiner (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130449/">https://patchwork.freedesktop.org/series/130449/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14400 -&gt; Patchwork_130449v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_130449v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_130449v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/index.html</p>
<h2>Participating hosts (40 -&gt; 37)</h2>
<p>Additional (1): fi-glk-j4005 <br />
  Missing    (4): bat-mtlp-8 bat-jsl-1 fi-snb-2520m fi-bsw-n3050 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_130449v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gem_contexts:<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-arls-2/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-arls-2/igt@i915_selftest@live@gem_contexts.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130449v3 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-arls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-arls-3/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-arls-3/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10234">i915#10234</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/fi-cfl-8109u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/fi-cfl-8109u/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-mtlp-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9840">i915#9840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4342">i915#4342</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-mtlp-6/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10295">i915#10295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/fi-cfl-8109u/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> +11 other tests skip</li>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-mtlp-6/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-plane-move:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-mtlp-6/igt@kms_psr@psr-cursor-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-mtlp-6/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-mtlp-6/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>{bat-adls-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-adls-6/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-adls-6/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_flip@basic-flip-vs-dpms:<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-atsm-1/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6078">i915#6078</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130449v3/bat-atsm-1/igt@kms_flip@basic-flip-vs-dpms.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14400 -&gt; Patchwork_130449v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14400: c9b9b8d4449209d2451127f98cdfe2b99bec3da7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7749: 2fd91b8c3cf9aa2b0bb78537a6b5e2bc3de50e0e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_130449v3: c9b9b8d4449209d2451127f98cdfe2b99bec3da7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>16ae08b43d1a drm/i915: Allow bigjoiner for MST</p>

</body>
</html>

--===============1971879313234276274==--
