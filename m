Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 072CF41367F
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 17:49:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62C746EA41;
	Tue, 21 Sep 2021 15:49:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EA4346EA3E;
 Tue, 21 Sep 2021 15:49:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E2723AA0ED;
 Tue, 21 Sep 2021 15:49:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4438736896661208274=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 15:49:44 -0000
Message-ID: <163223938490.15887.8565044050586044245@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210921134202.3803151-1-matthew.auld@intel.com>
In-Reply-To: <20210921134202.3803151-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/request=3A_fix_early_tracepoints_=28rev2=29?=
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

--===============4438736896661208274==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/request: fix early tracepoints (rev2)
URL   : https://patchwork.freedesktop.org/series/94317/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10619 -> Patchwork_21112
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21112:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@reload:
    - {fi-ehl-2}:         [INCOMPLETE][1] ([i915#4136]) -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-ehl-2/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-ehl-2/igt@i915_module_load@reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_21112 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-compute:
    - fi-cfl-guc:         NOTRUN -> [SKIP][3] ([fdo#109271]) +17 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-cfl-guc/igt@amdgpu/amd_basic@cs-compute.html

  * igt@amdgpu/amd_basic@query-info:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][4] ([fdo#109271]) +17 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html

  * igt@amdgpu/amd_cs_nop@fork-compute0:
    - fi-ivb-3770:        NOTRUN -> [SKIP][5] ([fdo#109271]) +18 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-ivb-3770/igt@amdgpu/amd_cs_nop@fork-compute0.html

  * igt@amdgpu/amd_cs_nop@sync-compute0:
    - fi-kbl-r:           NOTRUN -> [SKIP][6] ([fdo#109271]) +17 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-kbl-r/igt@amdgpu/amd_cs_nop@sync-compute0.html

  * igt@amdgpu/amd_cs_nop@sync-fork-gfx0:
    - fi-skl-6600u:       NOTRUN -> [SKIP][7] ([fdo#109271]) +17 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-skl-6600u/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html
    - fi-cfl-8700k:       NOTRUN -> [SKIP][8] ([fdo#109271]) +17 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-cfl-8700k/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][9] ([fdo#109271]) +17 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-kbl-7567u/igt@amdgpu/amd_cs_nop@sync-gfx0.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-soraka:      [PASS][10] -> [INCOMPLETE][11] ([i915#155])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_module_load@reload:
    - fi-bxt-dsi:         [PASS][12] -> [INCOMPLETE][13] ([i915#4130] / [i915#4136] / [i915#4179])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-bxt-dsi/igt@i915_module_load@reload.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-bxt-dsi/igt@i915_module_load@reload.html
    - fi-cfl-8109u:       NOTRUN -> [INCOMPLETE][14] ([i915#4136])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-cfl-8109u/igt@i915_module_load@reload.html

  * igt@runner@aborted:
    - fi-kbl-8809g:       NOTRUN -> [FAIL][15] ([i915#2722] / [i915#3363])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-kbl-8809g/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][16] ([i915#2426] / [i915#3363])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-bxt-dsi/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-cfl-guc:         [INCOMPLETE][17] ([i915#4130] / [i915#4136]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-8700k:       [INCOMPLETE][19] ([i915#4130] / [i915#4136]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-8109u:       [INCOMPLETE][21] ([i915#4130]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-7567u:       [INCOMPLETE][23] ([i915#4130]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-kbl-r:           [INCOMPLETE][25] ([i915#4130] / [i915#4136]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-kbl-r/igt@i915_module_load@reload.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-kbl-r/igt@i915_module_load@reload.html
    - fi-skl-6600u:       [INCOMPLETE][27] ([i915#4130] / [i915#4136]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-skl-6600u/igt@i915_module_load@reload.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-skl-6600u/igt@i915_module_load@reload.html
    - fi-ivb-3770:        [INCOMPLETE][29] ([i915#4179]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-ivb-3770/igt@i915_module_load@reload.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-ivb-3770/igt@i915_module_load@reload.html
    - fi-bsw-kefka:       [INCOMPLETE][31] ([i915#4136]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-bsw-kefka/igt@i915_module_load@reload.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-bsw-kefka/igt@i915_module_load@reload.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - fi-kbl-8809g:       [INCOMPLETE][33] ([i915#4130] / [i915#4136]) -> [INCOMPLETE][34] ([i915#4136])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-kbl-8809g/igt@i915_module_load@reload.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-kbl-8809g/igt@i915_module_load@reload.html
    - fi-icl-y:           [INCOMPLETE][35] ([i915#4136]) -> [INCOMPLETE][36] ([i915#4130] / [i915#4136])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-icl-y/igt@i915_module_load@reload.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-icl-y/igt@i915_module_load@reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#4130]: https://gitlab.freedesktop.org/drm/intel/issues/4130
  [i915#4136]: https://gitlab.freedesktop.org/drm/intel/issues/4136
  [i915#4179]: https://gitlab.freedesktop.org/drm/intel/issues/4179


Participating hosts (35 -> 30)
------------------------------

  Missing    (5): bat-dg1-6 fi-tgl-1115g4 fi-bsw-cyan bat-jsl-1 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10619 -> Patchwork_21112

  CI-20190529: 20190529
  CI_DRM_10619: d8d6f841d62dab4d161cc1735c5646cb989d0315 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6213: e9ae59cb8b4f1e7bc61a9261f33fc7e52ae06c65 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21112: dd44e1b571a69f7adf30ec762ea865e398341fe7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

dd44e1b571a6 drm/i915/request: fix early tracepoints

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/index.html

--===============4438736896661208274==
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
<tr><td><b>Series:</b></td><td>drm/i915/request: fix early tracepoints (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94317/">https://patchwork.freedesktop.org/series/94317/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10619 -&gt; Patchwork_21112</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21112:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-ehl-2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-ehl-2/igt@i915_module_load@reload.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21112 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-compute:</p>
<ul>
<li>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-cfl-guc/igt@amdgpu/amd_basic@cs-compute.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-compute0:</p>
<ul>
<li>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-ivb-3770/igt@amdgpu/amd_cs_nop@fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-compute0:</p>
<ul>
<li>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-kbl-r/igt@amdgpu/amd_cs_nop@sync-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-gfx0:</p>
<ul>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-skl-6600u/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-cfl-8700k/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-kbl-7567u/igt@amdgpu/amd_cs_nop@sync-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-bxt-dsi/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-bxt-dsi/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4179">i915#4179</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-cfl-8109u/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-kbl-r/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-kbl-r/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-skl-6600u/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-skl-6600u/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-ivb-3770/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4179">i915#4179</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-ivb-3770/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-bsw-kefka/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-bsw-kefka/igt@i915_module_load@reload.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-kbl-8809g/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-kbl-8809g/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-icl-y/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21112/fi-icl-y/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (35 -&gt; 30)</h2>
<p>Missing    (5): bat-dg1-6 fi-tgl-1115g4 fi-bsw-cyan bat-jsl-1 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10619 -&gt; Patchwork_21112</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10619: d8d6f841d62dab4d161cc1735c5646cb989d0315 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6213: e9ae59cb8b4f1e7bc61a9261f33fc7e52ae06c65 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21112: dd44e1b571a69f7adf30ec762ea865e398341fe7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>dd44e1b571a6 drm/i915/request: fix early tracepoints</p>

</body>
</html>

--===============4438736896661208274==--
