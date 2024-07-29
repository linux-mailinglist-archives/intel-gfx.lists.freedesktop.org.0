Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A46C93F3B5
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 13:12:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B3A510E392;
	Mon, 29 Jul 2024 11:12:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4D6D10E392;
 Mon, 29 Jul 2024 11:12:35 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3533716046109426335=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_spi=3A_add_driver_for_Intel?=
 =?utf-8?q?_discrete_graphics_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexander Usyskin" <alexander.usyskin@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jul 2024 11:12:35 -0000
Message-ID: <172225155566.407424.18252549358061223988@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240729084326.2278014-1-alexander.usyskin@intel.com>
In-Reply-To: <20240729084326.2278014-1-alexander.usyskin@intel.com>
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

--===============3533716046109426335==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: spi: add driver for Intel discrete graphics (rev5)
URL   : https://patchwork.freedesktop.org/series/131763/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15146 -> Patchwork_131763v5
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_131763v5 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_131763v5, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/index.html

Participating hosts (40 -> 38)
------------------------------

  Additional (1): bat-arlh-3 
  Missing    (3): bat-dg2-11 fi-snb-2520m fi-elk-e7500 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_131763v5:

### IGT changes ###

#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-x1275:       [FAIL][1] ([i915#11781]) -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/fi-kbl-x1275/igt@runner@aborted.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/fi-kbl-x1275/igt@runner@aborted.html
    - fi-cfl-8109u:       [FAIL][3] ([i915#11781]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/fi-cfl-8109u/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/fi-cfl-8109u/igt@runner@aborted.html
    - fi-ivb-3770:        [FAIL][5] ([i915#11781]) -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/fi-ivb-3770/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/fi-ivb-3770/igt@runner@aborted.html
    - fi-kbl-guc:         [FAIL][7] ([i915#11781]) -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/fi-kbl-guc/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/fi-kbl-guc/igt@runner@aborted.html
    - fi-ilk-650:         [FAIL][9] ([i915#11781]) -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/fi-ilk-650/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/fi-ilk-650/igt@runner@aborted.html
    - fi-tgl-1115g4:      [FAIL][11] ([i915#11781]) -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/fi-tgl-1115g4/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/fi-tgl-1115g4/igt@runner@aborted.html
    - fi-blb-e6850:       [FAIL][13] ([i915#11781]) -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/fi-blb-e6850/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/fi-blb-e6850/igt@runner@aborted.html
    - fi-bsw-n3050:       [FAIL][15] ([i915#11781]) -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/fi-bsw-n3050/igt@runner@aborted.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/fi-bsw-n3050/igt@runner@aborted.html
    - fi-pnv-d510:        [FAIL][17] ([i915#11781]) -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/fi-pnv-d510/igt@runner@aborted.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/fi-pnv-d510/igt@runner@aborted.html
    - fi-glk-j4005:       [FAIL][19] ([i915#11781]) -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/fi-glk-j4005/igt@runner@aborted.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/fi-glk-j4005/igt@runner@aborted.html
    - fi-kbl-7567u:       [FAIL][21] ([i915#11781]) -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/fi-kbl-7567u/igt@runner@aborted.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/fi-kbl-7567u/igt@runner@aborted.html
    - bat-apl-1:          [FAIL][23] ([i915#11781]) -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/bat-apl-1/igt@runner@aborted.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/bat-apl-1/igt@runner@aborted.html
    - bat-atsm-1:         [FAIL][25] ([i915#11781]) -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/bat-atsm-1/igt@runner@aborted.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/bat-atsm-1/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][27] ([i915#11781]) -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/fi-cfl-guc/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/fi-cfl-guc/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_131763v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - bat-mtlp-8:         [PASS][29] -> [DMESG-WARN][30] ([i915#11349] / [i915#11378])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/bat-mtlp-8/igt@i915_selftest@live@hangcheck.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/bat-mtlp-8/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10196
  [i915#11343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343
  [i915#11346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346
  [i915#11349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349
  [i915#11378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11378
  [i915#11666]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666
  [i915#11671]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#11723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723
  [i915#11724]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11724
  [i915#11725]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11725
  [i915#11726]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11726
  [i915#11781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781
  [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
  [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
  [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886


Build changes
-------------

  * Linux: CI_DRM_15146 -> Patchwork_131763v5

  CI-20190529: 20190529
  CI_DRM_15146: 6f226dd91cbd83b14b375dac4246f617f0b98288 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7940: 2a73158fa69a2b8e20d5a0bdf773ee194bfe13c2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_131763v5: 6f226dd91cbd83b14b375dac4246f617f0b98288 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/index.html

--===============3533716046109426335==
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
<tr><td><b>Series:</b></td><td>spi: add driver for Intel discrete graphics (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/131763/">https://patchwork.freedesktop.org/series/131763/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15146 -&gt; Patchwork_131763v5</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_131763v5 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_131763v5, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/index.html</p>
<h2>Participating hosts (40 -&gt; 38)</h2>
<p>Additional (1): bat-arlh-3 <br />
  Missing    (3): bat-dg2-11 fi-snb-2520m fi-elk-e7500 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_131763v5:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a></li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a></li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/fi-ivb-3770/igt@runner@aborted.html">FAIL</a></li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/fi-kbl-guc/igt@runner@aborted.html">FAIL</a></li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/fi-ilk-650/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/fi-ilk-650/igt@runner@aborted.html">FAIL</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a></li>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/fi-blb-e6850/igt@runner@aborted.html">FAIL</a></li>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a></li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/fi-pnv-d510/igt@runner@aborted.html">FAIL</a></li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/fi-glk-j4005/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/fi-glk-j4005/igt@runner@aborted.html">FAIL</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a></li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/bat-apl-1/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/bat-apl-1/igt@runner@aborted.html">FAIL</a></li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/bat-atsm-1/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/bat-atsm-1/igt@runner@aborted.html">FAIL</a></li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/fi-cfl-guc/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_131763v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15146/bat-mtlp-8/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131763v5/bat-mtlp-8/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349">i915#11349</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11378">i915#11378</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15146 -&gt; Patchwork_131763v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15146: 6f226dd91cbd83b14b375dac4246f617f0b98288 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7940: 2a73158fa69a2b8e20d5a0bdf773ee194bfe13c2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_131763v5: 6f226dd91cbd83b14b375dac4246f617f0b98288 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3533716046109426335==--
