Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CDC73B3228
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 17:01:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E0206EC19;
	Thu, 24 Jun 2021 15:01:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 170EA6EC19;
 Thu, 24 Jun 2021 15:01:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0FF72A66C9;
 Thu, 24 Jun 2021 15:01:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hsin-Yi Wang" <hsinyi@chromium.org>
Date: Thu, 24 Jun 2021 15:01:34 -0000
Message-ID: <162454689403.1852.14022358846270669907@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210624105517.3886963-1-hsinyi@chromium.org>
In-Reply-To: <20210624105517.3886963-1-hsinyi@chromium.org>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv6=2CRESEND=2C1/3=5D_gpu=3A_drm=3A_separat?=
 =?utf-8?q?e_panel_orientation_property_creating_and_value_setting?=
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
Content-Type: multipart/mixed; boundary="===============1411556195=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1411556195==
Content-Type: multipart/alternative;
 boundary="===============4560914288457680527=="

--===============4560914288457680527==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v6,RESEND,1/3] gpu: drm: separate panel orientation property creating and value setting
URL   : https://patchwork.freedesktop.org/series/91867/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10276 -> Patchwork_20454
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20454/index.html

Known issues
------------

  Here are the changes found in Patchwork_20454 that come from known issues:

### IGT changes ###

  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (45 -> 40)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10276 -> Patchwork_20454

  CI-20190529: 20190529
  CI_DRM_10276: dc72fe3798577491293de99bfcf132e5d321ab7e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6117: 3ba0a02404f243d6d8f232c6215163cc4b0fd699 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20454: d46a8e1bd812aa3619c3cd1d278bbb639bbaa7d0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d46a8e1bd812 arm64: dts: mt8183: Add panel rotation
39f7ae8abfee drm/mediatek: init panel orientation property
8e0b6d8e41b6 gpu: drm: separate panel orientation property creating and value setting

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20454/index.html

--===============4560914288457680527==
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
<tr><td><b>Series:</b></td><td>series starting with [v6,RESEND,1/3] gpu: drm: separate panel orientation property creating and value setting</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91867/">https://patchwork.freedesktop.org/series/91867/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20454/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20454/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10276 -&gt; Patchwork_20454</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20454/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20454 that come from known issues:</p>
<h3>IGT changes</h3>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 40)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10276 -&gt; Patchwork_20454</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10276: dc72fe3798577491293de99bfcf132e5d321ab7e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6117: 3ba0a02404f243d6d8f232c6215163cc4b0fd699 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20454: d46a8e1bd812aa3619c3cd1d278bbb639bbaa7d0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d46a8e1bd812 arm64: dts: mt8183: Add panel rotation<br />
39f7ae8abfee drm/mediatek: init panel orientation property<br />
8e0b6d8e41b6 gpu: drm: separate panel orientation property creating and value setting</p>

</body>
</html>

--===============4560914288457680527==--

--===============1411556195==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1411556195==--
