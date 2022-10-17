Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E02F460124F
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 17:01:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B37D10E507;
	Mon, 17 Oct 2022 15:01:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 96A8710E507;
 Mon, 17 Oct 2022 15:01:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8DA40A73C7;
 Mon, 17 Oct 2022 15:01:30 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1483525557859055264=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Mon, 17 Oct 2022 15:01:30 -0000
Message-ID: <166601889054.13569.10626204035805312631@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221017143038.1748319-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20221017143038.1748319-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRGVm?=
 =?utf-8?q?eature_Interlace_modes_for_Display_=3E=3D_12?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1483525557859055264==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Defeature Interlace modes for Display >= 12
URL   : https://patchwork.freedesktop.org/series/109773/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12251 -> Patchwork_109773v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/index.html

Participating hosts (44 -> 44)
------------------------------

  Additional (2): fi-hsw-4770 fi-rkl-11600 
  Missing    (2): fi-icl-u2 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_109773v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_backlight@basic-brightness:
    - fi-hsw-4770:        NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#3012])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rpm@module-reload:
    - fi-hsw-4770:        NOTRUN -> [INCOMPLETE][2] ([i915#7221])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/fi-hsw-4770/igt@i915_pm_rpm@module-reload.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-hsw-4770:        NOTRUN -> [SKIP][3] ([fdo#109271]) +9 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-hsw-4770:        NOTRUN -> [SKIP][4] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-hsw-4770:        NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1072]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][6] ([fdo#109271] / [i915#4312] / [i915#5594])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/fi-hsw-4770/igt@runner@aborted.html
    - fi-rkl-11600:       NOTRUN -> [FAIL][7] ([i915#7220])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/fi-rkl-11600/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:
    - fi-bsw-kefka:       [FAIL][8] ([i915#6298]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html

  
#### Warnings ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-bdw-gvtdvm:      [FAIL][10] ([fdo#103375]) -> [INCOMPLETE][11] ([i915#146])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/fi-bdw-gvtdvm/igt@i915_suspend@basic-s3-without-i915.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/fi-bdw-gvtdvm/igt@i915_suspend@basic-s3-without-i915.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#7220]: https://gitlab.freedesktop.org/drm/intel/issues/7220
  [i915#7221]: https://gitlab.freedesktop.org/drm/intel/issues/7221


Build changes
-------------

  * Linux: CI_DRM_12251 -> Patchwork_109773v1

  CI-20190529: 20190529
  CI_DRM_12251: ff61e79b01712f5d31a4c4f23c6971bbaa71cecb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7016: 642f4bf44e2b42791b4d1684936a1bfbe2d099ee @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109773v1: ff61e79b01712f5d31a4c4f23c6971bbaa71cecb @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

07f0302eb303 drm/i915/display: Prune Interlace modes for Display >=12
59440bde1e73 drm/i915/display: Drop check for doublescan mode in modevalid

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/index.html

--===============1483525557859055264==
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
<tr><td><b>Series:</b></td><td>Defeature Interlace modes for Display &gt;= 12</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/109773/">https://patchwork.freedesktop.org/series/109773/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12251 -&gt; Patchwork_109773v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/index.html</p>
<h2>Participating hosts (44 -&gt; 44)</h2>
<p>Additional (2): fi-hsw-4770 fi-rkl-11600 <br />
  Missing    (2): fi-icl-u2 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109773v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/fi-hsw-4770/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7221">i915#7221</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/fi-rkl-11600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7220">i915#7220</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/fi-bdw-gvtdvm/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/fi-bdw-gvtdvm/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12251 -&gt; Patchwork_109773v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12251: ff61e79b01712f5d31a4c4f23c6971bbaa71cecb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7016: 642f4bf44e2b42791b4d1684936a1bfbe2d099ee @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109773v1: ff61e79b01712f5d31a4c4f23c6971bbaa71cecb @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>07f0302eb303 drm/i915/display: Prune Interlace modes for Display &gt;=12<br />
59440bde1e73 drm/i915/display: Drop check for doublescan mode in modevalid</p>

</body>
</html>

--===============1483525557859055264==--
