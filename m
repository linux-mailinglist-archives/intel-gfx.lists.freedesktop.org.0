Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 149A568BCFC
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Feb 2023 13:35:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC97E10E3A9;
	Mon,  6 Feb 2023 12:35:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BA7A710E3A9;
 Mon,  6 Feb 2023 12:35:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B693CA3ECB;
 Mon,  6 Feb 2023 12:35:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9192420999734179413=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Mon, 06 Feb 2023 12:35:38 -0000
Message-ID: <167568693874.27491.6138556432867155517@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230105131046.2173431-1-andrzej.hajda@intel.com>
In-Reply-To: <20230105131046.2173431-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/9=5D_drm/i915/display/core=3A_use_i?=
 =?utf-8?q?ntel=5Fde=5Frmw_if_possible_=28rev4=29?=
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

--===============9192420999734179413==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/9] drm/i915/display/core: use intel_de_rmw if possible (rev4)
URL   : https://patchwork.freedesktop.org/series/112438/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12701 -> Patchwork_112438v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/index.html

Participating hosts (28 -> 27)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_112438v4 that come from known issues:

### IGT changes ###

  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#6311]: https://gitlab.freedesktop.org/drm/intel/issues/6311
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7359]: https://gitlab.freedesktop.org/drm/intel/issues/7359
  [i915#7852]: https://gitlab.freedesktop.org/drm/intel/issues/7852
  [i915#7996]: https://gitlab.freedesktop.org/drm/intel/issues/7996


Build changes
-------------

  * Linux: CI_DRM_12701 -> Patchwork_112438v4

  CI-20190529: 20190529
  CI_DRM_12701: 59f7ee248c81c7f9840eeabe3e8fac5e6f5a1a9f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7149: 1c7ea154b625e1fb826f1519b816b4256dd10b62 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112438v4: 59f7ee248c81c7f9840eeabe3e8fac5e6f5a1a9f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ba76a25b3a17 drm/i915/display/misc: use intel_de_rmw if possible
0a886b169a45 drm/i915/display/interfaces: use intel_de_rmw if possible
f201f43e23f3 drm/i915/display/panel: use intel_de_rmw if possible in panel related code
892c16c98118 drm/i915/display/hdmi: use intel_de_rmw if possible
36034e23e9b0 drm/i915/display/pch: use intel_de_rmw if possible
4318f3656785 drm/i915/display/phys: use intel_de_rmw if possible
439c49a6b297 drm/i915/display/dpll: use intel_de_rmw if possible
7ae9a61bd708 drm/i915/display/power: use intel_de_rmw if possible
453d69b389b8 drm/i915/display/core: use intel_de_rmw if possible

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/index.html

--===============9192420999734179413==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/9] drm/i915/display/core: use intel_de_rmw if possible (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112438/">https://patchwork.freedesktop.org/series/112438/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12701 -&gt; Patchwork_112438v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/index.html</p>
<h2>Participating hosts (28 -&gt; 27)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112438v4 that come from known issues:</p>
<h3>IGT changes</h3>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12701 -&gt; Patchwork_112438v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12701: 59f7ee248c81c7f9840eeabe3e8fac5e6f5a1a9f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7149: 1c7ea154b625e1fb826f1519b816b4256dd10b62 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112438v4: 59f7ee248c81c7f9840eeabe3e8fac5e6f5a1a9f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ba76a25b3a17 drm/i915/display/misc: use intel_de_rmw if possible<br />
0a886b169a45 drm/i915/display/interfaces: use intel_de_rmw if possible<br />
f201f43e23f3 drm/i915/display/panel: use intel_de_rmw if possible in panel related code<br />
892c16c98118 drm/i915/display/hdmi: use intel_de_rmw if possible<br />
36034e23e9b0 drm/i915/display/pch: use intel_de_rmw if possible<br />
4318f3656785 drm/i915/display/phys: use intel_de_rmw if possible<br />
439c49a6b297 drm/i915/display/dpll: use intel_de_rmw if possible<br />
7ae9a61bd708 drm/i915/display/power: use intel_de_rmw if possible<br />
453d69b389b8 drm/i915/display/core: use intel_de_rmw if possible</p>

</body>
</html>

--===============9192420999734179413==--
