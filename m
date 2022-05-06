Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE9451DD47
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 18:12:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3A4810ED20;
	Fri,  6 May 2022 16:12:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 27A4310EBDD;
 Fri,  6 May 2022 16:12:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 24EDAA0003;
 Fri,  6 May 2022 16:12:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2353399207311785271=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 06 May 2022 16:12:01 -0000
Message-ID: <165185352112.18817.5096047213712492907@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220413192607.27533-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220413192607.27533-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Eliminate_PIPECONF_RMWs_from_=2Ecolor=5Fcommit=28=29_?=
 =?utf-8?b?KHJldjQp?=
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

--===============2353399207311785271==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Eliminate PIPECONF RMWs from .color_commit() (rev4)
URL   : https://patchwork.freedesktop.org/series/102666/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11617_full -> Patchwork_102666v4_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v4/index.html

Participating hosts (11 -> 7)
------------------------------

  Missing    (4): pig-skl-6260u pig-kbl-iris shard-tglu pig-glk-j5005 

Known issues
------------

  Here are the changes found in Patchwork_102666v4_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_flush@basic-wb-pro-default:
    - shard-snb:          [PASS][1] -> [SKIP][2] ([fdo#109271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11617/shard-snb2/igt@gem_exec_flush@basic-wb-pro-default.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v4/shard-snb6/igt@gem_exec_flush@basic-wb-pro-default.html

  
#### Possible fixes ####

  * igt@gem_mmap_gtt@coherency:
    - shard-snb:          [SKIP][3] ([fdo#109271]) -> [PASS][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11617/shard-snb6/igt@gem_mmap_gtt@coherency.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v4/shard-snb4/igt@gem_mmap_gtt@coherency.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271


Build changes
-------------

  * Linux: CI_DRM_11617 -> Patchwork_102666v4
  * Piglit: piglit_4509 -> None

  CI-20190529: 20190529
  CI_DRM_11617: d96cea3d7ffb524248fcc8db433c579cf262eaea @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6468: cffa5fffe9acddf49565b4caeeb5e3355ff2ea44 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102666v4: d96cea3d7ffb524248fcc8db433c579cf262eaea @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v4/index.html

--===============2353399207311785271==
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
<tr><td><b>Series:</b></td><td>drm/i915: Eliminate PIPECONF RMWs from .color_commit() (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102666/">https://patchwork.freedesktop.org/series/102666/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11617_full -&gt; Patchwork_102666v4_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v4/index.html</p>
<h2>Participating hosts (11 -&gt; 7)</h2>
<p>Missing    (4): pig-skl-6260u pig-kbl-iris shard-tglu pig-glk-j5005 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102666v4_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_exec_flush@basic-wb-pro-default:<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11617/shard-snb2/igt@gem_exec_flush@basic-wb-pro-default.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v4/shard-snb6/igt@gem_exec_flush@basic-wb-pro-default.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_mmap_gtt@coherency:<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11617/shard-snb6/igt@gem_mmap_gtt@coherency.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v4/shard-snb4/igt@gem_mmap_gtt@coherency.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11617 -&gt; Patchwork_102666v4</li>
<li>Piglit: piglit_4509 -&gt; None</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11617: d96cea3d7ffb524248fcc8db433c579cf262eaea @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6468: cffa5fffe9acddf49565b4caeeb5e3355ff2ea44 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102666v4: d96cea3d7ffb524248fcc8db433c579cf262eaea @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============2353399207311785271==--
