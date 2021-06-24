Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BAC83B3422
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 18:45:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9D5B6EC5D;
	Thu, 24 Jun 2021 16:45:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DC4D46EB38;
 Thu, 24 Jun 2021 16:45:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D57C4A47DB;
 Thu, 24 Jun 2021 16:45:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Thu, 24 Jun 2021 16:45:50 -0000
Message-ID: <162455315086.1853.14000975103865521529@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210624142856.30532-1-shawn.c.lee@intel.com>
In-Reply-To: <20210624142856.30532-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_Fix_invalid_test_parameter_when_run_DP_link_layer_c?=
 =?utf-8?q?ompliance?=
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
Content-Type: multipart/mixed; boundary="===============0529498328=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0529498328==
Content-Type: multipart/alternative;
 boundary="===============1251184330798657588=="

--===============1251184330798657588==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: Fix invalid test parameter when run DP link layer compliance
URL   : https://patchwork.freedesktop.org/series/91879/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10276 -> Patchwork_20458
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20458/index.html

Known issues
------------

  Here are the changes found in Patchwork_20458 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-compute0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20458/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-compute0.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271


Participating hosts (45 -> 39)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-skl-guc fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10276 -> Patchwork_20458

  CI-20190529: 20190529
  CI_DRM_10276: dc72fe3798577491293de99bfcf132e5d321ab7e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6117: 3ba0a02404f243d6d8f232c6215163cc4b0fd699 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20458: 82986769202125be11e18daf7ce688722fab2be0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

829867692021 drm/i915/dp: Fix invalid test parameter when run DP link layer compliance

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20458/index.html

--===============1251184330798657588==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: Fix invalid test parameter when run DP link layer compliance</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91879/">https://patchwork.freedesktop.org/series/91879/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20458/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20458/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10276 -&gt; Patchwork_20458</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20458/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20458 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@amdgpu/amd_cs_nop@sync-compute0:<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20458/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (45 -&gt; 39)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-skl-guc fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10276 -&gt; Patchwork_20458</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10276: dc72fe3798577491293de99bfcf132e5d321ab7e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6117: 3ba0a02404f243d6d8f232c6215163cc4b0fd699 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20458: 82986769202125be11e18daf7ce688722fab2be0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>829867692021 drm/i915/dp: Fix invalid test parameter when run DP link layer compliance</p>

</body>
</html>

--===============1251184330798657588==--

--===============0529498328==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0529498328==--
