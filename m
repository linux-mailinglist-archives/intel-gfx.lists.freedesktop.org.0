Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD04942FC6
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 15:11:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2DCC10E61E;
	Wed, 31 Jul 2024 13:11:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D741410E61D;
 Wed, 31 Jul 2024 13:11:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6135267030187094345=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm=3A_Use_backlight_power_?=
 =?utf-8?q?constants?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 31 Jul 2024 13:11:31 -0000
Message-ID: <172243149187.467841.12917866548122139907@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240731122311.1143153-1-tzimmermann@suse.de>
In-Reply-To: <20240731122311.1143153-1-tzimmermann@suse.de>
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

--===============6135267030187094345==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Use backlight power constants
URL   : https://patchwork.freedesktop.org/series/136740/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15161 -> Patchwork_136740v1
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_136740v1 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_136740v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/index.html

Participating hosts (43 -> 39)
------------------------------

  Missing    (4): bat-dg2-11 bat-arls-1 fi-snb-2520m fi-bsw-n3050 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_136740v1:

### IGT changes ###

#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-x1275:       [FAIL][1] ([i915#11781]) -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/fi-kbl-x1275/igt@runner@aborted.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/fi-kbl-x1275/igt@runner@aborted.html
    - fi-cfl-8109u:       [FAIL][3] ([i915#11781]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/fi-cfl-8109u/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/fi-cfl-8109u/igt@runner@aborted.html
    - fi-ivb-3770:        [FAIL][5] ([i915#11781]) -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/fi-ivb-3770/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/fi-ivb-3770/igt@runner@aborted.html
    - fi-elk-e7500:       [FAIL][7] ([i915#11781]) -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/fi-elk-e7500/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/fi-elk-e7500/igt@runner@aborted.html
    - fi-kbl-guc:         [FAIL][9] ([i915#11781]) -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/fi-kbl-guc/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/fi-kbl-guc/igt@runner@aborted.html
    - fi-ilk-650:         [FAIL][11] ([i915#11781]) -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/fi-ilk-650/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/fi-ilk-650/igt@runner@aborted.html
    - fi-tgl-1115g4:      [FAIL][13] ([i915#11781]) -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/fi-tgl-1115g4/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/fi-tgl-1115g4/igt@runner@aborted.html
    - fi-blb-e6850:       [FAIL][15] ([i915#11781]) -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/fi-blb-e6850/igt@runner@aborted.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/fi-blb-e6850/igt@runner@aborted.html
    - fi-glk-j4005:       [FAIL][17] ([i915#11781]) -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/fi-glk-j4005/igt@runner@aborted.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/fi-glk-j4005/igt@runner@aborted.html
    - fi-kbl-7567u:       [FAIL][19] ([i915#11781]) -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/fi-kbl-7567u/igt@runner@aborted.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/fi-kbl-7567u/igt@runner@aborted.html
    - bat-apl-1:          [FAIL][21] ([i915#11781]) -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/bat-apl-1/igt@runner@aborted.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/bat-apl-1/igt@runner@aborted.html
    - bat-atsm-1:         [FAIL][23] ([i915#11781]) -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/bat-atsm-1/igt@runner@aborted.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/bat-atsm-1/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][25] ([i915#11781]) -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/fi-cfl-guc/igt@runner@aborted.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/fi-cfl-guc/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_wait@wait@all-engines:
    - {bat-arlh-3}:       [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/bat-arlh-3/igt@gem_wait@wait@all-engines.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/bat-arlh-3/igt@gem_wait@wait@all-engines.html

  
Known issues
------------

  Here are the changes found in Patchwork_136740v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gt_mocs:
    - bat-adlp-11:        [ABORT][29] -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/bat-adlp-11/igt@i915_selftest@live@gt_mocs.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/bat-adlp-11/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@hangcheck:
    - bat-arls-2:         [DMESG-WARN][31] ([i915#11349] / [i915#11378]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/bat-arls-2/igt@i915_selftest@live@hangcheck.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/bat-arls-2/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#11349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349
  [i915#11378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11378
  [i915#11781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781


Build changes
-------------

  * Linux: CI_DRM_15161 -> Patchwork_136740v1

  CI-20190529: 20190529
  CI_DRM_15161: 2a74e6714291a2c9cf26c08f729d5feb203e8338 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7944: 7944
  Patchwork_136740v1: 2a74e6714291a2c9cf26c08f729d5feb203e8338 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/index.html

--===============6135267030187094345==
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
<tr><td><b>Series:</b></td><td>drm: Use backlight power constants</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/136740/">https://patchwork.freedesktop.org/series/136740/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15161 -&gt; Patchwork_136740v1</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_136740v1 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_136740v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/index.html</p>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): bat-dg2-11 bat-arls-1 fi-snb-2520m fi-bsw-n3050 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_136740v1:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a></li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a></li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/fi-ivb-3770/igt@runner@aborted.html">FAIL</a></li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/fi-elk-e7500/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/fi-elk-e7500/igt@runner@aborted.html">FAIL</a></li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/fi-kbl-guc/igt@runner@aborted.html">FAIL</a></li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/fi-ilk-650/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/fi-ilk-650/igt@runner@aborted.html">FAIL</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a></li>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/fi-blb-e6850/igt@runner@aborted.html">FAIL</a></li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/fi-glk-j4005/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/fi-glk-j4005/igt@runner@aborted.html">FAIL</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a></li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/bat-apl-1/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/bat-apl-1/igt@runner@aborted.html">FAIL</a></li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/bat-atsm-1/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/bat-atsm-1/igt@runner@aborted.html">FAIL</a></li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11781">i915#11781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/fi-cfl-guc/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@gem_wait@wait@all-engines:<ul>
<li>{bat-arlh-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/bat-arlh-3/igt@gem_wait@wait@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/bat-arlh-3/igt@gem_wait@wait@all-engines.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_136740v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/bat-adlp-11/igt@i915_selftest@live@gt_mocs.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/bat-adlp-11/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15161/bat-arls-2/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349">i915#11349</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11378">i915#11378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136740v1/bat-arls-2/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15161 -&gt; Patchwork_136740v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15161: 2a74e6714291a2c9cf26c08f729d5feb203e8338 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7944: 7944<br />
  Patchwork_136740v1: 2a74e6714291a2c9cf26c08f729d5feb203e8338 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6135267030187094345==--
