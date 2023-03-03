Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 202CB6A9590
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Mar 2023 11:50:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF57E10E07E;
	Fri,  3 Mar 2023 10:50:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EB3DB10E07E;
 Fri,  3 Mar 2023 10:50:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E5A5EA00CC;
 Fri,  3 Mar 2023 10:50:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1190782463252990252=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Fri, 03 Mar 2023 10:50:31 -0000
Message-ID: <167784063193.9996.13090979427127434380@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230222053153.3658345-1-suraj.kandpal@intel.com>
In-Reply-To: <20230222053153.3658345-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRW5h?=
 =?utf-8?q?ble_YCbCr420_format_for_VDSC_=28rev2=29?=
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

--===============1190782463252990252==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable YCbCr420 format for VDSC (rev2)
URL   : https://patchwork.freedesktop.org/series/114246/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12805 -> Patchwork_114246v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114246v2/index.html

Participating hosts (3 -> 2)
------------------------------

  Missing    (1): fi-snb-2520m 


Changes
-------

  No changes found


Build changes
-------------

  * Linux: CI_DRM_12805 -> Patchwork_114246v2

  CI-20190529: 20190529
  CI_DRM_12805: c1dbd5b5c8fdb5efd37a5a5234469b293c89a358 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7179: fcbbb6ab645cdbd7545c3f96d7b7df7674e620be @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114246v2: c1dbd5b5c8fdb5efd37a5a5234469b293c89a358 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

854d3e83acbf drm/i915/dsc: Add debugfs entry to validate DSC output formats
75d7b64e8731 drm/i915/vdsc: Check slice design requirement
df0c32d69a62 drm/i915/display: Fill in native_420 field
95200017860b drm/i915: Enable YCbCr420 for VDSC
a5f19b5be267 drm/i915: Adding the new registers for DSC
81922029e90d drm/i915/dp: Check if DSC supports the given output_format
57d743e4928a drm/dp_helper: Add helper to check DSC support with given o/p format

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114246v2/index.html

--===============1190782463252990252==
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
<tr><td><b>Series:</b></td><td>Enable YCbCr420 format for VDSC (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114246/">https://patchwork.freedesktop.org/series/114246/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114246v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114246v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12805 -&gt; Patchwork_114246v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114246v2/index.html</p>
<h2>Participating hosts (3 -&gt; 2)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Changes</h2>
<p>No changes found</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12805 -&gt; Patchwork_114246v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12805: c1dbd5b5c8fdb5efd37a5a5234469b293c89a358 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7179: fcbbb6ab645cdbd7545c3f96d7b7df7674e620be @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114246v2: c1dbd5b5c8fdb5efd37a5a5234469b293c89a358 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>854d3e83acbf drm/i915/dsc: Add debugfs entry to validate DSC output formats<br />
75d7b64e8731 drm/i915/vdsc: Check slice design requirement<br />
df0c32d69a62 drm/i915/display: Fill in native_420 field<br />
95200017860b drm/i915: Enable YCbCr420 for VDSC<br />
a5f19b5be267 drm/i915: Adding the new registers for DSC<br />
81922029e90d drm/i915/dp: Check if DSC supports the given output_format<br />
57d743e4928a drm/dp_helper: Add helper to check DSC support with given o/p format</p>

</body>
</html>

--===============1190782463252990252==--
