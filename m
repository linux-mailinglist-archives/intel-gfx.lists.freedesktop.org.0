Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 435156C2421
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 22:55:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27B0710E323;
	Mon, 20 Mar 2023 21:55:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0754D10E323;
 Mon, 20 Mar 2023 21:55:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 004E0AADE8;
 Mon, 20 Mar 2023 21:55:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1361543320730100219=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Mon, 20 Mar 2023 21:55:17 -0000
Message-ID: <167934931795.26306.3204162101740311960@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230316131724.359612-1-imre.deak@intel.com>
In-Reply-To: <20230316131724.359612-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tc=3A_Fix_a_few_TypeC_/_MST_issues_=28rev2=29?=
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

--===============1361543320730100219==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/tc: Fix a few TypeC / MST issues (rev2)
URL   : https://patchwork.freedesktop.org/series/115270/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12884 -> Patchwork_115270v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v2/index.html

Participating hosts (35 -> 34)
------------------------------

  Missing    (1): bat-dg1-6 

Known issues
------------

  Here are the changes found in Patchwork_115270v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - bat-rpls-1:         NOTRUN -> [ABORT][1] ([i915#6687] / [i915#7978])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v2/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@mman:
    - bat-rpls-1:         [PASS][2] -> [TIMEOUT][3] ([i915#6794])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/bat-rpls-1/igt@i915_selftest@live@mman.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v2/bat-rpls-1/igt@i915_selftest@live@mman.html

  
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978


Build changes
-------------

  * Linux: CI_DRM_12884 -> Patchwork_115270v2

  CI-20190529: 20190529
  CI_DRM_12884: 1d4054731cfcb1cb9810d309b70535ae0b90ecf0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7208: f327c5d77b6ea6adff1ef6d08f21f232dfe093e3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_115270v2: 1d4054731cfcb1cb9810d309b70535ae0b90ecf0 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

d236abc0a870 drm/i915/tc: Check the PLL type used by an enabled TC port
c9887c208b2d drm/i915/tc: Factor out a function querying active links on a TC port
2e8dce31e0c6 drm/i915: Add encoder hook to get the PLL type used by TC ports
b339003dca0e drm/i915/tc: Assume a TC port is legacy if VBT says the port has HDMI
a2289f06efeb drm/i915/tc: Make the TC mode readout consistent in all PHY states
541ec210d0ad drm/i915/tc: Fix initial TC mode on disabled legacy ports
b7a306ddcf45 drm/i915/tc: Fix TC mode for a legacy port if the PHY is not ready
64068963c2d3 drm/i915/tc: Fix target TC mode for a disconnected legacy port
34065ef24367 drm/i915/tc: Factor out helpers converting HPD mask to TC mode
9a12e4565618 drm/i915/tc: Wait for IOM/FW PHY initialization of legacy TC ports
ad14bc11567c drm/i915/tc: Fix system resume MST mode restore for DP-alt sinks
ab9bb9603a4e drm/i915/tc: Fix the ICL PHY ownership check in TC-cold state
0420d4d61422 drm/i915/tc: Fix TC port link ref init for DP MST during HW readout
0c1d8b3e68f2 drm/i915/tc: Abort DP AUX transfer on a disconnected TC port

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v2/index.html

--===============1361543320730100219==
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
<tr><td><b>Series:</b></td><td>drm/i915/tc: Fix a few TypeC / MST issues (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/115270/">https://patchwork.freedesktop.org/series/115270/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12884 -&gt; Patchwork_115270v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v2/index.html</p>
<h2>Participating hosts (35 -&gt; 34)</h2>
<p>Missing    (1): bat-dg1-6 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_115270v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v2/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/bat-rpls-1/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v2/bat-rpls-1/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12884 -&gt; Patchwork_115270v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12884: 1d4054731cfcb1cb9810d309b70535ae0b90ecf0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7208: f327c5d77b6ea6adff1ef6d08f21f232dfe093e3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_115270v2: 1d4054731cfcb1cb9810d309b70535ae0b90ecf0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>d236abc0a870 drm/i915/tc: Check the PLL type used by an enabled TC port<br />
c9887c208b2d drm/i915/tc: Factor out a function querying active links on a TC port<br />
2e8dce31e0c6 drm/i915: Add encoder hook to get the PLL type used by TC ports<br />
b339003dca0e drm/i915/tc: Assume a TC port is legacy if VBT says the port has HDMI<br />
a2289f06efeb drm/i915/tc: Make the TC mode readout consistent in all PHY states<br />
541ec210d0ad drm/i915/tc: Fix initial TC mode on disabled legacy ports<br />
b7a306ddcf45 drm/i915/tc: Fix TC mode for a legacy port if the PHY is not ready<br />
64068963c2d3 drm/i915/tc: Fix target TC mode for a disconnected legacy port<br />
34065ef24367 drm/i915/tc: Factor out helpers converting HPD mask to TC mode<br />
9a12e4565618 drm/i915/tc: Wait for IOM/FW PHY initialization of legacy TC ports<br />
ad14bc11567c drm/i915/tc: Fix system resume MST mode restore for DP-alt sinks<br />
ab9bb9603a4e drm/i915/tc: Fix the ICL PHY ownership check in TC-cold state<br />
0420d4d61422 drm/i915/tc: Fix TC port link ref init for DP MST during HW readout<br />
0c1d8b3e68f2 drm/i915/tc: Abort DP AUX transfer on a disconnected TC port</p>

</body>
</html>

--===============1361543320730100219==--
