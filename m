Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4362412892
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Sep 2021 23:57:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 014CF6E892;
	Mon, 20 Sep 2021 21:57:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A28816E892;
 Mon, 20 Sep 2021 21:57:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9796BAA915;
 Mon, 20 Sep 2021 21:57:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5578447609619741381=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lukasz Majczak" <lma@semihalf.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Sep 2021 21:57:24 -0000
Message-ID: <163217504461.25897.2646308064184350755@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210920141101.194959-1-lma@semihalf.com>
In-Reply-To: <20210920141101.194959-1-lma@semihalf.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/bdb=3A_Fix_version_check?=
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

--===============5578447609619741381==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/bdb: Fix version check
URL   : https://patchwork.freedesktop.org/series/94871/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10614 -> Patchwork_21101
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21101 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21101, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21101:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload:
    - fi-ilk-650:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-ilk-650/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-ilk-650/igt@i915_module_load@reload.html
    - fi-ivb-3770:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-ivb-3770/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-ivb-3770/igt@i915_module_load@reload.html
    - fi-bsw-nick:        [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-bsw-nick/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-bsw-nick/igt@i915_module_load@reload.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@reload:
    - {fi-jsl-1}:         [INCOMPLETE][7] ([i915#4136]) -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-jsl-1/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-jsl-1/igt@i915_module_load@reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_21101 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-sdma:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][9] ([fdo#109271]) +17 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-cfl-8109u/igt@amdgpu/amd_basic@cs-sdma.html

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][10] ([fdo#109271]) +17 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@amdgpu/amd_cs_nop@sync-fork-gfx0:
    - fi-cfl-8700k:       NOTRUN -> [SKIP][11] ([fdo#109271]) +17 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-cfl-8700k/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-snb-2520m:       NOTRUN -> [SKIP][12] ([fdo#109271]) +18 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-rkl-guc:         [PASS][13] -> [INCOMPLETE][14] ([i915#4130])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
    - fi-tgl-1115g4:      NOTRUN -> [INCOMPLETE][15] ([i915#4130])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html
    - fi-icl-u2:          [PASS][16] -> [INCOMPLETE][17] ([i915#4130])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-skl-6600u:       [PASS][18] -> [INCOMPLETE][19] ([i915#146] / [i915#198])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][20] ([i915#2190])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html

  * igt@i915_module_load@reload:
    - fi-bxt-dsi:         [PASS][21] -> [INCOMPLETE][22] ([i915#4130])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-bxt-dsi/igt@i915_module_load@reload.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-bxt-dsi/igt@i915_module_load@reload.html
    - fi-icl-y:           [PASS][23] -> [INCOMPLETE][24] ([i915#4130])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-icl-y/igt@i915_module_load@reload.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-icl-y/igt@i915_module_load@reload.html
    - fi-kbl-7500u:       NOTRUN -> [INCOMPLETE][25] ([i915#4130])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-kbl-7500u/igt@i915_module_load@reload.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][26] ([i915#1155])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][27] ([fdo#111827]) +8 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][28] ([i915#4103]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][29] ([fdo#109285])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][30] ([i915#1072]) +3 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][31] ([i915#3301])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][32] ([i915#2426])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-ilk-650/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][33] ([i915#2426] / [i915#3363] / [k.org#202321])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-glk-dsi/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][34] ([i915#3690])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-bsw-nick/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][35] ([i915#2426] / [i915#3363])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-kbl-7500u/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][36] ([i915#2082] / [i915#2426] / [i915#3363])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-cml-u2/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][37] ([i915#2426])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-ivb-3770/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][38] ([i915#2426] / [i915#3363])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-bxt-dsi/igt@runner@aborted.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][39] ([i915#1602] / [i915#2722])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-tgl-1115g4/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-cfl-8700k:       [INCOMPLETE][40] ([i915#4130]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-7500u:       [INCOMPLETE][42] ([i915#4130]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-8109u:       [INCOMPLETE][44] ([i915#4130]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-kbl-r:           [TIMEOUT][46] ([i915#4136]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-kbl-r/igt@i915_module_load@reload.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-kbl-r/igt@i915_module_load@reload.html
    - fi-snb-2520m:       [INCOMPLETE][48] -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-snb-2520m/igt@i915_module_load@reload.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-snb-2520m/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][50] ([i915#3921]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-rkl-guc:         [SKIP][52] ([i915#3919]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-rkl-guc/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-rkl-guc/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - fi-kbl-8809g:       [INCOMPLETE][54] ([i915#4136]) -> [INCOMPLETE][55] ([i915#4130])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-kbl-8809g/igt@i915_module_load@reload.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-kbl-8809g/igt@i915_module_load@reload.html
    - fi-cml-u2:          [INCOMPLETE][56] ([i915#4136]) -> [INCOMPLETE][57] ([i915#4130])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-cml-u2/igt@i915_module_load@reload.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-cml-u2/igt@i915_module_load@reload.html
    - fi-glk-dsi:         [INCOMPLETE][58] -> [INCOMPLETE][59] ([i915#4130])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-glk-dsi/igt@i915_module_load@reload.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-glk-dsi/igt@i915_module_load@reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#3919]: https://gitlab.freedesktop.org/drm/intel/issues/3919
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4130]: https://gitlab.freedesktop.org/drm/intel/issues/4130
  [i915#4136]: https://gitlab.freedesktop.org/drm/intel/issues/4136
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (37 -> 33)
------------------------------

  Additional (1): fi-tgl-1115g4 
  Missing    (5): bat-dg1-6 fi-bsw-cyan fi-ctg-p8600 bat-jsl-1 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10614 -> Patchwork_21101

  CI-20190529: 20190529
  CI_DRM_10614: 8c455bc1c06a7c99442881dadd10466cd5996bec @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6213: e9ae59cb8b4f1e7bc61a9261f33fc7e52ae06c65 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21101: 61b5fba9a321085bcb6823df096429c92c3f9c4e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

61b5fba9a321 drm/i915/bdb: Fix version check

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/index.html

--===============5578447609619741381==
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
<tr><td><b>Series:</b></td><td>drm/i915/bdb: Fix version check</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94871/">https://patchwork.freedesktop.org/series/94871/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10614 -&gt; Patchwork_21101</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21101 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21101, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21101:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-ilk-650/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-ilk-650/igt@i915_module_load@reload.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-ivb-3770/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-ivb-3770/igt@i915_module_load@reload.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-bsw-nick/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-bsw-nick/igt@i915_module_load@reload.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-jsl-1/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-jsl-1/igt@i915_module_load@reload.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21101 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-sdma:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-cfl-8109u/igt@amdgpu/amd_basic@cs-sdma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-gfx0:</p>
<ul>
<li>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-cfl-8700k/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_prime@i915-to-amd:</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-bxt-dsi/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-bxt-dsi/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-icl-y/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-icl-y/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-kbl-7500u/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1155">i915#1155</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-ilk-650/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
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
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-kbl-r/igt@i915_module_load@reload.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-kbl-r/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-snb-2520m/igt@i915_module_load@reload.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-snb-2520m/igt@i915_module_load@reload.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-rkl-guc/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3919">i915#3919</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-rkl-guc/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-kbl-8809g/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-kbl-8809g/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-cml-u2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-cml-u2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10614/fi-glk-dsi/igt@i915_module_load@reload.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21101/fi-glk-dsi/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (37 -&gt; 33)</h2>
<p>Additional (1): fi-tgl-1115g4 <br />
  Missing    (5): bat-dg1-6 fi-bsw-cyan fi-ctg-p8600 bat-jsl-1 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10614 -&gt; Patchwork_21101</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10614: 8c455bc1c06a7c99442881dadd10466cd5996bec @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6213: e9ae59cb8b4f1e7bc61a9261f33fc7e52ae06c65 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21101: 61b5fba9a321085bcb6823df096429c92c3f9c4e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>61b5fba9a321 drm/i915/bdb: Fix version check</p>

</body>
</html>

--===============5578447609619741381==--
