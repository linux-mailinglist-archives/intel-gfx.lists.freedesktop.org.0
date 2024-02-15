Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29EB78566FA
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 16:13:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EE0D10E933;
	Thu, 15 Feb 2024 15:13:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 064CC10E933;
 Thu, 15 Feb 2024 15:13:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8189973979378437428=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Disable_automatic_load_CCS_?=
 =?utf-8?q?load_balancing?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Feb 2024 15:13:54 -0000
Message-ID: <170801003402.925.15477320520135926887@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240215135924.51705-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240215135924.51705-1-andi.shyti@linux.intel.com>
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

--===============8189973979378437428==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Disable automatic load CCS load balancing
URL   : https://patchwork.freedesktop.org/series/129951/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14278 -> Patchwork_129951v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_129951v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_129951v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/index.html

Participating hosts (36 -> 35)
------------------------------

  Additional (1): bat-mtlp-8 
  Missing    (2): bat-kbl-2 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129951v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - fi-skl-6600u:       [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-skl-6600u/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-skl-6600u/igt@i915_module_load@load.html
    - fi-glk-j4005:       [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-glk-j4005/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-glk-j4005/igt@i915_module_load@load.html
    - fi-skl-guc:         [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-skl-guc/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-skl-guc/igt@i915_module_load@load.html
    - fi-kbl-7567u:       [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-kbl-7567u/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-kbl-7567u/igt@i915_module_load@load.html
    - fi-cfl-8700k:       [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-cfl-8700k/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-cfl-8700k/igt@i915_module_load@load.html
    - fi-bsw-nick:        [PASS][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-bsw-nick/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-bsw-nick/igt@i915_module_load@load.html
    - fi-cfl-guc:         [PASS][13] -> [ABORT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-cfl-guc/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-cfl-guc/igt@i915_module_load@load.html
    - fi-kbl-x1275:       [PASS][15] -> [ABORT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-kbl-x1275/igt@i915_module_load@load.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-kbl-x1275/igt@i915_module_load@load.html
    - fi-cfl-8109u:       [PASS][17] -> [ABORT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-cfl-8109u/igt@i915_module_load@load.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-cfl-8109u/igt@i915_module_load@load.html
    - fi-ivb-3770:        [PASS][19] -> [ABORT][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-ivb-3770/igt@i915_module_load@load.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-ivb-3770/igt@i915_module_load@load.html
    - fi-kbl-guc:         [PASS][21] -> [ABORT][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-kbl-guc/igt@i915_module_load@load.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-kbl-guc/igt@i915_module_load@load.html

  * igt@i915_selftest@live@client:
    - fi-elk-e7500:       [PASS][23] -> [DMESG-WARN][24] +42 other tests dmesg-warn
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-elk-e7500/igt@i915_selftest@live@client.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-elk-e7500/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@coherency:
    - bat-jsl-3:          [PASS][25] -> [DMESG-WARN][26] +41 other tests dmesg-warn
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/bat-jsl-3/igt@i915_selftest@live@coherency.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-jsl-3/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@gt_contexts:
    - fi-ilk-650:         [PASS][27] -> [DMESG-WARN][28] +42 other tests dmesg-warn
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html

  * igt@i915_selftest@live@gt_pm:
    - bat-jsl-1:          [PASS][29] -> [DMESG-WARN][30] +41 other tests dmesg-warn
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/bat-jsl-1/igt@i915_selftest@live@gt_pm.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-jsl-1/igt@i915_selftest@live@gt_pm.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_fence@basic-busy@rcs0:
    - {bat-arls-1}:       [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/bat-arls-1/igt@gem_exec_fence@basic-busy@rcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-arls-1/igt@gem_exec_fence@basic-busy@rcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_129951v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-apl-guc:         [PASS][33] -> [FAIL][34] ([i915#8293])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-apl-guc/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-apl-guc/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-mtlp-8:         NOTRUN -> [SKIP][35] ([i915#9318])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@debugfs_test@basic-hwmon.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-mtlp-8:         NOTRUN -> [SKIP][36] ([i915#4613]) +3 other tests skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap@basic:
    - bat-mtlp-8:         NOTRUN -> [SKIP][37] ([i915#4083])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@gem_mmap@basic.html

  * igt@gem_mmap_gtt@basic:
    - bat-mtlp-8:         NOTRUN -> [SKIP][38] ([i915#4077]) +2 other tests skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@gem_mmap_gtt@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-mtlp-8:         NOTRUN -> [SKIP][39] ([i915#4079]) +1 other test skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@gem_render_tiled_blits@basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-mtlp-8:         NOTRUN -> [SKIP][40] ([i915#6621])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@i915_pm_rps@basic-api.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-mtlp-8:         NOTRUN -> [SKIP][41] ([i915#5190])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-mtlp-8:         NOTRUN -> [SKIP][42] ([i915#4212]) +8 other tests skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-mtlp-8:         NOTRUN -> [SKIP][43] ([i915#4213]) +1 other test skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-mtlp-8:         NOTRUN -> [SKIP][44] ([i915#3555] / [i915#3840] / [i915#9159])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-mtlp-8:         NOTRUN -> [SKIP][45] ([fdo#109285])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-mtlp-8:         NOTRUN -> [SKIP][46] ([i915#5274])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-mtlp-8:         NOTRUN -> [SKIP][47] ([i915#3555] / [i915#8809])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-mtlp-8:         NOTRUN -> [SKIP][48] ([i915#3708] / [i915#4077]) +1 other test skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - bat-mtlp-8:         NOTRUN -> [SKIP][49] ([i915#3708]) +2 other tests skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@prime_vgem@basic-fence-read.html

  
#### Possible fixes ####

  * igt@gem_exec_create@basic@smem:
    - {bat-arls-1}:       [DMESG-WARN][50] ([i915#10194]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/bat-arls-1/igt@gem_exec_create@basic@smem.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-arls-1/igt@gem_exec_create@basic@smem.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#10194]: https://gitlab.freedesktop.org/drm/intel/issues/10194
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#9159]: https://gitlab.freedesktop.org/drm/intel/issues/9159
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688


Build changes
-------------

  * Linux: CI_DRM_14278 -> Patchwork_129951v1

  CI-20190529: 20190529
  CI_DRM_14278: 000df4b23820dc3866d8c92c228c778ef33bf396 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7714: 7714
  Patchwork_129951v1: 000df4b23820dc3866d8c92c228c778ef33bf396 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

08e0f187cab5 drm/i915/gt: Set default CCS mode '1'
c21b8eb46264 drm/i915/gt: Disable HW load balancing for CCS

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/index.html

--===============8189973979378437428==
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
<tr><td><b>Series:</b></td><td>Disable automatic load CCS load balancing</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129951/">https://patchwork.freedesktop.org/series/129951/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14278 -&gt; Patchwork_129951v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_129951v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_129951v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/index.html</p>
<h2>Participating hosts (36 -&gt; 35)</h2>
<p>Additional (1): bat-mtlp-8 <br />
  Missing    (2): bat-kbl-2 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_129951v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-skl-6600u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-skl-6600u/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-glk-j4005/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-glk-j4005/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-skl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-skl-guc/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-kbl-7567u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-kbl-7567u/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-cfl-8700k/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-cfl-8700k/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-bsw-nick/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-bsw-nick/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-cfl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-cfl-guc/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-kbl-x1275/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-kbl-x1275/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-cfl-8109u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-cfl-8109u/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-ivb-3770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-ivb-3770/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-kbl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-kbl-guc/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-elk-e7500/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-elk-e7500/igt@i915_selftest@live@client.html">DMESG-WARN</a> +42 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/bat-jsl-3/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-jsl-3/igt@i915_selftest@live@coherency.html">DMESG-WARN</a> +41 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_contexts:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html">DMESG-WARN</a> +42 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/bat-jsl-1/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-jsl-1/igt@i915_selftest@live@gt_pm.html">DMESG-WARN</a> +41 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@gem_exec_fence@basic-busy@rcs0:<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/bat-arls-1/igt@gem_exec_fence@basic-busy@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-arls-1/igt@gem_exec_fence@basic-busy@rcs0.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129951v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/fi-apl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/fi-apl-guc/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9159">i915#9159</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-mtlp-8/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_create@basic@smem:<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14278/bat-arls-1/igt@gem_exec_create@basic@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10194">i915#10194</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v1/bat-arls-1/igt@gem_exec_create@basic@smem.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14278 -&gt; Patchwork_129951v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14278: 000df4b23820dc3866d8c92c228c778ef33bf396 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7714: 7714<br />
  Patchwork_129951v1: 000df4b23820dc3866d8c92c228c778ef33bf396 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>08e0f187cab5 drm/i915/gt: Set default CCS mode '1'<br />
c21b8eb46264 drm/i915/gt: Disable HW load balancing for CCS</p>

</body>
</html>

--===============8189973979378437428==--
