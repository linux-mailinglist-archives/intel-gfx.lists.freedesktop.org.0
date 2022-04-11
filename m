Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 603F04FBBC4
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Apr 2022 14:11:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD81110E060;
	Mon, 11 Apr 2022 12:11:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5223110E109;
 Mon, 11 Apr 2022 12:11:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4F63BA0078;
 Mon, 11 Apr 2022 12:11:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2651726006396875156=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 11 Apr 2022 12:11:21 -0000
Message-ID: <164967908128.2973.4302959568535323620@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1649670305.git.jani.nikula@intel.com>
In-Reply-To: <cover.1649670305.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_low_level_EDID_block_read_refactoring_etc=2E_=28rev4?=
 =?utf-8?q?=29?=
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

--===============2651726006396875156==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid: low level EDID block read refactoring etc. (rev4)
URL   : https://patchwork.freedesktop.org/series/102329/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11481 -> Patchwork_102329v4
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_102329v4 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_102329v4, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/index.html

Participating hosts (48 -> 39)
------------------------------

  Additional (6): fi-cml-u2 fi-tgl-u2 fi-skl-guc fi-ivb-3770 fi-pnv-d510 fi-ehl-2 
  Missing    (15): fi-bdw-samus shard-tglu bat-dg1-6 bat-dg2-8 shard-rkl bat-adlm-1 bat-dg2-9 fi-bsw-cyan bat-adlp-6 bat-adlp-4 bat-rpls-1 bat-rpls-2 shard-dg1 bat-jsl-2 bat-jsl-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_102329v4:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - fi-rkl-11600:       [PASS][1] -> [DMESG-WARN][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-rkl-11600/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-elk-e7500:       [PASS][3] -> [DMESG-WARN][4] +61 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-elk-e7500/igt@gem_exec_suspend@basic-s3@smem.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-elk-e7500/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@kms_addfb_basic@addfb25-modifier-no-flag:
    - fi-cfl-guc:         [PASS][5] -> [DMESG-WARN][6] +61 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-cfl-guc/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cfl-guc/igt@kms_addfb_basic@addfb25-modifier-no-flag.html

  * igt@kms_addfb_basic@bad-pitch-128:
    - fi-rkl-guc:         [PASS][7] -> [DMESG-WARN][8] +62 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-rkl-guc/igt@kms_addfb_basic@bad-pitch-128.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-guc/igt@kms_addfb_basic@bad-pitch-128.html

  * igt@kms_addfb_basic@bad-pitch-32:
    - fi-adl-ddr5:        [PASS][9] -> [DMESG-WARN][10] +63 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-adl-ddr5/igt@kms_addfb_basic@bad-pitch-32.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-adl-ddr5/igt@kms_addfb_basic@bad-pitch-32.html

  * igt@kms_addfb_basic@bad-pitch-63:
    - fi-rkl-11600:       NOTRUN -> [DMESG-WARN][11] +59 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@kms_addfb_basic@bad-pitch-63.html

  * igt@kms_addfb_basic@bad-pitch-65536:
    - fi-hsw-g3258:       [PASS][12] -> [DMESG-WARN][13] +67 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-hsw-g3258/igt@kms_addfb_basic@bad-pitch-65536.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-hsw-g3258/igt@kms_addfb_basic@bad-pitch-65536.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - fi-icl-u2:          [PASS][14] -> [DMESG-WARN][15] +67 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-icl-u2/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-icl-u2/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_addfb_basic@invalid-get-prop:
    - fi-bsw-n3050:       [PASS][16] -> [DMESG-WARN][17] +57 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-bsw-n3050/igt@kms_addfb_basic@invalid-get-prop.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-bsw-n3050/igt@kms_addfb_basic@invalid-get-prop.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - fi-cfl-8700k:       [PASS][18] -> [DMESG-WARN][19] +62 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-cfl-8700k/igt@kms_addfb_basic@tile-pitch-mismatch.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cfl-8700k/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_addfb_basic@too-wide:
    - fi-tgl-1115g4:      [PASS][20] -> [DMESG-WARN][21] +63 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-tgl-1115g4/igt@kms_addfb_basic@too-wide.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-tgl-1115g4/igt@kms_addfb_basic@too-wide.html

  * igt@kms_addfb_basic@unused-pitches:
    - fi-snb-2600:        [PASS][22] -> [DMESG-WARN][23] +63 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-snb-2600/igt@kms_addfb_basic@unused-pitches.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-snb-2600/igt@kms_addfb_basic@unused-pitches.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - fi-glk-j4005:       [PASS][24] -> [DMESG-WARN][25] +62 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-glk-j4005/igt@kms_force_connector_basic@prune-stale-modes.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-glk-j4005/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cfl-8109u:       [PASS][26] -> [DMESG-WARN][27] +62 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:
    - fi-ilk-650:         [PASS][28] -> [DMESG-WARN][29] +63 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-ilk-650/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-ilk-650/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-kbl-7500u:       [PASS][30] -> [DMESG-WARN][31] +62 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-kbl-7500u/igt@prime_vgem@basic-fence-flip.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-kbl-7500u/igt@prime_vgem@basic-fence-flip.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-rkl-11600:       [INCOMPLETE][32] ([i915#5127]) -> [DMESG-WARN][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@i915_suspend@system-suspend-without-i915}:
    - fi-hsw-g3258:       [PASS][34] -> [DMESG-WARN][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-hsw-g3258/igt@i915_suspend@system-suspend-without-i915.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-hsw-g3258/igt@i915_suspend@system-suspend-without-i915.html
    - fi-elk-e7500:       [PASS][36] -> [DMESG-WARN][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-elk-e7500/igt@i915_suspend@system-suspend-without-i915.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-elk-e7500/igt@i915_suspend@system-suspend-without-i915.html
    - fi-ilk-650:         [PASS][38] -> [DMESG-WARN][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-ilk-650/igt@i915_suspend@system-suspend-without-i915.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-ilk-650/igt@i915_suspend@system-suspend-without-i915.html
    - fi-snb-2600:        [PASS][40] -> [DMESG-WARN][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-snb-2600/igt@i915_suspend@system-suspend-without-i915.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-snb-2600/igt@i915_suspend@system-suspend-without-i915.html

  
Known issues
------------

  Here are the changes found in Patchwork_102329v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-cml-u2:          NOTRUN -> [DMESG-WARN][42] ([i915#5437])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cml-u2/igt@core_hotunplug@unbind-rebind.html
    - fi-rkl-11600:       NOTRUN -> [DMESG-WARN][43] ([i915#5577])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html
    - fi-skl-guc:         NOTRUN -> [DMESG-WARN][44] ([i915#5437])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-skl-guc/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-cml-u2:          NOTRUN -> [SKIP][45] ([i915#1208]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cml-u2/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-cml-u2:          NOTRUN -> [SKIP][46] ([i915#2190])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cml-u2/igt@gem_huc_copy@huc-copy.html
    - fi-tgl-u2:          NOTRUN -> [SKIP][47] ([i915#2190])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][48] ([i915#2190])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-rkl-11600:       NOTRUN -> [SKIP][49] ([i915#4613]) +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@gem_lmem_swapping@basic.html
    - fi-skl-guc:         NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#4613]) +3 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-skl-guc/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-cml-u2:          NOTRUN -> [SKIP][51] ([i915#4613]) +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cml-u2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-ivb-3770:        NOTRUN -> [SKIP][52] ([fdo#109271]) +18 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-ivb-3770/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_tiled_pread_basic:
    - fi-rkl-11600:       NOTRUN -> [SKIP][53] ([i915#3282])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-rkl-11600:       NOTRUN -> [SKIP][54] ([i915#3012])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][55] -> [INCOMPLETE][56] ([i915#3921])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_busy@basic@flip:
    - fi-tgl-u2:          NOTRUN -> [DMESG-WARN][57] ([i915#402])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-tgl-u2/igt@kms_busy@basic@flip.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-skl-guc:         NOTRUN -> [SKIP][58] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-skl-guc/igt@kms_chamelium@dp-crc-fast.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][59] ([fdo#111827]) +8 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-ivb-3770:        NOTRUN -> [SKIP][60] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-ivb-3770/igt@kms_chamelium@dp-hpd-fast.html
    - fi-tgl-u2:          NOTRUN -> [SKIP][61] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-tgl-u2/igt@kms_chamelium@dp-hpd-fast.html
    - fi-cml-u2:          NOTRUN -> [SKIP][62] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cml-u2/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-skl-guc:         NOTRUN -> [SKIP][63] ([fdo#109271]) +11 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-skl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][64] ([i915#4070] / [i915#4103]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-bsw-n3050:       [PASS][65] -> [DMESG-WARN][66] ([i915#1982])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-tgl-u2:          NOTRUN -> [SKIP][67] ([i915#4103]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-tgl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-cml-u2:          NOTRUN -> [SKIP][68] ([fdo#109278]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cml-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-cml-u2:          NOTRUN -> [SKIP][69] ([fdo#109285])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cml-u2/igt@kms_force_connector_basic@force-load-detect.html
    - fi-tgl-u2:          NOTRUN -> [SKIP][70] ([fdo#109285])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][71] ([fdo#109285] / [i915#4098])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          NOTRUN -> [DMESG-WARN][72] ([i915#4269])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-pnv-d510:        NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#5341])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-cfl-guc:         [PASS][74] -> [DMESG-WARN][75] ([i915#5341])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-cfl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cfl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-icl-u2:          [PASS][76] -> [DMESG-WARN][77] ([i915#5341])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-icl-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-icl-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-cfl-8700k:       [PASS][78] -> [DMESG-WARN][79] ([i915#5341])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-cfl-8700k/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cfl-8700k/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-cfl-8109u:       [PASS][80] -> [DMESG-WARN][81] ([i915#5341])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-kbl-7500u:       [PASS][82] -> [DMESG-WARN][83] ([i915#5341])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-kbl-7500u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-kbl-7500u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-hsw-g3258:       [PASS][84] -> [DMESG-WARN][85] ([i915#5341])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-hsw-g3258/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-hsw-g3258/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-rkl-guc:         [PASS][86] -> [DMESG-WARN][87] ([i915#5341])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-rkl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-adl-ddr5:        [PASS][88] -> [DMESG-WARN][89] ([i915#5341])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-adl-ddr5/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-adl-ddr5/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-glk-j4005:       [PASS][90] -> [DMESG-WARN][91] ([i915#5341])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-glk-j4005/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-glk-j4005/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-tgl-1115g4:      [PASS][92] -> [DMESG-WARN][93] ([i915#5341])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-tgl-1115g4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-tgl-1115g4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-rkl-11600:       NOTRUN -> [DMESG-WARN][94] ([i915#5341])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-bsw-n3050:       [PASS][95] -> [DMESG-WARN][96] ([i915#5341])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-bsw-n3050/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-bsw-n3050/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-rkl-11600:       NOTRUN -> [SKIP][97] ([i915#4070] / [i915#533])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-cml-u2:          NOTRUN -> [SKIP][98] ([fdo#109278] / [i915#533])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cml-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-skl-guc:         NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#533])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-rkl-11600:       NOTRUN -> [SKIP][100] ([i915#1072]) +3 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-cml-u2:          NOTRUN -> [SKIP][101] ([i915#3555])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cml-u2/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-tgl-u2:          NOTRUN -> [SKIP][102] ([i915#3555])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-tgl-u2/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][103] ([i915#3555] / [i915#4098])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][104] ([fdo#109271]) +39 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-pnv-d510/igt@prime_vgem@basic-userptr.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][105] ([i915#3301] / [i915#3708])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@prime_vgem@basic-userptr.html
    - fi-cml-u2:          NOTRUN -> [SKIP][106] ([i915#3301])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cml-u2/igt@prime_vgem@basic-userptr.html

  * igt@prime_vgem@basic-write:
    - fi-rkl-11600:       NOTRUN -> [SKIP][107] ([i915#3291] / [i915#3708]) +2 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@prime_vgem@basic-write.html

  * igt@runner@aborted:
    - fi-rkl-11600:       NOTRUN -> [FAIL][108] ([i915#4312])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][109] ([i915#4312])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-bdw-5557u/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][110] ([fdo#109271] / [i915#2722] / [i915#4312] / [i915#5594])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-hsw-4770/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][111] ([i915#4312] / [i915#5257])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cml-u2/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][112] ([i915#4312] / [i915#5257])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-skl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1208]: https://gitlab.freedesktop.org/drm/intel/issues/1208
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5437]: https://gitlab.freedesktop.org/drm/intel/issues/5437
  [i915#5577]: https://gitlab.freedesktop.org/drm/intel/issues/5577
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594


Build changes
-------------

  * Linux: CI_DRM_11481 -> Patchwork_102329v4

  CI-20190529: 20190529
  CI_DRM_11481: 9bf68eb47288411da23ce5c9967f27dba43bda1d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6415: c3b690bd5f7fb1fb7ed786ab0f3b815930a6a55f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102329v4: 102329v4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8ed8357ac179 drm/edid: add EDID block count and size helpers
742cc7333814 drm/edid: add single point of return to drm_do_get_edid()
7094e7e7477d drm/edid: drop extra local var
bcb239b349ce drm/edid: convert extension block read to EDID block read helper
7d685c955a11 drm/edid: use EDID block read helper in drm_do_get_edid()
3b65ff7fa770 drm/edid: abstract an EDID block read helper
923a34fc514e drm/edid: add typedef for block read function
ec1501a2d0ad drm/edid: pass struct edid to connector_bad_edid()
8a74029683d0 drm/edid: add a helper to log dump an EDID block
ac1abb2628f0 drm/edid: refactor EDID block status printing
3d3e7ba17127 drm/edid: have edid_block_check() detect blocks that are all zero
8acb3a65f117 drm/edid: convert edid_is_zero() to edid_block_is_zero() for blocks

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/index.html

--===============2651726006396875156==
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
<tr><td><b>Series:</b></td><td>drm/edid: low level EDID block read refactoring etc. (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102329/">https://patchwork.freedesktop.org/series/102329/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11481 -&gt; Patchwork_102329v4</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_102329v4 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_102329v4, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/index.html</p>
<h2>Participating hosts (48 -&gt; 39)</h2>
<p>Additional (6): fi-cml-u2 fi-tgl-u2 fi-skl-guc fi-ivb-3770 fi-pnv-d510 fi-ehl-2 <br />
  Missing    (15): fi-bdw-samus shard-tglu bat-dg1-6 bat-dg2-8 shard-rkl bat-adlm-1 bat-dg2-9 fi-bsw-cyan bat-adlp-6 bat-adlp-4 bat-rpls-1 bat-rpls-2 shard-dg1 bat-jsl-2 bat-jsl-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_102329v4:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-rkl-11600/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-elk-e7500/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-elk-e7500/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> +61 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-modifier-no-flag:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-cfl-guc/igt@kms_addfb_basic@addfb25-modifier-no-flag.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cfl-guc/igt@kms_addfb_basic@addfb25-modifier-no-flag.html">DMESG-WARN</a> +61 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-128:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-rkl-guc/igt@kms_addfb_basic@bad-pitch-128.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-guc/igt@kms_addfb_basic@bad-pitch-128.html">DMESG-WARN</a> +62 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-32:</p>
<ul>
<li>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-adl-ddr5/igt@kms_addfb_basic@bad-pitch-32.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-adl-ddr5/igt@kms_addfb_basic@bad-pitch-32.html">DMESG-WARN</a> +63 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-63:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@kms_addfb_basic@bad-pitch-63.html">DMESG-WARN</a> +59 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-65536:</p>
<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-hsw-g3258/igt@kms_addfb_basic@bad-pitch-65536.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-hsw-g3258/igt@kms_addfb_basic@bad-pitch-65536.html">DMESG-WARN</a> +67 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-icl-u2/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-icl-u2/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">DMESG-WARN</a> +67 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-get-prop:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-bsw-n3050/igt@kms_addfb_basic@invalid-get-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-bsw-n3050/igt@kms_addfb_basic@invalid-get-prop.html">DMESG-WARN</a> +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-cfl-8700k/igt@kms_addfb_basic@tile-pitch-mismatch.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cfl-8700k/igt@kms_addfb_basic@tile-pitch-mismatch.html">DMESG-WARN</a> +62 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-wide:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-tgl-1115g4/igt@kms_addfb_basic@too-wide.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-tgl-1115g4/igt@kms_addfb_basic@too-wide.html">DMESG-WARN</a> +63 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@unused-pitches:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-snb-2600/igt@kms_addfb_basic@unused-pitches.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-snb-2600/igt@kms_addfb_basic@unused-pitches.html">DMESG-WARN</a> +63 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-glk-j4005/igt@kms_force_connector_basic@prune-stale-modes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-glk-j4005/igt@kms_force_connector_basic@prune-stale-modes.html">DMESG-WARN</a> +62 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> +62 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-ilk-650/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-ilk-650/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">DMESG-WARN</a> +63 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-kbl-7500u/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-kbl-7500u/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> +62 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3@smem:<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5127">i915#5127</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@i915_suspend@system-suspend-without-i915}:</p>
<ul>
<li>
<p>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-hsw-g3258/igt@i915_suspend@system-suspend-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-hsw-g3258/igt@i915_suspend@system-suspend-without-i915.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-elk-e7500/igt@i915_suspend@system-suspend-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-elk-e7500/igt@i915_suspend@system-suspend-without-i915.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-ilk-650/igt@i915_suspend@system-suspend-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-ilk-650/igt@i915_suspend@system-suspend-without-i915.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-snb-2600/igt@i915_suspend@system-suspend-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-snb-2600/igt@i915_suspend@system-suspend-without-i915.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102329v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cml-u2/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5437">i915#5437</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5577">i915#5577</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-skl-guc/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5437">i915#5437</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cml-u2/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1208">i915#1208</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cml-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-skl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cml-u2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-ivb-3770/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-tgl-u2/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-skl-guc/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-ivb-3770/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-tgl-u2/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cml-u2/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-skl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +11 similar issues</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-tgl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cml-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cml-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-cfl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cfl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-icl-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-icl-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-cfl-8700k/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cfl-8700k/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-kbl-7500u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-kbl-7500u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-hsw-g3258/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-hsw-g3258/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-rkl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-adl-ddr5/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-adl-ddr5/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-glk-j4005/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-glk-j4005/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-tgl-1115g4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-tgl-1115g4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11481/fi-bsw-n3050/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-bsw-n3050/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cml-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cml-u2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-tgl-u2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +39 similar issues</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cml-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-rkl-11600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a>)</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v4/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11481 -&gt; Patchwork_102329v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11481: 9bf68eb47288411da23ce5c9967f27dba43bda1d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6415: c3b690bd5f7fb1fb7ed786ab0f3b815930a6a55f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102329v4: 102329v4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8ed8357ac179 drm/edid: add EDID block count and size helpers<br />
742cc7333814 drm/edid: add single point of return to drm_do_get_edid()<br />
7094e7e7477d drm/edid: drop extra local var<br />
bcb239b349ce drm/edid: convert extension block read to EDID block read helper<br />
7d685c955a11 drm/edid: use EDID block read helper in drm_do_get_edid()<br />
3b65ff7fa770 drm/edid: abstract an EDID block read helper<br />
923a34fc514e drm/edid: add typedef for block read function<br />
ec1501a2d0ad drm/edid: pass struct edid to connector_bad_edid()<br />
8a74029683d0 drm/edid: add a helper to log dump an EDID block<br />
ac1abb2628f0 drm/edid: refactor EDID block status printing<br />
3d3e7ba17127 drm/edid: have edid_block_check() detect blocks that are all zero<br />
8acb3a65f117 drm/edid: convert edid_is_zero() to edid_block_is_zero() for blocks</p>

</body>
</html>

--===============2651726006396875156==--
