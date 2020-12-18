Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C48C2DE338
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 14:21:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0C566E0C2;
	Fri, 18 Dec 2020 13:21:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4A0D06E0BF;
 Fri, 18 Dec 2020 13:21:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 41B62A0094;
 Fri, 18 Dec 2020 13:21:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Fri, 18 Dec 2020 13:21:54 -0000
Message-ID: <160829771423.27180.10158117530152600794@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201218103723.30844-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20201218103723.30844-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_support_for_DP-HDMI2=2E1_PCON_=28rev9=29?=
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
Content-Type: multipart/mixed; boundary="===============1577911140=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1577911140==
Content-Type: multipart/alternative;
 boundary="===============7223093097954514638=="

--===============7223093097954514638==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add support for DP-HDMI2.1 PCON (rev9)
URL   : https://patchwork.freedesktop.org/series/82098/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9503 -> Patchwork_19177
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19177/index.html

Known issues
------------

  Here are the changes found in Patchwork_19177 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@prime_vgem@basic-read:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9503/fi-tgl-y/igt@prime_vgem@basic-read.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19177/fi-tgl-y/igt@prime_vgem@basic-read.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@active:
    - fi-kbl-r:           [DMESG-FAIL][3] ([i915#2291] / [i915#666]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9503/fi-kbl-r/igt@i915_selftest@live@active.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19177/fi-kbl-r/igt@i915_selftest@live@active.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [DMESG-WARN][5] ([i915#402]) -> [PASS][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9503/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19177/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666


Participating hosts (42 -> 39)
------------------------------

  Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9503 -> Patchwork_19177

  CI-20190529: 20190529
  CI_DRM_9503: 82c5c0ad8d578504865837b2135b60dd2d0054a1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5909: 3d6caf71a3e988cd125eb9efdd0a7cdcd0451673 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19177: d739034947bb5b262c819a0e4a0a1c01beef9e01 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d739034947bb drm/i915/display: Let PCON convert from RGB to YCbCr if it can
34ee9dfdadfd drm/i915/display: Configure PCON for DSC1.1 to DSC1.2 encoding
35f69a655bad drm/i915: Add helper functions for calculating DSC parameters for HDMI2.1
ca5d8df43ceb drm/i915: Read DSC capabilities of the HDMI2.1 PCON encoder
126578f6fe39 drm/i915: Add support for enabling link status and recovery
3793f5252161 drm/i915: Check for FRL training before DP Link training
0f68d7283295 drm/i915: Add support for starting FRL training for HDMI2.1 via PCON
29e16a799211 drm/i915: Capture max frl rate for PCON in dfp cap structure
d1464a87a5a8 drm/dp_helper: Add helpers to configure PCONs RGB-YCbCr Conversion
2f4d3c12ee27 drm/dp_helper: Add support for Configuring DSC for HDMI2.1 Pcon
c68914ce7b67 drm/dp_helper: Add support for link failure detection
5120b1727391 drm/dp_helper: Add Helpers for FRL Link Training support for DP-HDMI2.1 PCON
89853c019e04 drm/edid: Parse DSC1.2 cap fields from HFVSDB block
13ffe829d77e drm/edid: Parse MAX_FRL field from HFVSDB block
26eb0c2f2ee1 drm/edid: Add additional HFVSDB fields for HDMI2.1

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19177/index.html

--===============7223093097954514638==
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
<tr><td><b>Series:</b></td><td>Add support for DP-HDMI2.1 PCON (rev9)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82098/">https://patchwork.freedesktop.org/series/82098/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19177/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19177/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9503 -&gt; Patchwork_19177</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19177/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19177 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@prime_vgem@basic-read:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9503/fi-tgl-y/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19177/fi-tgl-y/igt@prime_vgem@basic-read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9503/fi-kbl-r/igt@i915_selftest@live@active.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/666">i915#666</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19177/fi-kbl-r/igt@i915_selftest@live@active.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo_two_files:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9503/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19177/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 39)</h2>
<p>Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9503 -&gt; Patchwork_19177</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9503: 82c5c0ad8d578504865837b2135b60dd2d0054a1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5909: 3d6caf71a3e988cd125eb9efdd0a7cdcd0451673 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19177: d739034947bb5b262c819a0e4a0a1c01beef9e01 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d739034947bb drm/i915/display: Let PCON convert from RGB to YCbCr if it can<br />
34ee9dfdadfd drm/i915/display: Configure PCON for DSC1.1 to DSC1.2 encoding<br />
35f69a655bad drm/i915: Add helper functions for calculating DSC parameters for HDMI2.1<br />
ca5d8df43ceb drm/i915: Read DSC capabilities of the HDMI2.1 PCON encoder<br />
126578f6fe39 drm/i915: Add support for enabling link status and recovery<br />
3793f5252161 drm/i915: Check for FRL training before DP Link training<br />
0f68d7283295 drm/i915: Add support for starting FRL training for HDMI2.1 via PCON<br />
29e16a799211 drm/i915: Capture max frl rate for PCON in dfp cap structure<br />
d1464a87a5a8 drm/dp_helper: Add helpers to configure PCONs RGB-YCbCr Conversion<br />
2f4d3c12ee27 drm/dp_helper: Add support for Configuring DSC for HDMI2.1 Pcon<br />
c68914ce7b67 drm/dp_helper: Add support for link failure detection<br />
5120b1727391 drm/dp_helper: Add Helpers for FRL Link Training support for DP-HDMI2.1 PCON<br />
89853c019e04 drm/edid: Parse DSC1.2 cap fields from HFVSDB block<br />
13ffe829d77e drm/edid: Parse MAX_FRL field from HFVSDB block<br />
26eb0c2f2ee1 drm/edid: Add additional HFVSDB fields for HDMI2.1</p>

</body>
</html>

--===============7223093097954514638==--

--===============1577911140==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1577911140==--
