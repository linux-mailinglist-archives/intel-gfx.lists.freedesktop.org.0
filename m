Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 943236A8A2B
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 21:25:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F176110E550;
	Thu,  2 Mar 2023 20:25:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 94F6110E550;
 Thu,  2 Mar 2023 20:24:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 93325A03D2;
 Thu,  2 Mar 2023 20:24:59 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1055189784410552194=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Date: Thu, 02 Mar 2023 20:24:59 -0000
Message-ID: <167778869959.20552.16461214146215073295@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230227171920.2438319-1-jonathan.cavitt@intel.com>
In-Reply-To: <20230227171920.2438319-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv5=2C1/2=5D_drm/i915=3A_Migrate_platform-d?=
 =?utf-8?q?ependent_mock_hugepage_selftests_to_live_=28rev2=29?=
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

--===============1055189784410552194==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v5,1/2] drm/i915: Migrate platform-dependent mock hugepage selftests to live (rev2)
URL   : https://patchwork.freedesktop.org/series/114432/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12801 -> Patchwork_114432v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114432v2/index.html

Participating hosts (3 -> 2)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_114432v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@load:
    - bat-atsm-1:         [PASS][1] -> [ABORT][2] ([i915#8219])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12801/bat-atsm-1/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114432v2/bat-atsm-1/igt@i915_module_load@load.html

  
  [i915#8219]: https://gitlab.freedesktop.org/drm/intel/issues/8219


Build changes
-------------

  * Linux: CI_DRM_12801 -> Patchwork_114432v2

  CI-20190529: 20190529
  CI_DRM_12801: 6695d34a4e09a2371e6ad8a2ea8644bfa901744e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7178: ffe3f6670b91ab975f90799ab3fd0941b6eae019 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114432v2: 6695d34a4e09a2371e6ad8a2ea8644bfa901744e @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

1d4179943633 drm/i915: Use correct huge page manager for MTL
fd3d09fc29a1 drm/i915: Migrate platform-dependent mock hugepage selftests to live

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114432v2/index.html

--===============1055189784410552194==
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
<tr><td><b>Series:</b></td><td>series starting with [v5,1/2] drm/i915: Migrate platform-dependent mock hugepage selftests to live (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114432/">https://patchwork.freedesktop.org/series/114432/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114432v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114432v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12801 -&gt; Patchwork_114432v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114432v2/index.html</p>
<h2>Participating hosts (3 -&gt; 2)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114432v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12801/bat-atsm-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114432v2/bat-atsm-1/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8219">i915#8219</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12801 -&gt; Patchwork_114432v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12801: 6695d34a4e09a2371e6ad8a2ea8644bfa901744e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7178: ffe3f6670b91ab975f90799ab3fd0941b6eae019 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114432v2: 6695d34a4e09a2371e6ad8a2ea8644bfa901744e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>1d4179943633 drm/i915: Use correct huge page manager for MTL<br />
fd3d09fc29a1 drm/i915: Migrate platform-dependent mock hugepage selftests to live</p>

</body>
</html>

--===============1055189784410552194==--
