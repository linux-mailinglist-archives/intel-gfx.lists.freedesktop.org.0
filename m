Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8F1995BEC
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 01:59:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E19FF10E606;
	Tue,  8 Oct 2024 23:59:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF1F710E606;
 Tue,  8 Oct 2024 23:59:18 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1906008742233120373=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Add_xe3lpd_edp_enabling?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Atwood" <matthew.s.atwood@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 08 Oct 2024 23:59:18 -0000
Message-ID: <172843195890.1206601.18015282786725563928@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
In-Reply-To: <20241008223741.82790-1-matthew.s.atwood@intel.com>
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

--===============1906008742233120373==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add xe3lpd edp enabling
URL   : https://patchwork.freedesktop.org/series/139731/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15495 -> Patchwork_139731v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v1/index.html

Participating hosts (43 -> 41)
------------------------------

  Missing    (2): bat-rpls-4 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_139731v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-kbl-7567u:       [PASS][1] -> [DMESG-WARN][2] ([i915#11621] / [i915#180] / [i915#1982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15495/fi-kbl-7567u/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v1/fi-kbl-7567u/igt@i915_module_load@reload.html

  * igt@i915_selftest@live:
    - bat-twl-1:          [PASS][3] -> [INCOMPLETE][4] ([i915#12133] / [i915#9413])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15495/bat-twl-1/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v1/bat-twl-1/igt@i915_selftest@live.html
    - bat-twl-2:          [PASS][5] -> [INCOMPLETE][6] ([i915#12133] / [i915#9413])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15495/bat-twl-2/igt@i915_selftest@live.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v1/bat-twl-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-twl-2:          [PASS][7] -> [INCOMPLETE][8] ([i915#9413])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15495/bat-twl-2/igt@i915_selftest@live@gt_lrc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v1/bat-twl-2/igt@i915_selftest@live@gt_lrc.html
    - bat-twl-1:          [PASS][9] -> [INCOMPLETE][10] ([i915#10886] / [i915#9413])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15495/bat-twl-1/igt@i915_selftest@live@gt_lrc.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v1/bat-twl-1/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7567u:       [PASS][11] -> [DMESG-WARN][12] ([i915#11621]) +49 other tests dmesg-warn
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15495/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v1/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@workarounds:
    - bat-adlp-9:         [PASS][13] -> [INCOMPLETE][14] ([i915#9413]) +1 other test incomplete
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15495/bat-adlp-9/igt@i915_selftest@live@workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v1/bat-adlp-9/igt@i915_selftest@live@workarounds.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-7567u:       [PASS][15] -> [DMESG-WARN][16] ([i915#180])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15495/fi-kbl-7567u/igt@kms_busy@basic@flip.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v1/fi-kbl-7567u/igt@kms_busy@basic@flip.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-kbl-7567u:       [PASS][17] -> [DMESG-WARN][18] ([i915#11621] / [i915#180]) +50 other tests dmesg-warn
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15495/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v1/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [ABORT][19] ([i915#12216]) -> [PASS][20] +1 other test pass
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15495/bat-mtlp-8/igt@i915_selftest@live.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v1/bat-mtlp-8/igt@i915_selftest@live.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-7567u:       [DMESG-WARN][21] ([i915#11621] / [i915#1982]) -> [DMESG-WARN][22] ([i915#11621] / [i915#180])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15495/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v1/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html

  
  [i915#10886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10886
  [i915#11621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621
  [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133
  [i915#12216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216
  [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_15495 -> Patchwork_139731v1

  CI-20190529: 20190529
  CI_DRM_15495: c8e01f4159a790812aa3c38cf659d6480fc7d029 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8061: 8061
  Patchwork_139731v1: c8e01f4159a790812aa3c38cf659d6480fc7d029 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v1/index.html

--===============1906008742233120373==
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
<tr><td><b>Series:</b></td><td>Add xe3lpd edp enabling</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/139731/">https://patchwork.freedesktop.org/series/139731/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15495 -&gt; Patchwork_139731v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v1/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): bat-rpls-4 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139731v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15495/fi-kbl-7567u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v1/fi-kbl-7567u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15495/bat-twl-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v1/bat-twl-1/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>)</li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15495/bat-twl-2/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v1/bat-twl-2/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15495/bat-twl-2/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v1/bat-twl-2/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>)</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15495/bat-twl-1/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v1/bat-twl-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10886">i915#10886</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15495/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v1/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) +49 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15495/bat-adlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v1/bat-adlp-9/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15495/fi-kbl-7567u/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v1/fi-kbl-7567u/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15495/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v1/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) +50 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15495/bat-mtlp-8/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216">i915#12216</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v1/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15495/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139731v1/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15495 -&gt; Patchwork_139731v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15495: c8e01f4159a790812aa3c38cf659d6480fc7d029 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8061: 8061<br />
  Patchwork_139731v1: c8e01f4159a790812aa3c38cf659d6480fc7d029 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1906008742233120373==--
