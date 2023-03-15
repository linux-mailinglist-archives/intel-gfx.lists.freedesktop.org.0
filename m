Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9A36BB3D0
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Mar 2023 14:03:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4CB610E047;
	Wed, 15 Mar 2023 13:03:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E1F2510E002;
 Wed, 15 Mar 2023 13:03:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D8713A0003;
 Wed, 15 Mar 2023 13:03:18 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2624484655660561261=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Wed, 15 Mar 2023 13:03:18 -0000
Message-ID: <167888539884.19840.5131036847782682110@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230315105446.5858-1-nirmoy.das@intel.com>
In-Reply-To: <20230315105446.5858-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Clarify_seemingly_unaccounted_obj_refcount_inc?=
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

--===============2624484655660561261==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Clarify seemingly unaccounted obj refcount inc
URL   : https://patchwork.freedesktop.org/series/115182/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12864 -> Patchwork_115182v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115182v1/index.html

Participating hosts (38 -> 36)
------------------------------

  Missing    (2): fi-kbl-soraka fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_115182v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - bat-rpls-1:         NOTRUN -> [ABORT][1] ([i915#6687] / [i915#7978])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115182v1/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@migrate:
    - bat-adlp-9:         [PASS][2] -> [DMESG-FAIL][3] ([i915#7699])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12864/bat-adlp-9/igt@i915_selftest@live@migrate.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115182v1/bat-adlp-9/igt@i915_selftest@live@migrate.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [ABORT][4] ([i915#4983]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12864/bat-rpls-1/igt@i915_selftest@live@reset.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115182v1/bat-rpls-1/igt@i915_selftest@live@reset.html

  
#### Warnings ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [ABORT][6] ([i915#7911]) -> [INCOMPLETE][7] ([i915#6972])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12864/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115182v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6972]: https://gitlab.freedesktop.org/drm/intel/issues/6972
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978


Build changes
-------------

  * Linux: CI_DRM_12864 -> Patchwork_115182v1

  CI-20190529: 20190529
  CI_DRM_12864: efb4d3263a1932187dd525628e8b35d327f17a6f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7196: 9b8c5dbe8cd82163ee198c43b81222d2b9b75fd4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_115182v1: efb4d3263a1932187dd525628e8b35d327f17a6f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

e9e2aac14d20 drm/i915/gem: Clarify seemingly unaccounted obj refcount inc

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115182v1/index.html

--===============2624484655660561261==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: Clarify seemingly unaccounted obj refcount inc</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/115182/">https://patchwork.freedesktop.org/series/115182/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115182v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115182v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12864 -&gt; Patchwork_115182v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115182v1/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Missing    (2): fi-kbl-soraka fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_115182v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115182v1/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12864/bat-adlp-9/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115182v1/bat-adlp-9/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@reset:<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12864/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115182v1/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12864/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115182v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6972">i915#6972</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12864 -&gt; Patchwork_115182v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12864: efb4d3263a1932187dd525628e8b35d327f17a6f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7196: 9b8c5dbe8cd82163ee198c43b81222d2b9b75fd4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_115182v1: efb4d3263a1932187dd525628e8b35d327f17a6f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>e9e2aac14d20 drm/i915/gem: Clarify seemingly unaccounted obj refcount inc</p>

</body>
</html>

--===============2624484655660561261==--
