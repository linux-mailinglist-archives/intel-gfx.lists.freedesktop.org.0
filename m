Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 185C84130CB
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 11:37:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77CE86E91A;
	Tue, 21 Sep 2021 09:37:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1FE646E91A;
 Tue, 21 Sep 2021 09:37:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 171A3A73C9;
 Tue, 21 Sep 2021 09:37:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4751194782000521284=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 09:37:09 -0000
Message-ID: <163221702905.15890.16457681906705353890@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210920155914.707984-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210920155914.707984-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Suspend_/_resume_backup-_and_restore_of_LMEM=2E_=28rev?=
 =?utf-8?q?7=29?=
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

--===============4751194782000521284==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Suspend / resume backup- and restore of LMEM. (rev7)
URL   : https://patchwork.freedesktop.org/series/94278/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10616 -> Patchwork_21105
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/index.html

New tests
---------

  New tests have been introduced between CI_DRM_10616 and Patchwork_21105:

### New IGT tests (1) ###

  * igt@core_hotunplug@unbind-rebind:
    - Statuses : 5 incomplete(s) 22 pass(s) 1 warn(s)
    - Exec time: [0.0, 5.84] s

  

Known issues
------------

  Here are the changes found in Patchwork_21105 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][1] ([fdo#109271]) +18 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@amdgpu/amd_cs_nop@sync-fork-gfx0:
    - fi-skl-6600u:       NOTRUN -> [SKIP][2] ([fdo#109271]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-skl-6600u/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][3] ([fdo#109271]) +17 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-kbl-7567u/igt@amdgpu/amd_cs_nop@sync-gfx0.html

  * igt@core_hotunplug@unbind-rebind (NEW):
    - fi-rkl-guc:         [PASS][4] -> [INCOMPLETE][5] ([i915#4130] / [i915#4136])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
    - fi-tgl-1115g4:      NOTRUN -> [INCOMPLETE][6] ([i915#4130])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-7500u:       [PASS][7] -> [INCOMPLETE][8] ([i915#4130] / [i915#4136])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][9] ([i915#1888])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][10] ([i915#2190])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html

  * igt@i915_module_load@reload:
    - fi-snb-2520m:       [PASS][11] -> [INCOMPLETE][12] ([i915#4179])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-snb-2520m/igt@i915_module_load@reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-snb-2520m/igt@i915_module_load@reload.html
    - fi-bxt-dsi:         NOTRUN -> [INCOMPLETE][13] ([i915#4130] / [i915#4136] / [i915#4179])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-bxt-dsi/igt@i915_module_load@reload.html
    - fi-ivb-3770:        [PASS][14] -> [INCOMPLETE][15] ([i915#4179])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-ivb-3770/igt@i915_module_load@reload.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-ivb-3770/igt@i915_module_load@reload.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][16] ([i915#1155])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        NOTRUN -> [INCOMPLETE][17] ([i915#2940])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][18] ([fdo#111827]) +8 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][19] ([i915#4103]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][20] ([fdo#109285])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][21] ([i915#1072]) +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][22] ([i915#3301])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-snb-2520m:       NOTRUN -> [FAIL][23] ([i915#2426])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-snb-2520m/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][24] ([i915#1602] / [i915#2029])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-bdw-5557u/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][25] ([i915#2426])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-ivb-3770/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][26] ([i915#2426] / [i915#3363])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-bxt-dsi/igt@runner@aborted.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][27] ([i915#1602] / [i915#2722])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-tgl-1115g4/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][28] ([i915#4136])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-icl-y/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind (NEW):
    - fi-bxt-dsi:         [INCOMPLETE][29] ([i915#4130]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-bxt-dsi/igt@core_hotunplug@unbind-rebind.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-bxt-dsi/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-skl-6600u:       [INCOMPLETE][31] ([i915#4130]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-skl-6600u/igt@i915_module_load@reload.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-skl-6600u/igt@i915_module_load@reload.html
    - fi-snb-2600:        [INCOMPLETE][33] ([i915#4179]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-snb-2600/igt@i915_module_load@reload.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-snb-2600/igt@i915_module_load@reload.html
    - fi-bsw-nick:        [INCOMPLETE][35] ([i915#4179]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-bsw-nick/igt@i915_module_load@reload.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-bsw-nick/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-7567u:       [DMESG-WARN][37] -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - fi-cml-u2:          [INCOMPLETE][39] ([i915#4130]) -> [INCOMPLETE][40] ([i915#4130] / [i915#4136])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-cml-u2/igt@i915_module_load@reload.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-cml-u2/igt@i915_module_load@reload.html
    - fi-kbl-soraka:      [INCOMPLETE][41] ([i915#4130]) -> [INCOMPLETE][42] ([i915#4136])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-kbl-soraka/igt@i915_module_load@reload.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-kbl-soraka/igt@i915_module_load@reload.html
    - fi-bsw-kefka:       [INCOMPLETE][43] ([i915#4179]) -> [INCOMPLETE][44] ([i915#4136] / [i915#4179])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-bsw-kefka/igt@i915_module_load@reload.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-bsw-kefka/igt@i915_module_load@reload.html
    - fi-glk-dsi:         [INCOMPLETE][45] ([i915#4130]) -> [INCOMPLETE][46] ([i915#4130] / [i915#4136])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-glk-dsi/igt@i915_module_load@reload.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-glk-dsi/igt@i915_module_load@reload.html
    - fi-icl-y:           [TIMEOUT][47] ([i915#4136]) -> [INCOMPLETE][48] ([i915#4136])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-icl-y/igt@i915_module_load@reload.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-icl-y/igt@i915_module_load@reload.html

  * igt@runner@aborted:
    - fi-bsw-nick:        [FAIL][49] ([i915#3690]) -> [FAIL][50] ([fdo#109271] / [i915#1436] / [i915#3428])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-bsw-nick/igt@runner@aborted.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-bsw-nick/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4130]: https://gitlab.freedesktop.org/drm/intel/issues/4130
  [i915#4136]: https://gitlab.freedesktop.org/drm/intel/issues/4136
  [i915#4179]: https://gitlab.freedesktop.org/drm/intel/issues/4179


Participating hosts (35 -> 31)
------------------------------

  Additional (1): fi-tgl-1115g4 
  Missing    (5): fi-rkl-11600 bat-dg1-6 fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10616 -> Patchwork_21105

  CI-20190529: 20190529
  CI_DRM_10616: fd5d67615e07f5c10424ca704cb0c0243ea77643 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6213: e9ae59cb8b4f1e7bc61a9261f33fc7e52ae06c65 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21105: 95f4af03252c114822a4f029af011cc7373db777 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

95f4af03252c drm/i915: Reduce the number of objects subject to memcpy recover
2d5a43a21dd8 drm/i915: Don't back up pinned LMEM context images and rings during suspend
9d06dc093931 drm/i915/gt: Register the migrate contexts with their engines
3af399d7ac09 drm/i915 Implement LMEM backup and restore for suspend / resume
509d94fcc73e drm/i915/gem: Implement a function to process all gem objects of a region
2af2c2a3614c drm/i915/ttm: Implement a function to copy the contents of two TTM-based objects

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/index.html

--===============4751194782000521284==
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
<tr><td><b>Series:</b></td><td>drm/i915: Suspend / resume backup- and restore of LMEM. (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94278/">https://patchwork.freedesktop.org/series/94278/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10616 -&gt; Patchwork_21105</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10616 and Patchwork_21105:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>Statuses : 5 incomplete(s) 22 pass(s) 1 warn(s)</li>
<li>Exec time: [0.0, 5.84] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21105 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-gfx0:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-skl-6600u/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-kbl-7567u/igt@amdgpu/amd_cs_nop@sync-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind (NEW):</p>
<ul>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-snb-2520m/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-snb-2520m/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4179">i915#4179</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-bxt-dsi/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4179">i915#4179</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-ivb-3770/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-ivb-3770/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4179">i915#4179</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1155">i915#1155</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-snb-2520m/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind (NEW):</p>
<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-bxt-dsi/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-bxt-dsi/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-skl-6600u/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-skl-6600u/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-snb-2600/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4179">i915#4179</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-snb-2600/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-bsw-nick/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4179">i915#4179</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-bsw-nick/igt@i915_module_load@reload.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-cml-u2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-cml-u2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-kbl-soraka/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-kbl-soraka/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-bsw-kefka/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4179">i915#4179</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-bsw-kefka/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4179">i915#4179</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-glk-dsi/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-glk-dsi/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-icl-y/igt@i915_module_load@reload.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-icl-y/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10616/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21105/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (35 -&gt; 31)</h2>
<p>Additional (1): fi-tgl-1115g4 <br />
  Missing    (5): fi-rkl-11600 bat-dg1-6 fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10616 -&gt; Patchwork_21105</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10616: fd5d67615e07f5c10424ca704cb0c0243ea77643 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6213: e9ae59cb8b4f1e7bc61a9261f33fc7e52ae06c65 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21105: 95f4af03252c114822a4f029af011cc7373db777 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>95f4af03252c drm/i915: Reduce the number of objects subject to memcpy recover<br />
2d5a43a21dd8 drm/i915: Don't back up pinned LMEM context images and rings during suspend<br />
9d06dc093931 drm/i915/gt: Register the migrate contexts with their engines<br />
3af399d7ac09 drm/i915 Implement LMEM backup and restore for suspend / resume<br />
509d94fcc73e drm/i915/gem: Implement a function to process all gem objects of a region<br />
2af2c2a3614c drm/i915/ttm: Implement a function to copy the contents of two TTM-based objects</p>

</body>
</html>

--===============4751194782000521284==--
