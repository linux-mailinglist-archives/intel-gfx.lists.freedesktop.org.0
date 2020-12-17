Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 071472DDB3F
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Dec 2020 23:26:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79CB2898BF;
	Thu, 17 Dec 2020 22:26:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 82FC989895;
 Thu, 17 Dec 2020 22:26:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7EEFDA8835;
 Thu, 17 Dec 2020 22:26:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Thu, 17 Dec 2020 22:26:49 -0000
Message-ID: <160824400951.2012.1164897843976018613@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201217211400.231826-1-jose.souza@intel.com>
In-Reply-To: <20201217211400.231826-1-jose.souza@intel.com>
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
Content-Type: multipart/mixed; boundary="===============1600905251=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1600905251==
Content-Type: multipart/alternative;
 boundary="===============2623849665347303584=="

--===============2623849665347303584==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v7,1/5] drm: Add function to convert rect in 16.16 fixed format to regular format
URL   : https://patchwork.freedesktop.org/series/85049/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9500 -> Patchwork_19169
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19169 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19169, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19169/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19169:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@evict:
    - fi-tgl-y:           [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9500/fi-tgl-y/igt@i915_selftest@live@evict.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19169/fi-tgl-y/igt@i915_selftest@live@evict.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-tgl-y:           [PASS][3] -> [FAIL][4] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9500/fi-tgl-y/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19169/fi-tgl-y/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - fi-tgl-u2:          [PASS][5] -> [FAIL][6] +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9500/fi-tgl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19169/fi-tgl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  
Known issues
------------

  Here are the changes found in Patchwork_19169 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([i915#402]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9500/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19169/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@i915_module_load@reload:
    - fi-tgl-u2:          [PASS][9] -> [DMESG-WARN][10] ([i915#402] / [k.org#205379])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9500/fi-tgl-u2/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19169/fi-tgl-u2/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@reset:
    - fi-tgl-y:           [PASS][11] -> [INCOMPLETE][12] ([i915#402])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9500/fi-tgl-y/igt@i915_selftest@live@reset.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19169/fi-tgl-y/igt@i915_selftest@live@reset.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:
    - fi-tgl-u2:          [PASS][13] -> [DMESG-WARN][14] ([i915#402]) +12 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9500/fi-tgl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19169/fi-tgl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html

  * igt@kms_psr@primary_page_flip:
    - fi-tgl-u2:          [PASS][15] -> [SKIP][16] ([i915#668]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9500/fi-tgl-u2/igt@kms_psr@primary_page_flip.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19169/fi-tgl-u2/igt@kms_psr@primary_page_flip.html

  
#### Possible fixes ####

  * igt@gem_flink_basic@basic:
    - fi-tgl-y:           [DMESG-WARN][17] ([i915#402]) -> [PASS][18] +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9500/fi-tgl-y/igt@gem_flink_basic@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19169/fi-tgl-y/igt@gem_flink_basic@basic.html

  
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (43 -> 39)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9500 -> Patchwork_19169

  CI-20190529: 20190529
  CI_DRM_9500: b6187a4ba065777110747954d4b46a511b0a6031 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5907: ff747ef212f95e5a66bef553187e131cf1c53af1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19169: 2cda2f0bfd0804bdcf549958794848a29d1ebef4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2cda2f0bfd08 HAX/DO_NOT_MERGE_IT: drm/i915/display: Enable PSR2 selective fetch for testing
8a2bc8b36f10 drm/i915/display/psr: Program plane's calculated offset to plane SF register
cb713a9df239 drm/i915/display: Split and export main surface calculation from skl_check_main_surface()
37c173b9a72c drm/i915/display/psr: Use plane damage clips to calculate damaged area
802c17bdaf1d drm: Add function to convert rect in 16.16 fixed format to regular format

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19169/index.html

--===============2623849665347303584==
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
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85049/">https://patchwork.freedesktop.org/series/85049/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19169/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19169/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9500 -&gt; Patchwork_19169</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19169 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19169, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19169/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19169:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9500/fi-tgl-y/igt@i915_selftest@live@evict.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19169/fi-tgl-y/igt@i915_selftest@live@evict.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9500/fi-tgl-y/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19169/fi-tgl-y/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9500/fi-tgl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19169/fi-tgl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19169 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9500/fi-tgl-y/igt@gem_mmap_gtt@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19169/fi-tgl-y/igt@gem_mmap_gtt@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9500/fi-tgl-u2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19169/fi-tgl-u2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9500/fi-tgl-y/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19169/fi-tgl-y/igt@i915_selftest@live@reset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9500/fi-tgl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19169/fi-tgl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9500/fi-tgl-u2/igt@kms_psr@primary_page_flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19169/fi-tgl-u2/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/668">i915#668</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_flink_basic@basic:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9500/fi-tgl-y/igt@gem_flink_basic@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19169/fi-tgl-y/igt@gem_flink_basic@basic.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9500 -&gt; Patchwork_19169</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9500: b6187a4ba065777110747954d4b46a511b0a6031 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5907: ff747ef212f95e5a66bef553187e131cf1c53af1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19169: 2cda2f0bfd0804bdcf549958794848a29d1ebef4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2cda2f0bfd08 HAX/DO_NOT_MERGE_IT: drm/i915/display: Enable PSR2 selective fetch for testing<br />
8a2bc8b36f10 drm/i915/display/psr: Program plane's calculated offset to plane SF register<br />
cb713a9df239 drm/i915/display: Split and export main surface calculation from skl_check_main_surface()<br />
37c173b9a72c drm/i915/display/psr: Use plane damage clips to calculate damaged area<br />
802c17bdaf1d drm: Add function to convert rect in 16.16 fixed format to regular format</p>

</body>
</html>

--===============2623849665347303584==--

--===============1600905251==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1600905251==--
