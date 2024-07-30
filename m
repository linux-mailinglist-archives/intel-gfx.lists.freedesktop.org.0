Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 815869409EE
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2024 09:28:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DDBE10E4CE;
	Tue, 30 Jul 2024 07:28:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CC8B10E4CF;
 Tue, 30 Jul 2024 07:28:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4384039761246517124=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/hwmon=3A_expose_fa?=
 =?utf-8?q?n_speed_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Raag Jadav" <raag.jadav@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2024 07:28:14 -0000
Message-ID: <172232449424.427544.5837595905949327689@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240730060520.577324-1-raag.jadav@intel.com>
In-Reply-To: <20240730060520.577324-1-raag.jadav@intel.com>
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

--===============4384039761246517124==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hwmon: expose fan speed (rev2)
URL   : https://patchwork.freedesktop.org/series/136036/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15151 -> Patchwork_136036v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_136036v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_136036v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/index.html

Participating hosts (41 -> 42)
------------------------------

  Additional (2): fi-tgl-1115g4 fi-elk-e7500 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_136036v2:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-elk-e7500:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/fi-elk-e7500/igt@runner@aborted.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/fi-tgl-1115g4/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-x1275:       [FAIL][3] ([i915#11781]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/fi-kbl-x1275/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/fi-kbl-x1275/igt@runner@aborted.html
    - fi-cfl-8109u:       [FAIL][5] ([i915#11781]) -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/fi-cfl-8109u/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/fi-cfl-8109u/igt@runner@aborted.html
    - fi-ivb-3770:        [FAIL][7] ([i915#11781]) -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/fi-ivb-3770/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/fi-ivb-3770/igt@runner@aborted.html
    - fi-kbl-guc:         [FAIL][9] ([i915#11781]) -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/fi-kbl-guc/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/fi-kbl-guc/igt@runner@aborted.html
    - fi-ilk-650:         [FAIL][11] ([i915#11781]) -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/fi-ilk-650/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/fi-ilk-650/igt@runner@aborted.html
    - fi-blb-e6850:       [FAIL][13] ([i915#11781]) -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/fi-blb-e6850/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/fi-blb-e6850/igt@runner@aborted.html
    - fi-bsw-n3050:       [FAIL][15] ([i915#11781]) -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/fi-bsw-n3050/igt@runner@aborted.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/fi-bsw-n3050/igt@runner@aborted.html
    - fi-pnv-d510:        [FAIL][17] ([i915#11781]) -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/fi-pnv-d510/igt@runner@aborted.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/fi-pnv-d510/igt@runner@aborted.html
    - fi-glk-j4005:       [FAIL][19] ([i915#11781]) -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/fi-glk-j4005/igt@runner@aborted.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/fi-glk-j4005/igt@runner@aborted.html
    - fi-kbl-7567u:       [FAIL][21] ([i915#11781]) -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/fi-kbl-7567u/igt@runner@aborted.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/fi-kbl-7567u/igt@runner@aborted.html
    - bat-apl-1:          [FAIL][23] ([i915#11781]) -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/bat-apl-1/igt@runner@aborted.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/bat-apl-1/igt@runner@aborted.html
    - bat-atsm-1:         [FAIL][25] ([i915#11781]) -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/bat-atsm-1/igt@runner@aborted.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/bat-atsm-1/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][27] ([i915#11781]) -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/fi-cfl-guc/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/fi-cfl-guc/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_136036v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - bat-arls-2:         [PASS][29] -> [DMESG-WARN][30] ([i915#11349] / [i915#11378])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/bat-arls-2/igt@i915_selftest@live@hangcheck.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/bat-arls-2/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_lrc:
    - bat-twl-2:          [INCOMPLETE][31] ([i915#9413]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/bat-twl-2/igt@i915_selftest@live@gt_lrc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/bat-twl-2/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_mocs:
    - {bat-arlh-3}:       [INCOMPLETE][33] ([i915#11775]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/bat-arlh-3/igt@i915_selftest@live@gt_mocs.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/bat-arlh-3/igt@i915_selftest@live@gt_mocs.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#11349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349
  [i915#11378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11378
  [i915#11775]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11775
  [i915#11781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_15151 -> Patchwork_136036v2

  CI-20190529: 20190529
  CI_DRM_15151: b6f9528c7fffc2f65c8e4969d35d9346fd503c9b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7942: 0f02dc176959e6296866b1bafd3982e277a5e44b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_136036v2: b6f9528c7fffc2f65c8e4969d35d9346fd503c9b @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/index.html

--===============4384039761246517124==
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
<tr><td><b>Series:</b></td><td>drm/i915/hwmon: expose fan speed (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/136036/">https://patchwork.freedesktop.org/series/136036/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15151 -&gt; Patchwork_136036v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_136036v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_136036v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/index.html</p>
<h2>Participating hosts (41 -&gt; 42)</h2>
<p>Additional (2): fi-tgl-1115g4 fi-elk-e7500 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_136036v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/fi-elk-e7500/igt@runner@aborted.html">FAIL</a></li>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a></li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a></li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/fi-ivb-3770/igt@runner@aborted.html">FAIL</a></li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/fi-kbl-guc/igt@runner@aborted.html">FAIL</a></li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/fi-ilk-650/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/fi-ilk-650/igt@runner@aborted.html">FAIL</a></li>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/fi-blb-e6850/igt@runner@aborted.html">FAIL</a></li>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a></li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/fi-pnv-d510/igt@runner@aborted.html">FAIL</a></li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/fi-glk-j4005/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/fi-glk-j4005/igt@runner@aborted.html">FAIL</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a></li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/bat-apl-1/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/bat-apl-1/igt@runner@aborted.html">FAIL</a></li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/bat-atsm-1/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/bat-atsm-1/igt@runner@aborted.html">FAIL</a></li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/fi-cfl-guc/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_136036v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/bat-arls-2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/bat-arls-2/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349">i915#11349</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11378">i915#11378</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/bat-twl-2/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/bat-twl-2/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>{bat-arlh-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15151/bat-arlh-3/igt@i915_selftest@live@gt_mocs.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11775">i915#11775</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136036v2/bat-arlh-3/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15151 -&gt; Patchwork_136036v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15151: b6f9528c7fffc2f65c8e4969d35d9346fd503c9b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7942: 0f02dc176959e6296866b1bafd3982e277a5e44b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_136036v2: b6f9528c7fffc2f65c8e4969d35d9346fd503c9b @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============4384039761246517124==--
