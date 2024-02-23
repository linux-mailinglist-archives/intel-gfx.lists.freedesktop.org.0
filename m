Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB4D860FA7
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Feb 2024 11:42:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0105E10EB97;
	Fri, 23 Feb 2024 10:42:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCDF610EB97;
 Fri, 23 Feb 2024 10:42:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3521404421740556677=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Enable_Adaptive_Sync_SDP_Su?=
 =?utf-8?q?pport_for_DP_=28rev10=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Feb 2024 10:42:21 -0000
Message-ID: <170868494177.247285.13853528578996972967@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240222121223.2257958-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240222121223.2257958-1-mitulkumar.ajitkumar.golani@intel.com>
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

--===============3521404421740556677==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable Adaptive Sync SDP Support for DP (rev10)
URL   : https://patchwork.freedesktop.org/series/126829/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14319 -> Patchwork_126829v10
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/index.html

Participating hosts (38 -> 36)
------------------------------

  Missing    (2): bat-mtlp-8 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_126829v10 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-busy@ccs0:
    - bat-arls-1:         [PASS][1] -> [DMESG-WARN][2] ([i915#10194])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/bat-arls-1/igt@gem_exec_fence@basic-busy@ccs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-1/igt@gem_exec_fence@basic-busy@ccs0.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-arls-2:         NOTRUN -> [SKIP][3] ([i915#10213]) +3 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_tiled_pread_basic:
    - bat-arls-2:         NOTRUN -> [SKIP][4] ([i915#10206] / [i915#4079])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@gem_tiled_pread_basic.html

  * igt@i915_module_load@load:
    - fi-elk-e7500:       [PASS][5] -> [INCOMPLETE][6] ([i915#10311])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/fi-elk-e7500/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/fi-elk-e7500/igt@i915_module_load@load.html
    - fi-bsw-nick:        [PASS][7] -> [INCOMPLETE][8] ([i915#10311])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/fi-bsw-nick/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/fi-bsw-nick/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - bat-arls-2:         NOTRUN -> [DMESG-WARN][9] ([i915#10194] / [i915#10215])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_pm_rps@basic-api:
    - bat-arls-2:         NOTRUN -> [SKIP][10] ([i915#10209])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@coherency:
    - bat-arls-2:         NOTRUN -> [DMESG-WARN][11] ([i915#10194]) +28 other tests dmesg-warn
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@i915_selftest@live@coherency.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-arls-2:         NOTRUN -> [SKIP][12] ([i915#10200]) +9 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-arls-2:         NOTRUN -> [SKIP][13] ([i915#10202]) +1 other test skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-arls-2:         NOTRUN -> [SKIP][14] ([i915#9886])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-arls-2:         NOTRUN -> [SKIP][15] ([i915#10207])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-ilk-650:         [PASS][16] -> [INCOMPLETE][17] ([i915#10312])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/fi-ilk-650/igt@kms_hdmi_inject@inject-audio.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/fi-ilk-650/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][18] ([i915#9197]) +1 other test skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_psr@psr-primary-mmap-gtt@edp-1:
    - bat-arls-2:         NOTRUN -> [SKIP][19] ([i915#10196] / [i915#4077] / [i915#9688])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-arls-2:         NOTRUN -> [SKIP][20] ([i915#10208] / [i915#8809])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-arls-2:         NOTRUN -> [SKIP][21] ([i915#10196] / [i915#3708] / [i915#4077]) +1 other test skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - bat-arls-2:         NOTRUN -> [SKIP][22] ([i915#10212] / [i915#3708])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - bat-arls-2:         NOTRUN -> [SKIP][23] ([i915#10214] / [i915#3708])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - bat-arls-2:         NOTRUN -> [SKIP][24] ([i915#10216] / [i915#3708])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@gem_exec_create@basic@smem:
    - bat-arls-1:         [DMESG-WARN][25] ([i915#10194]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/bat-arls-1/igt@gem_exec_create@basic@smem.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-1/igt@gem_exec_create@basic@smem.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-jsl-3:          [INCOMPLETE][27] -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/bat-jsl-3/igt@i915_selftest@live@gt_mocs.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-jsl-3/igt@i915_selftest@live@gt_mocs.html

  
#### Warnings ####

  * igt@gem_tiled_fence_blits@basic:
    - bat-arls-2:         [ABORT][29] -> [SKIP][30] ([i915#10196] / [i915#4077])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/bat-arls-2/igt@gem_tiled_fence_blits@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@gem_tiled_fence_blits@basic.html

  
  [i915#10194]: https://gitlab.freedesktop.org/drm/intel/issues/10194
  [i915#10196]: https://gitlab.freedesktop.org/drm/intel/issues/10196
  [i915#10200]: https://gitlab.freedesktop.org/drm/intel/issues/10200
  [i915#10202]: https://gitlab.freedesktop.org/drm/intel/issues/10202
  [i915#10206]: https://gitlab.freedesktop.org/drm/intel/issues/10206
  [i915#10207]: https://gitlab.freedesktop.org/drm/intel/issues/10207
  [i915#10208]: https://gitlab.freedesktop.org/drm/intel/issues/10208
  [i915#10209]: https://gitlab.freedesktop.org/drm/intel/issues/10209
  [i915#10212]: https://gitlab.freedesktop.org/drm/intel/issues/10212
  [i915#10213]: https://gitlab.freedesktop.org/drm/intel/issues/10213
  [i915#10214]: https://gitlab.freedesktop.org/drm/intel/issues/10214
  [i915#10215]: https://gitlab.freedesktop.org/drm/intel/issues/10215
  [i915#10216]: https://gitlab.freedesktop.org/drm/intel/issues/10216
  [i915#10311]: https://gitlab.freedesktop.org/drm/intel/issues/10311
  [i915#10312]: https://gitlab.freedesktop.org/drm/intel/issues/10312
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#9197]: https://gitlab.freedesktop.org/drm/intel/issues/9197
  [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
  [i915#9886]: https://gitlab.freedesktop.org/drm/intel/issues/9886


Build changes
-------------

  * Linux: CI_DRM_14319 -> Patchwork_126829v10

  CI-20190529: 20190529
  CI_DRM_14319: 5dfa3c2da4803652582408bfb3c529970735f594 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7724: a7c03f7521f88f74fdf17c744fd847a775f9951f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_126829v10: 5dfa3c2da4803652582408bfb3c529970735f594 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

95fe480c199f drm/i915/display: Read/Write AS sdp only when sink/source has enabled
0d54a75de867 drm/i915/display: Compute vrr_vsync params
ec6a8d264b60 drm/i915/display: Compute AS SDP parameters.
8c8c7cf660c6 drm/i915/dp: Add Read/Write support for Adaptive Sync SDP
85cfdc29ec00 drm: Add Adaptive Sync SDP logging
57c39349c425 drm/dp: Add an support to indicate if sink supports AS SDP

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/index.html

--===============3521404421740556677==
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
<tr><td><b>Series:</b></td><td>Enable Adaptive Sync SDP Support for DP (rev10)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126829/">https://patchwork.freedesktop.org/series/126829/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14319 -&gt; Patchwork_126829v10</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Missing    (2): bat-mtlp-8 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126829v10 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@ccs0:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/bat-arls-1/igt@gem_exec_fence@basic-busy@ccs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-1/igt@gem_exec_fence@basic-busy@ccs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10194">i915#10194</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10213">i915#10213</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10206">i915#10206</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/fi-elk-e7500/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/fi-elk-e7500/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10311">i915#10311</a>)</li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/fi-bsw-nick/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/fi-bsw-nick/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10311">i915#10311</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10194">i915#10194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/10215">i915#10215</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10209">i915#10209</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@i915_selftest@live@coherency.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10194">i915#10194</a>) +28 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10200">i915#10200</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10202">i915#10202</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9886">i915#9886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10207">i915#10207</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/fi-ilk-650/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/fi-ilk-650/igt@kms_hdmi_inject@inject-audio.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10312">i915#10312</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9197">i915#9197</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-gtt@edp-1:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10196">i915#10196</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9688">i915#9688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10208">i915#10208</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10196">i915#10196</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10212">i915#10212</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10214">i915#10214</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10216">i915#10216</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_create@basic@smem:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/bat-arls-1/igt@gem_exec_create@basic@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10194">i915#10194</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-1/igt@gem_exec_create@basic@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/bat-jsl-3/igt@i915_selftest@live@gt_mocs.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-jsl-3/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_tiled_fence_blits@basic:<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/bat-arls-2/igt@gem_tiled_fence_blits@basic.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/bat-arls-2/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10196">i915#10196</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14319 -&gt; Patchwork_126829v10</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14319: 5dfa3c2da4803652582408bfb3c529970735f594 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7724: a7c03f7521f88f74fdf17c744fd847a775f9951f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_126829v10: 5dfa3c2da4803652582408bfb3c529970735f594 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>95fe480c199f drm/i915/display: Read/Write AS sdp only when sink/source has enabled<br />
0d54a75de867 drm/i915/display: Compute vrr_vsync params<br />
ec6a8d264b60 drm/i915/display: Compute AS SDP parameters.<br />
8c8c7cf660c6 drm/i915/dp: Add Read/Write support for Adaptive Sync SDP<br />
85cfdc29ec00 drm: Add Adaptive Sync SDP logging<br />
57c39349c425 drm/dp: Add an support to indicate if sink supports AS SDP</p>

</body>
</html>

--===============3521404421740556677==--
