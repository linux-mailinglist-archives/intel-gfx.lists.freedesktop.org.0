Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F16A51188D
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Apr 2022 15:55:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AAC210F4AB;
	Wed, 27 Apr 2022 13:55:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0B8C310F4AF;
 Wed, 27 Apr 2022 13:55:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F3FFAAADD8;
 Wed, 27 Apr 2022 13:55:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7960711113546828997=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 27 Apr 2022 13:55:19 -0000
Message-ID: <165106771996.24233.7117583862768998753@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/bios=3A_Rework_BDB_block_handling_and_PNPID-=3Epanel=5Fty?=
 =?utf-8?q?pe_matching_=28rev8=29?=
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

--===============7960711113546828997==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/bios: Rework BDB block handling and PNPID->panel_type matching (rev8)
URL   : https://patchwork.freedesktop.org/series/102213/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11550 -> Patchwork_102213v8
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_102213v8 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_102213v8, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/index.html

Participating hosts (43 -> 43)
------------------------------

  Additional (3): bat-dg2-8 bat-dg1-6 bat-adlp-4 
  Missing    (3): fi-bsw-cyan fi-cfl-8700k fi-ivb-3770 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_102213v8:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-bxt-dsi:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-bxt-dsi/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@module-reload:
    - {bat-rpls-2}:       [DMESG-WARN][2] ([i915#4391]) -> [WARN][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/bat-rpls-2/igt@i915_pm_rpm@module-reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/bat-rpls-2/igt@i915_pm_rpm@module-reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_102213v8 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-dg1-6:          NOTRUN -> [INCOMPLETE][4] ([i915#5827])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/bat-dg1-6/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_lmem_swapping@basic:
    - bat-adlp-4:         NOTRUN -> [SKIP][5] ([i915#4613]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/bat-adlp-4/igt@gem_lmem_swapping@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-adlp-4:         NOTRUN -> [SKIP][6] ([i915#3282])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/bat-adlp-4/igt@gem_tiled_pread_basic.html

  * igt@kms_chamelium@dp-crc-fast:
    - bat-adlp-4:         NOTRUN -> [SKIP][7] ([fdo#111827]) +8 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-adlp-4:         NOTRUN -> [SKIP][8] ([i915#4103]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/bat-adlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - bat-adlp-4:         NOTRUN -> [DMESG-WARN][9] ([i915#3576])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-adlp-4:         NOTRUN -> [SKIP][10] ([i915#4093]) +3 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/bat-adlp-4/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-adlp-4:         NOTRUN -> [SKIP][11] ([i915#3555])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/bat-adlp-4/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-read:
    - bat-adlp-4:         NOTRUN -> [SKIP][12] ([i915#3291] / [i915#3708]) +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/bat-adlp-4/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-userptr:
    - bat-adlp-4:         NOTRUN -> [SKIP][13] ([i915#3301] / [i915#3708])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/bat-adlp-4/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - {bat-rpls-2}:       [DMESG-WARN][14] ([i915#5537]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/bat-rpls-2/igt@i915_module_load@reload.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/bat-rpls-2/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-cfl-guc:         [DMESG-FAIL][16] ([i915#5334]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@reset:
    - {bat-rpls-1}:       [DMESG-FAIL][18] ([i915#4983]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/bat-rpls-1/igt@i915_selftest@live@reset.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/bat-rpls-1/igt@i915_selftest@live@reset.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-rkl-11600:       [INCOMPLETE][20] ([i915#5127]) -> [INCOMPLETE][21] ([i915#5127] / [i915#5857])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-kbl-7567u:       [SKIP][22] ([fdo#109271] / [i915#5341]) -> [SKIP][23] ([fdo#109271])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-pnv-d510:        [SKIP][24] ([fdo#109271] / [i915#5341]) -> [SKIP][25] ([fdo#109271])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-snb-2520m:       [SKIP][26] ([fdo#109271] / [i915#5341]) -> [SKIP][27] ([fdo#109271])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-snb-2520m/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-snb-2520m/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-bsw-kefka:       [SKIP][28] ([fdo#109271] / [i915#5341]) -> [SKIP][29] ([fdo#109271])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-bsw-kefka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-bsw-kefka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-kbl-8809g:       [SKIP][30] ([fdo#109271] / [i915#5341]) -> [SKIP][31] ([fdo#109271])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-bsw-nick:        [SKIP][32] ([fdo#109271] / [i915#5341]) -> [SKIP][33] ([fdo#109271])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-bsw-nick/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-bsw-nick/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-bwr-2160:        [SKIP][34] ([fdo#109271] / [i915#5341]) -> [SKIP][35] ([fdo#109271])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-snb-2600:        [SKIP][36] ([fdo#109271] / [i915#5341]) -> [SKIP][37] ([fdo#109271])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-snb-2600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-snb-2600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-elk-e7500:       [SKIP][38] ([fdo#109271] / [i915#5341]) -> [SKIP][39] ([fdo#109271])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-blb-e6850:       [SKIP][40] ([fdo#109271] / [i915#5341]) -> [SKIP][41] ([fdo#109271])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-blb-e6850/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-blb-e6850/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-ilk-650:         [SKIP][42] ([fdo#109271] / [i915#5341]) -> [SKIP][43] ([fdo#109271])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-ilk-650/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-ilk-650/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4093]: https://gitlab.freedesktop.org/drm/intel/issues/4093
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5270]: https://gitlab.freedesktop.org/drm/intel/issues/5270
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5275]: https://gitlab.freedesktop.org/drm/intel/issues/5275
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5356]: https://gitlab.freedesktop.org/drm/intel/issues/5356
  [i915#5537]: https://gitlab.freedesktop.org/drm/intel/issues/5537
  [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763
  [i915#5827]: https://gitlab.freedesktop.org/drm/intel/issues/5827
  [i915#5829]: https://gitlab.freedesktop.org/drm/intel/issues/5829
  [i915#5857]: https://gitlab.freedesktop.org/drm/intel/issues/5857


Build changes
-------------

  * Linux: CI_DRM_11550 -> Patchwork_102213v8

  CI-20190529: 20190529
  CI_DRM_11550: 56b089ae03ef8ea8ab7f474eaa70367898891ef0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6451: f055bd83bd831a938d639718c2359516224f15f9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102213v8: 56b089ae03ef8ea8ab7f474eaa70367898891ef0 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

db1f620e3d3a drm/i915/bios: Dump PNPID and panel name
316cbbf46a1b drm/edid: Extract drm_edid_decode_mfg_id()
d218e1905b61 drm/i915: Respect VBT seamless DRRS min refresh rate
577eb1c787ee drm/i915/bios: Parse the seamless DRRS min refresh rate
729d60b58de6 drm/i915/bios: Determine panel type via PNPID match
49dbfde1acb5 drm/i915/bios: Refactor panel_type code
073c18be87dc drm/i915/bios: Extract get_panel_type()
deace6319819 drm/i915/bios: Do panel specific VBT parsing later
8efa5342cea2 drm/i915/pps: Reinit PPS delays after VBT has been fully parsed
6f5109103599 drm/i915/pps: Split PPS init+sanitize in two
ab2e93e5621c drm/i915/bios: Don't parse some panel specific data multiple times
d6ce5dff2ad4 drm/i915/bios: Split VBT parsing to global vs. panel specific parts
84ed5e419c32 drm/i915/bios: Split parse_driver_features() into two parts
68acdf86c643 drm/i915/bios: Assume panel_type==0 if the VBT has bogus data
bdfb8e9d68eb drm/i915/bios: Document the mess around the LFP data tables
e2a1df9951f4 drm/i915/bios: Get access to the tail end of the LFP data block
7503e5eaefc0 drm/i915/bios: Generate LFP data table pointers if the VBT lacks them
d4e92196f868 drm/i915/bios: Reorder panel DTD parsing

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/index.html

--===============7960711113546828997==
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
<tr><td><b>Series:</b></td><td>drm/i915/bios: Rework BDB block handling and PNPID-&gt;panel_type matching (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102213/">https://patchwork.freedesktop.org/series/102213/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11550 -&gt; Patchwork_102213v8</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_102213v8 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_102213v8, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/index.html</p>
<h2>Participating hosts (43 -&gt; 43)</h2>
<p>Additional (3): bat-dg2-8 bat-dg1-6 bat-adlp-4 <br />
  Missing    (3): fi-bsw-cyan fi-cfl-8700k fi-ivb-3770 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_102213v8:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/bat-rpls-2/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/bat-rpls-2/igt@i915_pm_rpm@module-reload.html">WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102213v8 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/bat-dg1-6/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5827">i915#5827</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/bat-adlp-4/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/bat-adlp-4/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/bat-adlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/bat-adlp-4/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4093">i915#4093</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/bat-adlp-4/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/bat-adlp-4/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/bat-adlp-4/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/bat-rpls-2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5537">i915#5537</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/bat-rpls-2/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/bat-rpls-1/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5127">i915#5127</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5127">i915#5127</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5857">i915#5857</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-snb-2520m/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-snb-2520m/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-bsw-kefka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-bsw-kefka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-bsw-nick/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-bsw-nick/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-snb-2600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-snb-2600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-blb-e6850/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-blb-e6850/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-ilk-650/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102213v8/fi-ilk-650/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11550 -&gt; Patchwork_102213v8</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11550: 56b089ae03ef8ea8ab7f474eaa70367898891ef0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6451: f055bd83bd831a938d639718c2359516224f15f9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102213v8: 56b089ae03ef8ea8ab7f474eaa70367898891ef0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>db1f620e3d3a drm/i915/bios: Dump PNPID and panel name<br />
316cbbf46a1b drm/edid: Extract drm_edid_decode_mfg_id()<br />
d218e1905b61 drm/i915: Respect VBT seamless DRRS min refresh rate<br />
577eb1c787ee drm/i915/bios: Parse the seamless DRRS min refresh rate<br />
729d60b58de6 drm/i915/bios: Determine panel type via PNPID match<br />
49dbfde1acb5 drm/i915/bios: Refactor panel_type code<br />
073c18be87dc drm/i915/bios: Extract get_panel_type()<br />
deace6319819 drm/i915/bios: Do panel specific VBT parsing later<br />
8efa5342cea2 drm/i915/pps: Reinit PPS delays after VBT has been fully parsed<br />
6f5109103599 drm/i915/pps: Split PPS init+sanitize in two<br />
ab2e93e5621c drm/i915/bios: Don't parse some panel specific data multiple times<br />
d6ce5dff2ad4 drm/i915/bios: Split VBT parsing to global vs. panel specific parts<br />
84ed5e419c32 drm/i915/bios: Split parse_driver_features() into two parts<br />
68acdf86c643 drm/i915/bios: Assume panel_type==0 if the VBT has bogus data<br />
bdfb8e9d68eb drm/i915/bios: Document the mess around the LFP data tables<br />
e2a1df9951f4 drm/i915/bios: Get access to the tail end of the LFP data block<br />
7503e5eaefc0 drm/i915/bios: Generate LFP data table pointers if the VBT lacks them<br />
d4e92196f868 drm/i915/bios: Reorder panel DTD parsing</p>

</body>
</html>

--===============7960711113546828997==--
