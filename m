Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC75E875A44
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 23:28:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02CD610F5DD;
	Thu,  7 Mar 2024 22:28:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E00E410F5DD;
 Thu,  7 Mar 2024 22:28:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1305673901954827620=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915=3A_Use_container?=
 =?utf-8?q?=5Fof=5Fconst=28=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 07 Mar 2024 22:28:20 -0000
Message-ID: <170985050091.606884.33490174722152382@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240307151810.24208-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240307151810.24208-1-ville.syrjala@linux.intel.com>
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

--===============1305673901954827620==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Use container_of_const()
URL   : https://patchwork.freedesktop.org/series/130868/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14406 -> Patchwork_130868v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_130868v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_130868v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/index.html

Participating hosts (41 -> 39)
------------------------------

  Additional (1): fi-glk-j4005 
  Missing    (3): bat-kbl-2 fi-apl-guc fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_130868v1:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - bat-arls-2:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14406/bat-arls-2/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-arls-2/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live@uncore:
    - bat-arls-3:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14406/bat-arls-3/igt@i915_selftest@live@uncore.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-arls-3/igt@i915_selftest@live@uncore.html

  * igt@kms_pm_rpm@basic-rte:
    - bat-arls-2:         [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14406/bat-arls-2/igt@kms_pm_rpm@basic-rte.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-arls-2/igt@kms_pm_rpm@basic-rte.html

  
Known issues
------------

  Here are the changes found in Patchwork_130868v1 that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - bat-jsl-1:          [FAIL][7] ([i915#8293]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14406/bat-jsl-1/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-jsl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-jsl-1:          NOTRUN -> [SKIP][9] ([i915#9318])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-jsl-1/igt@debugfs_test@basic-hwmon.html

  * igt@gem_huc_copy@huc-copy:
    - bat-jsl-1:          NOTRUN -> [SKIP][10] ([i915#2190])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-jsl-1/igt@gem_huc_copy@huc-copy.html
    - fi-glk-j4005:       NOTRUN -> [SKIP][11] ([i915#2190])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][12] ([i915#4613]) +3 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/fi-glk-j4005/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-jsl-1:          NOTRUN -> [SKIP][13] ([i915#4613]) +3 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-3:         [PASS][14] -> [DMESG-FAIL][15] ([i915#10262]) +21 other tests dmesg-fail
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14406/bat-arls-3/igt@i915_selftest@live@workarounds.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-arls-3/igt@i915_selftest@live@workarounds.html
    - bat-dg2-9:          [PASS][16] -> [ABORT][17] ([i915#10366])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14406/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][18] +10 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-jsl-1:          NOTRUN -> [SKIP][19] ([i915#4103]) +1 other test skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-jsl-1:          NOTRUN -> [SKIP][20] ([i915#3555] / [i915#9886])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-jsl-1/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-jsl-1:          NOTRUN -> [SKIP][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - bat-arls-2:         [PASS][22] -> [SKIP][23] ([i915#9983])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14406/bat-arls-2/igt@kms_pm_rpm@basic-pci-d3-state.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-arls-2/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-jsl-1:          NOTRUN -> [SKIP][24] ([i915#3555])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Possible fixes ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-14:         [FAIL][25] ([i915#10378]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14406/bat-dg2-14/igt@gem_lmem_swapping@basic@lmem0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-dg2-14/igt@gem_lmem_swapping@basic@lmem0.html

  
#### Warnings ####

  * igt@i915_selftest@live@client:
    - bat-arls-3:         [DMESG-WARN][27] ([i915#10341]) -> [DMESG-FAIL][28] ([i915#10262])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14406/bat-arls-3/igt@i915_selftest@live@client.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-arls-3/igt@i915_selftest@live@client.html

  
  [i915#10262]: https://gitlab.freedesktop.org/drm/intel/issues/10262
  [i915#10341]: https://gitlab.freedesktop.org/drm/intel/issues/10341
  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9886]: https://gitlab.freedesktop.org/drm/intel/issues/9886
  [i915#9983]: https://gitlab.freedesktop.org/drm/intel/issues/9983


Build changes
-------------

  * Linux: CI_DRM_14406 -> Patchwork_130868v1

  CI-20190529: 20190529
  CI_DRM_14406: c4dc92fb11528a7a09b66d2036d05c9742e45d50 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7749: 2fd91b8c3cf9aa2b0bb78537a6b5e2bc3de50e0e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_130868v1: c4dc92fb11528a7a09b66d2036d05c9742e45d50 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

94a9f55bfc41 drm/i915: Drop pointless (void*) cast
0c94b48958fc drm/i915: Use container_of_const() for states
d901d673461f drm/i915: Don't cast away const
2cfcfb34e2d2 drm/i915/dsi: Use enc_to_intel_dsi()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/index.html

--===============1305673901954827620==
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
<tr><td><b>Series:</b></td><td>drm/i915: Use container_of_const()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130868/">https://patchwork.freedesktop.org/series/130868/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14406 -&gt; Patchwork_130868v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_130868v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_130868v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/index.html</p>
<h2>Participating hosts (41 -&gt; 39)</h2>
<p>Additional (1): fi-glk-j4005 <br />
  Missing    (3): bat-kbl-2 fi-apl-guc fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_130868v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14406/bat-arls-2/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-arls-2/igt@core_hotunplug@unbind-rebind.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>bat-arls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14406/bat-arls-3/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-arls-3/igt@i915_selftest@live@uncore.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-rte:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14406/bat-arls-2/igt@kms_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-arls-2/igt@kms_pm_rpm@basic-rte.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130868v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14406/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-jsl-1/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-jsl-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-jsl-1/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14406/bat-arls-3/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-arls-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10262">i915#10262</a>) +21 other tests dmesg-fail</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14406/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-jsl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9886">i915#9886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14406/bat-arls-2/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-arls-2/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9983">i915#9983</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_lmem_swapping@basic@lmem0:<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14406/bat-dg2-14/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-dg2-14/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@client:<ul>
<li>bat-arls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14406/bat-arls-3/igt@i915_selftest@live@client.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10341">i915#10341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130868v1/bat-arls-3/igt@i915_selftest@live@client.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10262">i915#10262</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14406 -&gt; Patchwork_130868v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14406: c4dc92fb11528a7a09b66d2036d05c9742e45d50 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7749: 2fd91b8c3cf9aa2b0bb78537a6b5e2bc3de50e0e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_130868v1: c4dc92fb11528a7a09b66d2036d05c9742e45d50 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>94a9f55bfc41 drm/i915: Drop pointless (void*) cast<br />
0c94b48958fc drm/i915: Use container_of_const() for states<br />
d901d673461f drm/i915: Don't cast away const<br />
2cfcfb34e2d2 drm/i915/dsi: Use enc_to_intel_dsi()</p>

</body>
</html>

--===============1305673901954827620==--
