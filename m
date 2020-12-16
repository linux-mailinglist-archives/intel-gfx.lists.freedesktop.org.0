Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A6A2DC90E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 23:41:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24AA589B0D;
	Wed, 16 Dec 2020 22:41:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7E9FF89812;
 Wed, 16 Dec 2020 22:41:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7B974A9932;
 Wed, 16 Dec 2020 22:41:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Wed, 16 Dec 2020 22:41:03 -0000
Message-ID: <160815846350.16510.9907050896851952752@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201216174900.185178-1-jose.souza@intel.com>
In-Reply-To: <20201216174900.185178-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv7=2C1/5=5D_drm=3A_Add_function_to_convert?=
 =?utf-8?q?_rect_in_16=2E16_fixed_format_to_regular_format?=
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
Content-Type: multipart/mixed; boundary="===============0667025581=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0667025581==
Content-Type: multipart/alternative;
 boundary="===============7477392861003464609=="

--===============7477392861003464609==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v7,1/5] drm: Add function to convert rect in 16.16 fixed format to regular format
URL   : https://patchwork.freedesktop.org/series/85015/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9495 -> Patchwork_19164
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19164 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19164, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19164/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19164:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-tgl-y:           [PASS][1] -> [FAIL][2] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9495/fi-tgl-y/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19164/fi-tgl-y/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - fi-tgl-u2:          [PASS][3] -> [FAIL][4] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9495/fi-tgl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19164/fi-tgl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  
Known issues
------------

  Here are the changes found in Patchwork_19164 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [PASS][5] -> [FAIL][6] ([i915#1888])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9495/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19164/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_module_load@reload:
    - fi-tgl-u2:          [PASS][7] -> [DMESG-WARN][8] ([i915#402] / [k.org#205379])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9495/fi-tgl-u2/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19164/fi-tgl-u2/igt@i915_module_load@reload.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:
    - fi-tgl-u2:          [PASS][9] -> [DMESG-WARN][10] ([i915#402]) +12 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9495/fi-tgl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19164/fi-tgl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html

  * igt@kms_psr@primary_page_flip:
    - fi-tgl-u2:          [PASS][11] -> [SKIP][12] ([i915#668]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9495/fi-tgl-u2/igt@kms_psr@primary_page_flip.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19164/fi-tgl-u2/igt@kms_psr@primary_page_flip.html

  * igt@prime_vgem@basic-read:
    - fi-tgl-y:           [PASS][13] -> [DMESG-WARN][14] ([i915#402]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9495/fi-tgl-y/igt@prime_vgem@basic-read.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19164/fi-tgl-y/igt@prime_vgem@basic-read.html

  * igt@runner@aborted:
    - fi-kbl-r:           NOTRUN -> [FAIL][15] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#2295] / [i915#2722])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19164/fi-kbl-r/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][16] ([i915#2029] / [i915#2722])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19164/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [DMESG-WARN][17] ([i915#402]) -> [PASS][18] +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9495/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19164/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
  [i915#1569]: https://gitlab.freedesktop.org/drm/intel/issues/1569
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (42 -> 39)
------------------------------

  Missing    (3): fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9495 -> Patchwork_19164

  CI-20190529: 20190529
  CI_DRM_9495: 2960e86fd8fd7659400d05f40a1e06d3a97b6987 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5905: 3d0934900bddeb7a68f1abab4cd05077f0609e32 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19164: 1c7e0563e76b5d179db86fb74b071ea9db24982c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1c7e0563e76b HAX/DO_NOT_MERGE_IT: drm/i915/display: Enable PSR2 selective fetch for testing
d52bb66ce81f drm/i915/display/psr: Program plane's calculated offset to plane SF register
c2f8bfbeb5e0 drm/i915/display: Split and export main surface calculation from skl_check_main_surface()
4e3afaf319d2 drm/i915/display/psr: Use plane damage clips to calculate damaged area
540fde7e0593 drm: Add function to convert rect in 16.16 fixed format to regular format

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19164/index.html

--===============7477392861003464609==
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
<tr><td><b>Series:</b></td><td>series starting with [v7,1/5] drm: Add function to convert rect in 16.16 fixed format to regular format</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85015/">https://patchwork.freedesktop.org/series/85015/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19164/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19164/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9495 -&gt; Patchwork_19164</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19164 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19164, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19164/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19164:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9495/fi-tgl-y/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19164/fi-tgl-y/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9495/fi-tgl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19164/fi-tgl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19164 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9495/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19164/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9495/fi-tgl-u2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19164/fi-tgl-u2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9495/fi-tgl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19164/fi-tgl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9495/fi-tgl-u2/igt@kms_psr@primary_page_flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19164/fi-tgl-u2/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/668">i915#668</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9495/fi-tgl-y/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19164/fi-tgl-y/igt@prime_vgem@basic-read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19164/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19164/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@prime_self_import@basic-with_one_bo_two_files:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9495/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19164/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 39)</h2>
<p>Missing    (3): fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9495 -&gt; Patchwork_19164</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9495: 2960e86fd8fd7659400d05f40a1e06d3a97b6987 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5905: 3d0934900bddeb7a68f1abab4cd05077f0609e32 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19164: 1c7e0563e76b5d179db86fb74b071ea9db24982c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>1c7e0563e76b HAX/DO_NOT_MERGE_IT: drm/i915/display: Enable PSR2 selective fetch for testing<br />
d52bb66ce81f drm/i915/display/psr: Program plane's calculated offset to plane SF register<br />
c2f8bfbeb5e0 drm/i915/display: Split and export main surface calculation from skl_check_main_surface()<br />
4e3afaf319d2 drm/i915/display/psr: Use plane damage clips to calculate damaged area<br />
540fde7e0593 drm: Add function to convert rect in 16.16 fixed format to regular format</p>

</body>
</html>

--===============7477392861003464609==--

--===============0667025581==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0667025581==--
