Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 659AB415612
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 05:31:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B1B36ECAF;
	Thu, 23 Sep 2021 03:31:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F3ED16ECAE;
 Thu, 23 Sep 2021 03:31:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EC28DA47EA;
 Thu, 23 Sep 2021 03:31:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2159927879012404597=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 03:31:14 -0000
Message-ID: <163236787496.31051.1282296256770092864@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210916102118.17356-1-shawn.c.lee@intel.com>
In-Reply-To: <20210916102118.17356-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_unregister_gmbus_if_LFP_display_was_MIPI_panel_=28?=
 =?utf-8?q?rev4=29?=
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

--===============2159927879012404597==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dsi: unregister gmbus if LFP display was MIPI panel (rev4)
URL   : https://patchwork.freedesktop.org/series/94733/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10629 -> Patchwork_21139
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21139/index.html

Known issues
------------

  Here are the changes found in Patchwork_21139 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-kbl-7500u:       [PASS][1] -> [FAIL][2] ([i915#3449])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21139/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-r:           [DMESG-FAIL][3] ([i915#2291] / [i915#541]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/fi-kbl-r/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21139/fi-kbl-r/igt@i915_selftest@live@gt_heartbeat.html

  
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#3449]: https://gitlab.freedesktop.org/drm/intel/issues/3449
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (42 -> 34)
------------------------------

  Missing    (8): fi-ilk-m540 bat-dg1-6 bat-dg1-5 fi-bsw-cyan fi-ctg-p8600 fi-kbl-x1275 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10629 -> Patchwork_21139

  CI-20190529: 20190529
  CI_DRM_10629: ce6974ec90355ddef78e6bc2221cb2296e5ba349 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6214: 13550e92c6c7bd825abb6c9b087d12a524b4674c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21139: 388b23930275754702d2e5fbe26bd88e66e97254 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

388b23930275 drm/i915/dsi: do not register gmbus if it was reserved for MIPI display

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21139/index.html

--===============2159927879012404597==
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
<tr><td><b>Series:</b></td><td>drm/i915/dsi: unregister gmbus if LFP display was MIPI panel (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94733/">https://patchwork.freedesktop.org/series/94733/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21139/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21139/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10629 -&gt; Patchwork_21139</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21139/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21139 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_chamelium@hdmi-edid-read:<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21139/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3449">i915#3449</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/fi-kbl-r/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21139/fi-kbl-r/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 34)</h2>
<p>Missing    (8): fi-ilk-m540 bat-dg1-6 bat-dg1-5 fi-bsw-cyan fi-ctg-p8600 fi-kbl-x1275 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10629 -&gt; Patchwork_21139</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10629: ce6974ec90355ddef78e6bc2221cb2296e5ba349 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6214: 13550e92c6c7bd825abb6c9b087d12a524b4674c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21139: 388b23930275754702d2e5fbe26bd88e66e97254 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>388b23930275 drm/i915/dsi: do not register gmbus if it was reserved for MIPI display</p>

</body>
</html>

--===============2159927879012404597==--
