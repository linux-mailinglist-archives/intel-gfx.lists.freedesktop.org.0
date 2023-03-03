Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 616DA6A9043
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Mar 2023 05:32:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAD1810E011;
	Fri,  3 Mar 2023 04:32:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D9F3610E011;
 Fri,  3 Mar 2023 04:32:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CA4E9A00E6;
 Fri,  3 Mar 2023 04:32:50 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3850609605125417049=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 03 Mar 2023 04:32:50 -0000
Message-ID: <167781797079.8291.6810993313255759724@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230302161013.29213-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230302161013.29213-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Check_HPD_during_eDP_probe?=
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

--===============3850609605125417049==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Check HPD during eDP probe
URL   : https://patchwork.freedesktop.org/series/114577/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12801 -> Patchwork_114577v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114577v1/index.html

Participating hosts (3 -> 2)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_114577v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@load:
    - bat-atsm-1:         [PASS][1] -> [ABORT][2] ([i915#8219])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12801/bat-atsm-1/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114577v1/bat-atsm-1/igt@i915_module_load@load.html

  
  [i915#8219]: https://gitlab.freedesktop.org/drm/intel/issues/8219


Build changes
-------------

  * Linux: CI_DRM_12801 -> Patchwork_114577v1

  CI-20190529: 20190529
  CI_DRM_12801: 6695d34a4e09a2371e6ad8a2ea8644bfa901744e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7178: ffe3f6670b91ab975f90799ab3fd0941b6eae019 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114577v1: 6695d34a4e09a2371e6ad8a2ea8644bfa901744e @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

1d54e51ee661 drm/i915: Reuse <platform>_hotplug_mask() in .hpd_detection_setup()
2ecd6021b80b drm/i915: Check HPD live state during eDP probe
2578c6a778cd drm/i915: Introduce intel_hpd_enable_detection()
d957e5f50ef6 drm/i915: Introduce <platform>_hotplug_mask()
3a44e2d7f01c drm/i915: Get rid of the gm45 HPD live state nonsense
dd2f93f4bbdc drm/i915: Fix SKL DDI A digital port .connected()
c88426521507 drm/i915: Populate dig_port->connected() before connector init

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114577v1/index.html

--===============3850609605125417049==
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
<tr><td><b>Series:</b></td><td>drm/i915: Check HPD during eDP probe</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114577/">https://patchwork.freedesktop.org/series/114577/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114577v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114577v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12801 -&gt; Patchwork_114577v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114577v1/index.html</p>
<h2>Participating hosts (3 -&gt; 2)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114577v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12801/bat-atsm-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114577v1/bat-atsm-1/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8219">i915#8219</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12801 -&gt; Patchwork_114577v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12801: 6695d34a4e09a2371e6ad8a2ea8644bfa901744e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7178: ffe3f6670b91ab975f90799ab3fd0941b6eae019 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114577v1: 6695d34a4e09a2371e6ad8a2ea8644bfa901744e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>1d54e51ee661 drm/i915: Reuse <platform>_hotplug_mask() in .hpd_detection_setup()<br />
2ecd6021b80b drm/i915: Check HPD live state during eDP probe<br />
2578c6a778cd drm/i915: Introduce intel_hpd_enable_detection()<br />
d957e5f50ef6 drm/i915: Introduce <platform>_hotplug_mask()<br />
3a44e2d7f01c drm/i915: Get rid of the gm45 HPD live state nonsense<br />
dd2f93f4bbdc drm/i915: Fix SKL DDI A digital port .connected()<br />
c88426521507 drm/i915: Populate dig_port-&gt;connected() before connector init</p>

</body>
</html>

--===============3850609605125417049==--
