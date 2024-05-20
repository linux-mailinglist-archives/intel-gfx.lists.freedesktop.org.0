Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A751F8CA29A
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 21:14:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EF6910E458;
	Mon, 20 May 2024 19:14:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5BCF10E458;
 Mon, 20 May 2024 19:14:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2155737818827361744=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/xe=3A_Cleanup_xe=5Fmmio?=
 =?utf-8?q?=2Eh?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 20 May 2024 19:14:45 -0000
Message-ID: <171623248574.2157358.17718265206466367994@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240520181814.2392-1-michal.wajdeczko@intel.com>
In-Reply-To: <20240520181814.2392-1-michal.wajdeczko@intel.com>
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

--===============2155737818827361744==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/xe: Cleanup xe_mmio.h
URL   : https://patchwork.freedesktop.org/series/133825/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14785 -> Patchwork_133825v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/index.html

Participating hosts (41 -> 39)
------------------------------

  Missing    (2): bat-jsl-3 bat-arls-3 

Known issues
------------

  Here are the changes found in Patchwork_133825v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-11:         [PASS][1] -> [FAIL][2] ([i915#10378])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - bat-dg2-8:          [DMESG-WARN][3] ([i915#10014]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/bat-dg2-8/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/bat-dg2-8/igt@i915_module_load@load.html

  * igt@i915_selftest@live@gt_timelines:
    - bat-arls-2:         [INCOMPLETE][5] -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/bat-arls-2/igt@i915_selftest@live@gt_timelines.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/bat-arls-2/igt@i915_selftest@live@gt_timelines.html

  
  [i915#10014]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10014
  [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378


Build changes
-------------

  * Linux: CI_DRM_14785 -> Patchwork_133825v1

  CI-20190529: 20190529
  CI_DRM_14785: 1ba62f8cea9c797427d45108df1d453f4b343240 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7863: fa1dc232d5d840532521df8a6fcf1fe82c514304 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_133825v1: 1ba62f8cea9c797427d45108df1d453f4b343240 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/index.html

--===============2155737818827361744==
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
<tr><td><b>Series:</b></td><td>drm/xe: Cleanup xe_mmio.h</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/133825/">https://patchwork.freedesktop.org/series/133825/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14785 -&gt; Patchwork_133825v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/index.html</p>
<h2>Participating hosts (41 -&gt; 39)</h2>
<p>Missing    (2): bat-jsl-3 bat-arls-3 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_133825v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_lmem_swapping@basic@lmem0:<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/bat-dg2-8/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10014">i915#10014</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/bat-dg2-8/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/bat-arls-2/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/bat-arls-2/igt@i915_selftest@live@gt_timelines.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14785 -&gt; Patchwork_133825v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14785: 1ba62f8cea9c797427d45108df1d453f4b343240 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7863: fa1dc232d5d840532521df8a6fcf1fe82c514304 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_133825v1: 1ba62f8cea9c797427d45108df1d453f4b343240 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============2155737818827361744==--
