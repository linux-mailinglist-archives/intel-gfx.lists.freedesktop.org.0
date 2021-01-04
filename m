Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D28F2EA038
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jan 2021 23:54:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BF5889F41;
	Mon,  4 Jan 2021 22:54:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4417A89F41;
 Mon,  4 Jan 2021 22:54:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2A832A47E2;
 Mon,  4 Jan 2021 22:54:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Mon, 04 Jan 2021 22:54:41 -0000
Message-ID: <160980088114.24928.9428616238849990862@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210104205654.238928-1-jose.souza@intel.com>
In-Reply-To: <20210104205654.238928-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/4=5D_drm=3A_Add_function_to_convert?=
 =?utf-8?q?_rect_in_16=2E16_fixed_format_to_regular_format?=
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
Content-Type: multipart/mixed; boundary="===============1129989064=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1129989064==
Content-Type: multipart/alternative;
 boundary="===============5521257899963802612=="

--===============5521257899963802612==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/4] drm: Add function to convert rect in 16.16 fixed format to regular format
URL   : https://patchwork.freedesktop.org/series/85458/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9544 -> Patchwork_19254
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/index.html

Known issues
------------

  Here are the changes found in Patchwork_19254 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@blt:
    - fi-snb-2600:        [DMESG-FAIL][1] ([i915#1409]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/fi-snb-2600/igt@i915_selftest@live@blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/fi-snb-2600/igt@i915_selftest@live@blt.html

  
  [i915#1409]: https://gitlab.freedesktop.org/drm/intel/issues/1409


Participating hosts (42 -> 36)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-tgl-y fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9544 -> Patchwork_19254

  CI-20190529: 20190529
  CI_DRM_9544: b950eb2b863a3e5de7b9647aa037ed50d7dd687c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5942: e14e76a87c44c684ec958b391b030bb549254f88 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19254: 7b34b5cee6ec5e996c12b1013f3f587b8e4e6d5c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7b34b5cee6ec drm/i915/display/psr: Program plane's calculated offset to plane SF register
8d547e349776 drm/i915/display: Split and export main surface calculation from skl_check_main_surface()
f2f94c7d10be drm/i915/display/psr: Use plane damage clips to calculate damaged area
1d5b3487eab7 drm: Add function to convert rect in 16.16 fixed format to regular format

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/index.html

--===============5521257899963802612==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/4] drm: Add function to convert rect in 16.16 fixed format to regular format</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85458/">https://patchwork.freedesktop.org/series/85458/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9544 -&gt; Patchwork_19254</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19254 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@blt:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/fi-snb-2600/igt@i915_selftest@live@blt.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1409">i915#1409</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/fi-snb-2600/igt@i915_selftest@live@blt.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 36)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-tgl-y fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9544 -&gt; Patchwork_19254</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9544: b950eb2b863a3e5de7b9647aa037ed50d7dd687c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5942: e14e76a87c44c684ec958b391b030bb549254f88 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19254: 7b34b5cee6ec5e996c12b1013f3f587b8e4e6d5c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>7b34b5cee6ec drm/i915/display/psr: Program plane's calculated offset to plane SF register<br />
8d547e349776 drm/i915/display: Split and export main surface calculation from skl_check_main_surface()<br />
f2f94c7d10be drm/i915/display/psr: Use plane damage clips to calculate damaged area<br />
1d5b3487eab7 drm: Add function to convert rect in 16.16 fixed format to regular format</p>

</body>
</html>

--===============5521257899963802612==--

--===============1129989064==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1129989064==--
