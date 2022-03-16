Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B974DB4C5
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 16:23:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEFF489BF3;
	Wed, 16 Mar 2022 15:23:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 42D4689BF3;
 Wed, 16 Mar 2022 15:23:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3D835AADD1;
 Wed, 16 Mar 2022 15:23:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7908813416530905515=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Wed, 16 Mar 2022 15:23:44 -0000
Message-ID: <164744422421.29209.12711777696935938350@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220316130754.813761-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20220316130754.813761-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/gt=3A_preempt_engine_to_id?=
 =?utf-8?q?le_before_reset?=
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

--===============7908813416530905515==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/gt: preempt engine to idle before reset
URL   : https://patchwork.freedesktop.org/series/101432/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11368 -> Patchwork_22586
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22586 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22586, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/index.html

Participating hosts (48 -> 44)
------------------------------

  Additional (4): bat-rpls-1 bat-dg2-9 bat-dg1-6 bat-dg1-5 
  Missing    (8): shard-tglu fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-pnv-d510 shard-rkl shard-dg1 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22586:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-snb-2600:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-snb-2600/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-snb-2600/igt@core_hotunplug@unbind-rebind.html
    - fi-snb-2520m:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-snb-2520m/igt@core_hotunplug@unbind-rebind.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-snb-2520m/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_hangman@error-state-basic:
    - fi-kbl-guc:         [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-kbl-guc/igt@i915_hangman@error-state-basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-kbl-guc/igt@i915_hangman@error-state-basic.html
    - fi-kbl-8809g:       [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-kbl-8809g/igt@i915_hangman@error-state-basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-kbl-8809g/igt@i915_hangman@error-state-basic.html
    - bat-dg1-5:          NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@i915_hangman@error-state-basic.html
    - fi-cfl-8700k:       [PASS][10] -> [FAIL][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-cfl-8700k/igt@i915_hangman@error-state-basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-cfl-8700k/igt@i915_hangman@error-state-basic.html
    - fi-kbl-x1275:       [PASS][12] -> [FAIL][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-kbl-x1275/igt@i915_hangman@error-state-basic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-kbl-x1275/igt@i915_hangman@error-state-basic.html
    - fi-skl-6700k2:      [PASS][14] -> [FAIL][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-skl-6700k2/igt@i915_hangman@error-state-basic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-skl-6700k2/igt@i915_hangman@error-state-basic.html
    - fi-skl-guc:         [PASS][16] -> [FAIL][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-skl-guc/igt@i915_hangman@error-state-basic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-skl-guc/igt@i915_hangman@error-state-basic.html
    - fi-kbl-7567u:       [PASS][18] -> [FAIL][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-kbl-7567u/igt@i915_hangman@error-state-basic.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-kbl-7567u/igt@i915_hangman@error-state-basic.html
    - fi-glk-j4005:       [PASS][20] -> [FAIL][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-glk-j4005/igt@i915_hangman@error-state-basic.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-glk-j4005/igt@i915_hangman@error-state-basic.html
    - fi-cfl-guc:         [PASS][22] -> [FAIL][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-cfl-guc/igt@i915_hangman@error-state-basic.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-cfl-guc/igt@i915_hangman@error-state-basic.html
    - fi-tgl-1115g4:      [PASS][24] -> [FAIL][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-tgl-1115g4/igt@i915_hangman@error-state-basic.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-tgl-1115g4/igt@i915_hangman@error-state-basic.html
    - fi-bxt-dsi:         [PASS][26] -> [FAIL][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-bxt-dsi/igt@i915_hangman@error-state-basic.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-bxt-dsi/igt@i915_hangman@error-state-basic.html
    - bat-dg1-6:          NOTRUN -> [FAIL][28]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@i915_hangman@error-state-basic.html
    - fi-kbl-7500u:       [PASS][29] -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-kbl-7500u/igt@i915_hangman@error-state-basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-kbl-7500u/igt@i915_hangman@error-state-basic.html
    - fi-kbl-soraka:      [PASS][31] -> [FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-kbl-soraka/igt@i915_hangman@error-state-basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-kbl-soraka/igt@i915_hangman@error-state-basic.html
    - fi-glk-dsi:         [PASS][33] -> [FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-glk-dsi/igt@i915_hangman@error-state-basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-glk-dsi/igt@i915_hangman@error-state-basic.html
    - fi-cfl-8109u:       [PASS][35] -> [FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-cfl-8109u/igt@i915_hangman@error-state-basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-cfl-8109u/igt@i915_hangman@error-state-basic.html
    - fi-rkl-guc:         [PASS][37] -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-rkl-guc/igt@i915_hangman@error-state-basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-rkl-guc/igt@i915_hangman@error-state-basic.html

  * igt@i915_selftest@live@hangcheck:
    - fi-glk-j4005:       [PASS][39] -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-glk-j4005/igt@i915_selftest@live@hangcheck.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-glk-j4005/igt@i915_selftest@live@hangcheck.html
    - fi-ivb-3770:        [PASS][41] -> [INCOMPLETE][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@mman:
    - fi-bwr-2160:        [PASS][43] -> [INCOMPLETE][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-bwr-2160/igt@i915_selftest@live@mman.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-bwr-2160/igt@i915_selftest@live@mman.html
    - fi-ilk-650:         [PASS][45] -> [INCOMPLETE][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-ilk-650/igt@i915_selftest@live@mman.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-ilk-650/igt@i915_selftest@live@mman.html
    - fi-hsw-4770:        [PASS][47] -> [INCOMPLETE][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-hsw-4770/igt@i915_selftest@live@mman.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-hsw-4770/igt@i915_selftest@live@mman.html
    - fi-elk-e7500:       [PASS][49] -> [INCOMPLETE][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-elk-e7500/igt@i915_selftest@live@mman.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-elk-e7500/igt@i915_selftest@live@mman.html
    - fi-blb-e6850:       [PASS][51] -> [INCOMPLETE][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-blb-e6850/igt@i915_selftest@live@mman.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-blb-e6850/igt@i915_selftest@live@mman.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_ringfill@basic-all:
    - {bat-dg2-9}:        NOTRUN -> [DMESG-WARN][53]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg2-9/igt@gem_ringfill@basic-all.html

  * igt@i915_hangman@error-state-basic:
    - {fi-tgl-dsi}:       [PASS][54] -> [FAIL][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-tgl-dsi/igt@i915_hangman@error-state-basic.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-tgl-dsi/igt@i915_hangman@error-state-basic.html
    - {bat-rpls-2}:       [PASS][56] -> [FAIL][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/bat-rpls-2/igt@i915_hangman@error-state-basic.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-rpls-2/igt@i915_hangman@error-state-basic.html
    - {fi-adl-ddr5}:      [PASS][58] -> [FAIL][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-adl-ddr5/igt@i915_hangman@error-state-basic.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-adl-ddr5/igt@i915_hangman@error-state-basic.html
    - {bat-jsl-2}:        [PASS][60] -> [FAIL][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/bat-jsl-2/igt@i915_hangman@error-state-basic.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-jsl-2/igt@i915_hangman@error-state-basic.html
    - {bat-adlp-6}:       [PASS][62] -> [FAIL][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/bat-adlp-6/igt@i915_hangman@error-state-basic.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-adlp-6/igt@i915_hangman@error-state-basic.html
    - {fi-ehl-2}:         [PASS][64] -> [FAIL][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-ehl-2/igt@i915_hangman@error-state-basic.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-ehl-2/igt@i915_hangman@error-state-basic.html
    - {bat-jsl-1}:        [PASS][66] -> [FAIL][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/bat-jsl-1/igt@i915_hangman@error-state-basic.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-jsl-1/igt@i915_hangman@error-state-basic.html
    - {fi-jsl-1}:         [PASS][68] -> [FAIL][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-jsl-1/igt@i915_hangman@error-state-basic.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-jsl-1/igt@i915_hangman@error-state-basic.html

  * igt@i915_pm_rps@basic-api:
    - {bat-dg2-8}:        [PASS][70] -> [FAIL][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/bat-dg2-8/igt@i915_pm_rps@basic-api.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg2-8/igt@i915_pm_rps@basic-api.html

  
Known issues
------------

  Here are the changes found in Patchwork_22586 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-cfl-8109u:       [PASS][72] -> [DMESG-WARN][73] ([i915#203] / [i915#262] / [i915#295])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html

  * igt@fbdev@eof:
    - bat-dg1-5:          NOTRUN -> [SKIP][74] ([i915#2582]) +4 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@fbdev@eof.html

  * igt@gem_exec_gttfill@basic:
    - bat-dg1-6:          NOTRUN -> [SKIP][75] ([i915#4086])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@gem_exec_gttfill@basic.html
    - bat-dg1-5:          NOTRUN -> [SKIP][76] ([i915#4086])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-cfl-8109u:       [PASS][77] -> [DMESG-WARN][78] ([i915#203] / [i915#295])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0@smem.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_mmap@basic:
    - bat-dg1-5:          NOTRUN -> [SKIP][79] ([i915#4083])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@gem_mmap@basic.html
    - bat-dg1-6:          NOTRUN -> [SKIP][80] ([i915#4083])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@gem_mmap@basic.html

  * igt@gem_mmap_gtt@basic:
    - bat-dg1-5:          NOTRUN -> [SKIP][81] ([i915#4077]) +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@gem_mmap_gtt@basic.html

  * igt@gem_tiled_blits@basic:
    - bat-dg1-6:          NOTRUN -> [SKIP][82] ([i915#4077]) +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-dg1-6:          NOTRUN -> [SKIP][83] ([i915#4079]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@gem_tiled_pread_basic.html
    - bat-dg1-5:          NOTRUN -> [SKIP][84] ([i915#4079]) +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_backlight@basic-brightness:
    - bat-dg1-5:          NOTRUN -> [SKIP][85] ([i915#1155])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@i915_pm_backlight@basic-brightness.html
    - bat-dg1-6:          NOTRUN -> [SKIP][86] ([i915#1155])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg1-6:          NOTRUN -> [FAIL][87] ([i915#4032])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-5:          NOTRUN -> [INCOMPLETE][88] ([i915#4418])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          NOTRUN -> [DMESG-FAIL][89] ([i915#4494] / [i915#4957])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - bat-dg1-6:          NOTRUN -> [SKIP][90] ([i915#4212]) +7 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-dg1-5:          NOTRUN -> [SKIP][91] ([i915#4215])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg1-6:          NOTRUN -> [SKIP][92] ([i915#4215])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - bat-dg1-5:          NOTRUN -> [SKIP][93] ([i915#4212]) +7 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_busy@basic:
    - bat-dg1-5:          NOTRUN -> [SKIP][94] ([i915#4303])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@kms_busy@basic.html

  * igt@kms_chamelium@dp-hpd-fast:
    - bat-dg1-5:          NOTRUN -> [SKIP][95] ([fdo#111827]) +8 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_chamelium@hdmi-edid-read:
    - bat-dg1-6:          NOTRUN -> [SKIP][96] ([fdo#111827]) +8 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - bat-dg1-5:          NOTRUN -> [SKIP][97] ([i915#4103] / [i915#4213]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - bat-dg1-6:          NOTRUN -> [SKIP][98] ([i915#4103] / [i915#4213]) +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-dg1-6:          NOTRUN -> [SKIP][99] ([fdo#109285])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@kms_force_connector_basic@force-load-detect.html
    - bat-dg1-5:          NOTRUN -> [SKIP][100] ([fdo#109285])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - bat-dg1-5:          NOTRUN -> [SKIP][101] ([i915#4078] / [i915#5341])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - bat-dg1-5:          NOTRUN -> [SKIP][102] ([i915#4078]) +23 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_psr@cursor_plane_move:
    - bat-dg1-6:          NOTRUN -> [SKIP][103] ([i915#1072] / [i915#4078]) +3 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@kms_psr@cursor_plane_move.html

  * igt@kms_psr@primary_page_flip:
    - bat-dg1-5:          NOTRUN -> [SKIP][104] ([i915#1072] / [i915#4078]) +3 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@kms_psr@primary_page_flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-dg1-6:          NOTRUN -> [SKIP][105] ([i915#3555])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg1-5:          NOTRUN -> [SKIP][106] ([i915#3555])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-dg1-5:          NOTRUN -> [SKIP][107] ([i915#3708]) +3 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@prime_vgem@basic-fence-flip.html
    - bat-dg1-6:          NOTRUN -> [SKIP][108] ([i915#3708]) +3 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-dg1-5:          NOTRUN -> [SKIP][109] ([i915#3708] / [i915#4077]) +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-gtt:
    - bat-dg1-6:          NOTRUN -> [SKIP][110] ([i915#3708] / [i915#4077]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-userptr:
    - bat-dg1-6:          NOTRUN -> [SKIP][111] ([i915#3708] / [i915#4873])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@prime_vgem@basic-userptr.html
    - bat-dg1-5:          NOTRUN -> [SKIP][112] ([i915#3708] / [i915#4873])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][113] ([fdo#109271] / [i915#4312])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-ilk-650/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][114] ([fdo#109271] / [i915#1436] / [i915#2722] / [i915#4312])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-hsw-4770/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][115] ([fdo#109271] / [i915#4312])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-ivb-3770/igt@runner@aborted.html
    - fi-glk-j4005:       NOTRUN -> [FAIL][116] ([i915#2426] / [i915#4312] / [k.org#202321])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-glk-j4005/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][117] ([fdo#109271] / [i915#2403] / [i915#4312])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-blb-e6850/igt@runner@aborted.html
    - bat-dg1-5:          NOTRUN -> [FAIL][118] ([i915#4312] / [i915#5257])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][119] ([i915#2426] / [i915#4312])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-bdw-5557u/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][120] ([i915#2722] / [i915#4312])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-bwr-2160/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][121] ([fdo#109271] / [i915#4312])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-elk-e7500/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hugepages:
    - {bat-rpls-2}:       [DMESG-WARN][122] ([i915#5278]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/bat-rpls-2/igt@i915_selftest@live@hugepages.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-rpls-2/igt@i915_selftest@live@hugepages.html

  * igt@i915_selftest@live@sanitycheck:
    - {bat-rpls-2}:       [DMESG-WARN][124] ([i915#4391]) -> [PASS][125] +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/bat-rpls-2/igt@i915_selftest@live@sanitycheck.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-rpls-2/igt@i915_selftest@live@sanitycheck.html

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - {bat-adlp-6}:       [DMESG-WARN][126] ([i915#3576]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#203]: https://gitlab.freedesktop.org/drm/intel/issues/203
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4086]: https://gitlab.freedesktop.org/drm/intel/issues/4086
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4303]: https://gitlab.freedesktop.org/drm/intel/issues/4303
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5087]: https://gitlab.freedesktop.org/drm/intel/issues/5087
  [i915#5192]: https://gitlab.freedesktop.org/drm/intel/issues/5192
  [i915#5193]: https://gitlab.freedesktop.org/drm/intel/issues/5193
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5270]: https://gitlab.freedesktop.org/drm/intel/issues/5270
  [i915#5278]: https://gitlab.freedesktop.org/drm/intel/issues/5278
  [i915#5323]: https://gitlab.freedesktop.org/drm/intel/issues/5323
  [i915#5339]: https://gitlab.freedesktop.org/drm/intel/issues/5339
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5356]: https://gitlab.freedesktop.org/drm/intel/issues/5356
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Build changes
-------------

  * Linux: CI_DRM_11368 -> Patchwork_22586

  CI-20190529: 20190529
  CI_DRM_11368: 66b3d1ac616565206cddf4327ca7c102b651b032 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6382: a6a5a178cb1cbe0dab8d8d092a4aee932ccb93cc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22586: b4426e52080bf86ccfa6e737a817f461573648eb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b4426e52080b drm/i915/gt: preempt and reset based on reset domain
48b1b2d476fe drm/i915/gt: preempt engine to idle before reset

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/index.html

--===============7908813416530905515==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/gt: preempt engine to idle before reset</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101432/">https://patchwork.freedesktop.org/series/101432/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11368 -&gt; Patchwork_22586</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22586 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22586, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/index.html</p>
<h2>Participating hosts (48 -&gt; 44)</h2>
<p>Additional (4): bat-rpls-1 bat-dg2-9 bat-dg1-6 bat-dg1-5 <br />
  Missing    (8): shard-tglu fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-pnv-d510 shard-rkl shard-dg1 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22586:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-snb-2600/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-snb-2600/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-snb-2520m/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-snb-2520m/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-kbl-guc/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-kbl-guc/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-kbl-8809g/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-kbl-8809g/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-cfl-8700k/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-cfl-8700k/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-kbl-x1275/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-kbl-x1275/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-skl-6700k2/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-skl-6700k2/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-skl-guc/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-skl-guc/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-kbl-7567u/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-kbl-7567u/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-glk-j4005/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-glk-j4005/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-cfl-guc/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-cfl-guc/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-tgl-1115g4/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-tgl-1115g4/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-bxt-dsi/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-bxt-dsi/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-kbl-7500u/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-kbl-7500u/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-kbl-soraka/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-kbl-soraka/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-glk-dsi/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-glk-dsi/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-cfl-8109u/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-cfl-8109u/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-rkl-guc/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-rkl-guc/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-glk-j4005/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-glk-j4005/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-bwr-2160/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-bwr-2160/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-ilk-650/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-ilk-650/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-hsw-4770/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-hsw-4770/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-elk-e7500/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-elk-e7500/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-blb-e6850/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-blb-e6850/igt@i915_selftest@live@mman.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_ringfill@basic-all:</p>
<ul>
<li>{bat-dg2-9}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg2-9/igt@gem_ringfill@basic-all.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-tgl-dsi/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-tgl-dsi/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/bat-rpls-2/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-rpls-2/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>{fi-adl-ddr5}:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-adl-ddr5/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-adl-ddr5/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>{bat-jsl-2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/bat-jsl-2/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-jsl-2/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/bat-adlp-6/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-adlp-6/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-ehl-2/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-ehl-2/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/bat-jsl-1/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-jsl-1/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-jsl-1/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-jsl-1/igt@i915_hangman@error-state-basic.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/bat-dg2-8/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg2-8/igt@i915_pm_rps@basic-api.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22586 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/203">i915#203</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4086">i915#4086</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4086">i915#4086</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/203">i915#203</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 similar issue</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1155">i915#1155</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1155">i915#1155</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4032">i915#4032</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@kms_addfb_basic@tile-pitch-mismatch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@kms_busy@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4303">i915#4303</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 similar issue</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +3 similar issues</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@prime_vgem@basic-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-6/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4873">i915#4873</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4873">i915#4873</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-ilk-650/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-glk-j4005/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-bwr-2160/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/fi-elk-e7500/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/bat-rpls-2/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5278">i915#5278</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-rpls-2/igt@i915_selftest@live@hugepages.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/bat-rpls-2/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-rpls-2/igt@i915_selftest@live@sanitycheck.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11368/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22586/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11368 -&gt; Patchwork_22586</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11368: 66b3d1ac616565206cddf4327ca7c102b651b032 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6382: a6a5a178cb1cbe0dab8d8d092a4aee932ccb93cc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22586: b4426e52080bf86ccfa6e737a817f461573648eb @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>b4426e52080b drm/i915/gt: preempt and reset based on reset domain<br />
48b1b2d476fe drm/i915/gt: preempt engine to idle before reset</p>

</body>
</html>

--===============7908813416530905515==--
