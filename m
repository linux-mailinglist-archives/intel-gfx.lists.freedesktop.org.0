Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D40D56A498B
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 19:22:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25E5610E1D8;
	Mon, 27 Feb 2023 18:22:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B1CB710E1C7;
 Mon, 27 Feb 2023 18:22:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 96779A7DFF;
 Mon, 27 Feb 2023 18:22:27 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8632471972679913985=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Date: Mon, 27 Feb 2023 18:22:27 -0000
Message-ID: <167752214757.26338.17109029625534607471@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230227171920.2438319-1-jonathan.cavitt@intel.com>
In-Reply-To: <20230227171920.2438319-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv5=2C1/2=5D_drm/i915=3A_Migrate_platform-d?=
 =?utf-8?q?ependent_mock_hugepage_selftests_to_live?=
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

--===============8632471972679913985==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v5,1/2] drm/i915: Migrate platform-dependent mock hugepage selftests to live
URL   : https://patchwork.freedesktop.org/series/114432/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12787 -> Patchwork_114432v1
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_114432v1 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_114432v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114432v1/index.html

Participating hosts (39 -> 38)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_114432v1:

### IGT changes ###

#### Warnings ####

  * igt@gem_exec_fence@basic-busy@vecs0:
    - fi-kbl-x1275:       [DMESG-WARN][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12787/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vecs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114432v1/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vecs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_114432v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_fence@basic-busy@vcs0:
    - fi-kbl-x1275:       [ABORT][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12787/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114432v1/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vcs0.html

  


Build changes
-------------

  * Linux: CI_DRM_12787 -> Patchwork_114432v1

  CI-20190529: 20190529
  CI_DRM_12787: 70da1d04c2abaaaef514174168a7e5595dbae6f3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7173: deab4e0bdf5a9366b67d0a44f478f3da3c9a943b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114432v1: 70da1d04c2abaaaef514174168a7e5595dbae6f3 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

50d9bb55694e drm/i915: Use correct huge page manager for MTL
236427dd6e66 drm/i915: Migrate platform-dependent mock hugepage selftests to live

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114432v1/index.html

--===============8632471972679913985==
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
<tr><td><b>Series:</b></td><td>series starting with [v5,1/2] drm/i915: Migrate platform-dependent mock hugepage selftests to live</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114432/">https://patchwork.freedesktop.org/series/114432/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114432v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114432v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12787 -&gt; Patchwork_114432v1</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_114432v1 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_114432v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114432v1/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_114432v1:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@gem_exec_fence@basic-busy@vecs0:<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12787/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114432v1/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vecs0.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114432v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_fence@basic-busy@vcs0:<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12787/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vcs0.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114432v1/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@vcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12787 -&gt; Patchwork_114432v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12787: 70da1d04c2abaaaef514174168a7e5595dbae6f3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7173: deab4e0bdf5a9366b67d0a44f478f3da3c9a943b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114432v1: 70da1d04c2abaaaef514174168a7e5595dbae6f3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>50d9bb55694e drm/i915: Use correct huge page manager for MTL<br />
236427dd6e66 drm/i915: Migrate platform-dependent mock hugepage selftests to live</p>

</body>
</html>

--===============8632471972679913985==--
