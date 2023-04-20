Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A71716E92D8
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 13:33:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E82B10E20B;
	Thu, 20 Apr 2023 11:33:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3C10D10E0B6;
 Thu, 20 Apr 2023 11:33:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 346A6AADE8;
 Thu, 20 Apr 2023 11:33:43 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1618138200188330252=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Thu, 20 Apr 2023 11:33:43 -0000
Message-ID: <168199042318.777.1122901171786388250@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230420102349.15302-1-nirmoy.das@intel.com>
In-Reply-To: <20230420102349.15302-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Set_has=5Fllc=3D0?=
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

--===============1618138200188330252==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: Set has_llc=0
URL   : https://patchwork.freedesktop.org/series/116747/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13033 -> Patchwork_116747v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/index.html

Participating hosts (37 -> 36)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_116747v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_mocs:
    - {bat-mtlp-8}:       [ABORT][1] ([i915#8369]) -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13033/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@requests:
    - {bat-mtlp-8}:       NOTRUN -> [ABORT][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/bat-mtlp-8/igt@i915_selftest@live@requests.html

  
Known issues
------------

  Here are the changes found in Patchwork_116747v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [DMESG-FAIL][4] ([i915#5334]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13033/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_pm:
    - {bat-mtlp-8}:       [DMESG-FAIL][6] ([i915#8370]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13033/bat-mtlp-8/igt@i915_selftest@live@gt_pm.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/bat-mtlp-8/igt@i915_selftest@live@gt_pm.html

  
#### Warnings ####

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         [DMESG-FAIL][8] ([i915#6367] / [i915#6997]) -> [DMESG-FAIL][9] ([i915#6367])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13033/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/bat-rpls-1/igt@i915_selftest@live@slpc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#8369]: https://gitlab.freedesktop.org/drm/intel/issues/8369
  [i915#8370]: https://gitlab.freedesktop.org/drm/intel/issues/8370
  [i915#8379]: https://gitlab.freedesktop.org/drm/intel/issues/8379


Build changes
-------------

  * Linux: CI_DRM_13033 -> Patchwork_116747v1

  CI-20190529: 20190529
  CI_DRM_13033: 9e075fd5e9f743c09bf3c220ffda0e32d868667b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7261: 364d0b3291cba6e99deda07499c876bb2b6c1c1d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116747v1: 9e075fd5e9f743c09bf3c220ffda0e32d868667b @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

728a1c7d3f19 drm/i915/mtl: Set has_llc=0

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/index.html

--===============1618138200188330252==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: Set has_llc=0</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116747/">https://patchwork.freedesktop.org/series/116747/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13033 -&gt; Patchwork_116747v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_116747v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13033/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8369">i915#8369</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-mtlp-8}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116747v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13033/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13033/bat-mtlp-8/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8370">i915#8370</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/bat-mtlp-8/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@slpc:<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13033/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6997">i915#6997</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13033 -&gt; Patchwork_116747v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13033: 9e075fd5e9f743c09bf3c220ffda0e32d868667b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7261: 364d0b3291cba6e99deda07499c876bb2b6c1c1d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116747v1: 9e075fd5e9f743c09bf3c220ffda0e32d868667b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>728a1c7d3f19 drm/i915/mtl: Set has_llc=0</p>

</body>
</html>

--===============1618138200188330252==--
