Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EB33F6A01
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Aug 2021 21:41:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E91816E0D1;
	Tue, 24 Aug 2021 19:41:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A1AEB6E0D1;
 Tue, 24 Aug 2021 19:41:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9D7D8A73C7;
 Tue, 24 Aug 2021 19:41:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1325969239370250694=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee, Shawn C" <shawn.c.lee@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Aug 2021 19:41:02 -0000
Message-ID: <162983406263.27156.5183519448126570698@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210812154237.13911-1-shawn.c.lee@intel.com>
In-Reply-To: <20210812154237.13911-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgTUlQ?=
 =?utf-8?q?I_DSI_driver_enhancements_=28rev8=29?=
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

--===============1325969239370250694==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: MIPI DSI driver enhancements (rev8)
URL   : https://patchwork.freedesktop.org/series/92695/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10516 -> Patchwork_20879
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20879/index.html

Known issues
------------

  Here are the changes found in Patchwork_20879 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +13 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20879/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         [PASS][2] -> [DMESG-WARN][3] ([i915#3958])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10516/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20879/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3958]: https://gitlab.freedesktop.org/drm/intel/issues/3958
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (39 -> 33)
------------------------------

  Additional (1): fi-jsl-1 
  Missing    (7): fi-ilk-m540 bat-adls-5 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10516 -> Patchwork_20879

  CI-20190529: 20190529
  CI_DRM_10516: 0ad750feef443f05375e6d2ef2213e08a1f79578 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6184: 84f9bbde1e6156c8b978613d9c85c9043fd3180c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20879: 5ecaff62334745ed1da26a0a53ac39e7972e3735 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5ecaff623347 drm/i915/dsi: Read/write proper brightness value via MIPI DCS command
5de9e51eab61 drm/i915/dsi: Retrieve max brightness level from VBT
10e485919308 drm/i915: Get proper min cdclk if vDSC enabled
255ca7c1ec48 drm/i915/dsi: refine send MIPI DCS command sequence
ce55c52173da drm/i915/dsi: wait for header and payload credit available
d6923c203e23 drm/i915/jsl: program DSI panel GPIOs
07b88ff475db drm/i915/dsi: send correct gpio_number on gen11 platform

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20879/index.html

--===============1325969239370250694==
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
<tr><td><b>Series:</b></td><td>MIPI DSI driver enhancements (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92695/">https://patchwork.freedesktop.org/series/92695/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20879/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20879/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10516 -&gt; Patchwork_20879</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20879/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20879 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20879/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10516/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20879/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3958">i915#3958</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 33)</h2>
<p>Additional (1): fi-jsl-1 <br />
  Missing    (7): fi-ilk-m540 bat-adls-5 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10516 -&gt; Patchwork_20879</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10516: 0ad750feef443f05375e6d2ef2213e08a1f79578 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6184: 84f9bbde1e6156c8b978613d9c85c9043fd3180c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20879: 5ecaff62334745ed1da26a0a53ac39e7972e3735 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>5ecaff623347 drm/i915/dsi: Read/write proper brightness value via MIPI DCS command<br />
5de9e51eab61 drm/i915/dsi: Retrieve max brightness level from VBT<br />
10e485919308 drm/i915: Get proper min cdclk if vDSC enabled<br />
255ca7c1ec48 drm/i915/dsi: refine send MIPI DCS command sequence<br />
ce55c52173da drm/i915/dsi: wait for header and payload credit available<br />
d6923c203e23 drm/i915/jsl: program DSI panel GPIOs<br />
07b88ff475db drm/i915/dsi: send correct gpio_number on gen11 platform</p>

</body>
</html>

--===============1325969239370250694==--
