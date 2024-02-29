Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB76586D6F9
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 23:46:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 545ED10E68E;
	Thu, 29 Feb 2024 22:46:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED5B610E68E;
 Thu, 29 Feb 2024 22:46:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1131948358698873041=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Enable_Adaptive_Sync_SDP_Su?=
 =?utf-8?q?pport_for_DP_=28rev14=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Feb 2024 22:46:11 -0000
Message-ID: <170924677197.414572.6956178279235785047@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240229163957.2948182-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240229163957.2948182-1-mitulkumar.ajitkumar.golani@intel.com>
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

--===============1131948358698873041==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable Adaptive Sync SDP Support for DP (rev14)
URL   : https://patchwork.freedesktop.org/series/126829/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14370 -> Patchwork_126829v14
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126829v14 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126829v14, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/index.html

Participating hosts (43 -> 41)
------------------------------

  Missing    (2): bat-adlm-1 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126829v14:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - fi-bsw-n3050:       [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-bsw-n3050/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/fi-bsw-n3050/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_126829v14 that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - bat-jsl-1:          [FAIL][3] ([i915#8293]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-jsl-1/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/bat-jsl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-jsl-1:          NOTRUN -> [SKIP][5] ([i915#9318])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/bat-jsl-1/igt@debugfs_test@basic-hwmon.html

  * igt@gem_huc_copy@huc-copy:
    - bat-jsl-1:          NOTRUN -> [SKIP][6] ([i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/bat-jsl-1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-jsl-1:          NOTRUN -> [SKIP][7] ([i915#4613]) +3 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_module_load@load:
    - fi-elk-e7500:       [PASS][8] -> [INCOMPLETE][9] ([i915#10311])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-elk-e7500/igt@i915_module_load@load.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/fi-elk-e7500/igt@i915_module_load@load.html
    - fi-bsw-nick:        [PASS][10] -> [INCOMPLETE][11] ([i915#10311])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-bsw-nick/igt@i915_module_load@load.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/fi-bsw-nick/igt@i915_module_load@load.html

  * igt@kms_chamelium_hpd@dp-hpd-fast:
    - bat-dg2-13:         NOTRUN -> [SKIP][12] ([Intel XE#484]) +1 other test skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/bat-dg2-13/igt@kms_chamelium_hpd@dp-hpd-fast.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - bat-dg2-13:         NOTRUN -> [SKIP][13] ([Intel XE#484] / [i915#4550]) +1 other test skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/bat-dg2-13/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-jsl-1:          NOTRUN -> [SKIP][14] ([i915#4103]) +1 other test skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-jsl-1:          NOTRUN -> [SKIP][15] ([i915#3555] / [i915#9886])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/bat-jsl-1/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-jsl-1:          NOTRUN -> [SKIP][16] ([fdo#109285])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-ilk-650:         [PASS][17] -> [INCOMPLETE][18] ([i915#10312])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-ilk-650/igt@kms_hdmi_inject@inject-audio.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/fi-ilk-650/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-jsl-1:          NOTRUN -> [SKIP][19] ([i915#3555])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@dmabuf:
    - bat-arls-1:         [DMESG-FAIL][20] -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-arls-1/igt@i915_selftest@live@dmabuf.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/bat-arls-1/igt@i915_selftest@live@dmabuf.html

  * igt@i915_selftest@live@gt_timelines:
    - {bat-arls-4}:       [INCOMPLETE][22] -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-arls-4/igt@i915_selftest@live@gt_timelines.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/bat-arls-4/igt@i915_selftest@live@gt_timelines.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [Intel XE#484]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/484
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#10026]: https://gitlab.freedesktop.org/drm/intel/issues/10026
  [i915#10311]: https://gitlab.freedesktop.org/drm/intel/issues/10311
  [i915#10312]: https://gitlab.freedesktop.org/drm/intel/issues/10312
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4550]: https://gitlab.freedesktop.org/drm/intel/issues/4550
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9886]: https://gitlab.freedesktop.org/drm/intel/issues/9886


Build changes
-------------

  * Linux: CI_DRM_14370 -> Patchwork_126829v14

  CI-20190529: 20190529
  CI_DRM_14370: c1a0f6caf0ffa81e77e74e04d937605a2e293774 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7738: 7738
  Patchwork_126829v14: c1a0f6caf0ffa81e77e74e04d937605a2e293774 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a1bd4915f32b drm/i915/display: Read/Write AS sdp only when sink/source has enabled
42628185c8f2 drm/i915/display: Compute vrr_vsync params
5dadd9f6d731 drm/i915/display: Add state checker for Adaptive Sync SDP
fdc79a42b5a2 drm/i915/display: Compute AS SDP parameters
1094db41d902 drm/i915/dp: Add wrapper function to check AS SDP
d62b5b585c5e drm/i915/dp: Add Read/Write support for Adaptive Sync SDP
f829b1db2552 drm: Add crtc state dump for Adaptive Sync SDP
52e9003f445b drm: Add Adaptive Sync SDP logging
cbb5c2a92b7b drm/dp: Add support to indicate if sink supports AS SDP

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/index.html

--===============1131948358698873041==
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
<tr><td><b>Series:</b></td><td>Enable Adaptive Sync SDP Support for DP (rev14)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126829/">https://patchwork.freedesktop.org/series/126829/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14370 -&gt; Patchwork_126829v14</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126829v14 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_126829v14, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): bat-adlm-1 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_126829v14:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-bsw-n3050/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/fi-bsw-n3050/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126829v14 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/bat-jsl-1/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/bat-jsl-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/bat-jsl-1/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-elk-e7500/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/fi-elk-e7500/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10311">i915#10311</a>)</li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-bsw-nick/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/fi-bsw-nick/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10311">i915#10311</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-fast:</p>
<ul>
<li>bat-dg2-13:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/bat-dg2-13/igt@kms_chamelium_hpd@dp-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/xe/kernel/issues/484">Intel XE#484</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>bat-dg2-13:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/bat-dg2-13/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/xe/kernel/issues/484">Intel XE#484</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4550">i915#4550</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/bat-jsl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9886">i915#9886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/fi-ilk-650/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/fi-ilk-650/igt@kms_hdmi_inject@inject-audio.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10312">i915#10312</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@dmabuf:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-arls-1/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/bat-arls-1/igt@i915_selftest@live@dmabuf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>{bat-arls-4}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14370/bat-arls-4/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v14/bat-arls-4/igt@i915_selftest@live@gt_timelines.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14370 -&gt; Patchwork_126829v14</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14370: c1a0f6caf0ffa81e77e74e04d937605a2e293774 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7738: 7738<br />
  Patchwork_126829v14: c1a0f6caf0ffa81e77e74e04d937605a2e293774 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a1bd4915f32b drm/i915/display: Read/Write AS sdp only when sink/source has enabled<br />
42628185c8f2 drm/i915/display: Compute vrr_vsync params<br />
5dadd9f6d731 drm/i915/display: Add state checker for Adaptive Sync SDP<br />
fdc79a42b5a2 drm/i915/display: Compute AS SDP parameters<br />
1094db41d902 drm/i915/dp: Add wrapper function to check AS SDP<br />
d62b5b585c5e drm/i915/dp: Add Read/Write support for Adaptive Sync SDP<br />
f829b1db2552 drm: Add crtc state dump for Adaptive Sync SDP<br />
52e9003f445b drm: Add Adaptive Sync SDP logging<br />
cbb5c2a92b7b drm/dp: Add support to indicate if sink supports AS SDP</p>

</body>
</html>

--===============1131948358698873041==--
