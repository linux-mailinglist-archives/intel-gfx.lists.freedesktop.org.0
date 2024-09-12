Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F3F976111
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 08:12:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 146E510E145;
	Thu, 12 Sep 2024 06:12:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D557F10E145;
 Thu, 12 Sep 2024 06:12:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8759313008457466221=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Some_correction_in_the_DP_L?=
 =?utf-8?q?ink_Training_dequence?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Sep 2024 06:12:04 -0000
Message-ID: <172612152486.989752.13052301567077732614@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240912050552.779356-1-arun.r.murthy@intel.com>
In-Reply-To: <20240912050552.779356-1-arun.r.murthy@intel.com>
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

--===============8759313008457466221==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Some correction in the DP Link Training dequence
URL   : https://patchwork.freedesktop.org/series/138552/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15400 -> Patchwork_138552v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138552v1/index.html

Participating hosts (40 -> 38)
------------------------------

  Additional (1): fi-bsw-n3050 
  Missing    (3): bat-dg1-7 fi-snb-2520m fi-kbl-8809g 

Known issues
------------

  Here are the changes found in Patchwork_138552v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@nullptr:
    - bat-arls-1:         [PASS][1] -> [DMESG-WARN][2] ([i915#12102])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15400/bat-arls-1/igt@fbdev@nullptr.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138552v1/bat-arls-1/igt@fbdev@nullptr.html

  * igt@i915_module_load@reload:
    - fi-kbl-7567u:       [PASS][3] -> [DMESG-WARN][4] ([i915#180] / [i915#1982] / [i915#9925])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15400/fi-kbl-7567u/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138552v1/fi-kbl-7567u/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-7567u:       [PASS][5] -> [DMESG-WARN][6] ([i915#11621] / [i915#180] / [i915#1982] / [i915#9925])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15400/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138552v1/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-arls-2:         [PASS][7] -> [ABORT][8] ([i915#12175])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15400/bat-arls-2/igt@i915_selftest@live.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138552v1/bat-arls-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7567u:       [PASS][9] -> [DMESG-WARN][10] ([i915#11621]) +37 other tests dmesg-warn
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15400/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138552v1/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-2:         [PASS][11] -> [ABORT][12] ([i915#12061])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15400/bat-arls-2/igt@i915_selftest@live@workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138552v1/bat-arls-2/igt@i915_selftest@live@workarounds.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][13] +20 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138552v1/fi-bsw-n3050/igt@kms_psr@psr-primary-mmap-gtt.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - bat-arls-1:         [DMESG-WARN][14] ([i915#12102]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15400/bat-arls-1/igt@fbdev@read.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138552v1/bat-arls-1/igt@fbdev@read.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [ABORT][16] ([i915#12061]) -> [PASS][17] +1 other test pass
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15400/bat-mtlp-8/igt@i915_selftest@live.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138552v1/bat-mtlp-8/igt@i915_selftest@live.html

  
  [i915#11621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12102
  [i915#12175]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12175
  [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#9925]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9925


Build changes
-------------

  * Linux: CI_DRM_15400 -> Patchwork_138552v1

  CI-20190529: 20190529
  CI_DRM_15400: 1b37d4587b45639327eeb4cce29f77d487f7700a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8013: 8013
  Patchwork_138552v1: 1b37d4587b45639327eeb4cce29f77d487f7700a @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138552v1/index.html

--===============8759313008457466221==
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
<tr><td><b>Series:</b></td><td>Some correction in the DP Link Training dequence</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/138552/">https://patchwork.freedesktop.org/series/138552/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138552v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138552v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15400 -&gt; Patchwork_138552v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138552v1/index.html</p>
<h2>Participating hosts (40 -&gt; 38)</h2>
<p>Additional (1): fi-bsw-n3050 <br />
  Missing    (3): bat-dg1-7 fi-snb-2520m fi-kbl-8809g </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_138552v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15400/bat-arls-1/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138552v1/bat-arls-1/igt@fbdev@nullptr.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12102">i915#12102</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15400/fi-kbl-7567u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138552v1/fi-kbl-7567u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9925">i915#9925</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15400/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138552v1/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9925">i915#9925</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15400/bat-arls-2/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138552v1/bat-arls-2/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12175">i915#12175</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15400/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138552v1/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) +37 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15400/bat-arls-2/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138552v1/bat-arls-2/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-gtt:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138552v1/fi-bsw-n3050/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> +20 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15400/bat-arls-1/igt@fbdev@read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12102">i915#12102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138552v1/bat-arls-1/igt@fbdev@read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15400/bat-mtlp-8/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138552v1/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15400 -&gt; Patchwork_138552v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15400: 1b37d4587b45639327eeb4cce29f77d487f7700a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8013: 8013<br />
  Patchwork_138552v1: 1b37d4587b45639327eeb4cce29f77d487f7700a @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============8759313008457466221==--
