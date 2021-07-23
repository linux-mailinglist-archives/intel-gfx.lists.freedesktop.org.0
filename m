Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE793D3626
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 10:09:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBCBF6E03A;
	Fri, 23 Jul 2021 08:09:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EA0856E03A;
 Fri, 23 Jul 2021 08:09:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E2785A0BCB;
 Fri, 23 Jul 2021 08:09:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Fri, 23 Jul 2021 08:09:17 -0000
Message-ID: <162702775790.3043.899993366209178311@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210723070548.29315-1-shawn.c.lee@intel.com>
In-Reply-To: <20210723070548.29315-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgTUlQ?=
 =?utf-8?q?I_DSI_driver_enhancements_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============0729606969=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0729606969==
Content-Type: multipart/alternative;
 boundary="===============3572009270915691439=="

--===============3572009270915691439==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: MIPI DSI driver enhancements (rev3)
URL   : https://patchwork.freedesktop.org/series/92695/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10376 -> Patchwork_20689
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20689/index.html

Known issues
------------

  Here are the changes found in Patchwork_20689 that come from known issues:

### IGT changes ###

  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888


Participating hosts (41 -> 35)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u bat-adlp-4 bat-adls-4 bat-adls-3 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10376 -> Patchwork_20689

  CI-20190529: 20190529
  CI_DRM_10376: 299bd09eafa6bf94ac922867ee0c797f8e569d3b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6147: f3994c2cd99a1acfe991a8cc838a387dcb36598a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20689: 86a133132144cac513321a5e8f05bf48fa3e1c17 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

86a133132144 drm/i915/dsi: Send proper brightness value via MIPI DCS command
20289018e0a5 drm/i915/dsi: Retrieve max brightness level from VBT.
0df46fa4d7cc drm/i915: Get proper min cdclk if vDSC enabled
72480625ce94 drm/i915/dsi: refine send MIPI DCS command sequence
57d3de727a89 drm/i915/dsi: wait for header and payload credit available
0071f18cf3f3 drm/i915/jsl: program DSI panel GPIOs
d7af033a52e3 drm/i915/dsi: send correct gpio_number on gen11 platform

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20689/index.html

--===============3572009270915691439==
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
<tr><td><b>Series:</b></td><td>MIPI DSI driver enhancements (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92695/">https://patchwork.freedesktop.org/series/92695/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20689/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20689/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10376 -&gt; Patchwork_20689</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20689/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20689 that come from known issues:</p>
<h3>IGT changes</h3>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (41 -&gt; 35)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u bat-adlp-4 bat-adls-4 bat-adls-3 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10376 -&gt; Patchwork_20689</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10376: 299bd09eafa6bf94ac922867ee0c797f8e569d3b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6147: f3994c2cd99a1acfe991a8cc838a387dcb36598a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20689: 86a133132144cac513321a5e8f05bf48fa3e1c17 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>86a133132144 drm/i915/dsi: Send proper brightness value via MIPI DCS command<br />
20289018e0a5 drm/i915/dsi: Retrieve max brightness level from VBT.<br />
0df46fa4d7cc drm/i915: Get proper min cdclk if vDSC enabled<br />
72480625ce94 drm/i915/dsi: refine send MIPI DCS command sequence<br />
57d3de727a89 drm/i915/dsi: wait for header and payload credit available<br />
0071f18cf3f3 drm/i915/jsl: program DSI panel GPIOs<br />
d7af033a52e3 drm/i915/dsi: send correct gpio_number on gen11 platform</p>

</body>
</html>

--===============3572009270915691439==--

--===============0729606969==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0729606969==--
