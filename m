Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A2387466B
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 03:56:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DCB610E0E3;
	Thu,  7 Mar 2024 02:56:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A059C10E0E3;
 Thu,  7 Mar 2024 02:56:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1339817156723722808=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915=3A_cleanup_dead_co?=
 =?utf-8?q?de?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 07 Mar 2024 02:56:21 -0000
Message-ID: <170978018165.563887.11993773886057190013@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240306193643.1897026-1-lucas.demarchi@intel.com>
In-Reply-To: <20240306193643.1897026-1-lucas.demarchi@intel.com>
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

--===============1339817156723722808==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: cleanup dead code
URL   : https://patchwork.freedesktop.org/series/130828/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14400 -> Patchwork_130828v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_130828v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_130828v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/index.html

Participating hosts (40 -> 37)
------------------------------

  Missing    (3): bat-mtlp-8 bat-jsl-1 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_130828v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gtt:
    - bat-dg2-8:          [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-dg2-8/igt@i915_selftest@live@gtt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-dg2-8/igt@i915_selftest@live@gtt.html

  * igt@i915_selftest@live@uncore:
    - bat-dg2-11:         [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-dg2-11/igt@i915_selftest@live@uncore.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-dg2-11/igt@i915_selftest@live@uncore.html
    - bat-dg2-14:         [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-dg2-14/igt@i915_selftest@live@uncore.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-dg2-14/igt@i915_selftest@live@uncore.html
    - bat-atsm-1:         [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-atsm-1/igt@i915_selftest@live@uncore.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-atsm-1/igt@i915_selftest@live@uncore.html
    - bat-dg2-9:          [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-dg2-9/igt@i915_selftest@live@uncore.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-dg2-9/igt@i915_selftest@live@uncore.html
    - bat-dg2-8:          [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-dg2-8/igt@i915_selftest@live@uncore.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-dg2-8/igt@i915_selftest@live@uncore.html

  
Known issues
------------

  Here are the changes found in Patchwork_130828v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-apl-guc:         [PASS][13] -> [FAIL][14] ([i915#8293])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/fi-apl-guc/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/fi-apl-guc/boot.html

  
#### Possible fixes ####

  * boot:
    - fi-cfl-8109u:       [FAIL][15] ([i915#8293]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/fi-cfl-8109u/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/fi-cfl-8109u/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][17] ([i915#2190])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-11:         [PASS][18] -> [FAIL][19] ([i915#10378])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-mtlp-6:         NOTRUN -> [SKIP][20] ([i915#4613]) +3 other tests skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][21] ([i915#4613]) +3 other tests skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_pm_rps@basic-api:
    - bat-mtlp-6:         NOTRUN -> [SKIP][22] ([i915#6621])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-mtlp-6/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [PASS][23] -> [ABORT][24] ([i915#7911])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gem_contexts:
    - bat-arls-2:         [PASS][25] -> [ABORT][26] ([i915#10233])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-arls-2/igt@i915_selftest@live@gem_contexts.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-arls-2/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-mtlp-6:         NOTRUN -> [SKIP][27] ([i915#9792])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-mtlp-6:         NOTRUN -> [SKIP][28] ([i915#5274] / [i915#9792])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-mtlp-6:         NOTRUN -> [SKIP][29] ([i915#4342] / [i915#5354] / [i915#9792])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - bat-mtlp-6:         NOTRUN -> [SKIP][30] ([i915#10295] / [i915#9792]) +6 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-mtlp-6/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_pm_backlight@basic-brightness:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][31] +11 other tests skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/fi-cfl-8109u/igt@kms_pm_backlight@basic-brightness.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][32] ([i915#5354] / [i915#9792])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-mtlp-6/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_psr@psr-cursor-plane-move:
    - bat-mtlp-6:         NOTRUN -> [SKIP][33] ([i915#9673] / [i915#9732] / [i915#9792]) +3 other tests skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-mtlp-6/igt@kms_psr@psr-cursor-plane-move.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-mtlp-6:         NOTRUN -> [SKIP][34] ([i915#3555] / [i915#8809] / [i915#9792])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-mtlp-6:         NOTRUN -> [SKIP][35] ([i915#3708] / [i915#9792])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-mtlp-6:         NOTRUN -> [SKIP][36] ([i915#3708] / [i915#4077]) +1 other test skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-mtlp-6/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-write:
    - bat-mtlp-6:         NOTRUN -> [SKIP][37] ([i915#3708]) +2 other tests skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-mtlp-6/igt@prime_vgem@basic-write.html

  
  [i915#10233]: https://gitlab.freedesktop.org/drm/intel/issues/10233
  [i915#10295]: https://gitlab.freedesktop.org/drm/intel/issues/10295
  [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4342]: https://gitlab.freedesktop.org/drm/intel/issues/4342
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9792]: https://gitlab.freedesktop.org/drm/intel/issues/9792


Build changes
-------------

  * Linux: CI_DRM_14400 -> Patchwork_130828v1

  CI-20190529: 20190529
  CI_DRM_14400: c9b9b8d4449209d2451127f98cdfe2b99bec3da7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7749: 2fd91b8c3cf9aa2b0bb78537a6b5e2bc3de50e0e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_130828v1: c9b9b8d4449209d2451127f98cdfe2b99bec3da7 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

894968804259 drm/i915: Remove special handling for !RCS_MASK()
80f3718e2ce9 drm/i915: Drop dead code for pvc
aa5e02166ce4 drm/i915: Update IP_VER(12, 50)
c079757aeafe drm/i915: Drop dead code for xehpsdv
58efcf4bca2c drm/i915: Drop WA 16015675438

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/index.html

--===============1339817156723722808==
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
<tr><td><b>Series:</b></td><td>drm/i915: cleanup dead code</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130828/">https://patchwork.freedesktop.org/series/130828/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14400 -&gt; Patchwork_130828v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_130828v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_130828v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/index.html</p>
<h2>Participating hosts (40 -&gt; 37)</h2>
<p>Missing    (3): bat-mtlp-8 bat-jsl-1 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_130828v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-dg2-8/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-dg2-8/igt@i915_selftest@live@gtt.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-dg2-11/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-dg2-11/igt@i915_selftest@live@uncore.html">DMESG-FAIL</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-dg2-14/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-dg2-14/igt@i915_selftest@live@uncore.html">DMESG-FAIL</a></li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-atsm-1/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-atsm-1/igt@i915_selftest@live@uncore.html">DMESG-FAIL</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-dg2-9/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-dg2-9/igt@i915_selftest@live@uncore.html">DMESG-FAIL</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-dg2-8/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-dg2-8/igt@i915_selftest@live@uncore.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130828v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/fi-apl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/fi-apl-guc/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/fi-cfl-8109u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/fi-cfl-8109u/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-mtlp-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/bat-arls-2/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-arls-2/igt@i915_selftest@live@gem_contexts.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10233">i915#10233</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4342">i915#4342</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-mtlp-6/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10295">i915#10295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/fi-cfl-8109u/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> +11 other tests skip</li>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-mtlp-6/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-plane-move:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-mtlp-6/igt@kms_psr@psr-cursor-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-mtlp-6/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130828v1/bat-mtlp-6/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14400 -&gt; Patchwork_130828v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14400: c9b9b8d4449209d2451127f98cdfe2b99bec3da7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7749: 2fd91b8c3cf9aa2b0bb78537a6b5e2bc3de50e0e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_130828v1: c9b9b8d4449209d2451127f98cdfe2b99bec3da7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>894968804259 drm/i915: Remove special handling for !RCS_MASK()<br />
80f3718e2ce9 drm/i915: Drop dead code for pvc<br />
aa5e02166ce4 drm/i915: Update IP_VER(12, 50)<br />
c079757aeafe drm/i915: Drop dead code for xehpsdv<br />
58efcf4bca2c drm/i915: Drop WA 16015675438</p>

</body>
</html>

--===============1339817156723722808==--
