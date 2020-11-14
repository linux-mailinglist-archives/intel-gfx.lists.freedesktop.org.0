Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6393E2B2A10
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Nov 2020 01:42:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 239EE6E896;
	Sat, 14 Nov 2020 00:42:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4F2966E896;
 Sat, 14 Nov 2020 00:42:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 45D9AA8169;
 Sat, 14 Nov 2020 00:42:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Sat, 14 Nov 2020 00:42:14 -0000
Message-ID: <160531453425.18247.13318666195051782531@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Big_bigjoiner_series?=
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
Content-Type: multipart/mixed; boundary="===============1528651315=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1528651315==
Content-Type: multipart/alternative;
 boundary="===============2357933481791826561=="

--===============2357933481791826561==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Big bigjoiner series
URL   : https://patchwork.freedesktop.org/series/83837/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9326 -> Patchwork_18904
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/index.html

New tests
---------

  New tests have been introduced between CI_DRM_9326 and Patchwork_18904:

### New CI tests (1) ###

  * boot:
    - Statuses : 1 fail(s) 37 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18904 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot (NEW):
    - {fi-tgl-dsi}:       [PASS][1] -> [FAIL][2] ([i915#2448])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-tgl-dsi/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-tgl-dsi/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-tgl-u2:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-bsw-kefka:       [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@gt_pm:
    - fi-byt-j1900:       [PASS][7] -> [DMESG-FAIL][8] ([i915#2420])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-byt-j1900/igt@i915_selftest@live@gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-byt-j1900/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-skl-6700k2:      [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-snb-2520m:       [PASS][11] -> [DMESG-WARN][12] ([i915#1982])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-snb-2520m/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-snb-2520m/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-icl-u2:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-tgl-y:           [PASS][15] -> [DMESG-WARN][16] ([i915#1982])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-tgl-y/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-tgl-y/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@prime_vgem@basic-gtt:
    - fi-tgl-y:           [PASS][17] -> [DMESG-WARN][18] ([i915#402]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-tgl-y/igt@prime_vgem@basic-gtt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-tgl-y/igt@prime_vgem@basic-gtt.html

  
#### Possible fixes ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [FAIL][19] ([i915#1161] / [i915#262]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-byt-j1900:       [DMESG-WARN][21] ([i915#1982]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [DMESG-WARN][23] ([i915#1982]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - fi-tgl-y:           [DMESG-WARN][25] ([i915#1982]) -> [PASS][26] +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  * igt@prime_vgem@basic-read:
    - fi-tgl-y:           [DMESG-WARN][27] ([i915#402]) -> [PASS][28] +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-tgl-y/igt@prime_vgem@basic-read.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-tgl-y/igt@prime_vgem@basic-read.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1161]: https://gitlab.freedesktop.org/drm/intel/issues/1161
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2420]: https://gitlab.freedesktop.org/drm/intel/issues/2420
  [i915#2448]: https://gitlab.freedesktop.org/drm/intel/issues/2448
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (46 -> 38)
------------------------------

  Missing    (8): fi-ilk-m540 fi-bxt-dsi fi-hsw-4200u fi-glk-dsi fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus fi-skl-6600u 


Build changes
-------------

  * Linux: CI_DRM_9326 -> Patchwork_18904

  CI-20190529: 20190529
  CI_DRM_9326: 3048c2a1dcf02422e89930148ffad9e91d690499 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5850: 9748a4a0f93d108955d374a866e60cb962da9b5d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18904: 7fd1ad48f2a3e2e2754f83383caf1404ec823d73 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7fd1ad48f2a3 drm/i915: Enable bigjoiner
ec5f31858af8 drm/i915: Add bigjoiner state dump
79ea1ef5dad1 drm/i915: Fix cursor src/dst rectangle with bigjoiner
c7d08ccf925b drm/i915: Disable legacy cursor fastpath for bigjoiner
a63a8532e9c7 drm/i915: Add debugfs dumping for bigjoiner, v3.
43eaeb52a244 drm/i915: Add bigjoiner aware plane clipping checks
777362899f26 drm/i915: Get the uapi state from the correct plane when bigjoiner is used
6429c52b56f9 drm/i915: Add planes affected by bigjoiner to the state
76672e003ef1 drm/i915: Add crtcs affected by bigjoiner to the state
3df07ac789a2 drm/i915: HW state readout for Bigjoiner case
0dd1ccb66cf4 drm/i915/dp: Master/Slave enable/disable sequence for bigjoiner
a88c0f99027f drm/i915/dp: Modify VDSC helpers to configure DSC for Bigjoiner slave
7b54f1a8cd69 drm/i915: Try to make bigjoiner work in atomic check
9c8fa6e879fc drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.
52b4804fb66d drm/i915/dp: Add from_crtc_state to copy color blobs
49685428c7ed drm/i915: Pass intel_atomic_state instead of drm_atomic_state
65f73587d676 drm/i915: Remove skl_adjusted_plane_pixel_rate()
93f51a472bfb drm/i915: Store plane relative data rate in crtc_state
ffa8b5ec12d6 drm/i915: Precompute can_sagv for each wm level
76f19438bbac drm/i915: Pimp the watermark documentation a bit
0bf0fbc51029 drm/i915: Nuke intel_atomic_crtc_state_for_each_plane_state() from skl+ wm code
200e8d85a273 drm/i915: Pass intel_atomic_state around
787f109da8f7 drm/i915: Copy the plane hw state directly for Y planes

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/index.html

--===============2357933481791826561==
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
<tr><td><b>Series:</b></td><td>drm/i915: Big bigjoiner series</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/83837/">https://patchwork.freedesktop.org/series/83837/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9326 -&gt; Patchwork_18904</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9326 and Patchwork_18904:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 1 fail(s) 37 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18904 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot (NEW):<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-tgl-dsi/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-tgl-dsi/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2448">i915#2448</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-byt-j1900/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-byt-j1900/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2420">i915#2420</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-snb-2520m/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-snb-2520m/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-tgl-y/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-tgl-y/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-tgl-y/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-tgl-y/igt@prime_vgem@basic-gtt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1161">i915#1161</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-c:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-c.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9326/fi-tgl-y/igt@prime_vgem@basic-read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18904/fi-tgl-y/igt@prime_vgem@basic-read.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 38)</h2>
<p>Missing    (8): fi-ilk-m540 fi-bxt-dsi fi-hsw-4200u fi-glk-dsi fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus fi-skl-6600u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9326 -&gt; Patchwork_18904</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9326: 3048c2a1dcf02422e89930148ffad9e91d690499 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5850: 9748a4a0f93d108955d374a866e60cb962da9b5d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18904: 7fd1ad48f2a3e2e2754f83383caf1404ec823d73 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>7fd1ad48f2a3 drm/i915: Enable bigjoiner<br />
ec5f31858af8 drm/i915: Add bigjoiner state dump<br />
79ea1ef5dad1 drm/i915: Fix cursor src/dst rectangle with bigjoiner<br />
c7d08ccf925b drm/i915: Disable legacy cursor fastpath for bigjoiner<br />
a63a8532e9c7 drm/i915: Add debugfs dumping for bigjoiner, v3.<br />
43eaeb52a244 drm/i915: Add bigjoiner aware plane clipping checks<br />
777362899f26 drm/i915: Get the uapi state from the correct plane when bigjoiner is used<br />
6429c52b56f9 drm/i915: Add planes affected by bigjoiner to the state<br />
76672e003ef1 drm/i915: Add crtcs affected by bigjoiner to the state<br />
3df07ac789a2 drm/i915: HW state readout for Bigjoiner case<br />
0dd1ccb66cf4 drm/i915/dp: Master/Slave enable/disable sequence for bigjoiner<br />
a88c0f99027f drm/i915/dp: Modify VDSC helpers to configure DSC for Bigjoiner slave<br />
7b54f1a8cd69 drm/i915: Try to make bigjoiner work in atomic check<br />
9c8fa6e879fc drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.<br />
52b4804fb66d drm/i915/dp: Add from_crtc_state to copy color blobs<br />
49685428c7ed drm/i915: Pass intel_atomic_state instead of drm_atomic_state<br />
65f73587d676 drm/i915: Remove skl_adjusted_plane_pixel_rate()<br />
93f51a472bfb drm/i915: Store plane relative data rate in crtc_state<br />
ffa8b5ec12d6 drm/i915: Precompute can_sagv for each wm level<br />
76f19438bbac drm/i915: Pimp the watermark documentation a bit<br />
0bf0fbc51029 drm/i915: Nuke intel_atomic_crtc_state_for_each_plane_state() from skl+ wm code<br />
200e8d85a273 drm/i915: Pass intel_atomic_state around<br />
787f109da8f7 drm/i915: Copy the plane hw state directly for Y planes</p>

</body>
</html>

--===============2357933481791826561==--

--===============1528651315==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1528651315==--
