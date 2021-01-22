Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 929AC300C50
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 20:22:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 101056EA33;
	Fri, 22 Jan 2021 19:22:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A60B76EA01;
 Fri, 22 Jan 2021 19:22:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A31EAA8836;
 Fri, 22 Jan 2021 19:22:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 22 Jan 2021 19:22:21 -0000
Message-ID: <161134334166.14037.18324330257265138676@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210122150622.21088-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210122150622.21088-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/10=5D_drm/i915/gt=3A_SPDX_cleanup?=
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
Content-Type: multipart/mixed; boundary="===============1489150006=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1489150006==
Content-Type: multipart/alternative;
 boundary="===============4556196272728898257=="

--===============4556196272728898257==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/10] drm/i915/gt: SPDX cleanup
URL   : https://patchwork.freedesktop.org/series/86185/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9670 -> Patchwork_19461
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19461/index.html

Known issues
------------

  Here are the changes found in Patchwork_19461 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@userptr:
    - fi-byt-j1900:       NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19461/fi-byt-j1900/igt@amdgpu/amd_basic@userptr.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [PASS][2] -> [DMESG-WARN][3] ([i915#2411] / [i915#402])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19461/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [PASS][4] -> [DMESG-WARN][5] ([i915#402]) +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19461/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][6] -> [FAIL][7] ([i915#1161] / [i915#262])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19461/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [INCOMPLETE][8] ([i915#142] / [i915#2405]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19461/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@vgem_basic@setversion:
    - fi-tgl-y:           [DMESG-WARN][10] ([i915#402]) -> [PASS][11] +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/fi-tgl-y/igt@vgem_basic@setversion.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19461/fi-tgl-y/igt@vgem_basic@setversion.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1161]: https://gitlab.freedesktop.org/drm/intel/issues/1161
  [i915#142]: https://gitlab.freedesktop.org/drm/intel/issues/142
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (41 -> 36)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-glk-dsi fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9670 -> Patchwork_19461

  CI-20190529: 20190529
  CI_DRM_9670: 85fd189b9fbfb6e7af8d956d37be012fdd6ae0ad @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5964: 0949766cb9846d7d55fac9cdf31d3d8e8ed1d0c6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19461: ab84d0d24d4f164b9186e34305ca285cf1f80781 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ab84d0d24d4f drm/i915/gt: Replace 'return' with a fall-through
74ccef3728f1 drm/i915/gt: Add a space before '('
41b2b503d40a drm/i915/gt: Replace unnecessary ',' with '; '
af31f889a780 drm/i915/gt: Insert spaces into GEN3_L3LOG_SIZE/4
2c0af725138c drm/i915/gt: Wrap macro arg in ()
ddb63cc5d427 drm/i915/gt: Remove a bonus newline
403210e3e86d drm/i915/gt: Fixup misaligned function parameters
138dc8ff8b57 drm/i915/gt: Remove repeated words from comments
25941d069d19 drm/i915/gt: Add some missing blank lines after declaration
80d2e2637324 drm/i915/gt: SPDX cleanup

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19461/index.html

--===============4556196272728898257==
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
<tr><td><b>Series:</b></td><td>series starting with [01/10] drm/i915/gt: SPDX cleanup</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86185/">https://patchwork.freedesktop.org/series/86185/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19461/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19461/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9670 -&gt; Patchwork_19461</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19461/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19461 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@userptr:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19461/fi-byt-j1900/igt@amdgpu/amd_basic@userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19461/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/fi-tgl-y/igt@gem_mmap_gtt@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19461/fi-tgl-y/igt@gem_mmap_gtt@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19461/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1161">i915#1161</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/142">i915#142</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19461/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@vgem_basic@setversion:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/fi-tgl-y/igt@vgem_basic@setversion.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19461/fi-tgl-y/igt@vgem_basic@setversion.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (41 -&gt; 36)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-glk-dsi fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9670 -&gt; Patchwork_19461</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9670: 85fd189b9fbfb6e7af8d956d37be012fdd6ae0ad @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5964: 0949766cb9846d7d55fac9cdf31d3d8e8ed1d0c6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19461: ab84d0d24d4f164b9186e34305ca285cf1f80781 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ab84d0d24d4f drm/i915/gt: Replace 'return' with a fall-through<br />
74ccef3728f1 drm/i915/gt: Add a space before '('<br />
41b2b503d40a drm/i915/gt: Replace unnecessary ',' with '; '<br />
af31f889a780 drm/i915/gt: Insert spaces into GEN3_L3LOG_SIZE/4<br />
2c0af725138c drm/i915/gt: Wrap macro arg in ()<br />
ddb63cc5d427 drm/i915/gt: Remove a bonus newline<br />
403210e3e86d drm/i915/gt: Fixup misaligned function parameters<br />
138dc8ff8b57 drm/i915/gt: Remove repeated words from comments<br />
25941d069d19 drm/i915/gt: Add some missing blank lines after declaration<br />
80d2e2637324 drm/i915/gt: SPDX cleanup</p>

</body>
</html>

--===============4556196272728898257==--

--===============1489150006==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1489150006==--
