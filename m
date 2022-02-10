Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BD54B11B1
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 16:30:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0332010E87F;
	Thu, 10 Feb 2022 15:30:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A688910E87F;
 Thu, 10 Feb 2022 15:30:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A33DBAADD2;
 Thu, 10 Feb 2022 15:30:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7985034414246926710=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 10 Feb 2022 15:30:29 -0000
Message-ID: <164450702965.24636.14452191458665959820@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1644489329.git.jani.nikula@intel.com>
In-Reply-To: <cover.1644489329.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/opregion=3A_fixes_and_cleanups=2C_RESEND?=
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

--===============7985034414246926710==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/opregion: fixes and cleanups, RESEND
URL   : https://patchwork.freedesktop.org/series/99961/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11213 -> Patchwork_22239
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22239 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22239, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/index.html

Participating hosts (47 -> 43)
------------------------------

  Additional (1): fi-icl-u2 
  Missing    (5): shard-tglu fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22239:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-rkl-guc:         [PASS][1] -> [DMESG-WARN][2] +37 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-kbl-8809g:       [PASS][3] -> [DMESG-WARN][4] +36 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-kbl-8809g/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-kbl-8809g/igt@i915_module_load@reload.html
    - fi-skl-6600u:       [PASS][5] -> [DMESG-WARN][6] +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-skl-6600u/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-skl-6600u/igt@i915_module_load@reload.html
    - fi-kbl-guc:         [PASS][7] -> [DMESG-WARN][8] +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-kbl-guc/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-kbl-guc/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8700k:       [PASS][9] -> [DMESG-WARN][10] +37 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
    - fi-kbl-x1275:       [PASS][11] -> [DMESG-WARN][12] +37 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@client:
    - fi-ivb-3770:        [PASS][13] -> [DMESG-WARN][14] +36 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-ivb-3770/igt@i915_selftest@live@client.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-ivb-3770/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@gem:
    - fi-snb-2600:        [PASS][15] -> [DMESG-WARN][16] +36 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-snb-2600/igt@i915_selftest@live@gem.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-snb-2600/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-pnv-d510:        NOTRUN -> [DMESG-WARN][17] +23 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-pnv-d510/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gem_migrate:
    - fi-skl-guc:         [PASS][18] -> [DMESG-WARN][19] +37 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-skl-guc/igt@i915_selftest@live@gem_migrate.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-skl-guc/igt@i915_selftest@live@gem_migrate.html

  * igt@i915_selftest@live@gt_engines:
    - fi-kbl-7500u:       [PASS][20] -> [DMESG-WARN][21] +37 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-kbl-7500u/igt@i915_selftest@live@gt_engines.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-kbl-7500u/igt@i915_selftest@live@gt_engines.html
    - fi-bsw-nick:        [PASS][22] -> [FAIL][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-bsw-nick/igt@i915_selftest@live@gt_engines.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-bsw-nick/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-pnv-d510:        [PASS][24] -> [DMESG-WARN][25] +11 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-pnv-d510/igt@i915_selftest@live@gt_heartbeat.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-pnv-d510/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_mocs:
    - fi-tgl-1115g4:      [PASS][26] -> [DMESG-WARN][27] +37 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-tgl-1115g4/igt@i915_selftest@live@gt_mocs.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-tgl-1115g4/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-u2:          NOTRUN -> [DMESG-WARN][28] +37 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-icl-u2/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@memory_region:
    - fi-cfl-8109u:       [PASS][29] -> [DMESG-WARN][30] +37 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-cfl-8109u/igt@i915_selftest@live@memory_region.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-cfl-8109u/igt@i915_selftest@live@memory_region.html

  * igt@i915_selftest@live@requests:
    - fi-cfl-guc:         [PASS][31] -> [DMESG-WARN][32] +37 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-cfl-guc/igt@i915_selftest@live@requests.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-cfl-guc/igt@i915_selftest@live@requests.html
    - fi-hsw-4770:        [PASS][33] -> [DMESG-WARN][34] +37 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-hsw-4770/igt@i915_selftest@live@requests.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-hsw-4770/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@slpc:
    - fi-snb-2520m:       [PASS][35] -> [DMESG-WARN][36] +36 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-snb-2520m/igt@i915_selftest@live@slpc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-snb-2520m/igt@i915_selftest@live@slpc.html

  * igt@i915_selftest@live@uncore:
    - fi-kbl-7567u:       [PASS][37] -> [DMESG-WARN][38] +37 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-kbl-7567u/igt@i915_selftest@live@uncore.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-kbl-7567u/igt@i915_selftest@live@uncore.html

  * igt@i915_selftest@live@vma:
    - fi-cml-u2:          [PASS][39] -> [DMESG-WARN][40] +37 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-cml-u2/igt@i915_selftest@live@vma.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-cml-u2/igt@i915_selftest@live@vma.html

  * igt@i915_selftest@live@workarounds:
    - fi-skl-6700k2:      [PASS][41] -> [DMESG-WARN][42] +37 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-skl-6700k2/igt@i915_selftest@live@workarounds.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-skl-6700k2/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [DMESG-FAIL][43] ([i915#2927]) -> [DMESG-WARN][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-pnv-d510/igt@i915_selftest@live@requests.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gem_contexts:
    - {fi-tgl-dsi}:       [PASS][45] -> [DMESG-WARN][46] +33 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_timelines:
    - {fi-jsl-1}:         [PASS][47] -> [DMESG-WARN][48] +37 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-jsl-1/igt@i915_selftest@live@gt_timelines.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-jsl-1/igt@i915_selftest@live@gt_timelines.html

  * igt@i915_selftest@live@late_gt_pm:
    - {bat-jsl-1}:        [PASS][49] -> [DMESG-WARN][50] +36 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/bat-jsl-1/igt@i915_selftest@live@late_gt_pm.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/bat-jsl-1/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@migrate:
    - {fi-ehl-2}:         [PASS][51] -> [DMESG-WARN][52] +37 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-ehl-2/igt@i915_selftest@live@migrate.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-ehl-2/igt@i915_selftest@live@migrate.html

  
Known issues
------------

  Here are the changes found in Patchwork_22239 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@fork-gfx0:
    - fi-icl-u2:          NOTRUN -> [SKIP][53] ([fdo#109315]) +17 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html

  * igt@amdgpu/amd_cs_nop@nop-compute0:
    - fi-pnv-d510:        NOTRUN -> [SKIP][54] ([fdo#109271]) +17 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-pnv-d510/igt@amdgpu/amd_cs_nop@nop-compute0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-icl-u2:          NOTRUN -> [SKIP][55] ([i915#2190])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-icl-u2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-icl-u2:          NOTRUN -> [SKIP][56] ([i915#4613]) +3 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-icl-u2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_selftest@live:
    - fi-skl-6600u:       NOTRUN -> [FAIL][57] ([i915#4547])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-skl-6600u/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gem:
    - fi-kbl-8809g:       [PASS][58] -> [DMESG-WARN][59] ([i915#1888])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-kbl-8809g/igt@i915_selftest@live@gem.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-kbl-8809g/igt@i915_selftest@live@gem.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          NOTRUN -> [SKIP][60] ([fdo#111827]) +8 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-icl-u2:          NOTRUN -> [SKIP][61] ([fdo#109278]) +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-icl-u2:          NOTRUN -> [SKIP][62] ([fdo#109285])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@prime_vgem@basic-userptr:
    - fi-icl-u2:          NOTRUN -> [SKIP][63] ([i915#3301])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-icl-u2/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-skl-6600u:       NOTRUN -> [FAIL][64] ([i915#1436] / [i915#4312])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-skl-6600u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [DMESG-WARN][65] ([i915#4269]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [SKIP][67] ([fdo#109271]) -> [FAIL][68] ([i915#3049])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2927]: https://gitlab.freedesktop.org/drm/intel/issues/2927
  [i915#3049]: https://gitlab.freedesktop.org/drm/intel/issues/3049
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4898]: https://gitlab.freedesktop.org/drm/intel/issues/4898


Build changes
-------------

  * Linux: CI_DRM_11213 -> Patchwork_22239

  CI-20190529: 20190529
  CI_DRM_11213: dc600a8dfed3f4cb0a73c89aaf3da113ecee65ea @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6342: 1bd167a3af9e8f6168ac89c64c64b929694d9be7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22239: 32a509a8f08fc61345208de7a50fbdd525c98a2e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

32a509a8f08f drm/i915/opregion: debug log about Mailbox #2 for backlight
3d8fdd12c465 drm/i915/opregion: handle SWSCI Mailbox #2 obsoletion
a0ed59d6871b drm/i915/opregion: early exit from encoder notify if SWSCI isn't there
e7b41b2e3f18 drm/i915/opregion: abstract the check for valid swsci function
c30930dcbba4 drm/i915/opregion: check port number bounds for SWSCI display power state

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/index.html

--===============7985034414246926710==
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
<tr><td><b>Series:</b></td><td>drm/i915/opregion: fixes and cleanups, RESEND</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/99961/">https://patchwork.freedesktop.org/series/99961/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11213 -&gt; Patchwork_22239</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22239 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22239, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/index.html</p>
<h2>Participating hosts (47 -&gt; 43)</h2>
<p>Additional (1): fi-icl-u2 <br />
  Missing    (5): shard-tglu fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22239:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-kbl-8809g/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-kbl-8809g/igt@i915_module_load@reload.html">DMESG-WARN</a> +36 similar issues</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-skl-6600u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-skl-6600u/igt@i915_module_load@reload.html">DMESG-WARN</a> +2 similar issues</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-kbl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-kbl-guc/igt@i915_module_load@reload.html">DMESG-WARN</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +37 similar issues</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +37 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-ivb-3770/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-ivb-3770/igt@i915_selftest@live@client.html">DMESG-WARN</a> +36 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-snb-2600/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-snb-2600/igt@i915_selftest@live@gem.html">DMESG-WARN</a> +36 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-pnv-d510/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_migrate:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-skl-guc/igt@i915_selftest@live@gem_migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-skl-guc/igt@i915_selftest@live@gem_migrate.html">DMESG-WARN</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-kbl-7500u/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-kbl-7500u/igt@i915_selftest@live@gt_engines.html">DMESG-WARN</a> +37 similar issues</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-bsw-nick/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-bsw-nick/igt@i915_selftest@live@gt_engines.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-pnv-d510/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-pnv-d510/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-tgl-1115g4/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-tgl-1115g4/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-icl-u2/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@memory_region:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-cfl-8109u/igt@i915_selftest@live@memory_region.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-cfl-8109u/igt@i915_selftest@live@memory_region.html">DMESG-WARN</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-cfl-guc/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-cfl-guc/igt@i915_selftest@live@requests.html">DMESG-WARN</a> +37 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-hsw-4770/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-hsw-4770/igt@i915_selftest@live@requests.html">DMESG-WARN</a> +37 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-snb-2520m/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-snb-2520m/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> +36 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-kbl-7567u/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-kbl-7567u/igt@i915_selftest@live@uncore.html">DMESG-WARN</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@vma:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-cml-u2/igt@i915_selftest@live@vma.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-cml-u2/igt@i915_selftest@live@vma.html">DMESG-WARN</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-skl-6700k2/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-skl-6700k2/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> +37 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@requests:<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-jsl-1/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-jsl-1/igt@i915_selftest@live@gt_timelines.html">DMESG-WARN</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/bat-jsl-1/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/bat-jsl-1/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> +36 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-ehl-2/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-ehl-2/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> +37 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22239 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-gfx0:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@nop-compute0:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-pnv-d510/igt@amdgpu/amd_cs_nop@nop-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-icl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-icl-u2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-skl-6600u/igt@i915_selftest@live.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-kbl-8809g/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-kbl-8809g/igt@i915_selftest@live@gem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@basic:<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@basic-rte:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11213/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22239/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3049">i915#3049</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11213 -&gt; Patchwork_22239</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11213: dc600a8dfed3f4cb0a73c89aaf3da113ecee65ea @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6342: 1bd167a3af9e8f6168ac89c64c64b929694d9be7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22239: 32a509a8f08fc61345208de7a50fbdd525c98a2e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>32a509a8f08f drm/i915/opregion: debug log about Mailbox #2 for backlight<br />
3d8fdd12c465 drm/i915/opregion: handle SWSCI Mailbox #2 obsoletion<br />
a0ed59d6871b drm/i915/opregion: early exit from encoder notify if SWSCI isn't there<br />
e7b41b2e3f18 drm/i915/opregion: abstract the check for valid swsci function<br />
c30930dcbba4 drm/i915/opregion: check port number bounds for SWSCI display power state</p>

</body>
</html>

--===============7985034414246926710==--
