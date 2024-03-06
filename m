Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91BD78740BC
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 20:47:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 499DA1134D0;
	Wed,  6 Mar 2024 19:47:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F5091134D0;
 Wed,  6 Mar 2024 19:47:37 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1824489682578939117=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Disable_automatic_load_CCS_?=
 =?utf-8?q?load_balancing_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 06 Mar 2024 19:47:37 -0000
Message-ID: <170975445719.562292.10161867891057610681@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240306012247.246003-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240306012247.246003-1-andi.shyti@linux.intel.com>
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

--===============1824489682578939117==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Disable automatic load CCS load balancing (rev6)
URL   : https://patchwork.freedesktop.org/series/129951/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14398 -> Patchwork_129951v6
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_129951v6 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_129951v6, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/index.html

Participating hosts (41 -> 40)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129951v6:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hangcheck:
    - bat-atsm-1:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14398/bat-atsm-1/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-atsm-1/igt@i915_selftest@live@hangcheck.html
    - bat-dg2-9:          [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14398/bat-dg2-9/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-dg2-9/igt@i915_selftest@live@hangcheck.html
    - bat-dg2-8:          [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14398/bat-dg2-8/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-dg2-8/igt@i915_selftest@live@hangcheck.html
    - bat-dg2-14:         NOTRUN -> [DMESG-FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-dg2-14/igt@i915_selftest@live@hangcheck.html

  
Known issues
------------

  Here are the changes found in Patchwork_129951v6 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-arls-3:         [PASS][8] -> [FAIL][9] ([i915#10234])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14398/bat-arls-3/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-arls-3/boot.html

  
#### Possible fixes ####

  * boot:
    - fi-cfl-8109u:       [FAIL][10] ([i915#8293]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14398/fi-cfl-8109u/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/fi-cfl-8109u/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][12] ([i915#2190])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][13] ([i915#4613]) +3 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap@basic:
    - bat-arls-2:         NOTRUN -> [SKIP][14] ([i915#4083])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-arls-2/igt@gem_mmap@basic.html

  * igt@gem_mmap_gtt@basic:
    - bat-arls-2:         NOTRUN -> [SKIP][15] ([i915#10196] / [i915#4077]) +2 other tests skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-arls-2/igt@gem_mmap_gtt@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-arls-2:         NOTRUN -> [SKIP][16] ([i915#10197] / [i915#10211] / [i915#4079])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-arls-2/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-arls-2:         NOTRUN -> [SKIP][17] ([i915#10206] / [i915#4079])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-arls-2/igt@gem_tiled_pread_basic.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-arls-2:         NOTRUN -> [SKIP][18] ([i915#10200]) +9 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-arls-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_pm_backlight@basic-brightness:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][19] +11 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/fi-cfl-8109u/igt@kms_pm_backlight@basic-brightness.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@engines@contexts:
    - bat-arls-2:         [ABORT][20] -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14398/bat-arls-2/igt@gem_exec_parallel@engines@contexts.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-arls-2/igt@gem_exec_parallel@engines@contexts.html

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-14:         [FAIL][22] ([i915#10378]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14398/bat-dg2-14/igt@gem_lmem_swapping@basic@lmem0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-dg2-14/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@i915_selftest@live@gt_pm:
    - bat-dg2-14:         [ABORT][24] ([i915#10366]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14398/bat-dg2-14/igt@i915_selftest@live@gt_pm.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-dg2-14/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@gt_timelines:
    - bat-arls-1:         [INCOMPLETE][26] -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14398/bat-arls-1/igt@i915_selftest@live@gt_timelines.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-arls-1/igt@i915_selftest@live@gt_timelines.html

  
  [i915#10196]: https://gitlab.freedesktop.org/drm/intel/issues/10196
  [i915#10197]: https://gitlab.freedesktop.org/drm/intel/issues/10197
  [i915#10200]: https://gitlab.freedesktop.org/drm/intel/issues/10200
  [i915#10206]: https://gitlab.freedesktop.org/drm/intel/issues/10206
  [i915#10211]: https://gitlab.freedesktop.org/drm/intel/issues/10211
  [i915#10234]: https://gitlab.freedesktop.org/drm/intel/issues/10234
  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293


Build changes
-------------

  * Linux: CI_DRM_14398 -> Patchwork_129951v6

  CI-20190529: 20190529
  CI_DRM_14398: e96742a33719079709b8e180448b491622e6a427 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7749: 2fd91b8c3cf9aa2b0bb78537a6b5e2bc3de50e0e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129951v6: e96742a33719079709b8e180448b491622e6a427 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

00a9e476b832 drm/i915/gt: Enable only one CCS for compute workload
00970ed7fa1a drm/i915/gt: Refactor uabi engine class/instance list creation
69f5fb890319 drm/i915/gt: Disable HW load balancing for CCS

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/index.html

--===============1824489682578939117==
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
<tr><td><b>Series:</b></td><td>Disable automatic load CCS load balancing (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129951/">https://patchwork.freedesktop.org/series/129951/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14398 -&gt; Patchwork_129951v6</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_129951v6 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_129951v6, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/index.html</p>
<h2>Participating hosts (41 -&gt; 40)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_129951v6:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14398/bat-atsm-1/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-atsm-1/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14398/bat-dg2-9/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-dg2-9/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14398/bat-dg2-8/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-dg2-8/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></li>
<li>bat-dg2-14:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-dg2-14/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129951v6 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-arls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14398/bat-arls-3/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-arls-3/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10234">i915#10234</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14398/fi-cfl-8109u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/fi-cfl-8109u/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-arls-2/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-arls-2/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10196">i915#10196</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-arls-2/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10197">i915#10197</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/10211">i915#10211</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-arls-2/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10206">i915#10206</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-arls-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10200">i915#10200</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/fi-cfl-8109u/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> +11 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14398/bat-arls-2/igt@gem_exec_parallel@engines@contexts.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-arls-2/igt@gem_exec_parallel@engines@contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14398/bat-dg2-14/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-dg2-14/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14398/bat-dg2-14/igt@i915_selftest@live@gt_pm.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-dg2-14/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14398/bat-arls-1/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129951v6/bat-arls-1/igt@i915_selftest@live@gt_timelines.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14398 -&gt; Patchwork_129951v6</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14398: e96742a33719079709b8e180448b491622e6a427 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7749: 2fd91b8c3cf9aa2b0bb78537a6b5e2bc3de50e0e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129951v6: e96742a33719079709b8e180448b491622e6a427 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>00a9e476b832 drm/i915/gt: Enable only one CCS for compute workload<br />
00970ed7fa1a drm/i915/gt: Refactor uabi engine class/instance list creation<br />
69f5fb890319 drm/i915/gt: Disable HW load balancing for CCS</p>

</body>
</html>

--===============1824489682578939117==--
