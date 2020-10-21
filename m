Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FB2294EE9
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 16:41:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 970186EDB3;
	Wed, 21 Oct 2020 14:41:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BF5AB6EDB2;
 Wed, 21 Oct 2020 14:41:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AD45FA47E6;
 Wed, 21 Oct 2020 14:41:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aditya Swarup" <aditya.swarup@intel.com>
Date: Wed, 21 Oct 2020 14:41:22 -0000
Message-ID: <160329128270.17473.7145555648005528552@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201021133213.328994-1-aditya.swarup@intel.com>
In-Reply-To: <20201021133213.328994-1-aditya.swarup@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_Alderlake-S?=
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
Content-Type: multipart/mixed; boundary="===============2045457170=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2045457170==
Content-Type: multipart/alternative;
 boundary="===============4970152069444957833=="

--===============4970152069444957833==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce Alderlake-S
URL   : https://patchwork.freedesktop.org/series/82917/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9176 -> Patchwork_18752
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18752/index.html

Known issues
------------

  Here are the changes found in Patchwork_18752 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-icl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#1982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9176/fi-icl-y/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18752/fi-icl-y/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-tgl-u2:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982] / [k.org#205379])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9176/fi-tgl-u2/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18752/fi-tgl-u2/igt@i915_module_load@reload.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9176/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18752/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-byt-j1900:       [DMESG-WARN][7] ([i915#1982]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9176/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18752/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-7500u:       [DMESG-WARN][9] ([i915#1982] / [i915#2203]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9176/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18752/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-icl-u2:          [DMESG-WARN][11] ([i915#1982]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9176/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18752/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
#### Warnings ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [DMESG-FAIL][13] ([i915#165] / [i915#262]) -> [FAIL][14] ([i915#1161] / [i915#262])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9176/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18752/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
  [i915#1161]: https://gitlab.freedesktop.org/drm/intel/issues/1161
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (45 -> 38)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9176 -> Patchwork_18752

  CI-20190529: 20190529
  CI_DRM_9176: e3d4f747f53899164788f2008a16c82d236b762a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5822: b4bcf05cb9839037128905deda7146434155cc41 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18752: 7f707777a91f136fa59c8f7e7eba97763039758c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7f707777a91f drm/i915/adl_s: Load DMC
8da8a7726ee0 drm/i915/adl_s: Update memory bandwidth parameters
1a52773c70d3 drm/i915/display: Add HAS_D12_PLANE_MINIMIZATION
e3638c808f9e drm/i915/adl_s: Re-use TGL GuC/HuC firmware
f3ca8144e558 drm/i915/adl_s: MCHBAR memory info registers are moved
1ad9fe655cde drm/i915/adl_s: Add display, gt, ctx and ADL-S whitelist WA
9f3a0b45ebec drm/i915/adl_s: Update PHY_MISC programming
7fe0b1ea22d2 drm/i915/adl_s: Update combo PHY master/slave relationships
5e3a85cbe54a drm/i915/adl_s: Add vbt port and aux channel settings for adls
adec6f0e64aa drm/i915/adl_s: Add adl-s ddc pin mapping
919fedfd3bf3 drm/i915/adl_s: Setup display outputs and HTI support for ADL-S
cf0751c1b462 drm/i915/adl_s: Configure Port clock registers for ADL-S
eec312e2d54c drm/i915/adl_s: Configure DPLL for ADL-S
8426881fd08d drm/i915/adl_s: Add PHYs for Alderlake S
0cdf50266822 drm/i915/adl_s: Add Interrupt Support
9541e1b5d9c5 drm/i915/adl_s: Add PCH support
3f14bf129a7d x86/gpu: add ADL_S stolen memory support
37adab61ebad drm/i915/adl_s: Add ADL-S platform info and PCI ids

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18752/index.html

--===============4970152069444957833==
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
<tr><td><b>Series:</b></td><td>Introduce Alderlake-S</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82917/">https://patchwork.freedesktop.org/series/82917/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18752/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18752/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9176 -&gt; Patchwork_18752</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18752/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18752 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9176/fi-icl-y/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18752/fi-icl-y/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9176/fi-tgl-u2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18752/fi-tgl-u2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9176/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18752/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9176/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18752/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9176/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18752/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9176/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18752/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_chamelium@dp-crc-fast:<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9176/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18752/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1161">i915#1161</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (45 -&gt; 38)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9176 -&gt; Patchwork_18752</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9176: e3d4f747f53899164788f2008a16c82d236b762a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5822: b4bcf05cb9839037128905deda7146434155cc41 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18752: 7f707777a91f136fa59c8f7e7eba97763039758c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>7f707777a91f drm/i915/adl_s: Load DMC<br />
8da8a7726ee0 drm/i915/adl_s: Update memory bandwidth parameters<br />
1a52773c70d3 drm/i915/display: Add HAS_D12_PLANE_MINIMIZATION<br />
e3638c808f9e drm/i915/adl_s: Re-use TGL GuC/HuC firmware<br />
f3ca8144e558 drm/i915/adl_s: MCHBAR memory info registers are moved<br />
1ad9fe655cde drm/i915/adl_s: Add display, gt, ctx and ADL-S whitelist WA<br />
9f3a0b45ebec drm/i915/adl_s: Update PHY_MISC programming<br />
7fe0b1ea22d2 drm/i915/adl_s: Update combo PHY master/slave relationships<br />
5e3a85cbe54a drm/i915/adl_s: Add vbt port and aux channel settings for adls<br />
adec6f0e64aa drm/i915/adl_s: Add adl-s ddc pin mapping<br />
919fedfd3bf3 drm/i915/adl_s: Setup display outputs and HTI support for ADL-S<br />
cf0751c1b462 drm/i915/adl_s: Configure Port clock registers for ADL-S<br />
eec312e2d54c drm/i915/adl_s: Configure DPLL for ADL-S<br />
8426881fd08d drm/i915/adl_s: Add PHYs for Alderlake S<br />
0cdf50266822 drm/i915/adl_s: Add Interrupt Support<br />
9541e1b5d9c5 drm/i915/adl_s: Add PCH support<br />
3f14bf129a7d x86/gpu: add ADL_S stolen memory support<br />
37adab61ebad drm/i915/adl_s: Add ADL-S platform info and PCI ids</p>

</body>
</html>

--===============4970152069444957833==--

--===============2045457170==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2045457170==--
