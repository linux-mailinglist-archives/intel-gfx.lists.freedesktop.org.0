Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 141A9698515
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 20:58:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8039510E071;
	Wed, 15 Feb 2023 19:58:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7661B10E071;
 Wed, 15 Feb 2023 19:58:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6AFB1AADD6;
 Wed, 15 Feb 2023 19:58:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6263741098119909644=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Wed, 15 Feb 2023 19:58:36 -0000
Message-ID: <167649111639.30600.14467195757713518406@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230215161405.187368-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20230215161405.187368-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_a_TTM_shrinker?=
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

--===============6263741098119909644==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add a TTM shrinker
URL   : https://patchwork.freedesktop.org/series/114060/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12744 -> Patchwork_114060v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/index.html

Participating hosts (40 -> 39)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_114060v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_suspend@basic-s2idle-without-i915:
    - {bat-rpls-1}:       [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html

  
Known issues
------------

  Here are the changes found in Patchwork_114060v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-skl-guc:         [DMESG-WARN][3] ([i915#8073]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/fi-skl-guc/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/fi-skl-guc/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@mman:
    - {bat-rpls-1}:       [TIMEOUT][5] ([i915#6794]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/bat-rpls-1/igt@i915_selftest@live@mman.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/bat-rpls-1/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@reset:
    - {bat-rpls-2}:       [ABORT][7] ([i915#4983]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/bat-rpls-2/igt@i915_selftest@live@reset.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/bat-rpls-2/igt@i915_selftest@live@reset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7996]: https://gitlab.freedesktop.org/drm/intel/issues/7996
  [i915#8073]: https://gitlab.freedesktop.org/drm/intel/issues/8073


Build changes
-------------

  * Linux: CI_DRM_12744 -> Patchwork_114060v1

  CI-20190529: 20190529
  CI_DRM_12744: 2e4cac06e4de01a35626de676b9eeb474ae7ab5d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7160: 45da871dd2684227e93a2fc002b87dfc58bd5fd9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114060v1: 2e4cac06e4de01a35626de676b9eeb474ae7ab5d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

973a53557c1e drm/i915, drm/ttm: Use the TTM shrinker rather than the external shmem pool
d74baa34a517 drm/ttm: Use fault-injection to test error paths
7cb4a7ddbf61 drm/ttm: Provide helpers for shrinking
b95280e8b385 drm/ttm: Make the call to ttm_tt_populate() interruptible when faulting
2df6e6537d76 mm: Add interfaces to back up and recover folio contents using swap
a8d1b7591b5a drm/ttm: Add a simple api to set / clear purgeable ttm_tt content
7ded50ee63b5 drm/ttm: Remove pinned bos from shrinkable accounting
9d6623a5d104 drm/ttm: Introduce shrink throttling.
0c8485e9f550 drm/ttm: Add a shrinker and shrinker accounting
275c2e2830c2 drm/ttm: Reduce the number of used allocation orders for TTM pages
ca10fb200301 drm/ttm: Don't use watermark accounting on shrinkable pools
655187c03a8d drm/ttm: Unexport ttm_global_swapout()
9f946fa42819 drm/ttm, drm/vmwgfx: Update the TTM swapout interface
20a099fea0fd drm/ttm: Use the BIT macro for the TTM_TT_FLAGs
8ef0e28f28fc drm/ttm/pool: Fix ttm_pool_alloc error path
03dd353ce759 drm/ttm: Fix a NULL pointer dereference

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/index.html

--===============6263741098119909644==
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
<tr><td><b>Series:</b></td><td>Add a TTM shrinker</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114060/">https://patchwork.freedesktop.org/series/114060/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12744 -&gt; Patchwork_114060v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/index.html</p>
<h2>Participating hosts (40 -&gt; 39)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_114060v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_suspend@basic-s2idle-without-i915:<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114060v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8073">i915#8073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/bat-rpls-1/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/bat-rpls-1/igt@i915_selftest@live@mman.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12744/bat-rpls-2/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114060v1/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12744 -&gt; Patchwork_114060v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12744: 2e4cac06e4de01a35626de676b9eeb474ae7ab5d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7160: 45da871dd2684227e93a2fc002b87dfc58bd5fd9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114060v1: 2e4cac06e4de01a35626de676b9eeb474ae7ab5d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>973a53557c1e drm/i915, drm/ttm: Use the TTM shrinker rather than the external shmem pool<br />
d74baa34a517 drm/ttm: Use fault-injection to test error paths<br />
7cb4a7ddbf61 drm/ttm: Provide helpers for shrinking<br />
b95280e8b385 drm/ttm: Make the call to ttm_tt_populate() interruptible when faulting<br />
2df6e6537d76 mm: Add interfaces to back up and recover folio contents using swap<br />
a8d1b7591b5a drm/ttm: Add a simple api to set / clear purgeable ttm_tt content<br />
7ded50ee63b5 drm/ttm: Remove pinned bos from shrinkable accounting<br />
9d6623a5d104 drm/ttm: Introduce shrink throttling.<br />
0c8485e9f550 drm/ttm: Add a shrinker and shrinker accounting<br />
275c2e2830c2 drm/ttm: Reduce the number of used allocation orders for TTM pages<br />
ca10fb200301 drm/ttm: Don't use watermark accounting on shrinkable pools<br />
655187c03a8d drm/ttm: Unexport ttm_global_swapout()<br />
9f946fa42819 drm/ttm, drm/vmwgfx: Update the TTM swapout interface<br />
20a099fea0fd drm/ttm: Use the BIT macro for the TTM_TT_FLAGs<br />
8ef0e28f28fc drm/ttm/pool: Fix ttm_pool_alloc error path<br />
03dd353ce759 drm/ttm: Fix a NULL pointer dereference</p>

</body>
</html>

--===============6263741098119909644==--
