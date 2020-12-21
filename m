Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 402AA2DFBBA
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Dec 2020 13:08:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4949D6E183;
	Mon, 21 Dec 2020 12:08:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 05BC16E183;
 Mon, 21 Dec 2020 12:08:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F2C5FAA916;
 Mon, 21 Dec 2020 12:08:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 21 Dec 2020 12:08:28 -0000
Message-ID: <160855250896.418.16133344232692320010@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201221090449.8288-1-jani.nikula@intel.com>
In-Reply-To: <20201221090449.8288-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/5=5D_drm/i915/display=3A_move_needs?=
 =?utf-8?q?=5Fmodeset_to_an_inline_in_header_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0614008455=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0614008455==
Content-Type: multipart/alternative;
 boundary="===============6866203262046097301=="

--===============6866203262046097301==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/5] drm/i915/display: move needs_modeset to an inline in header (rev2)
URL   : https://patchwork.freedesktop.org/series/85132/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9509 -> Patchwork_19191
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19191/index.html

Known issues
------------

  Here are the changes found in Patchwork_19191 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@fork-compute0:
    - fi-tgl-u2:          NOTRUN -> [SKIP][1] ([fdo#109315] / [i915#2575]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19191/fi-tgl-u2/igt@amdgpu/amd_cs_nop@fork-compute0.html

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [PASS][2] -> [INCOMPLETE][3] ([i915#142] / [i915#2405])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9509/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19191/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@runner@aborted:
    - fi-byt-j1900:       NOTRUN -> [FAIL][4] ([i915#1814])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19191/fi-byt-j1900/igt@runner@aborted.html

  * igt@vgem_basic@setversion:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([i915#402]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9509/fi-tgl-y/igt@vgem_basic@setversion.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19191/fi-tgl-y/igt@vgem_basic@setversion.html

  
#### Possible fixes ####

  * igt@gem_tiled_blits@basic:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#402]) -> [PASS][8] +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9509/fi-tgl-y/igt@gem_tiled_blits@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19191/fi-tgl-y/igt@gem_tiled_blits@basic.html

  * igt@i915_selftest@live@hangcheck:
    - fi-tgl-u2:          [INCOMPLETE][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9509/fi-tgl-u2/igt@i915_selftest@live@hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19191/fi-tgl-u2/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [FAIL][11] ([i915#2679]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9509/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19191/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#142]: https://gitlab.freedesktop.org/drm/intel/issues/142
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2679]: https://gitlab.freedesktop.org/drm/intel/issues/2679
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (42 -> 37)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-glk-dsi fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9509 -> Patchwork_19191

  CI-20190529: 20190529
  CI_DRM_9509: 66ecfb1df07b703dc4e83e8c520b186dffe6d2b3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5913: b30bdfecaf1ff38b83c0bfbcf5981732a968a464 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19191: a324abeeea6f7aa420eb91630ffb657111fb7cd0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a324abeeea6f drm/i915: refactor i915 plane code into separate file.
9e8bf3e7db29 drm/i915: refactor cursor code out of i915_display.c
c7a3e0296b01 drm/i915/display: fix misused comma
e6777135cd18 drm/i915/display: move to_intel_frontbuffer to header
f3393b6c2693 drm/i915/display: move needs_modeset to an inline in header

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19191/index.html

--===============6866203262046097301==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/5] drm/i915/display: move needs_modeset to an inline in header (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85132/">https://patchwork.freedesktop.org/series/85132/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19191/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19191/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9509 -&gt; Patchwork_19191</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19191/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19191 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-compute0:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19191/fi-tgl-u2/igt@amdgpu/amd_cs_nop@fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9509/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19191/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/142">i915#142</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19191/fi-byt-j1900/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a>)</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@setversion:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9509/fi-tgl-y/igt@vgem_basic@setversion.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19191/fi-tgl-y/igt@vgem_basic@setversion.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9509/fi-tgl-y/igt@gem_tiled_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19191/fi-tgl-y/igt@gem_tiled_blits@basic.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9509/fi-tgl-u2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19191/fi-tgl-u2/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-read:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9509/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2679">i915#2679</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19191/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 37)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-glk-dsi fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9509 -&gt; Patchwork_19191</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9509: 66ecfb1df07b703dc4e83e8c520b186dffe6d2b3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5913: b30bdfecaf1ff38b83c0bfbcf5981732a968a464 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19191: a324abeeea6f7aa420eb91630ffb657111fb7cd0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>a324abeeea6f drm/i915: refactor i915 plane code into separate file.<br />
9e8bf3e7db29 drm/i915: refactor cursor code out of i915_display.c<br />
c7a3e0296b01 drm/i915/display: fix misused comma<br />
e6777135cd18 drm/i915/display: move to_intel_frontbuffer to header<br />
f3393b6c2693 drm/i915/display: move needs_modeset to an inline in header</p>

</body>
</html>

--===============6866203262046097301==--

--===============0614008455==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0614008455==--
