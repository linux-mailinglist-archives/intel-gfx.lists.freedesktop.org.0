Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6843B50DA1C
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Apr 2022 09:30:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 824F310E180;
	Mon, 25 Apr 2022 07:30:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3AB0D10E089;
 Mon, 25 Apr 2022 07:30:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 39474A7DFB;
 Mon, 25 Apr 2022 07:30:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4384495508529375599=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bhanuprakash Modem" <bhanuprakash.modem@intel.com>
Date: Mon, 25 Apr 2022 07:30:15 -0000
Message-ID: <165087181520.32284.2164314736497949744@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220425064612.2993587-1-bhanuprakash.modem@intel.com>
In-Reply-To: <20220425064612.2993587-1-bhanuprakash.modem@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQXR0?=
 =?utf-8?q?ach_and_Set_vrr=5Fenabled_property_=28rev2=29?=
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

--===============4384495508529375599==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Attach and Set vrr_enabled property (rev2)
URL   : https://patchwork.freedesktop.org/series/102978/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11548 -> Patchwork_102978v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_102978v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_102978v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/index.html

Participating hosts (42 -> 44)
------------------------------

  Additional (5): fi-kbl-soraka fi-bdw-5557u bat-adls-5 bat-dg1-6 bat-dg2-8 
  Missing    (3): bat-adlm-1 fi-bsw-cyan bat-dg1-5 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_102978v2:

### IGT changes ###

#### Possible regressions ####

  * {igt@kms_vrr@parse-vrr-range@pipe-a-dsi-1} (NEW):
    - {fi-tgl-dsi}:       NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-tgl-dsi/igt@kms_vrr@parse-vrr-range@pipe-a-dsi-1.html

  * igt@runner@aborted:
    - fi-rkl-11600:       NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-rkl-11600/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-rkl-guc/igt@runner@aborted.html
    - fi-adl-ddr5:        NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-adl-ddr5/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_suspend@basic-s0@smem:
    - {fi-ehl-2}:         [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11548/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html
    - {fi-jsl-1}:         [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11548/fi-jsl-1/igt@gem_exec_suspend@basic-s0@smem.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-jsl-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@kms_force_connector_basic@force-connector-state:
    - {bat-dg2-8}:        NOTRUN -> [DMESG-WARN][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/bat-dg2-8/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_vrr@negative-basic:
    - {fi-tgl-dsi}:       NOTRUN -> [SKIP][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-tgl-dsi/igt@kms_vrr@negative-basic.html

  * igt@runner@aborted:
    - {bat-adls-5}:       NOTRUN -> [FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/bat-adls-5/igt@runner@aborted.html
    - {bat-adlp-6}:       NOTRUN -> [FAIL][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/bat-adlp-6/igt@runner@aborted.html
    - {bat-jsl-2}:        NOTRUN -> [FAIL][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/bat-jsl-2/igt@runner@aborted.html
    - {bat-jsl-1}:        NOTRUN -> [FAIL][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/bat-jsl-1/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_11548 and Patchwork_102978v2:

### New IGT tests (9) ###

  * igt@kms_vrr@parse-vrr-range@pipe-a-dp-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.04, 0.17] s

  * igt@kms_vrr@parse-vrr-range@pipe-a-dp-2:
    - Statuses : 2 pass(s) 2 skip(s)
    - Exec time: [0.0, 0.43] s

  * igt@kms_vrr@parse-vrr-range@pipe-a-dsi-1:
    - Statuses : 2 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_vrr@parse-vrr-range@pipe-a-edp-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.42, 0.49] s

  * igt@kms_vrr@parse-vrr-range@pipe-a-hdmi-a-1:
    - Statuses : 5 pass(s)
    - Exec time: [0.03, 0.20] s

  * igt@kms_vrr@parse-vrr-range@pipe-a-hdmi-a-2:
    - Statuses : 3 pass(s)
    - Exec time: [0.05, 0.27] s

  * igt@kms_vrr@parse-vrr-range@pipe-a-lvds-1:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_vrr@parse-vrr-range@pipe-a-vga-1:
    - Statuses : 5 skip(s)
    - Exec time: [0.0] s

  * igt@kms_vrr@parse-vrr-range@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  

Known issues
------------

  Here are the changes found in Patchwork_102978v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][15] ([fdo#109271]) +10 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#2190])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#4613]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][18] ([i915#1886])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [PASS][19] -> [INCOMPLETE][20] ([i915#4785])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11548/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
    - fi-bdw-5557u:       NOTRUN -> [INCOMPLETE][21] ([i915#3921])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html
    - fi-snb-2600:        [PASS][22] -> [INCOMPLETE][23] ([i915#3921])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11548/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][24] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][25] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#533])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][27] ([fdo#109271]) +15 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-bdw-5557u/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_vrr@negative-basic:
    - fi-bsw-nick:        NOTRUN -> [SKIP][28] ([fdo#109271]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-bsw-nick/igt@kms_vrr@negative-basic.html
    - fi-kbl-7500u:       NOTRUN -> [SKIP][29] ([fdo#109271])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-kbl-7500u/igt@kms_vrr@negative-basic.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][30] ([fdo#109271])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-cfl-8109u/igt@kms_vrr@negative-basic.html
    - fi-bwr-2160:        NOTRUN -> [SKIP][31] ([fdo#109271]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-bwr-2160/igt@kms_vrr@negative-basic.html
    - fi-snb-2600:        NOTRUN -> [SKIP][32] ([fdo#109271]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-snb-2600/igt@kms_vrr@negative-basic.html
    - fi-hsw-g3258:       NOTRUN -> [SKIP][33] ([fdo#109271]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-hsw-g3258/igt@kms_vrr@negative-basic.html
    - fi-hsw-4770:        NOTRUN -> [SKIP][34] ([fdo#109271]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-hsw-4770/igt@kms_vrr@negative-basic.html
    - fi-bxt-dsi:         NOTRUN -> [SKIP][35] ([fdo#109271]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-bxt-dsi/igt@kms_vrr@negative-basic.html
    - fi-skl-6700k2:      NOTRUN -> [SKIP][36] ([fdo#109271]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-skl-6700k2/igt@kms_vrr@negative-basic.html
    - fi-elk-e7500:       NOTRUN -> [SKIP][37] ([fdo#109271]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-elk-e7500/igt@kms_vrr@negative-basic.html
    - fi-glk-j4005:       NOTRUN -> [SKIP][38] ([fdo#109271])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-glk-j4005/igt@kms_vrr@negative-basic.html
    - fi-ivb-3770:        NOTRUN -> [SKIP][39] ([fdo#109271]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-ivb-3770/igt@kms_vrr@negative-basic.html
    - fi-ilk-650:         NOTRUN -> [SKIP][40] ([fdo#109271]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-ilk-650/igt@kms_vrr@negative-basic.html
    - fi-bsw-n3050:       NOTRUN -> [SKIP][41] ([fdo#109271])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-bsw-n3050/igt@kms_vrr@negative-basic.html
    - fi-cfl-guc:         NOTRUN -> [SKIP][42] ([fdo#109271])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-cfl-guc/igt@kms_vrr@negative-basic.html
    - fi-pnv-d510:        NOTRUN -> [SKIP][43] ([fdo#109271]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-pnv-d510/igt@kms_vrr@negative-basic.html
    - fi-bsw-kefka:       NOTRUN -> [SKIP][44] ([fdo#109271])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-bsw-kefka/igt@kms_vrr@negative-basic.html
    - fi-cfl-8700k:       NOTRUN -> [SKIP][45] ([fdo#109271])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-cfl-8700k/igt@kms_vrr@negative-basic.html

  * igt@kms_vrr@parse-vrr-range:
    - fi-blb-e6850:       NOTRUN -> [SKIP][46] ([fdo#109271]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-blb-e6850/igt@kms_vrr@parse-vrr-range.html
    - fi-kbl-8809g:       NOTRUN -> [SKIP][47] ([fdo#109271]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-kbl-8809g/igt@kms_vrr@parse-vrr-range.html
    - fi-kbl-7567u:       NOTRUN -> [SKIP][48] ([fdo#109271]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-kbl-7567u/igt@kms_vrr@parse-vrr-range.html

  * {igt@kms_vrr@parse-vrr-range@pipe-a-dp-2} (NEW):
    - fi-skl-guc:         NOTRUN -> [SKIP][49] ([fdo#109271]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-skl-guc/igt@kms_vrr@parse-vrr-range@pipe-a-dp-2.html

  * {igt@kms_vrr@parse-vrr-range@pipe-a-lvds-1} (NEW):
    - fi-snb-2520m:       NOTRUN -> [SKIP][50] ([fdo#109271]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-snb-2520m/igt@kms_vrr@parse-vrr-range@pipe-a-lvds-1.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][51] ([fdo#109271] / [i915#4312] / [i915#5594])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-hsw-4770/igt@runner@aborted.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][52] ([i915#5257])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-tgl-1115g4/igt@runner@aborted.html
    - bat-dg1-6:          NOTRUN -> [FAIL][53] ([i915#5257])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/bat-dg1-6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594
  [i915#5617]: https://gitlab.freedesktop.org/drm/intel/issues/5617
  [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763


Build changes
-------------

  * IGT: IGT_6449 -> IGTPW_6978
  * Linux: CI_DRM_11548 -> Patchwork_102978v2

  CI-20190529: 20190529
  CI_DRM_11548: 4163e73aa7c34d043f2c7ed1567b6e21b6f1119a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_6978: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6978/index.html
  IGT_6449: 704da775abb83faa9324a665fe2992ab90f4ab03 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102978v2: 4163e73aa7c34d043f2c7ed1567b6e21b6f1119a @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

af2f75203c23 drm/i915/vrr: Attach and set drm crtc vrr_enabled property
bb41fb54b167 drm/vrr: Attach vrr_enabled property to the drm crtc

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/index.html

--===============4384495508529375599==
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
<tr><td><b>Series:</b></td><td>Attach and Set vrr_enabled property (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102978/">https://patchwork.freedesktop.org/series/102978/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11548 -&gt; Patchwork_102978v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_102978v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_102978v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/index.html</p>
<h2>Participating hosts (42 -&gt; 44)</h2>
<p>Additional (5): fi-kbl-soraka fi-bdw-5557u bat-adls-5 bat-dg1-6 bat-dg2-8 <br />
  Missing    (3): bat-adlm-1 fi-bsw-cyan bat-dg1-5 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_102978v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>{igt@kms_vrr@parse-vrr-range@pipe-a-dsi-1} (NEW):</p>
<ul>
<li>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-tgl-dsi/igt@kms_vrr@parse-vrr-range@pipe-a-dsi-1.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-rkl-11600/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-rkl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-adl-ddr5/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11548/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11548/fi-jsl-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-jsl-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>{bat-dg2-8}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/bat-dg2-8/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-tgl-dsi/igt@kms_vrr@negative-basic.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{bat-adls-5}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/bat-adls-5/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{bat-adlp-6}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/bat-adlp-6/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{bat-jsl-2}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/bat-jsl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{bat-jsl-1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/bat-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_11548 and Patchwork_102978v2:</p>
<h3>New IGT tests (9)</h3>
<ul>
<li>
<p>igt@kms_vrr@parse-vrr-range@pipe-a-dp-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.04, 0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@parse-vrr-range@pipe-a-dp-2:</p>
<ul>
<li>Statuses : 2 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 0.43] s</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@parse-vrr-range@pipe-a-dsi-1:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@parse-vrr-range@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.42, 0.49] s</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@parse-vrr-range@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.03, 0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@parse-vrr-range@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.05, 0.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@parse-vrr-range@pipe-a-lvds-1:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@parse-vrr-range@pipe-a-vga-1:</p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@parse-vrr-range@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102978v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11548/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11548/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-bdw-5557u/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-bsw-nick/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-kbl-7500u/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-cfl-8109u/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-bwr-2160/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-snb-2600/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-hsw-g3258/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-hsw-4770/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-bxt-dsi/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-skl-6700k2/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-elk-e7500/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-glk-j4005/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-ivb-3770/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-ilk-650/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-bsw-n3050/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-cfl-guc/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-pnv-d510/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-bsw-kefka/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-cfl-8700k/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@parse-vrr-range:</p>
<ul>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-blb-e6850/igt@kms_vrr@parse-vrr-range.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-kbl-8809g/igt@kms_vrr@parse-vrr-range.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-kbl-7567u/igt@kms_vrr@parse-vrr-range.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_vrr@parse-vrr-range@pipe-a-dp-2} (NEW):</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-skl-guc/igt@kms_vrr@parse-vrr-range@pipe-a-dp-2.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@kms_vrr@parse-vrr-range@pipe-a-lvds-1} (NEW):</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-snb-2520m/igt@kms_vrr@parse-vrr-range@pipe-a-lvds-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102978v2/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6449 -&gt; IGTPW_6978</li>
<li>Linux: CI_DRM_11548 -&gt; Patchwork_102978v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11548: 4163e73aa7c34d043f2c7ed1567b6e21b6f1119a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_6978: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6978/index.html<br />
  IGT_6449: 704da775abb83faa9324a665fe2992ab90f4ab03 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102978v2: 4163e73aa7c34d043f2c7ed1567b6e21b6f1119a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>af2f75203c23 drm/i915/vrr: Attach and set drm crtc vrr_enabled property<br />
bb41fb54b167 drm/vrr: Attach vrr_enabled property to the drm crtc</p>

</body>
</html>

--===============4384495508529375599==--
