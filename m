Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7C74E3679
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 03:16:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4265E10E036;
	Tue, 22 Mar 2022 02:16:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8B6BE10E036;
 Tue, 22 Mar 2022 02:16:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 86FFBA00A0;
 Tue, 22 Mar 2022 02:16:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1051112021836549667=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Tue, 22 Mar 2022 02:16:54 -0000
Message-ID: <164791541451.20009.12908072383760090888@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220321224459.12223-1-ramalingam.c@intel.com>
In-Reply-To: <20220321224459.12223-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/ttm=3A_Evict_and_restore_of_compressed_object_=28rev3=29?=
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

--===============1051112021836549667==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/ttm: Evict and restore of compressed object (rev3)
URL   : https://patchwork.freedesktop.org/series/101106/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11395 -> Patchwork_22636
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22636 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22636, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/index.html

Participating hosts (47 -> 43)
------------------------------

  Additional (1): bat-jsl-2 
  Missing    (5): shard-tglu fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22636:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@migrate:
    - fi-bsw-kefka:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-bsw-kefka/igt@i915_selftest@live@migrate.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-bsw-kefka/igt@i915_selftest@live@migrate.html
    - fi-kbl-8809g:       [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-kbl-8809g/igt@i915_selftest@live@migrate.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-kbl-8809g/igt@i915_selftest@live@migrate.html
    - fi-kbl-x1275:       [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-kbl-x1275/igt@i915_selftest@live@migrate.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-kbl-x1275/igt@i915_selftest@live@migrate.html
    - fi-skl-6700k2:      [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-skl-6700k2/igt@i915_selftest@live@migrate.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-skl-6700k2/igt@i915_selftest@live@migrate.html
    - fi-cfl-guc:         [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-cfl-guc/igt@i915_selftest@live@migrate.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-cfl-guc/igt@i915_selftest@live@migrate.html
    - fi-bsw-n3050:       [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-bsw-n3050/igt@i915_selftest@live@migrate.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-bsw-n3050/igt@i915_selftest@live@migrate.html
    - fi-cfl-8700k:       [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-cfl-8700k/igt@i915_selftest@live@migrate.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-cfl-8700k/igt@i915_selftest@live@migrate.html
    - fi-tgl-1115g4:      [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-tgl-1115g4/igt@i915_selftest@live@migrate.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-tgl-1115g4/igt@i915_selftest@live@migrate.html
    - fi-bxt-dsi:         [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-bxt-dsi/igt@i915_selftest@live@migrate.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-bxt-dsi/igt@i915_selftest@live@migrate.html
    - fi-cfl-8109u:       [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-cfl-8109u/igt@i915_selftest@live@migrate.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-cfl-8109u/igt@i915_selftest@live@migrate.html
    - fi-glk-j4005:       [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-glk-j4005/igt@i915_selftest@live@migrate.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-glk-j4005/igt@i915_selftest@live@migrate.html
    - fi-kbl-7567u:       [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-kbl-7567u/igt@i915_selftest@live@migrate.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-kbl-7567u/igt@i915_selftest@live@migrate.html
    - fi-kbl-7500u:       [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-kbl-7500u/igt@i915_selftest@live@migrate.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-kbl-7500u/igt@i915_selftest@live@migrate.html
    - fi-glk-dsi:         [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-glk-dsi/igt@i915_selftest@live@migrate.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-glk-dsi/igt@i915_selftest@live@migrate.html
    - bat-dg1-6:          [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/bat-dg1-6/igt@i915_selftest@live@migrate.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/bat-dg1-6/igt@i915_selftest@live@migrate.html
    - fi-kbl-soraka:      [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-kbl-soraka/igt@i915_selftest@live@migrate.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-kbl-soraka/igt@i915_selftest@live@migrate.html
    - fi-bsw-nick:        [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-bsw-nick/igt@i915_selftest@live@migrate.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-bsw-nick/igt@i915_selftest@live@migrate.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@migrate:
    - {fi-ehl-2}:         [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-ehl-2/igt@i915_selftest@live@migrate.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-ehl-2/igt@i915_selftest@live@migrate.html
    - {bat-jsl-1}:        [PASS][37] -> [DMESG-FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/bat-jsl-1/igt@i915_selftest@live@migrate.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/bat-jsl-1/igt@i915_selftest@live@migrate.html
    - {fi-adl-ddr5}:      [PASS][39] -> [DMESG-FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-adl-ddr5/igt@i915_selftest@live@migrate.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-adl-ddr5/igt@i915_selftest@live@migrate.html
    - {fi-tgl-dsi}:       [PASS][41] -> [DMESG-FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-tgl-dsi/igt@i915_selftest@live@migrate.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-tgl-dsi/igt@i915_selftest@live@migrate.html
    - {bat-rpls-2}:       [PASS][43] -> [DMESG-FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/bat-rpls-2/igt@i915_selftest@live@migrate.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/bat-rpls-2/igt@i915_selftest@live@migrate.html
    - {bat-jsl-2}:        NOTRUN -> [DMESG-FAIL][45]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/bat-jsl-2/igt@i915_selftest@live@migrate.html
    - {fi-jsl-1}:         [PASS][46] -> [DMESG-FAIL][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-jsl-1/igt@i915_selftest@live@migrate.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-jsl-1/igt@i915_selftest@live@migrate.html
    - {bat-adlp-6}:       [PASS][48] -> [DMESG-FAIL][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/bat-adlp-6/igt@i915_selftest@live@migrate.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/bat-adlp-6/igt@i915_selftest@live@migrate.html

  
Known issues
------------

  Here are the changes found in Patchwork_22636 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@fork-compute0:
    - fi-blb-e6850:       NOTRUN -> [SKIP][50] ([fdo#109271]) +17 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-blb-e6850/igt@amdgpu/amd_cs_nop@fork-compute0.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         [PASS][51] -> [INCOMPLETE][52] ([i915#2373] / [i915#4983])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  * igt@runner@aborted:
    - fi-cfl-8109u:       NOTRUN -> [FAIL][53] ([i915#4312] / [i915#5257])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-cfl-8109u/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][54] ([i915#4312] / [i915#5257] / [k.org#202321])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-glk-dsi/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][55] ([i915#1436] / [i915#4312] / [i915#5257])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][56] ([i915#1436] / [i915#4312] / [i915#5257])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-kbl-7500u/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][57] ([i915#4312] / [i915#5257])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-bxt-dsi/igt@runner@aborted.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][58] ([i915#1436] / [i915#4312] / [i915#5257])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-tgl-1115g4/igt@runner@aborted.html
    - bat-dg1-6:          NOTRUN -> [FAIL][59] ([i915#4312] / [i915#5257])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/bat-dg1-6/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][60] ([i915#4312] / [i915#5257])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-cfl-guc/igt@runner@aborted.html
    - fi-glk-j4005:       NOTRUN -> [FAIL][61] ([i915#4312] / [i915#5257] / [k.org#202321])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-glk-j4005/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][62] ([i915#1436] / [i915#4312] / [i915#5257])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][63] ([i915#1436] / [i915#4312] / [i915#5257])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-skl-6700k2/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][64] ([fdo#109271] / [i915#1436] / [i915#3428] / [i915#4312])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-bsw-n3050/igt@runner@aborted.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][65] ([i915#1436] / [i915#4312] / [i915#5257])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-kbl-x1275/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][66] ([fdo#109271] / [i915#1436] / [i915#3428] / [i915#4312])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-bsw-kefka/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][67] ([i915#4312] / [i915#5257])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-cfl-8700k/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][68] ([fdo#109271] / [i915#1436] / [i915#3428] / [i915#4312])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-bsw-nick/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][69] ([i915#1436] / [i915#4312] / [i915#5257])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-kbl-8809g/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem:
    - fi-blb-e6850:       [DMESG-FAIL][70] ([i915#4528]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-blb-e6850/igt@i915_selftest@live@gem.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-blb-e6850/igt@i915_selftest@live@gem.html

  * igt@kms_busy@basic@flip:
    - {bat-adlp-6}:       [DMESG-WARN][72] ([i915#3576]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/bat-adlp-6/igt@kms_busy@basic@flip.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/bat-adlp-6/igt@kms_busy@basic@flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2373]: https://gitlab.freedesktop.org/drm/intel/issues/2373
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Build changes
-------------

  * IGT: IGT_6387 -> IGTPW_6786
  * Linux: CI_DRM_11395 -> Patchwork_22636

  CI-20190529: 20190529
  CI_DRM_11395: a678f97326454b60ffbbde6abf52d23997d71a27 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_6786: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6786/index.html
  IGT_6387: 04d012b18355b53798af5a55a8915afb1a421bba @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22636: e86bed52649a12501fcc7bd49b248a0f27e8c708 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e86bed52649a drm/i915/migrate: Evict and restore the flatccs capable lmem obj
ad707694af7b drm/i915/gem: Add extra pages in ttm_tt for ccs data
0bfb428dad09 drm/ttm: Add a parameter to add extra pages into ttm_tt
b2e276f1b5df drm/i915/gt: offset handling for multiple copy engines
ef8a14ea443a drm/i915/selftest_migrate: Check CCS meta data clear
52c6d109b8ac drm/i915/selftest_migrate: Consider the possible roundup of size
5fbb84963217 drm/i915/gt: Clear compress metadata for Flat-ccs objects
3d544738736f drm/i915/gt: Optimize the migration and clear loop
a6e13a3a409f drm/i915/gt: Use XY_FAST_COLOR_BLT to clear obj on graphics ver 12+

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/index.html

--===============1051112021836549667==
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
<tr><td><b>Series:</b></td><td>drm/i915/ttm: Evict and restore of compressed object (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101106/">https://patchwork.freedesktop.org/series/101106/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11395 -&gt; Patchwork_22636</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22636 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22636, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/index.html</p>
<h2>Participating hosts (47 -&gt; 43)</h2>
<p>Additional (1): bat-jsl-2 <br />
  Missing    (5): shard-tglu fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22636:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-bsw-kefka/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-bsw-kefka/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-kbl-8809g/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-kbl-8809g/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-kbl-x1275/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-kbl-x1275/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-skl-6700k2/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-skl-6700k2/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-cfl-guc/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-cfl-guc/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-bsw-n3050/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-bsw-n3050/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-cfl-8700k/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-cfl-8700k/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-tgl-1115g4/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-tgl-1115g4/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-bxt-dsi/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-bxt-dsi/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-cfl-8109u/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-cfl-8109u/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-glk-j4005/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-glk-j4005/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-kbl-7567u/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-kbl-7567u/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-kbl-7500u/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-kbl-7500u/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-glk-dsi/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-glk-dsi/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/bat-dg1-6/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/bat-dg1-6/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-kbl-soraka/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-kbl-soraka/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-bsw-nick/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-bsw-nick/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-ehl-2/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-ehl-2/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/bat-jsl-1/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/bat-jsl-1/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-adl-ddr5}:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-adl-ddr5/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-adl-ddr5/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-tgl-dsi/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-tgl-dsi/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/bat-rpls-2/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/bat-rpls-2/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{bat-jsl-2}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/bat-jsl-2/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-jsl-1/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-jsl-1/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/bat-adlp-6/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/bat-adlp-6/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22636 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-compute0:</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-blb-e6850/igt@amdgpu/amd_cs_nop@fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2373">i915#2373</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-glk-j4005/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/fi-blb-e6850/igt@i915_selftest@live@gem.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/fi-blb-e6850/igt@i915_selftest@live@gem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/bat-adlp-6/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22636/bat-adlp-6/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6387 -&gt; IGTPW_6786</li>
<li>Linux: CI_DRM_11395 -&gt; Patchwork_22636</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11395: a678f97326454b60ffbbde6abf52d23997d71a27 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_6786: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6786/index.html<br />
  IGT_6387: 04d012b18355b53798af5a55a8915afb1a421bba @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22636: e86bed52649a12501fcc7bd49b248a0f27e8c708 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e86bed52649a drm/i915/migrate: Evict and restore the flatccs capable lmem obj<br />
ad707694af7b drm/i915/gem: Add extra pages in ttm_tt for ccs data<br />
0bfb428dad09 drm/ttm: Add a parameter to add extra pages into ttm_tt<br />
b2e276f1b5df drm/i915/gt: offset handling for multiple copy engines<br />
ef8a14ea443a drm/i915/selftest_migrate: Check CCS meta data clear<br />
52c6d109b8ac drm/i915/selftest_migrate: Consider the possible roundup of size<br />
5fbb84963217 drm/i915/gt: Clear compress metadata for Flat-ccs objects<br />
3d544738736f drm/i915/gt: Optimize the migration and clear loop<br />
a6e13a3a409f drm/i915/gt: Use XY_FAST_COLOR_BLT to clear obj on graphics ver 12+</p>

</body>
</html>

--===============1051112021836549667==--
