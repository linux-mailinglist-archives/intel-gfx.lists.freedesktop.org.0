Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D87B7995145
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 16:17:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F196610E132;
	Tue,  8 Oct 2024 14:17:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5686510E132;
 Tue,  8 Oct 2024 14:17:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7841764048558416154=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/dp=3A_Add_FEC_Enab?=
 =?utf-8?q?le_Retry_mechanism_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chaitanya Kumar Borah" <chaitanya.kumar.borah@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 08 Oct 2024 14:17:54 -0000
Message-ID: <172839707434.1204388.381857229525824367@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241008125331.2893681-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20241008125331.2893681-1-chaitanya.kumar.borah@intel.com>
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

--===============7841764048558416154==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: Add FEC Enable Retry mechanism (rev2)
URL   : https://patchwork.freedesktop.org/series/138963/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15491 -> Patchwork_138963v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/index.html

Participating hosts (44 -> 42)
------------------------------

  Missing    (2): bat-rpls-4 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_138963v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@load:
    - bat-apl-1:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +1 other test dmesg-warn
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15491/bat-apl-1/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/bat-apl-1/igt@i915_module_load@load.html

  * igt@i915_module_load@reload:
    - bat-apl-1:          [PASS][3] -> [DMESG-WARN][4] ([i915#180] / [i915#1982]) +2 other tests dmesg-warn
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15491/bat-apl-1/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/bat-apl-1/igt@i915_module_load@reload.html

  * igt@i915_selftest@live:
    - bat-arls-2:         [PASS][5] -> [ABORT][6] ([i915#12061] / [i915#12133])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15491/bat-arls-2/igt@i915_selftest@live.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/bat-arls-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@sanitycheck:
    - bat-apl-1:          [PASS][7] -> [DMESG-WARN][8] ([i915#11621]) +46 other tests dmesg-warn
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15491/bat-apl-1/igt@i915_selftest@live@sanitycheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/bat-apl-1/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [PASS][9] -> [ABORT][10] ([i915#12216]) +1 other test abort
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15491/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
    - bat-arls-2:         [PASS][11] -> [ABORT][12] ([i915#12061])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15491/bat-arls-2/igt@i915_selftest@live@workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/bat-arls-2/igt@i915_selftest@live@workarounds.html

  * igt@kms_busy@basic:
    - bat-apl-1:          [PASS][13] -> [DMESG-WARN][14] ([i915#11621] / [i915#180] / [i915#1982]) +1 other test dmesg-warn
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15491/bat-apl-1/igt@kms_busy@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/bat-apl-1/igt@kms_busy@basic.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - bat-apl-1:          [PASS][15] -> [DMESG-WARN][16] ([i915#11621] / [i915#180]) +41 other tests dmesg-warn
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15491/bat-apl-1/igt@kms_pm_rpm@basic-pci-d3-state.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/bat-apl-1/igt@kms_pm_rpm@basic-pci-d3-state.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [ABORT][17] ([i915#12216]) -> [PASS][18] +1 other test pass
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15491/bat-mtlp-8/igt@i915_selftest@live.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-dg2-11:         [ABORT][19] ([i915#12133]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15491/bat-dg2-11/igt@i915_selftest@live.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/bat-dg2-11/igt@i915_selftest@live.html

  * igt@i915_selftest@live@active:
    - bat-dg2-11:         [ABORT][21] ([i915#12305]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15491/bat-dg2-11/igt@i915_selftest@live@active.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/bat-dg2-11/igt@i915_selftest@live@active.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - bat-apl-1:          [DMESG-WARN][23] ([i915#11621]) -> [DMESG-WARN][24] ([i915#11621] / [i915#180])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15491/bat-apl-1/igt@i915_pm_rpm@module-reload.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/bat-apl-1/igt@i915_pm_rpm@module-reload.html

  
  [i915#11621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133
  [i915#12216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216
  [i915#12305]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12305
  [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982


Build changes
-------------

  * Linux: CI_DRM_15491 -> Patchwork_138963v2

  CI-20190529: 20190529
  CI_DRM_15491: c2c031e80da1ca6b5a70dfcd7981bdbe18b8aac2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8059: 8059
  Patchwork_138963v2: c2c031e80da1ca6b5a70dfcd7981bdbe18b8aac2 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/index.html

--===============7841764048558416154==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: Add FEC Enable Retry mechanism (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/138963/">https://patchwork.freedesktop.org/series/138963/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15491 -&gt; Patchwork_138963v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/index.html</p>
<h2>Participating hosts (44 -&gt; 42)</h2>
<p>Missing    (2): bat-rpls-4 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_138963v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15491/bat-apl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/bat-apl-1/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15491/bat-apl-1/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/bat-apl-1/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>) +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15491/bat-arls-2/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/bat-arls-2/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15491/bat-apl-1/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/bat-apl-1/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) +46 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15491/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216">i915#12216</a>) +1 other test abort</li>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15491/bat-arls-2/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/bat-arls-2/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15491/bat-apl-1/igt@kms_busy@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/bat-apl-1/igt@kms_busy@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15491/bat-apl-1/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/bat-apl-1/igt@kms_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) +41 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15491/bat-mtlp-8/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216">i915#12216</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15491/bat-dg2-11/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/bat-dg2-11/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15491/bat-dg2-11/igt@i915_selftest@live@active.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12305">i915#12305</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/bat-dg2-11/igt@i915_selftest@live@active.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15491/bat-apl-1/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138963v2/bat-apl-1/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15491 -&gt; Patchwork_138963v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15491: c2c031e80da1ca6b5a70dfcd7981bdbe18b8aac2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8059: 8059<br />
  Patchwork_138963v2: c2c031e80da1ca6b5a70dfcd7981bdbe18b8aac2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7841764048558416154==--
