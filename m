Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B99897D558
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 14:26:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A30610E0CA;
	Fri, 20 Sep 2024 12:26:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5586B10E0CA;
 Fri, 20 Sep 2024 12:26:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4463491162699988364=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/dp=3A_clean_up_DP_?=
 =?utf-8?q?testing?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Sep 2024 12:26:36 -0000
Message-ID: <172683519634.1050619.9837624409776538682@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1726833193.git.jani.nikula@intel.com>
In-Reply-To: <cover.1726833193.git.jani.nikula@intel.com>
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

--===============4463491162699988364==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: clean up DP testing
URL   : https://patchwork.freedesktop.org/series/138919/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15441 -> Patchwork_138919v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138919v1/index.html

Participating hosts (38 -> 36)
------------------------------

  Additional (1): fi-bsw-n3050 
  Missing    (3): fi-kbl-7567u bat-dg2-11 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_138919v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@random-engines:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][1] +20 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138919v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html

  * igt@i915_module_load@load:
    - bat-dg2-9:          [PASS][2] -> [DMESG-WARN][3] ([i915#12257])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/bat-dg2-9/igt@i915_module_load@load.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138919v1/bat-dg2-9/igt@i915_module_load@load.html

  * igt@i915_selftest@live:
    - bat-mtlp-6:         [PASS][4] -> [ABORT][5] ([i915#12061]) +1 other test abort
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/bat-mtlp-6/igt@i915_selftest@live.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138919v1/bat-mtlp-6/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-twl-2:          [PASS][6] -> [INCOMPLETE][7] ([i915#9413]) +1 other test incomplete
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/bat-twl-2/igt@i915_selftest@live@gt_lrc.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138919v1/bat-twl-2/igt@i915_selftest@live@gt_lrc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-jsl-1:          [DMESG-FAIL][8] ([i915#11984] / [i915#12010]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/bat-jsl-1/igt@i915_selftest@live.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138919v1/bat-jsl-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_pm:
    - bat-jsl-1:          [DMESG-FAIL][10] ([i915#11984]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/bat-jsl-1/igt@i915_selftest@live@gt_pm.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138919v1/bat-jsl-1/igt@i915_selftest@live@gt_pm.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - bat-arls-5:         [DMESG-WARN][12] ([i915#11637]) -> [DMESG-WARN][13] ([i915#11637] / [i915#1982])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/bat-arls-5/igt@i915_module_load@reload.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138919v1/bat-arls-5/igt@i915_module_load@reload.html

  
  [i915#11637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637
  [i915#11984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11984
  [i915#12010]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12010
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12257
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_15441 -> Patchwork_138919v1

  CI-20190529: 20190529
  CI_DRM_15441: 128ccc5f71d7b9d84ce8f0651aa713ae490f4990 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8029: d22cd438e6356bd7c2ee55436553cdcadd55193a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_138919v1: 128ccc5f71d7b9d84ce8f0651aa713ae490f4990 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138919v1/index.html

--===============4463491162699988364==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: clean up DP testing</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/138919/">https://patchwork.freedesktop.org/series/138919/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138919v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138919v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15441 -&gt; Patchwork_138919v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138919v1/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Additional (1): fi-bsw-n3050 <br />
  Missing    (3): fi-kbl-7567u bat-dg2-11 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_138919v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138919v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html">SKIP</a> +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/bat-dg2-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138919v1/bat-dg2-9/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12257">i915#12257</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/bat-mtlp-6/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138919v1/bat-mtlp-6/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/bat-twl-2/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138919v1/bat-twl-2/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>) +1 other test incomplete</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/bat-jsl-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11984">i915#11984</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12010">i915#12010</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138919v1/bat-jsl-1/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/bat-jsl-1/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11984">i915#11984</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138919v1/bat-jsl-1/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15441/bat-arls-5/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637">i915#11637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138919v1/bat-arls-5/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637">i915#11637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15441 -&gt; Patchwork_138919v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15441: 128ccc5f71d7b9d84ce8f0651aa713ae490f4990 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8029: d22cd438e6356bd7c2ee55436553cdcadd55193a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_138919v1: 128ccc5f71d7b9d84ce8f0651aa713ae490f4990 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============4463491162699988364==--
