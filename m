Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA5F4DA3BC
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 21:09:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4354E89F92;
	Tue, 15 Mar 2022 20:09:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BB24A89F0A;
 Tue, 15 Mar 2022 20:09:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B8123A00A0;
 Tue, 15 Mar 2022 20:09:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6718639813862214981=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Robert Beckett" <bob.beckett@collabora.com>
Date: Tue, 15 Mar 2022 20:09:20 -0000
Message-ID: <164737496072.20491.7465300202422652342@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220315180444.3327283-1-bob.beckett@collabora.com>
In-Reply-To: <20220315180444.3327283-1-bob.beckett@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_ttm_for_stolen?=
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

--===============6718639813862214981==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

== Series Details ==

Series: drm/i915: ttm for stolen
URL   : https://patchwork.freedesktop.org/series/101396/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11365 -> Patchwork_22575
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22575 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22575, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/index.html

Participating hosts (48 -> 34)
------------------------------

  Additional (3): fi-kbl-soraka bat-dg2-8 bat-adls-5 
  Missing    (17): fi-bxt-dsi shard-tglu fi-hsw-4200u shard-rkl fi-glk-dsi bat-dg2-9 fi-cfl-8700k fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-cfl-guc fi-glk-j4005 fi-kbl-x1275 fi-cfl-8109u bat-rpls-2 shard-dg1 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22575:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - fi-elk-e7500:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/fi-elk-e7500/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-elk-e7500/igt@debugfs_test@read_all_entries.html
    - fi-snb-2600:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/fi-snb-2600/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-snb-2600/igt@debugfs_test@read_all_entries.html
    - fi-blb-e6850:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/fi-blb-e6850/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-blb-e6850/igt@debugfs_test@read_all_entries.html
    - fi-bwr-2160:        [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/fi-bwr-2160/igt@debugfs_test@read_all_entries.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-bwr-2160/igt@debugfs_test@read_all_entries.html
    - fi-snb-2520m:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/fi-snb-2520m/igt@debugfs_test@read_all_entries.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-snb-2520m/igt@debugfs_test@read_all_entries.html
    - fi-ilk-650:         [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/fi-ilk-650/igt@debugfs_test@read_all_entries.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-ilk-650/igt@debugfs_test@read_all_entries.html
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html

  * igt@i915_selftest@live@mman:
    - fi-bsw-nick:        [PASS][14] -> [INCOMPLETE][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/fi-bsw-nick/igt@i915_selftest@live@mman.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-bsw-nick/igt@i915_selftest@live@mman.html

  * igt@kms_busy@basic@flip:
    - fi-tgl-1115g4:      [PASS][16] -> [INCOMPLETE][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/fi-tgl-1115g4/igt@kms_busy@basic@flip.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-tgl-1115g4/igt@kms_busy@basic@flip.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-7567u:       [PASS][18] -> [DMESG-WARN][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html
    - fi-kbl-guc:         [PASS][20] -> [DMESG-WARN][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html

  * igt@runner@aborted:
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-bdw-gvtdvm/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-ivb-3770/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@debugfs_test@read_all_entries:
    - {bat-adlp-6}:       [PASS][24] -> [INCOMPLETE][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/bat-adlp-6/igt@debugfs_test@read_all_entries.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/bat-adlp-6/igt@debugfs_test@read_all_entries.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - {bat-dg2-8}:        NOTRUN -> [SKIP][26] +10 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/bat-dg2-8/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_force_connector_basic@force-connector-state:
    - {bat-dg2-8}:        NOTRUN -> [DMESG-WARN][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/bat-dg2-8/igt@kms_force_connector_basic@force-connector-state.html
    - {bat-rpls-1}:       [PASS][28] -> [DMESG-WARN][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html

  * igt@runner@aborted:
    - {fi-rkl-11600}:     NOTRUN -> [FAIL][30]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-rkl-11600/igt@runner@aborted.html
    - {bat-jsl-2}:        NOTRUN -> [FAIL][31]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/bat-jsl-2/igt@runner@aborted.html
    - {fi-jsl-1}:         NOTRUN -> [FAIL][32]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-jsl-1/igt@runner@aborted.html
    - {bat-jsl-1}:        NOTRUN -> [FAIL][33]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/bat-jsl-1/igt@runner@aborted.html
    - {fi-ehl-2}:         NOTRUN -> [FAIL][34]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-ehl-2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_22575 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-snb-2600:        NOTRUN -> [FAIL][35] ([i915#2426] / [i915#4312])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-snb-2600/igt@runner@aborted.html
    - fi-ilk-650:         NOTRUN -> [FAIL][36] ([i915#2426] / [i915#4312])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-ilk-650/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][37] ([i915#3690])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][38] ([fdo#109271] / [i915#1436] / [i915#3428] / [i915#3690] / [i915#4312])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-bsw-nick/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][39] ([i915#5257])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-kbl-8809g/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][40] ([i915#2426] / [i915#4312])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-snb-2520m/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][41] ([i915#2426])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-bdw-5557u/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][42] ([i915#4312])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-bwr-2160/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][43] ([i915#1814] / [i915#2426] / [i915#4312])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][44] ([i915#5317])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][45] ([i915#2722] / [i915#4312])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-kbl-guc/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][46] ([i915#2426])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-rkl-guc/igt@runner@aborted.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][47] ([i915#1814] / [i915#2722] / [i915#4312])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-tgl-1115g4/igt@runner@aborted.html
    - bat-dg1-6:          NOTRUN -> [FAIL][48] ([i915#2426])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/bat-dg1-6/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][49] ([i915#2426] / [i915#4312])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-elk-e7500/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][50] ([i915#2722] / [i915#4312])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][51] ([i915#2426])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][52] ([i915#2426])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-skl-6700k2/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][53] ([i915#3690])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-bsw-n3050/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][54] ([i915#2403] / [i915#2426] / [i915#4312])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-blb-e6850/igt@runner@aborted.html

  
#### Warnings ####

  * igt@debugfs_test@read_all_entries:
    - fi-apl-guc:         [DMESG-WARN][55] ([i915#1610]) -> [INCOMPLETE][56] ([i915#1982])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/fi-apl-guc/igt@debugfs_test@read_all_entries.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-apl-guc/igt@debugfs_test@read_all_entries.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#5169]: https://gitlab.freedesktop.org/drm/intel/issues/5169
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5192]: https://gitlab.freedesktop.org/drm/intel/issues/5192
  [i915#5193]: https://gitlab.freedesktop.org/drm/intel/issues/5193
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5317]: https://gitlab.freedesktop.org/drm/intel/issues/5317
  [i915#5342]: https://gitlab.freedesktop.org/drm/intel/issues/5342


Build changes
-------------

  * Linux: CI_DRM_11365 -> Patchwork_22575

  CI-20190529: 20190529
  CI_DRM_11365: 5a27c2b120b176a313edbea33224847ea76d6c21 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6382: a6a5a178cb1cbe0dab8d8d092a4aee932ccb93cc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22575: 673869ce0f7cb30b905e2071d088346fe69df634 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_22575/build_32bit.log

  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/display/intel_fbc.o
In file included from ./include/drm/ttm/ttm_resource.h:32,
                 from ./include/drm/ttm/ttm_device.h:30,
                 from ./drivers/gpu/drm/i915/i915_drv.h:41,
                 from drivers/gpu/drm/i915/display/intel_fbc.c:45:
drivers/gpu/drm/i915/display/intel_fbc.c: In function ‘intel_fbc_alloc_cfb’:
drivers/gpu/drm/i915/display/intel_fbc.c:800:7: error: format ‘%lu’ expects argument of type ‘long unsigned int’, but argument 4 has type ‘size_t’ {aka ‘unsigned int’} [-Werror=format=]
       "reserved %lu bytes of contiguous stolen space for FBC, limit: %d\n",
       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
       fbc->compressed_fb->base.size, fbc->limit);
       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
./include/drm/drm_print.h:463:53: note: in definition of macro ‘drm_dbg_kms’
  drm_dev_dbg((drm) ? (drm)->dev : NULL, DRM_UT_KMS, fmt, ##__VA_ARGS__)
                                                     ^~~
cc1: all warnings being treated as errors
scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/i915/display/intel_fbc.o' failed
make[4]: *** [drivers/gpu/drm/i915/display/intel_fbc.o] Error 1
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1831: recipe for target 'drivers' failed
make: *** [drivers] Error 2


== Linux commits ==

673869ce0f7c drm/i915: cleanup old stolen state
9ed1deb99315 drm/i915: add range busy check for ttm region
5045ae7a8418 drm/ttm: add range busy check for range manager
743f6cc618c7 drm/i915: stolen memory use ttm backend
f844b84b6eeb drm/i915: use gem objects to track stolen nodes
882cbce55afd drm/i915: add ability to create memory region object in place
26eebf54d3e6 drm/i915: instantiate ttm ranger manager for stolen memory

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/index.html

--===============6718639813862214981==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit


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
<tr><td><b>Series:</b></td><td>drm/i915: ttm for stolen</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101396/">https://patchwork.freedesktop.org/series/101396/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11365 -&gt; Patchwork_22575</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22575 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22575, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/index.html</p>
<h2>Participating hosts (48 -&gt; 34)</h2>
<p>Additional (3): fi-kbl-soraka bat-dg2-8 bat-adls-5 <br />
  Missing    (17): fi-bxt-dsi shard-tglu fi-hsw-4200u shard-rkl fi-glk-dsi bat-dg2-9 fi-cfl-8700k fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-cfl-guc fi-glk-j4005 fi-kbl-x1275 fi-cfl-8109u bat-rpls-2 shard-dg1 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22575:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/fi-elk-e7500/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-elk-e7500/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/fi-snb-2600/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-snb-2600/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/fi-blb-e6850/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-blb-e6850/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/fi-bwr-2160/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-bwr-2160/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/fi-snb-2520m/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-snb-2520m/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/fi-ilk-650/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-ilk-650/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/fi-bsw-nick/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-bsw-nick/igt@i915_selftest@live@mman.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/fi-tgl-1115g4/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-tgl-1115g4/igt@kms_busy@basic@flip.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-ivb-3770/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/bat-adlp-6/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/bat-adlp-6/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>{bat-dg2-8}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/bat-dg2-8/igt@kms_flip@basic-flip-vs-wf_vblank.html">SKIP</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>
<p>{bat-dg2-8}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/bat-dg2-8/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{fi-rkl-11600}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-rkl-11600/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{bat-jsl-2}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/bat-jsl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{bat-jsl-1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/bat-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-ehl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22575 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-snb-2600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-ilk-650/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-snb-2520m/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-bwr-2160/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5317">i915#5317</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-elk-e7500/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/fi-apl-guc/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-apl-guc/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11365 -&gt; Patchwork_22575</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11365: 5a27c2b120b176a313edbea33224847ea76d6c21 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6382: a6a5a178cb1cbe0dab8d8d092a4aee932ccb93cc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22575: 673869ce0f7cb30b905e2071d088346fe69df634 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Kernel 32bit build ==</p>
<p>Warning: Kernel 32bit buildtest failed:<br />
https://intel-gfx-ci.01.org/Patchwork_22575/build_32bit.log</p>
<p>CALL    scripts/checksyscalls.sh<br />
  CALL    scripts/atomic/check-atomics.sh<br />
  CHK     include/generated/compile.h<br />
  CC [M]  drivers/gpu/drm/i915/display/intel_fbc.o<br />
In file included from ./include/drm/ttm/ttm_resource.h:32,<br />
                 from ./include/drm/ttm/ttm_device.h:30,<br />
                 from ./drivers/gpu/drm/i915/i915_drv.h:41,<br />
                 from drivers/gpu/drm/i915/display/intel_fbc.c:45:<br />
drivers/gpu/drm/i915/display/intel_fbc.c: In function ‘intel_fbc_alloc_cfb’:<br />
drivers/gpu/drm/i915/display/intel_fbc.c:800:7: error: format ‘%lu’ expects argument of type ‘long unsigned int’, but argument 4 has type ‘size_t’ {aka ‘unsigned int’} [-Werror=format=]<br />
       "reserved %lu bytes of contiguous stolen space for FBC, limit: %d\n",<br />
       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br />
       fbc-&gt;compressed_fb-&gt;base.size, fbc-&gt;limit);<br />
       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br />
./include/drm/drm_print.h:463:53: note: in definition of macro ‘drm_dbg_kms’<br />
  drm_dev_dbg((drm) ? (drm)-&gt;dev : NULL, DRM_UT_KMS, fmt, ##<strong>VA_ARGS</strong>)<br />
                                                     ^~~<br />
cc1: all warnings being treated as errors<br />
scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/i915/display/intel_fbc.o' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-snb-2600/igt@debugfs_test@read_all_entries.html">4</a>: <strong><em> [drivers/gpu/drm/i915/display/intel_fbc.o] Error 1<br />
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/i915' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/fi-snb-2600/igt@debugfs_test@read_all_entries.html">3</a>: </em></strong> [drivers/gpu/drm/i915] Error 2<br />
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22575/fi-elk-e7500/igt@debugfs_test@read_all_entries.html">2</a>: <strong><em> [drivers/gpu/drm] Error 2<br />
scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/fi-elk-e7500/igt@debugfs_test@read_all_entries.html">1</a>: </em></strong> [drivers/gpu] Error 2<br />
Makefile:1831: recipe for target 'drivers' failed<br />
make: *** [drivers] Error 2</p>
<p>== Linux commits ==</p>
<p>673869ce0f7c drm/i915: cleanup old stolen state<br />
9ed1deb99315 drm/i915: add range busy check for ttm region<br />
5045ae7a8418 drm/ttm: add range busy check for range manager<br />
743f6cc618c7 drm/i915: stolen memory use ttm backend<br />
f844b84b6eeb drm/i915: use gem objects to track stolen nodes<br />
882cbce55afd drm/i915: add ability to create memory region object in place<br />
26eebf54d3e6 drm/i915: instantiate ttm ranger manager for stolen memory</p>

</body>
</html>

--===============6718639813862214981==--
