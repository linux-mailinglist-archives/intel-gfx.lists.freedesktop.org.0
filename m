Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AEE82D2688
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Dec 2020 09:48:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2E4F6E94E;
	Tue,  8 Dec 2020 08:48:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 36CA56E8AB;
 Tue,  8 Dec 2020 08:48:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2D8E8A008A;
 Tue,  8 Dec 2020 08:48:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Tue, 08 Dec 2020 08:48:18 -0000
Message-ID: <160741729816.9601.9644354298883135111@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201208075145.17389-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20201208075145.17389-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_support_for_DP-HDMI2=2E1_PCON_=28rev6=29?=
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
Content-Type: multipart/mixed; boundary="===============1262343762=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1262343762==
Content-Type: multipart/alternative;
 boundary="===============0289798743807031770=="

--===============0289798743807031770==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add support for DP-HDMI2.1 PCON (rev6)
URL   : https://patchwork.freedesktop.org/series/82098/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9457 -> Patchwork_19078
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19078/index.html

New tests
---------

  New tests have been introduced between CI_DRM_9457 and Patchwork_19078:

### New CI tests (1) ###

  * boot:
    - Statuses : 1 fail(s) 39 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19078 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@coherency:
    - fi-gdg-551:         [PASS][1] -> [DMESG-FAIL][2] ([i915#1748])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9457/fi-gdg-551/igt@i915_selftest@live@coherency.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19078/fi-gdg-551/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@gt_timelines:
    - fi-apl-guc:         [PASS][3] -> [INCOMPLETE][4] ([i915#2750])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9457/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19078/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html

  * igt@vgem_basic@setversion:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([i915#402]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9457/fi-tgl-y/igt@vgem_basic@setversion.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19078/fi-tgl-y/igt@vgem_basic@setversion.html

  
#### Possible fixes ####

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#402]) -> [PASS][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9457/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19078/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
  [i915#1748]: https://gitlab.freedesktop.org/drm/intel/issues/1748
  [i915#2750]: https://gitlab.freedesktop.org/drm/intel/issues/2750
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 40)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9457 -> Patchwork_19078

  CI-20190529: 20190529
  CI_DRM_9457: 2faca88cd21a5c168974051516a9c1685f47ce6d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5884: b1015a3267bbccb985b2fa7e3accb778c7bff0ed @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19078: af26eb8541c125d5ae5449e898474f854572adc5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

af26eb8541c1 drm/i915: Enable PCON configuration for Color Conversion for TGL
f4fd097025b5 drm/i915: Let PCON convert from RGB to YUV if it can
cabcbc8ae4c1 drm/i915/display: Configure PCON for DSC1.1 to DSC1.2 encoding
e6fd58fd5496 drm/i915: Add helper functions for calculating DSC parameters for HDMI2.1
d8f4672c399e drm/i915: Read DSC capabilities of the HDMI2.1 PCON encoder
26822b3bd3d0 drm/i915: Add support for enabling link status and recovery
36cbced30b1f drm/i915: Check for FRL training before DP Link training
cc384ce1123d drm/i915: Add support for starting FRL training for HDMI2.1 via PCON
4ce50f87d12c drm/i915: Capture max frl rate for PCON in dfp cap structure
1848c4e50299 drm/dp_helper: Add helpers to configure PCONs RGB-YCbCr Conversion
212abe126799 drm/dp_helper: Add support for Configuring DSC for HDMI2.1 Pcon
a99de34eb3a5 drm/dp_helper: Add support for link failure detection
3c53492add7b drm/dp_helper: Add Helpers for FRL Link Training support for DP-HDMI2.1 PCON
0b3a89145fba drm/edid: Parse DSC1.2 cap fields from HFVSDB block
5af6ddcab5be drm/edid: Parse MAX_FRL field from HFVSDB block
c8f6c1892e3c drm/edid: Add additional HFVSDB fields for HDMI2.1

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19078/index.html

--===============0289798743807031770==
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
<tr><td><b>Series:</b></td><td>Add support for DP-HDMI2.1 PCON (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82098/">https://patchwork.freedesktop.org/series/82098/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19078/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19078/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9457 -&gt; Patchwork_19078</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19078/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9457 and Patchwork_19078:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 1 fail(s) 39 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19078 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>fi-gdg-551:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9457/fi-gdg-551/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19078/fi-gdg-551/igt@i915_selftest@live@coherency.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1748">i915#1748</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9457/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19078/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2750">i915#2750</a>)</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@setversion:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9457/fi-tgl-y/igt@vgem_basic@setversion.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19078/fi-tgl-y/igt@vgem_basic@setversion.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@prime_self_import@basic-with_one_bo_two_files:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9457/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19078/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9457 -&gt; Patchwork_19078</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9457: 2faca88cd21a5c168974051516a9c1685f47ce6d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5884: b1015a3267bbccb985b2fa7e3accb778c7bff0ed @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19078: af26eb8541c125d5ae5449e898474f854572adc5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>af26eb8541c1 drm/i915: Enable PCON configuration for Color Conversion for TGL<br />
f4fd097025b5 drm/i915: Let PCON convert from RGB to YUV if it can<br />
cabcbc8ae4c1 drm/i915/display: Configure PCON for DSC1.1 to DSC1.2 encoding<br />
e6fd58fd5496 drm/i915: Add helper functions for calculating DSC parameters for HDMI2.1<br />
d8f4672c399e drm/i915: Read DSC capabilities of the HDMI2.1 PCON encoder<br />
26822b3bd3d0 drm/i915: Add support for enabling link status and recovery<br />
36cbced30b1f drm/i915: Check for FRL training before DP Link training<br />
cc384ce1123d drm/i915: Add support for starting FRL training for HDMI2.1 via PCON<br />
4ce50f87d12c drm/i915: Capture max frl rate for PCON in dfp cap structure<br />
1848c4e50299 drm/dp_helper: Add helpers to configure PCONs RGB-YCbCr Conversion<br />
212abe126799 drm/dp_helper: Add support for Configuring DSC for HDMI2.1 Pcon<br />
a99de34eb3a5 drm/dp_helper: Add support for link failure detection<br />
3c53492add7b drm/dp_helper: Add Helpers for FRL Link Training support for DP-HDMI2.1 PCON<br />
0b3a89145fba drm/edid: Parse DSC1.2 cap fields from HFVSDB block<br />
5af6ddcab5be drm/edid: Parse MAX_FRL field from HFVSDB block<br />
c8f6c1892e3c drm/edid: Add additional HFVSDB fields for HDMI2.1</p>

</body>
</html>

--===============0289798743807031770==--

--===============1262343762==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1262343762==--
