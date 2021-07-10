Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E53193C2CB2
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Jul 2021 04:10:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 084066EAB9;
	Sat, 10 Jul 2021 02:10:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 44CB96EAB6;
 Sat, 10 Jul 2021 02:09:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3E05CA00FD;
 Sat, 10 Jul 2021 02:09:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinay Belgaumkar" <vinay.belgaumkar@intel.com>
Date: Sat, 10 Jul 2021 02:09:59 -0000
Message-ID: <162588299922.15857.558454555959269111@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210710012026.19705-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20210710012026.19705-1-vinay.belgaumkar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRW5h?=
 =?utf-8?q?ble_GuC_based_power_management_features?=
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
Content-Type: multipart/mixed; boundary="===============1886760737=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1886760737==
Content-Type: multipart/alternative;
 boundary="===============3368862348746510665=="

--===============3368862348746510665==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable GuC based power management features
URL   : https://patchwork.freedesktop.org/series/92391/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10329 -> Patchwork_20567
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20567 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20567, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20567:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rps@basic-api:
    - fi-kbl-guc:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-kbl-guc/igt@i915_pm_rps@basic-api.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-kbl-guc/igt@i915_pm_rps@basic-api.html
    - fi-cfl-8109u:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-cfl-8109u/igt@i915_pm_rps@basic-api.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-cfl-8109u/igt@i915_pm_rps@basic-api.html
    - fi-bsw-nick:        [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-bsw-nick/igt@i915_pm_rps@basic-api.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-bsw-nick/igt@i915_pm_rps@basic-api.html
    - fi-kbl-7500u:       [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-kbl-7500u/igt@i915_pm_rps@basic-api.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-kbl-7500u/igt@i915_pm_rps@basic-api.html
    - fi-kbl-8809g:       [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-kbl-8809g/igt@i915_pm_rps@basic-api.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-kbl-8809g/igt@i915_pm_rps@basic-api.html
    - fi-kbl-r:           [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-kbl-r/igt@i915_pm_rps@basic-api.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-kbl-r/igt@i915_pm_rps@basic-api.html
    - fi-bsw-kefka:       [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-bsw-kefka/igt@i915_pm_rps@basic-api.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-bsw-kefka/igt@i915_pm_rps@basic-api.html
    - fi-glk-dsi:         [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-glk-dsi/igt@i915_pm_rps@basic-api.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-glk-dsi/igt@i915_pm_rps@basic-api.html
    - fi-kbl-soraka:      [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-kbl-soraka/igt@i915_pm_rps@basic-api.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-kbl-soraka/igt@i915_pm_rps@basic-api.html
    - fi-kbl-x1275:       [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-kbl-x1275/igt@i915_pm_rps@basic-api.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-kbl-x1275/igt@i915_pm_rps@basic-api.html
    - fi-cml-s:           [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-cml-s/igt@i915_pm_rps@basic-api.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-cml-s/igt@i915_pm_rps@basic-api.html
    - fi-tgl-y:           [PASS][23] -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-tgl-y/igt@i915_pm_rps@basic-api.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-tgl-y/igt@i915_pm_rps@basic-api.html
    - fi-cfl-guc:         [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-cfl-guc/igt@i915_pm_rps@basic-api.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-cfl-guc/igt@i915_pm_rps@basic-api.html
    - fi-ivb-3770:        [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-ivb-3770/igt@i915_pm_rps@basic-api.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-ivb-3770/igt@i915_pm_rps@basic-api.html
    - fi-cml-u2:          [PASS][29] -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-cml-u2/igt@i915_pm_rps@basic-api.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-cml-u2/igt@i915_pm_rps@basic-api.html
    - fi-skl-6700k2:      [PASS][31] -> [FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-skl-6700k2/igt@i915_pm_rps@basic-api.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-skl-6700k2/igt@i915_pm_rps@basic-api.html
    - fi-bxt-dsi:         [PASS][33] -> [FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-bxt-dsi/igt@i915_pm_rps@basic-api.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-bxt-dsi/igt@i915_pm_rps@basic-api.html
    - fi-cfl-8700k:       [PASS][35] -> [FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-cfl-8700k/igt@i915_pm_rps@basic-api.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-cfl-8700k/igt@i915_pm_rps@basic-api.html
    - fi-hsw-4770:        [PASS][37] -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-hsw-4770/igt@i915_pm_rps@basic-api.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-hsw-4770/igt@i915_pm_rps@basic-api.html
    - fi-snb-2520m:       [PASS][39] -> [FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-snb-2520m/igt@i915_pm_rps@basic-api.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-snb-2520m/igt@i915_pm_rps@basic-api.html
    - fi-kbl-7567u:       [PASS][41] -> [FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-kbl-7567u/igt@i915_pm_rps@basic-api.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-kbl-7567u/igt@i915_pm_rps@basic-api.html
    - fi-bdw-5557u:       [PASS][43] -> [FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-bdw-5557u/igt@i915_pm_rps@basic-api.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-bdw-5557u/igt@i915_pm_rps@basic-api.html
    - fi-skl-6600u:       [PASS][45] -> [FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-skl-6600u/igt@i915_pm_rps@basic-api.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-skl-6600u/igt@i915_pm_rps@basic-api.html
    - fi-skl-guc:         [PASS][47] -> [FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-skl-guc/igt@i915_pm_rps@basic-api.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-skl-guc/igt@i915_pm_rps@basic-api.html
    - fi-icl-y:           [PASS][49] -> [FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-icl-y/igt@i915_pm_rps@basic-api.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-icl-y/igt@i915_pm_rps@basic-api.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rps@basic-api:
    - {fi-ehl-2}:         [PASS][51] -> [FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-ehl-2/igt@i915_pm_rps@basic-api.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-ehl-2/igt@i915_pm_rps@basic-api.html
    - {fi-jsl-1}:         [PASS][53] -> [FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-jsl-1/igt@i915_pm_rps@basic-api.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-jsl-1/igt@i915_pm_rps@basic-api.html
    - {fi-tgl-dsi}:       [PASS][55] -> [FAIL][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-tgl-dsi/igt@i915_pm_rps@basic-api.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-tgl-dsi/igt@i915_pm_rps@basic-api.html
    - {fi-tgl-1115g4}:    [PASS][57] -> [FAIL][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-tgl-1115g4/igt@i915_pm_rps@basic-api.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-tgl-1115g4/igt@i915_pm_rps@basic-api.html
    - {fi-hsw-gt1}:       [PASS][59] -> [FAIL][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-hsw-gt1/igt@i915_pm_rps@basic-api.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-hsw-gt1/igt@i915_pm_rps@basic-api.html

  
Known issues
------------

  Here are the changes found in Patchwork_20567 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][61] ([i915#1372]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#3717]: https://gitlab.freedesktop.org/drm/intel/issues/3717


Participating hosts (41 -> 39)
------------------------------

  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10329 -> Patchwork_20567

  CI-20190529: 20190529
  CI_DRM_10329: 2c76b98f510f1e4284285813024bc4cbba6a776e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6134: cd63c83e23789eb194d38b8d272247a88122f2f6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20567: 8feb96ac300e385894f02a4da095bd03f3e84b7b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8feb96ac300e drm/i915/guc/rc: Setup and enable GUCRC feature
83e32fc3791c drm/i915/guc/slpc: slpc selftest
7ec83710bc2a drm/i915/guc/slpc: Sysfs hooks for slpc
3d77883e3ca5 drm/i915/guc/slpc: Update slpc to use platform min/max
3d4115c88dc4 drm/i915/guc/slpc: Cache platform frequency limits for slpc
de179acc62c1 drm/i915/guc/slpc: Enable ARAT timer interrupt
439492c0d769 drm/i915/guc/slpc: Add debugfs for slpc info
62ae9d2a357a drm/i915/guc/slpc: Add get max/min freq hooks
08a6776bb7fb drm/i915/guc/slpc: Add methods to set min/max frequency
675158b5dd9c drm/i915/guc/slpc: Enable slpc and add related H2G events
f3e07ff23e21 drm/i915/guc/slpc: Allocate, initialize and release slpc
b076b1d0bbf4 drm/i915/guc/slpc: Adding slpc communication interfaces
980d855c5c5a drm/i915/guc/slpc: Lay out slpc init/enable/disable/fini
2790990fc2e6 drm/i915/guc/slpc: Gate Host RPS when slpc is enabled
25589f2d8bfd drm/i915/guc/slpc: Initial definitions for slpc
d9063ce26607 drm/i915/guc: Squashed patch - DO NOT REVIEW

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/index.html

--===============3368862348746510665==
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
<tr><td><b>Series:</b></td><td>Enable GuC based power management features</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92391/">https://patchwork.freedesktop.org/series/92391/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10329 -&gt; Patchwork_20567</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20567 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20567, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20567:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-kbl-guc/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-kbl-guc/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-cfl-8109u/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-cfl-8109u/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-bsw-nick/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-bsw-nick/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-kbl-7500u/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-kbl-7500u/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-kbl-8809g/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-kbl-8809g/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-kbl-r/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-kbl-r/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-bsw-kefka/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-bsw-kefka/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-glk-dsi/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-glk-dsi/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-kbl-soraka/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-kbl-soraka/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-kbl-x1275/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-kbl-x1275/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-cml-s/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-cml-s/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-tgl-y/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-tgl-y/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-cfl-guc/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-cfl-guc/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-ivb-3770/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-ivb-3770/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-cml-u2/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-cml-u2/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-skl-6700k2/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-skl-6700k2/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-bxt-dsi/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-bxt-dsi/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-cfl-8700k/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-cfl-8700k/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-hsw-4770/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-hsw-4770/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-snb-2520m/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-snb-2520m/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-kbl-7567u/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-kbl-7567u/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-bdw-5557u/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-bdw-5557u/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-skl-6600u/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-skl-6600u/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-skl-guc/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-skl-guc/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-icl-y/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-icl-y/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-ehl-2/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-ehl-2/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-jsl-1/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-jsl-1/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-tgl-dsi/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-tgl-dsi/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-tgl-1115g4/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-tgl-1115g4/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-hsw-gt1/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-hsw-gt1/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20567 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_chamelium@dp-crc-fast:<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20567/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (41 -&gt; 39)</h2>
<p>Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10329 -&gt; Patchwork_20567</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10329: 2c76b98f510f1e4284285813024bc4cbba6a776e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6134: cd63c83e23789eb194d38b8d272247a88122f2f6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20567: 8feb96ac300e385894f02a4da095bd03f3e84b7b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8feb96ac300e drm/i915/guc/rc: Setup and enable GUCRC feature<br />
83e32fc3791c drm/i915/guc/slpc: slpc selftest<br />
7ec83710bc2a drm/i915/guc/slpc: Sysfs hooks for slpc<br />
3d77883e3ca5 drm/i915/guc/slpc: Update slpc to use platform min/max<br />
3d4115c88dc4 drm/i915/guc/slpc: Cache platform frequency limits for slpc<br />
de179acc62c1 drm/i915/guc/slpc: Enable ARAT timer interrupt<br />
439492c0d769 drm/i915/guc/slpc: Add debugfs for slpc info<br />
62ae9d2a357a drm/i915/guc/slpc: Add get max/min freq hooks<br />
08a6776bb7fb drm/i915/guc/slpc: Add methods to set min/max frequency<br />
675158b5dd9c drm/i915/guc/slpc: Enable slpc and add related H2G events<br />
f3e07ff23e21 drm/i915/guc/slpc: Allocate, initialize and release slpc<br />
b076b1d0bbf4 drm/i915/guc/slpc: Adding slpc communication interfaces<br />
980d855c5c5a drm/i915/guc/slpc: Lay out slpc init/enable/disable/fini<br />
2790990fc2e6 drm/i915/guc/slpc: Gate Host RPS when slpc is enabled<br />
25589f2d8bfd drm/i915/guc/slpc: Initial definitions for slpc<br />
d9063ce26607 drm/i915/guc: Squashed patch - DO NOT REVIEW</p>

</body>
</html>

--===============3368862348746510665==--

--===============1886760737==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1886760737==--
