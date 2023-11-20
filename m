Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5F77F20C6
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Nov 2023 23:58:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DE8610E13E;
	Mon, 20 Nov 2023 22:58:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6386810E13E;
 Mon, 20 Nov 2023 22:58:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5C026A47DF;
 Mon, 20 Nov 2023 22:58:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8349973493243478475=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Mon, 20 Nov 2023 22:58:00 -0000
Message-ID: <170052108033.29474.16513206689606430274@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231120082606.3156488-1-jouni.hogander@intel.com>
In-Reply-To: <20231120082606.3156488-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW1w?=
 =?utf-8?q?lement_sel=5Ffetch_disable_for_planes_=28rev4=29?=
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

--===============8349973493243478475==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Implement sel_fetch disable for planes (rev4)
URL   : https://patchwork.freedesktop.org/series/114224/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13900 -> Patchwork_114224v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114224v4/index.html

Participating hosts (33 -> 17)
------------------------------

  Missing    (16): fi-kbl-7567u bat-dg1-5 fi-skl-guc fi-tgl-1115g4 bat-dg2-9 fi-cfl-guc fi-snb-2520m fi-apl-guc fi-ilk-650 fi-kbl-guc bat-adln-1 fi-elk-e7500 bat-rplp-1 fi-bsw-nick fi-skl-6600u bat-mtlp-6 

Known issues
------------

  Here are the changes found in Patchwork_114224v4 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-jsl-1:          [PASS][1] -> [FAIL][2] ([i915#8293])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13900/bat-jsl-1/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114224v4/bat-jsl-1/boot.html

  

### IGT changes ###

  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#7359]: https://gitlab.freedesktop.org/drm/intel/issues/7359
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8981]: https://gitlab.freedesktop.org/drm/intel/issues/8981
  [i915#9648]: https://gitlab.freedesktop.org/drm/intel/issues/9648


Build changes
-------------

  * Linux: CI_DRM_13900 -> Patchwork_114224v4

  CI-20190529: 20190529
  CI_DRM_13900: 7e7a522c80874faff37a7a66bdaff0747f978e11 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7595: cfa00d99b1dfa0621ea552d1ed54907798da1a1a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114224v4: 7e7a522c80874faff37a7a66bdaff0747f978e11 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

5b6494a6a99e drm/i915/psr: Add proper handling for disabling sel fetch for planes
6833122b95d7 drm/i915/psr: Move plane sel fetch configuration into plane source files

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114224v4/index.html

--===============8349973493243478475==
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
<tr><td><b>Series:</b></td><td>Implement sel_fetch disable for planes (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114224/">https://patchwork.freedesktop.org/series/114224/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114224v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114224v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13900 -&gt; Patchwork_114224v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114224v4/index.html</p>
<h2>Participating hosts (33 -&gt; 17)</h2>
<p>Missing    (16): fi-kbl-7567u bat-dg1-5 fi-skl-guc fi-tgl-1115g4 bat-dg2-9 fi-cfl-guc fi-snb-2520m fi-apl-guc fi-ilk-650 fi-kbl-guc bat-adln-1 fi-elk-e7500 bat-rplp-1 fi-bsw-nick fi-skl-6600u bat-mtlp-6 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114224v4 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13900/bat-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114224v4/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13900 -&gt; Patchwork_114224v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13900: 7e7a522c80874faff37a7a66bdaff0747f978e11 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7595: cfa00d99b1dfa0621ea552d1ed54907798da1a1a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114224v4: 7e7a522c80874faff37a7a66bdaff0747f978e11 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>5b6494a6a99e drm/i915/psr: Add proper handling for disabling sel fetch for planes<br />
6833122b95d7 drm/i915/psr: Move plane sel fetch configuration into plane source files</p>

</body>
</html>

--===============8349973493243478475==--
