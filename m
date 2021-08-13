Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 068213EB1F9
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 09:50:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 484C66E54C;
	Fri, 13 Aug 2021 07:50:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A5B8B6E544;
 Fri, 13 Aug 2021 07:50:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 81B46A00F5;
 Fri, 13 Aug 2021 07:50:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8559169494722333693=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swati Sharma" <swati2.sharma@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Aug 2021 07:50:16 -0000
Message-ID: <162884101649.17680.4744890980512438528@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210813070121.48530-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20210813070121.48530-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW5m?=
 =?utf-8?q?oframe_changes_for_DP-HDMI2=2E1_PCON_=28rev2=29?=
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

--===============8559169494722333693==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Infoframe changes for DP-HDMI2.1 PCON (rev2)
URL   : https://patchwork.freedesktop.org/series/85073/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10481 -> Patchwork_20812
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20812/index.html

Known issues
------------

  Here are the changes found in Patchwork_20812 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-rkl-guc:         NOTRUN -> [FAIL][1] ([i915#1602] / [i915#2029])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20812/fi-rkl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [FAIL][2] ([i915#1888]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20812/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029


Participating hosts (39 -> 34)
------------------------------

  Missing    (5): fi-kbl-soraka fi-hsw-4200u fi-bsw-cyan bat-jsl-1 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10481 -> Patchwork_20812

  CI-20190529: 20190529
  CI_DRM_10481: 7a2a60f961bd7bcc00aacb1d590a2b11ff2a93bd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6175: c91f99c74b966f635d7e2eb898bf0f78383d281b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20812: 59b4366f2635cdf3e2dc994668a9bae91d94fba2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

59b4366f2635 drm/drm_edid: Avoid HDMI2.1 VICs in AVIInfoframe for older HDMI sinks
27f9d72a4e25 video/hdmi: Add AVI version 3 defined in CTA-861-G
91ad072a629f drm/i915: Implement readout for AVI infoframe SDP
6bf0f13199bd video/hdmi: Separate function for unpacking AVI Infoframe Data
14f17aa7d715 drm/i915: Sending AVI infoframe through GMP DIP
079d3800a938 drm/i915: Export intel_hdmi_compute_avi_infoframe()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20812/index.html

--===============8559169494722333693==
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
<tr><td><b>Series:</b></td><td>Infoframe changes for DP-HDMI2.1 PCON (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85073/">https://patchwork.freedesktop.org/series/85073/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20812/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20812/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10481 -&gt; Patchwork_20812</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20812/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20812 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20812/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3:<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20812/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (39 -&gt; 34)</h2>
<p>Missing    (5): fi-kbl-soraka fi-hsw-4200u fi-bsw-cyan bat-jsl-1 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10481 -&gt; Patchwork_20812</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10481: 7a2a60f961bd7bcc00aacb1d590a2b11ff2a93bd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6175: c91f99c74b966f635d7e2eb898bf0f78383d281b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20812: 59b4366f2635cdf3e2dc994668a9bae91d94fba2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>59b4366f2635 drm/drm_edid: Avoid HDMI2.1 VICs in AVIInfoframe for older HDMI sinks<br />
27f9d72a4e25 video/hdmi: Add AVI version 3 defined in CTA-861-G<br />
91ad072a629f drm/i915: Implement readout for AVI infoframe SDP<br />
6bf0f13199bd video/hdmi: Separate function for unpacking AVI Infoframe Data<br />
14f17aa7d715 drm/i915: Sending AVI infoframe through GMP DIP<br />
079d3800a938 drm/i915: Export intel_hdmi_compute_avi_infoframe()</p>

</body>
</html>

--===============8559169494722333693==--
