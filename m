Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BCFD6816CA
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 17:47:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A809C10E064;
	Mon, 30 Jan 2023 16:46:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6BCAB10E064;
 Mon, 30 Jan 2023 16:46:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 63A9BAADE8;
 Mon, 30 Jan 2023 16:46:58 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8967842760587070491=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Mon, 30 Jan 2023 16:46:58 -0000
Message-ID: <167509721836.3667.11590696937765550391@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230130120636.63765-1-matthew.auld@intel.com>
In-Reply-To: <20230130120636.63765-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/6=5D_drm/i915/ttm=3A_fix_sparse_war?=
 =?utf-8?q?ning?=
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

--===============8967842760587070491==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/6] drm/i915/ttm: fix sparse warning
URL   : https://patchwork.freedesktop.org/series/113484/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12666 -> Patchwork_113484v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113484v1/index.html

Participating hosts (25 -> 24)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_113484v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [DMESG-FAIL][1] ([i915#5334]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12666/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113484v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@slpc:
    - {bat-adlp-6}:       [DMESG-FAIL][3] ([i915#6367] / [i915#7913]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12666/bat-adlp-6/igt@i915_selftest@live@slpc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113484v1/bat-adlp-6/igt@i915_selftest@live@slpc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7981]: https://gitlab.freedesktop.org/drm/intel/issues/7981


Build changes
-------------

  * Linux: CI_DRM_12666 -> Patchwork_113484v1

  CI-20190529: 20190529
  CI_DRM_12666: 908c84b836ee39b5565561a0b352c2dc18378215 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7142: adeeb8527422eeee155ff4039aed34a922da4a7d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113484v1: 908c84b836ee39b5565561a0b352c2dc18378215 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

eb29c526bc38 drm/ttm: prevent moving of pinned BOs
6f65d4b71375 drm/ttm: stop allocating a dummy resource for pipelined gutting
4f490e93000d drm/ttm: stop allocating dummy resources during BO creation
e46562673b6e drm/ttm: clear the ttm_tt when bo->resource is NULL
a97096bdbf82 drm/i915/ttm: audit remaining bo->resource
e5538d79c03c drm/i915/ttm: fix sparse warning

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113484v1/index.html

--===============8967842760587070491==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/6] drm/i915/ttm: fix sparse warning</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113484/">https://patchwork.freedesktop.org/series/113484/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113484v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113484v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12666 -&gt; Patchwork_113484v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113484v1/index.html</p>
<h2>Participating hosts (25 -&gt; 24)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113484v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12666/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113484v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12666/bat-adlp-6/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113484v1/bat-adlp-6/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12666 -&gt; Patchwork_113484v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12666: 908c84b836ee39b5565561a0b352c2dc18378215 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7142: adeeb8527422eeee155ff4039aed34a922da4a7d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113484v1: 908c84b836ee39b5565561a0b352c2dc18378215 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>eb29c526bc38 drm/ttm: prevent moving of pinned BOs<br />
6f65d4b71375 drm/ttm: stop allocating a dummy resource for pipelined gutting<br />
4f490e93000d drm/ttm: stop allocating dummy resources during BO creation<br />
e46562673b6e drm/ttm: clear the ttm_tt when bo-&gt;resource is NULL<br />
a97096bdbf82 drm/i915/ttm: audit remaining bo-&gt;resource<br />
e5538d79c03c drm/i915/ttm: fix sparse warning</p>

</body>
</html>

--===============8967842760587070491==--
