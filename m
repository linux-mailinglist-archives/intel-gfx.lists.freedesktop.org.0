Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 455BC2F6C01
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 21:26:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5370489838;
	Thu, 14 Jan 2021 20:26:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8DCE089838;
 Thu, 14 Jan 2021 20:26:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8703EA8835;
 Thu, 14 Jan 2021 20:26:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Thu, 14 Jan 2021 20:26:27 -0000
Message-ID: <161065598751.19648.14659096788679179170@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210113140604.3615437-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210113140604.3615437-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?-buf=3A_Add_debug_option_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0065337152=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0065337152==
Content-Type: multipart/alternative;
 boundary="===============8947469654485730620=="

--===============8947469654485730620==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm-buf: Add debug option (rev2)
URL   : https://patchwork.freedesktop.org/series/85813/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9612 -> Patchwork_19358
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19358/index.html

Known issues
------------

  Here are the changes found in Patchwork_19358 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-compute:
    - fi-tgl-y:           NOTRUN -> [SKIP][1] ([fdo#109315] / [i915#2575]) +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19358/fi-tgl-y/igt@amdgpu/amd_basic@cs-compute.html

  * igt@fbdev@read:
    - fi-tgl-y:           [PASS][2] -> [DMESG-WARN][3] ([i915#402]) +2 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9612/fi-tgl-y/igt@fbdev@read.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19358/fi-tgl-y/igt@fbdev@read.html

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [PASS][4] -> [INCOMPLETE][5] ([i915#142] / [i915#2405])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9612/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19358/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@runner@aborted:
    - fi-byt-j1900:       NOTRUN -> [FAIL][6] ([i915#1814] / [i915#2505])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19358/fi-byt-j1900/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#402]) -> [PASS][8] +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9612/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19358/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#142]: https://gitlab.freedesktop.org/drm/intel/issues/142
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (41 -> 38)
------------------------------

  Missing    (3): fi-ctg-p8600 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9612 -> Patchwork_19358

  CI-20190529: 20190529
  CI_DRM_9612: 3d921d1ad818c1aabb5b2bd3f0861df99e49be9b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5959: c5cf0734c4f6c1fa17a6a15b5aa721c3a0b8c494 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19358: 9406d53d49b1616e1059ab7edac199cc11ffe79f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9406d53d49b1 drm-buf: Add debug option

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19358/index.html

--===============8947469654485730620==
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
<tr><td><b>Series:</b></td><td>drm-buf: Add debug option (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85813/">https://patchwork.freedesktop.org/series/85813/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19358/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19358/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9612 -&gt; Patchwork_19358</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19358/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19358 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-compute:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19358/fi-tgl-y/igt@amdgpu/amd_basic@cs-compute.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9612/fi-tgl-y/igt@fbdev@read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19358/fi-tgl-y/igt@fbdev@read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9612/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19358/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/142">i915#142</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19358/fi-byt-j1900/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9612/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19358/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (41 -&gt; 38)</h2>
<p>Missing    (3): fi-ctg-p8600 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9612 -&gt; Patchwork_19358</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9612: 3d921d1ad818c1aabb5b2bd3f0861df99e49be9b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5959: c5cf0734c4f6c1fa17a6a15b5aa721c3a0b8c494 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19358: 9406d53d49b1616e1059ab7edac199cc11ffe79f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>9406d53d49b1 drm-buf: Add debug option</p>

</body>
</html>

--===============8947469654485730620==--

--===============0065337152==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0065337152==--
