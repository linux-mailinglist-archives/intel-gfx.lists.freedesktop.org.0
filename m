Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC7A95D4D0
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2024 20:02:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0AC310E05D;
	Fri, 23 Aug 2024 18:02:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B389F10EC9A;
 Fri, 23 Aug 2024 18:02:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6047967183994674640=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm=3A_Use_full_allocated_m?=
 =?utf-8?q?inor_range_for_DRM_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Micha=C5=82_Winiarski?= <michal.winiarski@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Aug 2024 18:02:09 -0000
Message-ID: <172443612972.747593.2811396554246685753@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240823163048.2676257-1-michal.winiarski@intel.com>
In-Reply-To: <20240823163048.2676257-1-michal.winiarski@intel.com>
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

--===============6047967183994674640==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Use full allocated minor range for DRM (rev4)
URL   : https://patchwork.freedesktop.org/series/108206/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15286 -> Patchwork_108206v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v4/index.html

Participating hosts (40 -> 38)
------------------------------

  Missing    (2): bat-arlh-3 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_108206v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - bat-arls-2:         [PASS][1] -> [DMESG-WARN][2] ([i915#11349])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15286/bat-arls-2/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v4/bat-arls-2/igt@i915_selftest@live@hangcheck.html

  
  [i915#11349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349


Build changes
-------------

  * Linux: CI_DRM_15286 -> Patchwork_108206v4

  CI-20190529: 20190529
  CI_DRM_15286: 96041621daaf71059d790a2ddbaa60114371eada @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7988: 436018b50dfd35d75618a690f0dba6143d911aed @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108206v4: 96041621daaf71059d790a2ddbaa60114371eada @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v4/index.html

--===============6047967183994674640==
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
<tr><td><b>Series:</b></td><td>drm: Use full allocated minor range for DRM (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/108206/">https://patchwork.freedesktop.org/series/108206/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15286 -&gt; Patchwork_108206v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v4/index.html</p>
<h2>Participating hosts (40 -&gt; 38)</h2>
<p>Missing    (2): bat-arlh-3 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108206v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15286/bat-arls-2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v4/bat-arls-2/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349">i915#11349</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15286 -&gt; Patchwork_108206v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15286: 96041621daaf71059d790a2ddbaa60114371eada @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7988: 436018b50dfd35d75618a690f0dba6143d911aed @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108206v4: 96041621daaf71059d790a2ddbaa60114371eada @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6047967183994674640==--
