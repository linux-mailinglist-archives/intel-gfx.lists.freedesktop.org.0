Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9134D3A75AF
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 06:14:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 597856E203;
	Tue, 15 Jun 2021 04:14:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 31C776E202;
 Tue, 15 Jun 2021 04:14:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2A20FAADD0;
 Tue, 15 Jun 2021 04:14:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 15 Jun 2021 04:14:28 -0000
Message-ID: <162373046814.8817.5266241486929426886@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210615033433.1574397-1-matthew.d.roper@intel.com>
In-Reply-To: <20210615033433.1574397-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRXhw?=
 =?utf-8?q?licity_steer_l3bank_multicast_reads_when_necessary?=
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
Content-Type: multipart/mixed; boundary="===============1860394719=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1860394719==
Content-Type: multipart/alternative;
 boundary="===============6937529696052117922=="

--===============6937529696052117922==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Explicity steer l3bank multicast reads when necessary
URL   : https://patchwork.freedesktop.org/series/91485/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10222 -> Patchwork_20365
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20365 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20365, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20365:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@workarounds:
    - fi-ivb-3770:        [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-ivb-3770/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-ivb-3770/igt@i915_selftest@live@workarounds.html
    - fi-skl-6700k2:      [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-skl-6700k2/igt@i915_selftest@live@workarounds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-skl-6700k2/igt@i915_selftest@live@workarounds.html
    - fi-cml-s:           [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-cml-s/igt@i915_selftest@live@workarounds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-cml-s/igt@i915_selftest@live@workarounds.html
    - fi-kbl-x1275:       [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-x1275/igt@i915_selftest@live@workarounds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-kbl-x1275/igt@i915_selftest@live@workarounds.html
    - fi-cfl-guc:         [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-cfl-guc/igt@i915_selftest@live@workarounds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-cfl-guc/igt@i915_selftest@live@workarounds.html
    - fi-kbl-7567u:       [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-7567u/igt@i915_selftest@live@workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-kbl-7567u/igt@i915_selftest@live@workarounds.html
    - fi-skl-6600u:       [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-skl-6600u/igt@i915_selftest@live@workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-skl-6600u/igt@i915_selftest@live@workarounds.html
    - fi-glk-dsi:         [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-glk-dsi/igt@i915_selftest@live@workarounds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-glk-dsi/igt@i915_selftest@live@workarounds.html
    - fi-kbl-8809g:       [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-8809g/igt@i915_selftest@live@workarounds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-kbl-8809g/igt@i915_selftest@live@workarounds.html
    - fi-cfl-8700k:       [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-cfl-8700k/igt@i915_selftest@live@workarounds.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-cfl-8700k/igt@i915_selftest@live@workarounds.html
    - fi-kbl-r:           [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-r/igt@i915_selftest@live@workarounds.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-kbl-r/igt@i915_selftest@live@workarounds.html
    - fi-cfl-8109u:       [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-cfl-8109u/igt@i915_selftest@live@workarounds.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-cfl-8109u/igt@i915_selftest@live@workarounds.html
    - fi-kbl-7500u:       [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-7500u/igt@i915_selftest@live@workarounds.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-kbl-7500u/igt@i915_selftest@live@workarounds.html
    - fi-kbl-guc:         [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-guc/igt@i915_selftest@live@workarounds.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-kbl-guc/igt@i915_selftest@live@workarounds.html
    - fi-hsw-4770:        [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-hsw-4770/igt@i915_selftest@live@workarounds.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-hsw-4770/igt@i915_selftest@live@workarounds.html
    - fi-bxt-dsi:         [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-bxt-dsi/igt@i915_selftest@live@workarounds.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-bxt-dsi/igt@i915_selftest@live@workarounds.html
    - fi-cml-u2:          [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-cml-u2/igt@i915_selftest@live@workarounds.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-cml-u2/igt@i915_selftest@live@workarounds.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_engines:
    - {fi-ehl-2}:         [DMESG-FAIL][35] ([i915#1222]) -> [FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-ehl-2/igt@i915_selftest@live@gt_engines.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-ehl-2/igt@i915_selftest@live@gt_engines.html
    - {fi-jsl-1}:         [DMESG-FAIL][37] ([i915#1222]) -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-jsl-1/igt@i915_selftest@live@gt_engines.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-jsl-1/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@workarounds:
    - {fi-hsw-gt1}:       [PASS][39] -> [DMESG-FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-hsw-gt1/igt@i915_selftest@live@workarounds.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-hsw-gt1/igt@i915_selftest@live@workarounds.html
    - {fi-tgl-dsi}:       [PASS][41] -> [DMESG-FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-tgl-dsi/igt@i915_selftest@live@workarounds.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-tgl-dsi/igt@i915_selftest@live@workarounds.html
    - {fi-rkl-11500t}:    NOTRUN -> [DMESG-FAIL][43]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-rkl-11500t/igt@i915_selftest@live@workarounds.html
    - {fi-tgl-1115g4}:    [PASS][44] -> [DMESG-FAIL][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-tgl-1115g4/igt@i915_selftest@live@workarounds.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-tgl-1115g4/igt@i915_selftest@live@workarounds.html
    - {fi-jsl-1}:         [DMESG-WARN][46] ([i915#1222]) -> [DMESG-FAIL][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-jsl-1/igt@i915_selftest@live@workarounds.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-jsl-1/igt@i915_selftest@live@workarounds.html
    - {fi-ehl-2}:         [DMESG-WARN][48] ([i915#1222]) -> [DMESG-FAIL][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-ehl-2/igt@i915_selftest@live@workarounds.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-ehl-2/igt@i915_selftest@live@workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_20365 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-soraka:      [PASS][50] -> [INCOMPLETE][51] ([i915#155])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html

  * igt@runner@aborted:
    - fi-icl-u2:          NOTRUN -> [FAIL][52] ([i915#1569] / [i915#3363] / [k.org#202973])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-icl-u2/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][53] ([i915#1569])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-icl-y/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - {fi-ehl-2}:         [DMESG-WARN][54] ([i915#1222]) -> [PASS][55] +36 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-ehl-2/igt@i915_module_load@reload.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-ehl-2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [SKIP][56] ([fdo#109271]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_lrc:
    - {fi-jsl-1}:         [DMESG-WARN][58] ([i915#1222]) -> [PASS][59] +36 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-jsl-1/igt@i915_selftest@live@gt_lrc.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-jsl-1/igt@i915_selftest@live@gt_lrc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1569]: https://gitlab.freedesktop.org/drm/intel/issues/1569
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3276]: https://gitlab.freedesktop.org/drm/intel/issues/3276
  [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3283]: https://gitlab.freedesktop.org/drm/intel/issues/3283
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3542]: https://gitlab.freedesktop.org/drm/intel/issues/3542
  [i915#3544]: https://gitlab.freedesktop.org/drm/intel/issues/3544
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [k.org#202973]: https://bugzilla.kernel.org/show_bug.cgi?id=202973


Participating hosts (42 -> 39)
------------------------------

  Additional (1): fi-rkl-11500t 
  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10222 -> Patchwork_20365

  CI-20190529: 20190529
  CI_DRM_10222: 9b5675dc51137543709a5ec444b0d7076e43198e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6105: 598a154680374e7875ae9ffc98425abc57398b2f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20365: ee481231a00bce45f4a7d3a17061102e071db7f2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ee481231a00b drm/i915: Add support for explicit L3BANK steering
3707583bbcf3 drm/i915: Add GT support for multiple types of multicast steering
16715f8678e5 drm/i915: extract steered reg access to common function

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/index.html

--===============6937529696052117922==
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
<tr><td><b>Series:</b></td><td>Explicity steer l3bank multicast reads when necessary</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91485/">https://patchwork.freedesktop.org/series/91485/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10222 -&gt; Patchwork_20365</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20365 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20365, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20365:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-ivb-3770/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-ivb-3770/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-skl-6700k2/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-skl-6700k2/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-cml-s/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-cml-s/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-x1275/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-kbl-x1275/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-cfl-guc/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-cfl-guc/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-7567u/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-kbl-7567u/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-skl-6600u/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-skl-6600u/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-glk-dsi/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-glk-dsi/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-8809g/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-kbl-8809g/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-cfl-8700k/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-cfl-8700k/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-r/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-kbl-r/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-cfl-8109u/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-cfl-8109u/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-7500u/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-kbl-7500u/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-guc/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-kbl-guc/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-hsw-4770/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-hsw-4770/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-bxt-dsi/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-bxt-dsi/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-cml-u2/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-cml-u2/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-ehl-2/igt@i915_selftest@live@gt_engines.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1222">i915#1222</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-ehl-2/igt@i915_selftest@live@gt_engines.html">FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-jsl-1/igt@i915_selftest@live@gt_engines.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1222">i915#1222</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-jsl-1/igt@i915_selftest@live@gt_engines.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-hsw-gt1/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-hsw-gt1/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-tgl-dsi/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-tgl-dsi/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-rkl-11500t}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-rkl-11500t/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-tgl-1115g4/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-tgl-1115g4/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-jsl-1/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1222">i915#1222</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-jsl-1/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-ehl-2/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1222">i915#1222</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-ehl-2/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20365 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202973">k.org#202973</a>)</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-ehl-2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1222">i915#1222</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-ehl-2/igt@i915_module_load@reload.html">PASS</a> +36 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-jsl-1/igt@i915_selftest@live@gt_lrc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1222">i915#1222</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20365/fi-jsl-1/igt@i915_selftest@live@gt_lrc.html">PASS</a> +36 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 39)</h2>
<p>Additional (1): fi-rkl-11500t <br />
  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10222 -&gt; Patchwork_20365</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10222: 9b5675dc51137543709a5ec444b0d7076e43198e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6105: 598a154680374e7875ae9ffc98425abc57398b2f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20365: ee481231a00bce45f4a7d3a17061102e071db7f2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ee481231a00b drm/i915: Add support for explicit L3BANK steering<br />
3707583bbcf3 drm/i915: Add GT support for multiple types of multicast steering<br />
16715f8678e5 drm/i915: extract steered reg access to common function</p>

</body>
</html>

--===============6937529696052117922==--

--===============1860394719==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1860394719==--
