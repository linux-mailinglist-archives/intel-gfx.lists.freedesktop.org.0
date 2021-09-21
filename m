Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A992413413
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 15:30:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BF7189BF3;
	Tue, 21 Sep 2021 13:30:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0DEDE89ABE;
 Tue, 21 Sep 2021 13:30:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EF787AA915;
 Tue, 21 Sep 2021 13:30:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7865432829727606168=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 13:30:36 -0000
Message-ID: <163223103694.15889.16548979895624502398@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210921110121.3783395-1-matthew.auld@intel.com>
In-Reply-To: <20210921110121.3783395-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv4=2C01/14=5D_drm/ttm=3A_stop_calling_tt?=
 =?utf-8?q?=5Fswapin_in_vm=5Faccess?=
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

--===============7865432829727606168==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v4,01/14] drm/ttm: stop calling tt_swapin in vm_access
URL   : https://patchwork.freedesktop.org/series/94886/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10619 -> Patchwork_21107
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21107:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@reload:
    - {fi-ehl-2}:         [INCOMPLETE][1] ([i915#4136]) -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-ehl-2/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-ehl-2/igt@i915_module_load@reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_21107 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-sdma:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][3] ([fdo#109271]) +17 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-cfl-8109u/igt@amdgpu/amd_basic@cs-sdma.html

  * igt@amdgpu/amd_cs_nop@fork-compute0:
    - fi-ivb-3770:        NOTRUN -> [SKIP][4] ([fdo#109271]) +18 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-ivb-3770/igt@amdgpu/amd_cs_nop@fork-compute0.html

  * igt@amdgpu/amd_cs_nop@sync-compute0:
    - fi-kbl-r:           NOTRUN -> [SKIP][5] ([fdo#109271]) +17 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-kbl-r/igt@amdgpu/amd_cs_nop@sync-compute0.html

  * igt@amdgpu/amd_cs_nop@sync-fork-gfx0:
    - fi-cfl-8700k:       NOTRUN -> [SKIP][6] ([fdo#109271]) +17 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-cfl-8700k/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bxt-dsi:         [PASS][7] -> [INCOMPLETE][8] ([i915#4130])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-bxt-dsi/igt@core_hotunplug@unbind-rebind.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-bxt-dsi/igt@core_hotunplug@unbind-rebind.html
    - fi-icl-u2:          [PASS][9] -> [INCOMPLETE][10] ([i915#4130] / [i915#4136])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-7500u:       [PASS][11] -> [INCOMPLETE][12] ([i915#4130] / [i915#4136])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-rkl-guc:         [PASS][13] -> [INCOMPLETE][14] ([i915#4130] / [i915#4179])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-rkl-guc/igt@i915_module_load@reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-rkl-guc/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][15] -> [INCOMPLETE][16] ([i915#2940])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-y:           NOTRUN -> [INCOMPLETE][17] ([i915#3057] / [i915#3965])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-icl-y/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][18] ([i915#3690])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][19] ([fdo#109271] / [i915#1436] / [i915#2722] / [i915#3428])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-bsw-nick/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][20] ([i915#1602] / [i915#2029])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-bdw-5557u/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][21] ([i915#2426] / [i915#3363])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-kbl-soraka/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][22] ([i915#2082] / [i915#2426] / [i915#3363])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-cml-u2/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][23] ([i915#2426] / [i915#4136])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-rkl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-cfl-8700k:       [INCOMPLETE][24] ([i915#4130] / [i915#4136]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-8109u:       [INCOMPLETE][26] ([i915#4130]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-kbl-r:           [INCOMPLETE][28] ([i915#4130] / [i915#4136]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-kbl-r/igt@i915_module_load@reload.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-kbl-r/igt@i915_module_load@reload.html
    - fi-ivb-3770:        [INCOMPLETE][30] ([i915#4179]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-ivb-3770/igt@i915_module_load@reload.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-ivb-3770/igt@i915_module_load@reload.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - fi-cml-u2:          [INCOMPLETE][32] ([i915#4136]) -> [INCOMPLETE][33] ([i915#4130] / [i915#4136])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-cml-u2/igt@i915_module_load@reload.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-cml-u2/igt@i915_module_load@reload.html
    - fi-kbl-soraka:      [INCOMPLETE][34] ([i915#4136]) -> [INCOMPLETE][35] ([i915#4130] / [i915#4136])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-kbl-soraka/igt@i915_module_load@reload.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-kbl-soraka/igt@i915_module_load@reload.html
    - fi-bsw-kefka:       [INCOMPLETE][36] ([i915#4136]) -> [INCOMPLETE][37] ([i915#4136] / [i915#4179])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-bsw-kefka/igt@i915_module_load@reload.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-bsw-kefka/igt@i915_module_load@reload.html
    - fi-glk-dsi:         [INCOMPLETE][38] ([i915#4136]) -> [INCOMPLETE][39] ([i915#4130] / [i915#4136])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-glk-dsi/igt@i915_module_load@reload.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-glk-dsi/igt@i915_module_load@reload.html
    - fi-icl-y:           [INCOMPLETE][40] ([i915#4136]) -> [TIMEOUT][41] ([i915#4136])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-icl-y/igt@i915_module_load@reload.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-icl-y/igt@i915_module_load@reload.html

  * igt@runner@aborted:
    - fi-icl-y:           [FAIL][42] ([i915#4136]) -> [FAIL][43] ([i915#4006])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-icl-y/igt@runner@aborted.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-icl-y/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3057]: https://gitlab.freedesktop.org/drm/intel/issues/3057
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#3965]: https://gitlab.freedesktop.org/drm/intel/issues/3965
  [i915#4006]: https://gitlab.freedesktop.org/drm/intel/issues/4006
  [i915#4130]: https://gitlab.freedesktop.org/drm/intel/issues/4130
  [i915#4136]: https://gitlab.freedesktop.org/drm/intel/issues/4136
  [i915#4179]: https://gitlab.freedesktop.org/drm/intel/issues/4179


Participating hosts (35 -> 30)
------------------------------

  Missing    (5): bat-dg1-6 fi-tgl-1115g4 fi-bsw-cyan bat-jsl-1 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10619 -> Patchwork_21107

  CI-20190529: 20190529
  CI_DRM_10619: d8d6f841d62dab4d161cc1735c5646cb989d0315 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6213: e9ae59cb8b4f1e7bc61a9261f33fc7e52ae06c65 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21107: 7a0db0cd567e0bd13cf15f3b41434179e4636500 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7a0db0cd567e drm/i915/ttm: enable shmem tt backend
af412f040e8a drm/i915/ttm: make evicted shmem pages visible to the shrinker
23d3db1c1be2 drm/i915: try to simplify make_{un}shrinkable
f2037dde2fd1 drm/i915/ttm: use cached system pages when evicting lmem
da45813042ef drm/i915/ttm: hide shmem objects from TTM LRU
18ce4559d380 drm/i915/ttm: add tt shmem backend
c44cf6035477 drm/i915/gem: Break out some shmem backend utils
5ecfd25325c9 drm/ttm: add TTM_TT_FLAG_EXTERNAL_MAPPABLE
ecadb622740d drm/ttm: add some kernel-doc for TTM_TT_FLAG_*
0e21d098a8e9 drm/ttm: s/FLAG_SG/FLAG_EXTERNAL/
1f10d7074d1d drm/ttm: remove TTM_PAGE_FLAG_NO_RETRY
86b4e3ec2a63 drm/ttm: move ttm_tt_{add, clear}_mapping into amdgpu
6f9c4d29f1cf drm/ttm: stop setting page->index for the ttm_tt
4c8c8ce4ad51 drm/ttm: stop calling tt_swapin in vm_access

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/index.html

--===============7865432829727606168==
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
<tr><td><b>Series:</b></td><td>series starting with [v4,01/14] drm/ttm: stop calling tt_swapin in vm_access</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94886/">https://patchwork.freedesktop.org/series/94886/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10619 -&gt; Patchwork_21107</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21107:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-ehl-2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-ehl-2/igt@i915_module_load@reload.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21107 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-sdma:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-cfl-8109u/igt@amdgpu/amd_basic@cs-sdma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-compute0:</p>
<ul>
<li>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-ivb-3770/igt@amdgpu/amd_cs_nop@fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-compute0:</p>
<ul>
<li>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-kbl-r/igt@amdgpu/amd_cs_nop@sync-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-gfx0:</p>
<ul>
<li>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-cfl-8700k/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-bxt-dsi/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-bxt-dsi/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-rkl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-rkl-guc/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4179">i915#4179</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-icl-y/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3057">i915#3057</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3965">i915#3965</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
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
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-kbl-r/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-kbl-r/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-ivb-3770/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4179">i915#4179</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-ivb-3770/igt@i915_module_load@reload.html">PASS</a></p>
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
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-cml-u2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-cml-u2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-kbl-soraka/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-kbl-soraka/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-bsw-kefka/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-bsw-kefka/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4179">i915#4179</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-glk-dsi/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-glk-dsi/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-icl-y/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-icl-y/igt@i915_module_load@reload.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4006">i915#4006</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (35 -&gt; 30)</h2>
<p>Missing    (5): bat-dg1-6 fi-tgl-1115g4 fi-bsw-cyan bat-jsl-1 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10619 -&gt; Patchwork_21107</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10619: d8d6f841d62dab4d161cc1735c5646cb989d0315 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6213: e9ae59cb8b4f1e7bc61a9261f33fc7e52ae06c65 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21107: 7a0db0cd567e0bd13cf15f3b41434179e4636500 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>7a0db0cd567e drm/i915/ttm: enable shmem tt backend<br />
af412f040e8a drm/i915/ttm: make evicted shmem pages visible to the shrinker<br />
23d3db1c1be2 drm/i915: try to simplify make_{un}shrinkable<br />
f2037dde2fd1 drm/i915/ttm: use cached system pages when evicting lmem<br />
da45813042ef drm/i915/ttm: hide shmem objects from TTM LRU<br />
18ce4559d380 drm/i915/ttm: add tt shmem backend<br />
c44cf6035477 drm/i915/gem: Break out some shmem backend utils<br />
5ecfd25325c9 drm/ttm: add TTM_TT_FLAG_EXTERNAL_MAPPABLE<br />
ecadb622740d drm/ttm: add some kernel-doc for TTM_TT_FLAG_*<br />
0e21d098a8e9 drm/ttm: s/FLAG_SG/FLAG_EXTERNAL/<br />
1f10d7074d1d drm/ttm: remove TTM_PAGE_FLAG_NO_RETRY<br />
86b4e3ec2a63 drm/ttm: move ttm_tt_{add, clear}_mapping into amdgpu<br />
6f9c4d29f1cf drm/ttm: stop setting page-&gt;index for the ttm_tt<br />
4c8c8ce4ad51 drm/ttm: stop calling tt_swapin in vm_access</p>

</body>
</html>

--===============7865432829727606168==--
