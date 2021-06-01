Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FB439749C
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 15:49:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FB226EA6B;
	Tue,  1 Jun 2021 13:49:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0CA636EA66;
 Tue,  1 Jun 2021 13:49:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 04A1FA7DFB;
 Tue,  1 Jun 2021 13:49:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Date: Tue, 01 Jun 2021 13:49:33 -0000
Message-ID: <162255537398.19249.3070713473768588395@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210601105218.29185-1-uma.shankar@intel.com>
In-Reply-To: <20210601105218.29185-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQWRk?=
 =?utf-8?q?_Support_for_Plane_Color_Lut_and_CSC_features?=
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
Content-Type: multipart/mixed; boundary="===============1043889460=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1043889460==
Content-Type: multipart/alternative;
 boundary="===============6732131533601038032=="

--===============6732131533601038032==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add Support for Plane Color Lut and CSC features
URL   : https://patchwork.freedesktop.org/series/90825/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10154 -> Patchwork_20249
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20249 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20249, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20249/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20249:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-snb-2600:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10154/fi-snb-2600/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20249/fi-snb-2600/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
Known issues
------------

  Here are the changes found in Patchwork_20249 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][3] ([i915#3303]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10154/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20249/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [SKIP][5] ([fdo#109271]) -> [FAIL][6] ([i915#579])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10154/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20249/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@runner@aborted:
    - fi-glk-dsi:         [FAIL][7] ([i915#2426] / [i915#3363] / [k.org#202321]) -> [FAIL][8] ([i915#3363] / [k.org#202321])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10154/fi-glk-dsi/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20249/fi-glk-dsi/igt@runner@aborted.html
    - fi-kbl-soraka:      [FAIL][9] ([i915#1436] / [i915#3363]) -> [FAIL][10] ([i915#1436] / [i915#2426] / [i915#3363])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10154/fi-kbl-soraka/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20249/fi-kbl-soraka/igt@runner@aborted.html
    - fi-cml-u2:          [FAIL][11] ([i915#3363] / [i915#3462]) -> [FAIL][12] ([i915#2082] / [i915#2426] / [i915#3363] / [i915#3462])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10154/fi-cml-u2/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20249/fi-cml-u2/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][13] ([i915#2426] / [i915#3363]) -> [FAIL][14] ([i915#3363])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10154/fi-cfl-guc/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20249/fi-cfl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2932]: https://gitlab.freedesktop.org/drm/intel/issues/2932
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (47 -> 41)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10154 -> Patchwork_20249

  CI-20190529: 20190529
  CI_DRM_10154: 810010ed3d29e0500d452a90010a88a0879f2b45 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6097: f823d8ec14b34a6dd2c0804c684b07b0a50f7bb7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20249: bfb9d2884ac15872da12acd934c939dd45bdc427 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bfb9d2884ac1 drm/i915/xelpd: Enable plane gamma
525c6ebbb2c5 drm/i915/xelpd: Program Plane Gamma Registers
035b13656332 drm/i915/xelpd: Add register definitions for Plane Gamma
05e5a03fc98f drm/i915/xelpd: Define and Initialize Plane Gamma Lut range
7a46749335d6 drm: Add Plane Gamma Lut property
d407eae16e6b drm: Add Plane Gamma Mode property
f381646bcaaa drm/i915/xelpd: Enable Plane CSC
9d7042c9e95e drm/i915/xelpd: Define Plane CSC Registers
08ee867daa81 drm: Add helper to attach Plane ctm property
66d7c2419b53 drm: Add Plane CTM property
ab01acc58f9c drm/i915/xelpd: Load plane color luts from atomic flip
1f1fa094a94e drm/i915/xelpd: Initialize plane color features
ae7be4f9a5ff drm/i915/xelpd: Add plane color check to glk_plane_color_ctl
66e7c29201d7 drm/i915/xelpd: Program Plane Degamma Registers
b7ea85214efd drm/i915/xelpd: Add color capabilities of SDR planes
258e15146869 drm/i915/xelpd: Enable plane color features
0c1eabc62705 drm/i915/xelpd: Add register definitions for Plane Degamma
2bf36d661d4d drm/i915/xelpd: Define Degamma Lut range struct for HDR planes
684c709fb80f drm: Add Plane Degamma Lut property
a1e53948f9d0 drm: Add Plane Degamma Mode property
68c5484bfdad drm: Add Enhanced Gamma and color lut range attributes

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20249/index.html

--===============6732131533601038032==
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
<tr><td><b>Series:</b></td><td>Add Support for Plane Color Lut and CSC features</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90825/">https://patchwork.freedesktop.org/series/90825/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20249/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20249/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10154 -&gt; Patchwork_20249</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20249 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20249, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20249/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20249:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10154/fi-snb-2600/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20249/fi-snb-2600/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20249 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10154/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20249/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10154/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20249/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10154/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20249/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10154/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20249/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10154/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20249/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10154/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20249/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (47 -&gt; 41)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10154 -&gt; Patchwork_20249</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10154: 810010ed3d29e0500d452a90010a88a0879f2b45 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6097: f823d8ec14b34a6dd2c0804c684b07b0a50f7bb7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20249: bfb9d2884ac15872da12acd934c939dd45bdc427 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>bfb9d2884ac1 drm/i915/xelpd: Enable plane gamma<br />
525c6ebbb2c5 drm/i915/xelpd: Program Plane Gamma Registers<br />
035b13656332 drm/i915/xelpd: Add register definitions for Plane Gamma<br />
05e5a03fc98f drm/i915/xelpd: Define and Initialize Plane Gamma Lut range<br />
7a46749335d6 drm: Add Plane Gamma Lut property<br />
d407eae16e6b drm: Add Plane Gamma Mode property<br />
f381646bcaaa drm/i915/xelpd: Enable Plane CSC<br />
9d7042c9e95e drm/i915/xelpd: Define Plane CSC Registers<br />
08ee867daa81 drm: Add helper to attach Plane ctm property<br />
66d7c2419b53 drm: Add Plane CTM property<br />
ab01acc58f9c drm/i915/xelpd: Load plane color luts from atomic flip<br />
1f1fa094a94e drm/i915/xelpd: Initialize plane color features<br />
ae7be4f9a5ff drm/i915/xelpd: Add plane color check to glk_plane_color_ctl<br />
66e7c29201d7 drm/i915/xelpd: Program Plane Degamma Registers<br />
b7ea85214efd drm/i915/xelpd: Add color capabilities of SDR planes<br />
258e15146869 drm/i915/xelpd: Enable plane color features<br />
0c1eabc62705 drm/i915/xelpd: Add register definitions for Plane Degamma<br />
2bf36d661d4d drm/i915/xelpd: Define Degamma Lut range struct for HDR planes<br />
684c709fb80f drm: Add Plane Degamma Lut property<br />
a1e53948f9d0 drm: Add Plane Degamma Mode property<br />
68c5484bfdad drm: Add Enhanced Gamma and color lut range attributes</p>

</body>
</html>

--===============6732131533601038032==--

--===============1043889460==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1043889460==--
