Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1FC9485E1A
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jan 2022 02:27:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E13F610E4D3;
	Thu,  6 Jan 2022 01:27:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EABA410E4B4;
 Thu,  6 Jan 2022 01:27:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E7B3EA7DFB;
 Thu,  6 Jan 2022 01:27:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8673696138978369144=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 06 Jan 2022 01:27:17 -0000
Message-ID: <164143243792.20692.15243921260033870942@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220106003654.770316-1-lucas.demarchi@intel.com>
In-Reply-To: <20220106003654.770316-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_x86/quirks=3A_Fix_logic_to_app?=
 =?utf-8?q?ly_quirk_once?=
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

--===============8673696138978369144==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/2] x86/quirks: Fix logic to apply quirk once
URL   : https://patchwork.freedesktop.org/series/98523/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11051 -> Patchwork_21929
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21929/index.html

Participating hosts (46 -> 31)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (16): fi-kbl-soraka bat-adls-5 bat-dg1-6 bat-dg1-5 fi-bsw-n3050 fi-tgl-dsi fi-icl-u2 fi-bwr-2160 bat-adlp-6 fi-bsw-cyan fi-bsw-kefka bat-rpls-1 fi-bdw-samus bat-jsl-2 fi-bsw-nick bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_21929 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21929/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-tgl-1115g4:      [PASS][2] -> [FAIL][3] ([i915#1888])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11051/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3@smem.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21929/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@hugepages:
    - fi-snb-2520m:       [PASS][4] -> [DMESG-FAIL][5] ([i915#4610])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11051/fi-snb-2520m/igt@i915_selftest@live@hugepages.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21929/fi-snb-2520m/igt@i915_selftest@live@hugepages.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [PASS][6] -> [DMESG-WARN][7] ([i915#4269])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11051/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21929/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][8] ([fdo#109271]) +57 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21929/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-snb-2520m:       NOTRUN -> [FAIL][9] ([i915#2426] / [i915#4312])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21929/fi-snb-2520m/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@reset:
    - fi-snb-2600:        [DMESG-FAIL][10] ([i915#4610]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11051/fi-snb-2600/igt@i915_selftest@live@reset.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21929/fi-snb-2600/igt@i915_selftest@live@reset.html

  
#### Warnings ####

  * igt@kms_psr@primary_page_flip:
    - fi-skl-6600u:       [INCOMPLETE][12] ([i915#4547] / [i915#4838]) -> [FAIL][13] ([i915#4547])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11051/fi-skl-6600u/igt@kms_psr@primary_page_flip.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21929/fi-skl-6600u/igt@kms_psr@primary_page_flip.html

  * igt@runner@aborted:
    - fi-skl-6600u:       [FAIL][14] ([i915#2722] / [i915#4312]) -> [FAIL][15] ([i915#4312])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11051/fi-skl-6600u/igt@runner@aborted.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21929/fi-skl-6600u/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4610]: https://gitlab.freedesktop.org/drm/intel/issues/4610
  [i915#4838]: https://gitlab.freedesktop.org/drm/intel/issues/4838


Build changes
-------------

  * Linux: CI_DRM_11051 -> Patchwork_21929

  CI-20190529: 20190529
  CI_DRM_11051: 9b0d7ca3667904f5d5ba802c5d7c840db46de5f6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6323: 9dbaa0d5be7a859cda9b7d54c20ba96a596f43bd @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21929: 5f1881f1ab58fdf136e766b319a9cc0bdedab16c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5f1881f1ab58 x86/quirks: better wrap quirk conditions
82b222891e10 x86/quirks: Fix logic to apply quirk once

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21929/index.html

--===============8673696138978369144==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/2] x86/quirks: Fix logic to apply quirk once</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98523/">https://patchwork.freedesktop.org/series/98523/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21929/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21929/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11051 -&gt; Patchwork_21929</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21929/index.html</p>
<h2>Participating hosts (46 -&gt; 31)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (16): fi-kbl-soraka bat-adls-5 bat-dg1-6 bat-dg1-5 fi-bsw-n3050 fi-tgl-dsi fi-icl-u2 fi-bwr-2160 bat-adlp-6 fi-bsw-cyan fi-bsw-kefka bat-rpls-1 fi-bdw-samus bat-jsl-2 fi-bsw-nick bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21929 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21929/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11051/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21929/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3@smem.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11051/fi-snb-2520m/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21929/fi-snb-2520m/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4610">i915#4610</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11051/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21929/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21929/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21929/fi-snb-2520m/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@reset:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11051/fi-snb-2600/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4610">i915#4610</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21929/fi-snb-2600/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11051/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4838">i915#4838</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21929/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11051/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21929/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11051 -&gt; Patchwork_21929</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11051: 9b0d7ca3667904f5d5ba802c5d7c840db46de5f6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6323: 9dbaa0d5be7a859cda9b7d54c20ba96a596f43bd @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21929: 5f1881f1ab58fdf136e766b319a9cc0bdedab16c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>5f1881f1ab58 x86/quirks: better wrap quirk conditions<br />
82b222891e10 x86/quirks: Fix logic to apply quirk once</p>

</body>
</html>

--===============8673696138978369144==--
