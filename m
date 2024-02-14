Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C84BA854975
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 13:42:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38F0C10E157;
	Wed, 14 Feb 2024 12:42:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4812710E0D3;
 Wed, 14 Feb 2024 12:42:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6578311655843989825=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Introduce_drm_sharpening_pr?=
 =?utf-8?q?operty?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nemesa Garg" <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Feb 2024 12:42:49 -0000
Message-ID: <170791456929.1238464.2546025645741703904@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240214112457.3734871-1-nemesa.garg@intel.com>
In-Reply-To: <20240214112457.3734871-1-nemesa.garg@intel.com>
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

--===============6578311655843989825==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce drm sharpening property
URL   : https://patchwork.freedesktop.org/series/129888/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14269 -> Patchwork_129888v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_129888v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_129888v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/index.html

Participating hosts (37 -> 35)
------------------------------

  Missing    (2): fi-glk-j4005 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129888v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - bat-dg1-7:          [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/bat-dg1-7/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-dg1-7/igt@i915_module_load@load.html
    - bat-adlp-9:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/bat-adlp-9/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-adlp-9/igt@i915_module_load@load.html
    - fi-skl-guc:         [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/fi-skl-guc/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/fi-skl-guc/igt@i915_module_load@load.html
    - bat-dg2-11:         [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/bat-dg2-11/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-dg2-11/igt@i915_module_load@load.html
    - fi-kbl-7567u:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/fi-kbl-7567u/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/fi-kbl-7567u/igt@i915_module_load@load.html
    - fi-cfl-8700k:       [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/fi-cfl-8700k/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/fi-cfl-8700k/igt@i915_module_load@load.html
    - fi-cfl-guc:         [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/fi-cfl-guc/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/fi-cfl-guc/igt@i915_module_load@load.html
    - bat-dg2-9:          [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/bat-dg2-9/igt@i915_module_load@load.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-dg2-9/igt@i915_module_load@load.html
    - fi-cfl-8109u:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/fi-cfl-8109u/igt@i915_module_load@load.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/fi-cfl-8109u/igt@i915_module_load@load.html
    - bat-dg2-8:          [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/bat-dg2-8/igt@i915_module_load@load.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-dg2-8/igt@i915_module_load@load.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {bat-arls-1}:       [PASS][21] -> [ABORT][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/bat-arls-1/igt@i915_module_load@load.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-arls-1/igt@i915_module_load@load.html
    - {bat-dg2-13}:       [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/bat-dg2-13/igt@i915_module_load@load.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-dg2-13/igt@i915_module_load@load.html
    - {bat-dg2-14}:       [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/bat-dg2-14/igt@i915_module_load@load.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-dg2-14/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_129888v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-apl-guc:         [PASS][27] -> [FAIL][28] ([i915#8293])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/fi-apl-guc/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/fi-apl-guc/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@verify-random:
    - bat-mtlp-6:         NOTRUN -> [SKIP][29] ([i915#4613]) +3 other tests skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_pm_rps@basic-api:
    - bat-mtlp-6:         NOTRUN -> [SKIP][30] ([i915#6621])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-mtlp-6/igt@i915_pm_rps@basic-api.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-mtlp-6:         NOTRUN -> [SKIP][31] ([fdo#109285] / [i915#9792])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-mtlp-6:         NOTRUN -> [SKIP][32] ([i915#5274] / [i915#9792])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-mtlp-6:         NOTRUN -> [SKIP][33] ([i915#4342] / [i915#5354] / [i915#9792])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - bat-mtlp-6:         NOTRUN -> [SKIP][34] ([i915#9792]) +6 other tests skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-mtlp-6/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-mtlp-6:         NOTRUN -> [SKIP][35] ([i915#5354] / [i915#9792])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-mtlp-6/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-mtlp-6:         NOTRUN -> [SKIP][36] ([i915#3555] / [i915#8809] / [i915#9792])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-mtlp-6:         NOTRUN -> [SKIP][37] ([i915#3708] / [i915#9792])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-mtlp-6:         NOTRUN -> [SKIP][38] ([i915#3708] / [i915#4077]) +1 other test skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-mtlp-6/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-write:
    - bat-mtlp-6:         NOTRUN -> [SKIP][39] ([i915#3708]) +2 other tests skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-mtlp-6/igt@prime_vgem@basic-write.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#10194]: https://gitlab.freedesktop.org/drm/intel/issues/10194
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4342]: https://gitlab.freedesktop.org/drm/intel/issues/4342
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9792]: https://gitlab.freedesktop.org/drm/intel/issues/9792


Build changes
-------------

  * Linux: CI_DRM_14269 -> Patchwork_129888v1

  CI-20190529: 20190529
  CI_DRM_14269: 403e424a8684b55d90b90f293a992e54f37892b3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7711: 7711
  Patchwork_129888v1: 403e424a8684b55d90b90f293a992e54f37892b3 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

cf8aa8d0cb91 drm/i915/display: Load the lut values and enable sharpness
6ac1624999aa drm/i915/display/: Add registers and compute the strength
4c880d61f033 drm/i915/dispaly/: Enable the second scaler
43138116787c drm/i915/display/: Compute the scaler filter coefficients
4f11b0a17895 drm: Introduce sharpeness mode property

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/index.html

--===============6578311655843989825==
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
<tr><td><b>Series:</b></td><td>Introduce drm sharpening property</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129888/">https://patchwork.freedesktop.org/series/129888/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14269 -&gt; Patchwork_129888v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_129888v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_129888v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/index.html</p>
<h2>Participating hosts (37 -&gt; 35)</h2>
<p>Missing    (2): fi-glk-j4005 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_129888v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/bat-dg1-7/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-dg1-7/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/bat-adlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-adlp-9/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/fi-skl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/fi-skl-guc/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/bat-dg2-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-dg2-11/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/fi-kbl-7567u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/fi-kbl-7567u/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/fi-cfl-8700k/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/fi-cfl-8700k/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/fi-cfl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/fi-cfl-guc/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/bat-dg2-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-dg2-9/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/fi-cfl-8109u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/fi-cfl-8109u/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/bat-dg2-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-dg2-8/igt@i915_module_load@load.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/bat-arls-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-arls-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>{bat-dg2-13}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/bat-dg2-13/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-dg2-13/igt@i915_module_load@load.html">INCOMPLETE</a></li>
<li>{bat-dg2-14}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/bat-dg2-14/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-dg2-14/igt@i915_module_load@load.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129888v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14269/fi-apl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/fi-apl-guc/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-mtlp-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4342">i915#4342</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-mtlp-6/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-mtlp-6/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-mtlp-6/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v1/bat-mtlp-6/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14269 -&gt; Patchwork_129888v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14269: 403e424a8684b55d90b90f293a992e54f37892b3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7711: 7711<br />
  Patchwork_129888v1: 403e424a8684b55d90b90f293a992e54f37892b3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>cf8aa8d0cb91 drm/i915/display: Load the lut values and enable sharpness<br />
6ac1624999aa drm/i915/display/: Add registers and compute the strength<br />
4c880d61f033 drm/i915/dispaly/: Enable the second scaler<br />
43138116787c drm/i915/display/: Compute the scaler filter coefficients<br />
4f11b0a17895 drm: Introduce sharpeness mode property</p>

</body>
</html>

--===============6578311655843989825==--
