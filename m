Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B961244824
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Aug 2020 12:36:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BCC36EB2A;
	Fri, 14 Aug 2020 10:36:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DBB956EB29;
 Fri, 14 Aug 2020 10:36:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D5491A66C9;
 Fri, 14 Aug 2020 10:36:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nischal Varide" <nischal.varide@intel.com>
Date: Fri, 14 Aug 2020 10:36:50 -0000
Message-ID: <159740141084.3438.5501709153497838670@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200814024950.26830-1-nischal.varide@intel.com>
In-Reply-To: <20200814024950.26830-1-nischal.varide@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/8=5D_Critical_KlockWork_Error_-_Fixes_-_?=
 =?utf-8?q?intel=5Fcdclk=2Ec_-_Possible_NullPointerDereference1?=
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
Content-Type: multipart/mixed; boundary="===============1243253484=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1243253484==
Content-Type: multipart/alternative;
 boundary="===============6053208430492643516=="

--===============6053208430492643516==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/8] Critical KlockWork Error - Fixes - intel_cdclk.c - Possible NullPointerDereference1
URL   : https://patchwork.freedesktop.org/series/80622/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8882 -> Patchwork_18357
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18357 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18357, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18357:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-bsw-kefka/igt@runner@aborted.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-byt-j1900/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-tgl-u2:          [FAIL][3] ([i915#1233] / [i915#2110]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-tgl-u2/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-tgl-u2/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-tgl-dsi/igt@runner@aborted.html
    - {fi-ehl-1}:         NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-ehl-1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_18357 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-r:           [PASS][7] -> [DMESG-WARN][8] ([i915#93] / [i915#95]) +37 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-kbl-r/igt@gem_exec_suspend@basic-s0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-kbl-r/igt@gem_exec_suspend@basic-s0.html
    - fi-apl-guc:         [PASS][9] -> [INCOMPLETE][10] ([i915#1242] / [i915#1635])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html
    - fi-bxt-dsi:         [PASS][11] -> [INCOMPLETE][12] ([i915#1242] / [i915#1635])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-bxt-dsi/igt@gem_exec_suspend@basic-s0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-bxt-dsi/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-bsw-kefka:       [PASS][13] -> [DMESG-WARN][14] ([i915#89]) +11 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - fi-bsw-n3050:       [PASS][15] -> [DMESG-WARN][16] ([i915#89]) +20 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_flip@basic-flip-vs-dpms@a-edp1:
    - fi-bsw-kefka:       [PASS][17] -> [INCOMPLETE][18] ([i915#1250] / [i915#1436])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html

  * igt@kms_flip@basic-flip-vs-dpms@a-vga1:
    - fi-byt-j1900:       [PASS][19] -> [INCOMPLETE][20] ([i915#1436] / [i915#258])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-byt-j1900/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-byt-j1900/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-bsw-n3050:       [PASS][21] -> [DMESG-FAIL][22] ([i915#49] / [i915#89])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-bsw-n3050/igt@kms_frontbuffer_tracking@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-bsw-n3050/igt@kms_frontbuffer_tracking@basic.html
    - fi-skl-6600u:       [PASS][23] -> [DMESG-FAIL][24] ([i915#49] / [i915#88])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-skl-6600u/igt@kms_frontbuffer_tracking@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-skl-6600u/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-skl-6600u:       [PASS][25] -> [DMESG-WARN][26] ([i915#88]) +37 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-skl-6600u/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-skl-6600u/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_psr@cursor_plane_move:
    - fi-kbl-r:           [PASS][27] -> [SKIP][28] ([fdo#109271] / [i915#668]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-kbl-r/igt@kms_psr@cursor_plane_move.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-kbl-r/igt@kms_psr@cursor_plane_move.html

  * igt@kms_psr@primary_page_flip:
    - fi-skl-6600u:       [PASS][29] -> [SKIP][30] ([fdo#109271] / [i915#668]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-skl-6600u/igt@kms_psr@primary_page_flip.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-skl-6600u/igt@kms_psr@primary_page_flip.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [DMESG-WARN][31] ([i915#2203]) -> [DMESG-FAIL][32] ([i915#2203])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-n3050:       [DMESG-WARN][33] ([i915#1982]) -> [DMESG-WARN][34] ([i915#1982] / [i915#89])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-kbl-r:           [DMESG-WARN][35] ([i915#1982]) -> [DMESG-WARN][36] ([i915#93] / [i915#95])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-kbl-r/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-kbl-r/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][37] ([i915#62] / [i915#92]) -> [DMESG-WARN][38] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-kbl-x1275:       [DMESG-WARN][39] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][40] ([i915#62] / [i915#92]) +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1242]: https://gitlab.freedesktop.org/drm/intel/issues/1242
  [i915#1250]: https://gitlab.freedesktop.org/drm/intel/issues/1250
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#258]: https://gitlab.freedesktop.org/drm/intel/issues/258
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#88]: https://gitlab.freedesktop.org/drm/intel/issues/88
  [i915#89]: https://gitlab.freedesktop.org/drm/intel/issues/89
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (44 -> 37)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8882 -> Patchwork_18357

  CI-20190529: 20190529
  CI_DRM_8882: bc285974fbc945765c176218aba7a003b687eea9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5769: 4e5f76be680b65780204668e302026cf638decc9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18357: aae7f8d354af91c9b64f787a9e69a8dc8b949ead @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

aae7f8d354af Critical KlockWork Error - Fixes - intel_combo_phy.c Uninitialized Variable-1
b91c796bdad7 Critical KlockWork Error - Fixes - intel_display_power.c - Possible NullPointerDereference2
35e611290838 Critical KlockWork Error - Fixes - intel_tv.c - Possible NullPointerDereference1
ad3c9fa781ce Critical KlockWork Error - Fixes - intel_sdvo.c - Possible NullPointerDereference1
f2f5b020a8e8 Critical KlockWork Error - Fixes - intel_display.c - Possible NullPointerDereference1
72231b698a7d Critical KlockWork Error - Fixes - intel_fbdev.c - Possible NullPointerDereference1
40f6a6747f32 Critical KlockWork Error - Fixes - intel_atomic.c - Possible NullPointerDereference1
b5bd9c17f5da Critical KlockWork Error - Fixes - intel_cdclk.c - Possible NullPointerDereference1

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/index.html

--===============6053208430492643516==
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
<tr><td><b>Series:</b></td><td>series starting with [1/8] Critical KlockWork Error - Fixes - intel_cdclk.c - Possible NullPointerDereference1</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/80622/">https://patchwork.freedesktop.org/series/80622/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8882 -&gt; Patchwork_18357</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18357 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18357, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18357:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-byt-j1900/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1233">i915#1233</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2110">i915#2110</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-tgl-u2/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-tgl-dsi/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-ehl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18357 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-kbl-r/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-kbl-r/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/93">i915#93</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +37 similar issues</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1242">i915#1242</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-bxt-dsi/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-bxt-dsi/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1242">i915#1242</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/89">i915#89</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/89">i915#89</a>) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-edp1:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1250">i915#1250</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-vga1:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-byt-j1900/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-byt-j1900/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/258">i915#258</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-bsw-n3050/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-bsw-n3050/igt@kms_frontbuffer_tracking@basic.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/89">i915#89</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-skl-6600u/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-skl-6600u/igt@kms_frontbuffer_tracking@basic.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/88">i915#88</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-skl-6600u/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-skl-6600u/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/88">i915#88</a>) +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-kbl-r/igt@kms_psr@cursor_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-kbl-r/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/668">i915#668</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/668">i915#668</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/89">i915#89</a>)</p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-kbl-r/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-kbl-r/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/93">i915#93</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8882/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18357/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 37)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8882 -&gt; Patchwork_18357</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8882: bc285974fbc945765c176218aba7a003b687eea9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5769: 4e5f76be680b65780204668e302026cf638decc9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18357: aae7f8d354af91c9b64f787a9e69a8dc8b949ead @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>aae7f8d354af Critical KlockWork Error - Fixes - intel_combo_phy.c Uninitialized Variable-1<br />
b91c796bdad7 Critical KlockWork Error - Fixes - intel_display_power.c - Possible NullPointerDereference2<br />
35e611290838 Critical KlockWork Error - Fixes - intel_tv.c - Possible NullPointerDereference1<br />
ad3c9fa781ce Critical KlockWork Error - Fixes - intel_sdvo.c - Possible NullPointerDereference1<br />
f2f5b020a8e8 Critical KlockWork Error - Fixes - intel_display.c - Possible NullPointerDereference1<br />
72231b698a7d Critical KlockWork Error - Fixes - intel_fbdev.c - Possible NullPointerDereference1<br />
40f6a6747f32 Critical KlockWork Error - Fixes - intel_atomic.c - Possible NullPointerDereference1<br />
b5bd9c17f5da Critical KlockWork Error - Fixes - intel_cdclk.c - Possible NullPointerDereference1</p>

</body>
</html>

--===============6053208430492643516==--

--===============1243253484==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1243253484==--
