Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC8D9ADF1C
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 10:30:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41A3C10E8D4;
	Thu, 24 Oct 2024 08:30:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92C6210E8DE;
 Thu, 24 Oct 2024 08:30:55 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6078721909976258336=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_series_starting_with_=5Btop?=
 =?utf-8?q?ic/core-for-CI=2C1/2=5D_Revert_=22HAX_suspend=3A_Disable_S3/S4_fo?=
 =?utf-8?q?r_fi-bdw-samus=22?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2024 08:30:55 -0000
Message-ID: <172975865559.1325996.5148059533275610857@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241023211834.3370346-1-lucas.demarchi@intel.com>
In-Reply-To: <20241023211834.3370346-1-lucas.demarchi@intel.com>
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

--===============6078721909976258336==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [topic/core-for-CI,1/2] Revert "HAX suspend: Disable S3/S4 for fi-bdw-samus"
URL   : https://patchwork.freedesktop.org/series/140396/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15587 -> Patchwork_140396v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140396v1/index.html

Participating hosts (47 -> 45)
------------------------------

  Missing    (2): fi-snb-2520m bat-adls-6 

Known issues
------------

  Here are the changes found in Patchwork_140396v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - bat-dg2-13:         [PASS][1] -> [DMESG-WARN][2] ([i915#12253])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15587/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140396v1/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-twl-1:          [INCOMPLETE][3] ([i915#12133] / [i915#9413]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15587/bat-twl-1/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140396v1/bat-twl-1/igt@i915_selftest@live.html
    - bat-arls-2:         [ABORT][5] ([i915#12133]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15587/bat-arls-2/igt@i915_selftest@live.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140396v1/bat-arls-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-twl-1:          [INCOMPLETE][7] ([i915#9413]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15587/bat-twl-1/igt@i915_selftest@live@gt_lrc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140396v1/bat-twl-1/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-2:         [ABORT][9] ([i915#12061]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15587/bat-arls-2/igt@i915_selftest@live@workarounds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140396v1/bat-arls-2/igt@i915_selftest@live@workarounds.html

  * igt@kms_hdmi_inject@inject-audio:
    - bat-dg1-7:          [SKIP][11] ([i915#433]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15587/bat-dg1-7/igt@kms_hdmi_inject@inject-audio.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140396v1/bat-dg1-7/igt@kms_hdmi_inject@inject-audio.html
    - bat-dg1-6:          [SKIP][13] ([i915#12311]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15587/bat-dg1-6/igt@kms_hdmi_inject@inject-audio.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140396v1/bat-dg1-6/igt@kms_hdmi_inject@inject-audio.html

  
#### Warnings ####

  * igt@fbdev@info:
    - bat-dg1-6:          [SKIP][15] ([i915#1849]) -> [SKIP][16] ([i915#12311] / [i915#1849])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15587/bat-dg1-6/igt@fbdev@info.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140396v1/bat-dg1-6/igt@fbdev@info.html

  * igt@i915_selftest@live:
    - bat-arlh-3:         [ABORT][17] ([i915#12061] / [i915#12133]) -> [ABORT][18] ([i915#12133])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15587/bat-arlh-3/igt@i915_selftest@live.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140396v1/bat-arlh-3/igt@i915_selftest@live.html

  * igt@prime_vgem@basic-write:
    - bat-dg1-6:          [SKIP][19] ([i915#11723]) -> [SKIP][20] ([i915#11723] / [i915#12311])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15587/bat-dg1-6/igt@prime_vgem@basic-write.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140396v1/bat-dg1-6/igt@prime_vgem@basic-write.html

  
  [i915#11723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133
  [i915#12253]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12253
  [i915#12311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/433
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_15587 -> Patchwork_140396v1

  CI-20190529: 20190529
  CI_DRM_15587: 3d45ea06af2c04db741c142380d97001b3cdb5da @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8082: c8379ec8b26f3c21bae5473706b23da78bd26ffa @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_140396v1: 3d45ea06af2c04db741c142380d97001b3cdb5da @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140396v1/index.html

--===============6078721909976258336==
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
<tr><td><b>Series:</b></td><td>series starting with [topic/core-for-CI,1/2] Revert &quot;HAX suspend: Disable S3/S4 for fi-bdw-samus&quot;</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/140396/">https://patchwork.freedesktop.org/series/140396/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140396v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140396v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15587 -&gt; Patchwork_140396v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140396v1/index.html</p>
<h2>Participating hosts (47 -&gt; 45)</h2>
<p>Missing    (2): fi-snb-2520m bat-adls-6 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_140396v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_chamelium_edid@hdmi-edid-read:<ul>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15587/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140396v1/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12253">i915#12253</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15587/bat-twl-1/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140396v1/bat-twl-1/igt@i915_selftest@live.html">PASS</a></li>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15587/bat-arls-2/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140396v1/bat-arls-2/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15587/bat-twl-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140396v1/bat-twl-1/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15587/bat-arls-2/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140396v1/bat-arls-2/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15587/bat-dg1-7/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/433">i915#433</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140396v1/bat-dg1-7/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15587/bat-dg1-6/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140396v1/bat-dg1-6/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15587/bat-dg1-6/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140396v1/bat-dg1-6/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15587/bat-arlh-3/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140396v1/bat-arlh-3/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15587/bat-dg1-6/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723">i915#11723</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140396v1/bat-dg1-6/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723">i915#11723</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15587 -&gt; Patchwork_140396v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15587: 3d45ea06af2c04db741c142380d97001b3cdb5da @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8082: c8379ec8b26f3c21bae5473706b23da78bd26ffa @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_140396v1: 3d45ea06af2c04db741c142380d97001b3cdb5da @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6078721909976258336==--
