Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DC58D2557
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 22:01:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F01010E093;
	Tue, 28 May 2024 20:01:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77AA010E093;
 Tue, 28 May 2024 20:01:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5275654154369698749=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_Cleanups_around?=
 =?utf-8?q?_scanline_arithmetic?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 28 May 2024 20:01:20 -0000
Message-ID: <171692648048.2217197.9681247230662936062@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240528185647.7765-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240528185647.7765-1-ville.syrjala@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============5275654154369698749==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Cleanups around scanline arithmetic
URL   : https://patchwork.freedesktop.org/series/134151/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14837 -> Patchwork_134151v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/index.html

Participating hosts (38 -> 39)
------------------------------

  Additional (2): fi-kbl-7567u bat-jsl-3 
  Missing    (1): bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_134151v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-jsl-3:          NOTRUN -> [SKIP][1] ([i915#9318])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/bat-jsl-3/igt@debugfs_test@basic-hwmon.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][2] ([i915#2190])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html
    - bat-jsl-3:          NOTRUN -> [SKIP][3] ([i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/bat-jsl-3/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - bat-jsl-3:          NOTRUN -> [SKIP][4] ([i915#4613]) +3 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/bat-jsl-3/igt@gem_lmem_swapping@basic.html
    - fi-kbl-7567u:       NOTRUN -> [SKIP][5] ([i915#4613]) +3 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-9:          [PASS][6] -> [FAIL][7] ([i915#10378])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14837/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@i915_module_load@load:
    - bat-dg2-8:          [PASS][8] -> [DMESG-WARN][9] ([i915#10014])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14837/bat-dg2-8/igt@i915_module_load@load.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/bat-dg2-8/igt@i915_module_load@load.html

  * igt@i915_selftest@live@workarounds:
    - bat-adlp-9:         [PASS][10] -> [INCOMPLETE][11] ([i915#9413])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14837/bat-adlp-9/igt@i915_selftest@live@workarounds.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/bat-adlp-9/igt@i915_selftest@live@workarounds.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-jsl-3:          NOTRUN -> [SKIP][12] ([i915#4103]) +1 other test skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/bat-jsl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-jsl-3:          NOTRUN -> [SKIP][13] ([i915#3555] / [i915#9886])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/bat-jsl-3/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][14] +11 other tests skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/fi-kbl-7567u/igt@kms_force_connector_basic@force-load-detect.html
    - bat-jsl-3:          NOTRUN -> [SKIP][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/bat-jsl-3/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-jsl-3:          NOTRUN -> [SKIP][16] ([i915#3555])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/bat-jsl-3/igt@kms_setmode@basic-clone-single-crtc.html

  
  [i915#10014]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10014
  [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413
  [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886


Build changes
-------------

  * Linux: CI_DRM_14837 -> Patchwork_134151v1

  CI-20190529: 20190529
  CI_DRM_14837: a86e8e1b93dba695cc2f1820a8b4de6a161487e7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7872: baba9988c34c55977332044f3521cfbba80ca630 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_134151v1: a86e8e1b93dba695cc2f1820a8b4de6a161487e7 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/index.html

--===============5275654154369698749==
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
<tr><td><b>Series:</b></td><td>drm/i915: Cleanups around scanline arithmetic</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/134151/">https://patchwork.freedesktop.org/series/134151/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14837 -&gt; Patchwork_134151v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/index.html</p>
<h2>Participating hosts (38 -&gt; 39)</h2>
<p>Additional (2): fi-kbl-7567u bat-jsl-3 <br />
  Missing    (1): bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_134151v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/bat-jsl-3/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/bat-jsl-3/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/bat-jsl-3/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14837/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14837/bat-dg2-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/bat-dg2-8/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10014">i915#10014</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14837/bat-adlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/bat-adlp-9/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/bat-jsl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/bat-jsl-3/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/fi-kbl-7567u/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> +11 other tests skip</li>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/bat-jsl-3/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134151v1/bat-jsl-3/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14837 -&gt; Patchwork_134151v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14837: a86e8e1b93dba695cc2f1820a8b4de6a161487e7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7872: baba9988c34c55977332044f3521cfbba80ca630 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_134151v1: a86e8e1b93dba695cc2f1820a8b4de6a161487e7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5275654154369698749==--
