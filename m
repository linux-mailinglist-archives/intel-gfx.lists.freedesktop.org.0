Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D6D3BBB74
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jul 2021 12:46:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4807F89AC2;
	Mon,  5 Jul 2021 10:46:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1E5C789AC2;
 Mon,  5 Jul 2021 10:46:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 16C5EA47DF;
 Mon,  5 Jul 2021 10:46:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: venkata.sai.patnana@intel.com
Date: Mon, 05 Jul 2021 10:46:01 -0000
Message-ID: <162548196106.22950.12099042983494917919@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210705094201.26018-1-venkata.sai.patnana@intel.com>
In-Reply-To: <20210705094201.26018-1-venkata.sai.patnana@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display/dsc=3A_Set_BPP_in_the_kernel_=28rev6=29?=
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
Content-Type: multipart/mixed; boundary="===============1054716844=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1054716844==
Content-Type: multipart/alternative;
 boundary="===============2996877946163517637=="

--===============2996877946163517637==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display/dsc: Set BPP in the kernel (rev6)
URL   : https://patchwork.freedesktop.org/series/91917/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10305 -> Patchwork_20527
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20527 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20527, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20527:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@engines@basic:
    - fi-icl-y:           [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-icl-y/igt@gem_exec_parallel@engines@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-icl-y/igt@gem_exec_parallel@engines@basic.html

  * igt@gem_exec_parallel@engines@userptr:
    - fi-hsw-4770:        [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html
    - fi-ivb-3770:        [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html

  * igt@i915_selftest@live@uncore:
    - fi-snb-2520m:       NOTRUN -> [DMESG-FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-snb-2520m/igt@i915_selftest@live@uncore.html

  * igt@prime_vgem@basic-read:
    - fi-kbl-guc:         [PASS][8] -> [DMESG-WARN][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-kbl-guc/igt@prime_vgem@basic-read.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-kbl-guc/igt@prime_vgem@basic-read.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_parallel@engines@basic:
    - {fi-tgl-dsi}:       NOTRUN -> [DMESG-WARN][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-tgl-dsi/igt@gem_exec_parallel@engines@basic.html

  * igt@gem_exec_parallel@engines@userptr:
    - {fi-ehl-2}:         [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-ehl-2/igt@gem_exec_parallel@engines@userptr.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-ehl-2/igt@gem_exec_parallel@engines@userptr.html

  
Known issues
------------

  Here are the changes found in Patchwork_20527 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bsw-nick:        NOTRUN -> [SKIP][13] ([fdo#109271]) +17 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][14] ([fdo#109271]) +26 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-kbl-x1275/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-apl-guc:         NOTRUN -> [SKIP][15] ([fdo#109271]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-apl-guc/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_exec_gttfill@basic:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][16] ([fdo#109271])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@engines@basic:
    - fi-cml-u2:          [PASS][17] -> [DMESG-WARN][18] ([i915#1610])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-cml-u2/igt@gem_exec_parallel@engines@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-cml-u2/igt@gem_exec_parallel@engines@basic.html
    - fi-bxt-dsi:         [PASS][19] -> [DMESG-WARN][20] ([i915#1610])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-bxt-dsi/igt@gem_exec_parallel@engines@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-bxt-dsi/igt@gem_exec_parallel@engines@basic.html
    - fi-apl-guc:         NOTRUN -> [DMESG-WARN][21] ([i915#1610])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-apl-guc/igt@gem_exec_parallel@engines@basic.html
    - fi-kbl-7500u:       [PASS][22] -> [DMESG-WARN][23] ([i915#1610])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-kbl-7500u/igt@gem_exec_parallel@engines@basic.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-kbl-7500u/igt@gem_exec_parallel@engines@basic.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-bsw-n3050:       NOTRUN -> [INCOMPLETE][24] ([i915#3159])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_huc_copy@huc-copy:
    - fi-glk-dsi:         NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#2190])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-glk-dsi/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-x1275:       NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#2190])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-8809g:       NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#2190])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@mman:
    - fi-skl-6700k2:      [PASS][28] -> [DMESG-FAIL][29] ([i915#1610])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-skl-6700k2/igt@i915_selftest@live@mman.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-skl-6700k2/igt@i915_selftest@live@mman.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-kbl-x1275/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-glk-dsi:         NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-glk-dsi/igt@kms_chamelium@hdmi-hpd-fast.html
    - fi-snb-2520m:       NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-snb-2520m/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-snb-2520m:       NOTRUN -> [SKIP][34] ([fdo#109271]) +15 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-snb-2520m/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#533])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-glk-dsi:         NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#533])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-glk-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-kbl-8809g:       NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#533])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@cursor_plane_move:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][38] ([fdo#109271]) +37 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-kbl-8809g/igt@kms_psr@cursor_plane_move.html

  * igt@kms_psr@primary_page_flip:
    - fi-glk-dsi:         NOTRUN -> [SKIP][39] ([fdo#109271]) +25 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-glk-dsi/igt@kms_psr@primary_page_flip.html

  * igt@runner@aborted:
    - fi-cfl-8109u:       NOTRUN -> [FAIL][40] ([i915#2426] / [i915#3363])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-cfl-8109u/igt@runner@aborted.html
    - fi-apl-guc:         NOTRUN -> [FAIL][41] ([i915#2426] / [i915#3363] / [i915#3364] / [i915#337])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-apl-guc/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][42] ([i915#2426] / [i915#3363] / [i915#3364])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][43] ([i915#3363] / [i915#409])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-kbl-guc/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][44] ([i915#2426])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-ivb-3770/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][45] ([i915#2426] / [i915#3363] / [i915#3364])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-bxt-dsi/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][46] ([i915#1436] / [i915#2426] / [i915#3363])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-skl-6700k2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@engines@basic:
    - fi-glk-dsi:         [DMESG-WARN][47] ([i915#1610]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-glk-dsi/igt@gem_exec_parallel@engines@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-glk-dsi/igt@gem_exec_parallel@engines@basic.html

  * igt@gem_exec_parallel@engines@contexts:
    - fi-snb-2520m:       [DMESG-WARN][49] -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-snb-2520m/igt@gem_exec_parallel@engines@contexts.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-snb-2520m/igt@gem_exec_parallel@engines@contexts.html

  * igt@gem_exec_parallel@engines@userptr:
    - fi-icl-y:           [DMESG-WARN][51] -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [INCOMPLETE][53] ([i915#2782] / [i915#2940]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@kms_flip@basic-flip-vs-dpms@b-dp3:
    - {fi-tgl-1115g4}:    [DMESG-WARN][55] -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-dp3.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-dp3.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-bdw-5557u:       [FAIL][57] ([i915#2426]) -> [FAIL][58] ([i915#1602] / [i915#2029])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-bdw-5557u/igt@runner@aborted.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-bdw-5557u/igt@runner@aborted.html
    - fi-cml-u2:          [FAIL][59] ([i915#2082] / [i915#2426] / [i915#3363]) -> [FAIL][60] ([i915#2082] / [i915#2426] / [i915#3363] / [i915#3364])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-cml-u2/igt@runner@aborted.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-cml-u2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2932]: https://gitlab.freedesktop.org/drm/intel/issues/2932
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3159]: https://gitlab.freedesktop.org/drm/intel/issues/3159
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3364]: https://gitlab.freedesktop.org/drm/intel/issues/3364
  [i915#337]: https://gitlab.freedesktop.org/drm/intel/issues/337
  [i915#3626]: https://gitlab.freedesktop.org/drm/intel/issues/3626
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#3717]: https://gitlab.freedesktop.org/drm/intel/issues/3717
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (32 -> 34)
------------------------------

  Additional (4): fi-kbl-x1275 fi-tgl-dsi fi-apl-guc fi-bsw-n3050 
  Missing    (2): fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * IGT: IGT_6128 -> IGTPW_5971
  * Linux: CI_DRM_10305 -> Patchwork_20527

  CI-20190529: 20190529
  CI_DRM_10305: fd899b57cb480c98e60ee842671bddd4759dfca3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_5971: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5971/index.html
  IGT_6128: b24e5949af7e51f0af484d2ce4cb4c5a41ac5358 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20527: 28b34b2d28625f2fac7598d860b37875214c4223 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

28b34b2d2862 drm/i915/display/dsc: Set BPP in the kernel
ab37d31ec807 drm/i915/display/dsc: Add Per connector debugfs node for DSC BPP enable

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/index.html

--===============2996877946163517637==
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
<tr><td><b>Series:</b></td><td>drm/i915/display/dsc: Set BPP in the kernel (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91917/">https://patchwork.freedesktop.org/series/91917/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10305 -&gt; Patchwork_20527</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20527 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20527, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20527:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@basic:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-icl-y/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-icl-y/igt@gem_exec_parallel@engines@basic.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@userptr:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-hsw-4770/igt@gem_exec_parallel@engines@userptr.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-ivb-3770/igt@gem_exec_parallel@engines@userptr.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-snb-2520m/igt@i915_selftest@live@uncore.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-kbl-guc/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-kbl-guc/igt@prime_vgem@basic-read.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@basic:</p>
<ul>
<li>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-tgl-dsi/igt@gem_exec_parallel@engines@basic.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@userptr:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-ehl-2/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-ehl-2/igt@gem_exec_parallel@engines@userptr.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20527 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_prime@amd-to-i915:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-kbl-x1275/igt@amdgpu/amd_prime@amd-to-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-apl-guc/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@basic:</p>
<ul>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-cml-u2/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-cml-u2/igt@gem_exec_parallel@engines@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-bxt-dsi/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-bxt-dsi/igt@gem_exec_parallel@engines@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-apl-guc/igt@gem_exec_parallel@engines@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-kbl-7500u/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-kbl-7500u/igt@gem_exec_parallel@engines@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3159">i915#3159</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-glk-dsi/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-skl-6700k2/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-skl-6700k2/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-kbl-x1275/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-glk-dsi/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-snb-2520m/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-snb-2520m/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-glk-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-kbl-8809g/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-glk-dsi/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3364">i915#3364</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/337">i915#337</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3364">i915#3364</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3364">i915#3364</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@basic:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-glk-dsi/igt@gem_exec_parallel@engines@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-glk-dsi/igt@gem_exec_parallel@engines@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-snb-2520m/igt@gem_exec_parallel@engines@contexts.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-snb-2520m/igt@gem_exec_parallel@engines@contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@userptr:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-icl-y/igt@gem_exec_parallel@engines@userptr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dp3:</p>
<ul>
<li>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-dp3.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-dp3.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10305/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20527/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3364">i915#3364</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (32 -&gt; 34)</h2>
<p>Additional (4): fi-kbl-x1275 fi-tgl-dsi fi-apl-guc fi-bsw-n3050 <br />
  Missing    (2): fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6128 -&gt; IGTPW_5971</li>
<li>Linux: CI_DRM_10305 -&gt; Patchwork_20527</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10305: fd899b57cb480c98e60ee842671bddd4759dfca3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_5971: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5971/index.html<br />
  IGT_6128: b24e5949af7e51f0af484d2ce4cb4c5a41ac5358 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20527: 28b34b2d28625f2fac7598d860b37875214c4223 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>28b34b2d2862 drm/i915/display/dsc: Set BPP in the kernel<br />
ab37d31ec807 drm/i915/display/dsc: Add Per connector debugfs node for DSC BPP enable</p>

</body>
</html>

--===============2996877946163517637==--

--===============1054716844==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1054716844==--
