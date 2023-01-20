Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB74C674BE8
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 06:13:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6D8210EA42;
	Fri, 20 Jan 2023 05:13:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2656910EA42;
 Fri, 20 Jan 2023 05:13:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1FAC5A8830;
 Fri, 20 Jan 2023 05:13:50 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3015916741959693397=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Fri, 20 Jan 2023 05:13:50 -0000
Message-ID: <167419163010.22912.7582572558135200699@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230120043844.3761895-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20230120043844.3761895-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_DSC_fractional_bpp_support_=28rev3=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============3015916741959693397==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add DSC fractional bpp support (rev3)
URL   : https://patchwork.freedesktop.org/series/111391/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12615 -> Patchwork_111391v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v3/index.html

Participating hosts (37 -> 36)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_111391v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [PASS][1] -> [FAIL][2] ([i915#7229])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12615/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v3/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-rkl-11600:       [PASS][3] -> [FAIL][4] ([fdo#103375])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12615/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v3/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rpls-1}:       [DMESG-WARN][5] ([i915#7625]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12615/bat-rpls-1/igt@gem_exec_suspend@basic-s0@smem.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v3/bat-rpls-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@migrate:
    - {bat-dg2-11}:       [DMESG-WARN][7] ([i915#7699]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12615/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v3/bat-dg2-11/igt@i915_selftest@live@migrate.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [FAIL][9] ([fdo#103375]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12615/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v3/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229
  [i915#7625]: https://gitlab.freedesktop.org/drm/intel/issues/7625
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699


Build changes
-------------

  * Linux: CI_DRM_12615 -> Patchwork_111391v3

  CI-20190529: 20190529
  CI_DRM_12615: 8692eb28d41136537cd24aaf78f4621ddddbfb3a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7126: 3aa9364a1e478010aba0d3dfe9183486560ecc60 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111391v3: 8692eb28d41136537cd24aaf78f4621ddddbfb3a @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

69d3ef5591ba drm/i915/dsc: Allow DSC only with fractional bpp when forced from debugfs
8af821a5cec0 drm/i915/dsc: Add debugfs entry to validate DSC fractional bpp
8dfc1eaa6110 drm/i915/dp: Iterate over output bpp with fractional step size
e323a84131c0 drm/i915/dsc/mtl: Add support for fractional bpp
4a58addd39f1 drm/display/dp: Add helper function to get DSC bpp prescision
8014c07f1262 drm/display/dp: Fix the DP DSC Receiver cap size
72bbe0162def drm/i915/audio : Consider fractional vdsc bpp while computing tu_data
c0f8f97e2d70 drm/i915/display: Consider fractional vdsc bpp while computing m_n values
559eb8e01d61 drm/i915/display: Store compressed bpp in U6.4 format
28418c255ac5 drm/i915/dp: Get optimal link config to have best compressed bpp
de1a7f9fccb7 drm/i915/dp: Rename helpers to get DSC max pipe_bpp/output_bpp
e5bc2f5a281c drm/i915/dp: Avoid left shift of DSC output bpp by 4
97eabe595415 drm/i915/dp: Check if dsc forced bpc is in allowed limits
9c6d5fac3229 drm/i915/dp: Do not check for min DSC BPC for MST case
7c2f5eb0a8e5 drm/i915/dp: Avoid forcing DSC BPC for MST case
cb4569d96ef2 drm/i915/dp: Remove extra logs for printing DSC info

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v3/index.html

--===============3015916741959693397==
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
<tr><td><b>Series:</b></td><td>Add DSC fractional bpp support (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111391/">https://patchwork.freedesktop.org/series/111391/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12615 -&gt; Patchwork_111391v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v3/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111391v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12615/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v3/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12615/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v3/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12615/bat-rpls-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7625">i915#7625</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v3/bat-rpls-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12615/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v3/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12615/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111391v3/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12615 -&gt; Patchwork_111391v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12615: 8692eb28d41136537cd24aaf78f4621ddddbfb3a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7126: 3aa9364a1e478010aba0d3dfe9183486560ecc60 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111391v3: 8692eb28d41136537cd24aaf78f4621ddddbfb3a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>69d3ef5591ba drm/i915/dsc: Allow DSC only with fractional bpp when forced from debugfs<br />
8af821a5cec0 drm/i915/dsc: Add debugfs entry to validate DSC fractional bpp<br />
8dfc1eaa6110 drm/i915/dp: Iterate over output bpp with fractional step size<br />
e323a84131c0 drm/i915/dsc/mtl: Add support for fractional bpp<br />
4a58addd39f1 drm/display/dp: Add helper function to get DSC bpp prescision<br />
8014c07f1262 drm/display/dp: Fix the DP DSC Receiver cap size<br />
72bbe0162def drm/i915/audio : Consider fractional vdsc bpp while computing tu_data<br />
c0f8f97e2d70 drm/i915/display: Consider fractional vdsc bpp while computing m_n values<br />
559eb8e01d61 drm/i915/display: Store compressed bpp in U6.4 format<br />
28418c255ac5 drm/i915/dp: Get optimal link config to have best compressed bpp<br />
de1a7f9fccb7 drm/i915/dp: Rename helpers to get DSC max pipe_bpp/output_bpp<br />
e5bc2f5a281c drm/i915/dp: Avoid left shift of DSC output bpp by 4<br />
97eabe595415 drm/i915/dp: Check if dsc forced bpc is in allowed limits<br />
9c6d5fac3229 drm/i915/dp: Do not check for min DSC BPC for MST case<br />
7c2f5eb0a8e5 drm/i915/dp: Avoid forcing DSC BPC for MST case<br />
cb4569d96ef2 drm/i915/dp: Remove extra logs for printing DSC info</p>

</body>
</html>

--===============3015916741959693397==--
