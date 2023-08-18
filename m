Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16DE27802E2
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 03:12:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0794810E2EF;
	Fri, 18 Aug 2023 01:12:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E4F5D10E2C4;
 Fri, 18 Aug 2023 01:12:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7264DA0093;
 Fri, 18 Aug 2023 01:12:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1369896375841958604=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 18 Aug 2023 01:12:31 -0000
Message-ID: <169232115143.12739.14563947965975900630@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1692287501.git.jani.nikula@intel.com>
In-Reply-To: <cover.1692287501.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/color=3A_cleanups_and_refactoring?=
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

--===============1369896375841958604==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/color: cleanups and refactoring
URL   : https://patchwork.freedesktop.org/series/122588/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13534 -> Patchwork_122588v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122588v1/index.html

Participating hosts (39 -> 38)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_122588v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@migrate:
    - bat-dg2-11:         [DMESG-WARN][1] ([i915#7699]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122588v1/bat-dg2-11/igt@i915_selftest@live@migrate.html

  
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699


Build changes
-------------

  * Linux: CI_DRM_13534 -> Patchwork_122588v1

  CI-20190529: 20190529
  CI_DRM_13534: 2c5542cb377b2e9e15c1f84a6e78a3d6fca47ea0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7443: 953448dbf2e63918a8eced9707f65fc0a19a9c85 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_122588v1: 2c5542cb377b2e9e15c1f84a6e78a3d6fca47ea0 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

51893d5c110b drm/i915/color: move pre-SKL gamma and CSC enable read to intel_color
18b8827fa59e drm/i915/color: move SKL+ gamma and CSC enable read to intel_color
78be6cc94946 drm/i915: move ILK+ CSC mode read to intel_color
c60f46933ece drm/i915: move HSW+ gamma mode read to intel_color
619689e23935 drm/i915/color: move CHV CGM pipe mode read to intel_color
fa230089c94d drm/i915/regs: split out intel_color_regs.h

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122588v1/index.html

--===============1369896375841958604==
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
<tr><td><b>Series:</b></td><td>drm/i915/color: cleanups and refactoring</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/122588/">https://patchwork.freedesktop.org/series/122588/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122588v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122588v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13534 -&gt; Patchwork_122588v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122588v1/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_122588v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@migrate:<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122588v1/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13534 -&gt; Patchwork_122588v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13534: 2c5542cb377b2e9e15c1f84a6e78a3d6fca47ea0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7443: 953448dbf2e63918a8eced9707f65fc0a19a9c85 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_122588v1: 2c5542cb377b2e9e15c1f84a6e78a3d6fca47ea0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>51893d5c110b drm/i915/color: move pre-SKL gamma and CSC enable read to intel_color<br />
18b8827fa59e drm/i915/color: move SKL+ gamma and CSC enable read to intel_color<br />
78be6cc94946 drm/i915: move ILK+ CSC mode read to intel_color<br />
c60f46933ece drm/i915: move HSW+ gamma mode read to intel_color<br />
619689e23935 drm/i915/color: move CHV CGM pipe mode read to intel_color<br />
fa230089c94d drm/i915/regs: split out intel_color_regs.h</p>

</body>
</html>

--===============1369896375841958604==--
