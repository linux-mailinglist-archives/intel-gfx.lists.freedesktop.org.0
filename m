Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF057ED864
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 01:15:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4471A10E2A2;
	Thu, 16 Nov 2023 00:15:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1CD0310E2A2;
 Thu, 16 Nov 2023 00:15:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CA576A47E9;
 Thu, 16 Nov 2023 00:15:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6424425098951463329=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 16 Nov 2023 00:15:20 -0000
Message-ID: <170009372077.3091.13881467291969605000@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231113164711.4100548-1-jani.nikula@intel.com>
In-Reply-To: <20231113164711.4100548-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_move_*=5Fcrtc=5Fclock?=
 =?utf-8?b?X2dldCgpIHRvIGludGVsX2RwbGwuYyAocmV2Mik=?=
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

--===============6424425098951463329==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/4] drm/i915: move *_crtc_clock_get() to intel_dpll.c (rev2)
URL   : https://patchwork.freedesktop.org/series/126345/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13873_full -> Patchwork_126345v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126345v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126345v2_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126345v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_crc@cursor-random-256x85@pipe-a-edp-1:
    - shard-mtlp:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-mtlp-4/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-edp-1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-5/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-edp-1.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-mtlp:         NOTRUN -> [SKIP][3] +1 other test skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@perf_pmu@rc6-suspend:
    - shard-snb:          [PASS][4] -> [DMESG-WARN][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-snb4/igt@perf_pmu@rc6-suspend.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-snb1/igt@perf_pmu@rc6-suspend.html

  
#### Warnings ####

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-dg2:          [INCOMPLETE][6] ([i915#9364]) -> [ABORT][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-dg2-11/igt@gem_create@create-ext-cpu-access-big.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-7/igt@gem_create@create-ext-cpu-access-big.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@drm_mm@drm_mm@drm_test_mm_lowest}:
    - shard-snb:          [PASS][8] -> [TIMEOUT][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-snb2/igt@drm_mm@drm_mm@drm_test_mm_lowest.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-snb5/igt@drm_mm@drm_mm@drm_test_mm_lowest.html

  * {igt@kms_dsc@dsc-fractional-bpp-with-bpc}:
    - shard-mtlp:         NOTRUN -> [SKIP][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * {igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_rotate_90}:
    - shard-mtlp:         [PASS][11] -> [TIMEOUT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-mtlp-4/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_rotate_90.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-5/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_rotate_90.html

  * {igt@kms_selftest@drm_format@drm_test_format_block_width_tiled}:
    - shard-dg2:          [PASS][13] -> [TIMEOUT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-dg2-11/igt@kms_selftest@drm_format@drm_test_format_block_width_tiled.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-11/igt@kms_selftest@drm_format@drm_test_format_block_width_tiled.html

  * {igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create}:
    - shard-rkl:          [PASS][15] -> [TIMEOUT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-2/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html
    - shard-snb:          NOTRUN -> [TIMEOUT][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-snb2/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html

  * {igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state}:
    - shard-dg1:          [PASS][18] -> [TIMEOUT][19] +1 other test timeout
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-dg1-19/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-15/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
    - shard-tglu:         [PASS][20] -> [TIMEOUT][21] +1 other test timeout
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-tglu-4/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-tglu-6/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html

  
Known issues
------------

  Here are the changes found in Patchwork_126345v2_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [FAIL][34], [FAIL][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46]) ([i915#8293]) -> ([PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk3/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk3/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk3/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk3/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk4/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk4/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk4/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk4/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk5/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk5/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk6/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk8/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk8/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk8/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk8/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk9/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk9/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk9/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk9/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk3/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk2/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk3/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk9/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk9/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk9/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk8/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk8/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk8/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk6/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk6/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk5/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk5/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk5/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk4/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk4/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk4/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk3/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-rkl:          [PASS][67] -> [SKIP][68] ([i915#8411])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@api_intel_bb@blit-reloc-keep-cache.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-2/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#8411]) +2 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#8411])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#7701])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@busy-idle-check-all@vcs1:
    - shard-dg1:          NOTRUN -> [SKIP][72] ([i915#8414]) +10 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@drm_fdinfo@busy-idle-check-all@vcs1.html

  * igt@drm_fdinfo@busy@ccs0:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#8414]) +19 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@drm_fdinfo@busy@ccs0.html

  * igt@drm_fdinfo@idle@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][74] ([i915#7742])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-6/igt@drm_fdinfo@idle@rcs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [PASS][75] -> [FAIL][76] ([i915#7742])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@drm_fdinfo@virtual-busy-hang-all:
    - shard-mtlp:         NOTRUN -> [SKIP][77] ([i915#8414])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@drm_fdinfo@virtual-busy-hang-all.html

  * igt@fbdev@unaligned-read:
    - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#2582])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@fbdev@unaligned-read.html

  * igt@gem_bad_reloc@negative-reloc:
    - shard-dg1:          NOTRUN -> [SKIP][79] ([i915#3281]) +2 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@gem_bad_reloc@negative-reloc.html

  * igt@gem_basic@multigpu-create-close:
    - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#7697])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@gem_basic@multigpu-create-close.html
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#7697])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-1/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-mtlp:         NOTRUN -> [SKIP][82] ([i915#9323])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          NOTRUN -> [FAIL][83] ([i915#6268])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-rkl:          NOTRUN -> [SKIP][84] ([fdo#109314])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@engines-hostile-preempt:
    - shard-snb:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#1099])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-snb7/igt@gem_ctx_persistence@engines-hostile-preempt.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#8555])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#280]) +1 other test skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-1/igt@gem_ctx_sseu@mmap-args.html
    - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#280]) +1 other test skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@reset-stress:
    - shard-dg2:          NOTRUN -> [FAIL][89] ([i915#5784])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-1/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#4812]) +3 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-11/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_balancer@bonded-true-hang:
    - shard-mtlp:         NOTRUN -> [SKIP][91] ([i915#4812])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@gem_exec_balancer@bonded-true-hang.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#4036])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-1/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#6334])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_capture@many-4k-incremental:
    - shard-dg2:          NOTRUN -> [FAIL][94] ([i915#9606])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@gem_exec_capture@many-4k-incremental.html

  * igt@gem_exec_capture@many-4k-zero:
    - shard-apl:          NOTRUN -> [FAIL][95] ([i915#9606])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-apl7/igt@gem_exec_capture@many-4k-zero.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#4473] / [i915#4771])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][97] ([i915#2842])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-sync:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#3539])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@gem_exec_fair@basic-sync.html

  * igt@gem_exec_flush@basic-uc-ro-default:
    - shard-dg1:          NOTRUN -> [SKIP][99] ([i915#3539] / [i915#4852])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@gem_exec_flush@basic-uc-ro-default.html

  * igt@gem_exec_flush@basic-wb-rw-default:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#3539] / [i915#4852]) +4 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@gem_exec_flush@basic-wb-rw-default.html

  * igt@gem_exec_reloc@basic-cpu-read-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#3281]) +3 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@gem_exec_reloc@basic-cpu-read-noreloc.html

  * igt@gem_exec_reloc@basic-wc-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#3281]) +2 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@gem_exec_reloc@basic-wc-read-noreloc.html

  * igt@gem_exec_reloc@basic-write-read:
    - shard-rkl:          [PASS][103] -> [SKIP][104] ([i915#3281]) +7 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@gem_exec_reloc@basic-write-read.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@gem_exec_reloc@basic-write-read.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#3281]) +18 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-11/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_schedule@reorder-wide:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#4537] / [i915#4812]) +2 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@gem_exec_schedule@reorder-wide.html

  * igt@gem_fence_thrash@bo-write-verify-threaded-none:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#4860]) +1 other test skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@gem_fence_thrash@bo-write-verify-threaded-none.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][108] ([i915#4860])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html

  * igt@gem_gtt_cpu_tlb:
    - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#4077]) +5 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@gem_gtt_cpu_tlb.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#4613]) +3 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-mtlp:         NOTRUN -> [SKIP][111] ([i915#4613]) +1 other test skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [PASS][112] -> [TIMEOUT][113] ([i915#5493])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_lmem_swapping@verify:
    - shard-glk:          NOTRUN -> [SKIP][114] ([fdo#109271] / [i915#4613])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk8/igt@gem_lmem_swapping@verify.html

  * igt@gem_media_fill@media-fill:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#8289])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-1/igt@gem_media_fill@media-fill.html

  * igt@gem_media_vme:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#284])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-11/igt@gem_media_vme.html

  * igt@gem_mmap@big-bo:
    - shard-dg1:          NOTRUN -> [SKIP][117] ([i915#4083])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@gem_mmap@big-bo.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#4077]) +7 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_wc@close:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#4083]) +7 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@gem_mmap_wc@close.html

  * igt@gem_mmap_wc@write-read-distinct:
    - shard-mtlp:         NOTRUN -> [SKIP][120] ([i915#4083])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@gem_mmap_wc@write-read-distinct.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-rkl:          [PASS][121] -> [SKIP][122] ([i915#3282]) +5 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-dg1:          NOTRUN -> [SKIP][123] ([i915#3282]) +2 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_pread@bench:
    - shard-mtlp:         NOTRUN -> [SKIP][124] ([i915#3282])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@gem_pread@bench.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-glk:          NOTRUN -> [WARN][125] ([i915#2658])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk8/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pwrite@basic-self:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#3282]) +1 other test skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-11/igt@gem_pwrite@basic-self.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#4270])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#4270]) +5 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#4270]) +2 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-mtlp:         NOTRUN -> [SKIP][130] ([i915#4270]) +1 other test skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
    - shard-glk:          NOTRUN -> [SKIP][131] ([fdo#109271]) +39 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk8/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html
    - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#768]) +2 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html

  * igt@gem_render_copy@y-tiled-to-vebox-linear:
    - shard-mtlp:         NOTRUN -> [SKIP][133] ([i915#8428]) +1 other test skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@gem_render_copy@y-tiled-to-vebox-linear.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#4079]) +1 other test skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-1/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_set_tiling_vs_gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][135] ([i915#4079])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@gem_set_tiling_vs_gtt.html

  * igt@gem_softpin@evict-snoop:
    - shard-dg1:          NOTRUN -> [SKIP][136] ([i915#4885])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@gem_softpin@evict-snoop.html

  * igt@gem_tiled_partial_pwrite_pread@reads:
    - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#4077]) +13 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@gem_tiled_partial_pwrite_pread@reads.html

  * igt@gem_unfence_active_buffers:
    - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#4879])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#3297]) +3 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#3323])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#3297])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-mtlp:         NOTRUN -> [SKIP][142] ([i915#3297]) +2 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@gen7_exec_parse@basic-allocation:
    - shard-dg1:          NOTRUN -> [SKIP][143] ([fdo#109289]) +1 other test skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@gen7_exec_parse@basic-allocation.html

  * igt@gen7_exec_parse@basic-rejected:
    - shard-rkl:          NOTRUN -> [SKIP][144] ([fdo#109289]) +2 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@gen7_exec_parse@basic-rejected.html

  * igt@gen7_exec_parse@load-register-reg:
    - shard-mtlp:         NOTRUN -> [SKIP][145] ([fdo#109289]) +3 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@gen7_exec_parse@load-register-reg.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#2527]) +1 other test skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-rkl:          [PASS][147] -> [SKIP][148] ([i915#2527]) +2 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@gen9_exec_parse@batch-without-end.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@gen9_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@bb-large:
    - shard-mtlp:         NOTRUN -> [SKIP][149] ([i915#2856])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#2532])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#2856]) +3 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@gen9_exec_parse@bb-start-out.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-dg1:          NOTRUN -> [SKIP][152] ([i915#2527]) +1 other test skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_fb_tiling:
    - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#4881])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@i915_fb_tiling.html

  * igt@i915_module_load@load:
    - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#6227])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [PASS][155] -> [ABORT][156] ([i915#8489] / [i915#8668])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#6590])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-6/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([fdo#109293] / [fdo#109506])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-11/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-mtlp:         NOTRUN -> [SKIP][159] ([i915#6621])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [PASS][160] -> [INCOMPLETE][161] ([i915#7790])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-snb5/igt@i915_pm_rps@reset.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-snb6/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@thresholds-idle@gt0:
    - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#8925]) +1 other test skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@i915_pm_rps@thresholds-idle@gt0.html

  * igt@i915_pm_sseu@full-enable:
    - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#4387])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@i915_pm_sseu@full-enable.html
    - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#4387])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#6188])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-dg1:          NOTRUN -> [SKIP][166] ([fdo#109303])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@i915_query@query-topology-known-pci-ids.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][167] ([i915#4212])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#5190])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#4215] / [i915#5190])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#4212])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_addfb_basic@clobberred-modifier:
    - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#4212]) +1 other test skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_addfb_basic@clobberred-modifier.html

  * igt@kms_async_flips@crc@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [FAIL][172] ([i915#8247]) +3 other tests fail
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_async_flips@crc@pipe-a-hdmi-a-3.html

  * igt@kms_async_flips@crc@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [DMESG-FAIL][173] ([i915#8561]) +1 other test dmesg-fail
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_async_flips@crc@pipe-b-hdmi-a-3.html

  * igt@kms_async_flips@crc@pipe-d-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][174] ([i915#8247]) +1 other test fail
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_async_flips@crc@pipe-d-hdmi-a-3.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#9531])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#5286])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][177] ([i915#4538] / [i915#5286]) +2 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         NOTRUN -> [FAIL][178] ([i915#5138])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([fdo#111614] / [i915#3638]) +1 other test skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([fdo#111614]) +4 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-1/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
    - shard-mtlp:         NOTRUN -> [SKIP][181] ([fdo#111614])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-rkl:          [PASS][182] -> [SKIP][183] ([i915#1845] / [i915#4098]) +18 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-4/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
    - shard-mtlp:         NOTRUN -> [SKIP][184] ([fdo#111615]) +4 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#5190]) +20 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
    - shard-dg1:          NOTRUN -> [SKIP][186] ([i915#4538]) +3 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#4538] / [i915#5190]) +6 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-11/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-rkl:          NOTRUN -> [SKIP][188] ([fdo#111615])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][189] ([fdo#110723]) +3 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#4087] / [i915#7213]) +3 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_chamelium_color@ctm-0-75:
    - shard-mtlp:         NOTRUN -> [SKIP][191] ([fdo#111827])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_chamelium_color@ctm-0-75.html

  * igt@kms_chamelium_color@ctm-green-to-red:
    - shard-dg2:          NOTRUN -> [SKIP][192] ([fdo#111827]) +2 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_chamelium_color@ctm-green-to-red.html

  * igt@kms_chamelium_color@ctm-max:
    - shard-dg1:          NOTRUN -> [SKIP][193] ([fdo#111827])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_chamelium_color@ctm-max.html

  * igt@kms_chamelium_edid@dp-mode-timings:
    - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#7828]) +6 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_chamelium_edid@dp-mode-timings.html

  * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
    - shard-dg1:          NOTRUN -> [SKIP][195] ([i915#7828]) +3 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html

  * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
    - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#7828]) +11 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-11/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html

  * igt@kms_chamelium_hpd@vga-hpd:
    - shard-mtlp:         NOTRUN -> [SKIP][197] ([i915#7828]) +4 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_chamelium_hpd@vga-hpd.html

  * igt@kms_color@ctm-0-75@pipe-b:
    - shard-rkl:          [PASS][198] -> [SKIP][199] ([i915#4098]) +3 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-4/igt@kms_color@ctm-0-75@pipe-b.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_color@ctm-0-75@pipe-b.html

  * igt@kms_content_protection@atomic:
    - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#7118])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][201] ([i915#7173])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-11/igt@kms_content_protection@atomic@pipe-a-dp-4.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-mtlp:         NOTRUN -> [SKIP][202] ([i915#3299])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#3299])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-dg1:          NOTRUN -> [SKIP][204] ([i915#7116])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [TIMEOUT][205] ([i915#7173])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-apl7/igt@kms_content_protection@lic@pipe-a-dp-1.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#7118])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [FAIL][207] ([i915#1339])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-4.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-dg1:          NOTRUN -> [SKIP][208] ([i915#3359])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-256x256:
    - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#1845] / [i915#4098]) +25 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-256x256.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-mtlp:         NOTRUN -> [SKIP][210] ([i915#3359])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#3359])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-mtlp:         NOTRUN -> [SKIP][212] ([i915#3555] / [i915#8814]) +1 other test skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][213] ([fdo#109274] / [i915#5354]) +4 other tests skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][214] ([fdo#111767] / [fdo#111825]) +3 other tests skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][215] ([fdo#111825]) +8 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][216] ([i915#3546]) +2 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][217] ([fdo#109274] / [fdo#111767] / [i915#5354])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [PASS][218] -> [FAIL][219] ([i915#2346])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg1:          NOTRUN -> [SKIP][220] ([i915#4103] / [i915#4213])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@single-bo@all-pipes:
    - shard-mtlp:         [PASS][221] -> [DMESG-WARN][222] ([i915#2017])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-mtlp-3/igt@kms_cursor_legacy@single-bo@all-pipes.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-4/igt@kms_cursor_legacy@single-bo@all-pipes.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-mtlp:         NOTRUN -> [SKIP][223] ([i915#3555] / [i915#8827])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#8588])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#3555]) +6 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#3555] / [i915#3840])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg1:          NOTRUN -> [SKIP][227] ([i915#3555] / [i915#3840])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-rkl:          NOTRUN -> [SKIP][228] ([i915#3555] / [i915#3840])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          NOTRUN -> [SKIP][229] ([i915#3955])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_fbcon_fbt@psr.html

  * igt@kms_fence_pin_leak:
    - shard-mtlp:         NOTRUN -> [SKIP][230] ([i915#4881])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-dg2:          NOTRUN -> [SKIP][231] ([fdo#109274]) +11 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-dg2:          NOTRUN -> [SKIP][232] ([fdo#109274] / [fdo#111767]) +1 other test skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-1/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-mtlp:         NOTRUN -> [SKIP][233] ([i915#3637]) +3 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-snb:          NOTRUN -> [SKIP][234] ([fdo#109271] / [fdo#111767])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-snb2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][235] ([i915#8381])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@bo-too-big:
    - shard-rkl:          NOTRUN -> [SKIP][236] ([i915#3637] / [i915#4098]) +6 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_flip@bo-too-big.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#2672]) +4 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][238] ([i915#3555] / [i915#8810])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][239] ([i915#2672])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][240] ([i915#2587] / [i915#2672])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][241] ([i915#3555]) +14 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#2672]) +4 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][243] ([i915#8810])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][244] ([i915#2672] / [i915#3555])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#2672] / [i915#3555])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][246] ([i915#8708]) +4 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][247] ([i915#5354]) +40 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#8708]) +32 other tests skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html
    - shard-rkl:          NOTRUN -> [SKIP][249] ([fdo#111825] / [i915#1825]) +19 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite:
    - shard-mtlp:         NOTRUN -> [SKIP][250] ([i915#1825]) +13 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][251] ([fdo#111825]) +14 other tests skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-rkl:          [PASS][252] -> [SKIP][253] ([i915#1849] / [i915#4098]) +10 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#1849] / [i915#4098]) +17 other tests skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][255] ([i915#3023]) +11 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][256] ([i915#8708]) +7 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-snb:          NOTRUN -> [SKIP][257] ([fdo#109271]) +119 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-snb2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-apl:          NOTRUN -> [SKIP][258] ([fdo#109271]) +66 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-apl7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][259] ([i915#3458]) +4 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][260] ([i915#3458]) +26 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html

  * igt@kms_hdmi_inject@inject-audio:
    - shard-dg1:          NOTRUN -> [SKIP][261] ([i915#433])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][262] ([i915#3555] / [i915#8228])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][263] ([i915#3555] / [i915#8228])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-mtlp:         NOTRUN -> [SKIP][264] ([i915#3555] / [i915#8228])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-dg2:          NOTRUN -> [SKIP][265] ([i915#4816])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          NOTRUN -> [SKIP][266] ([i915#6301])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_panel_fitting@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][267] ([i915#6301])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-1/igt@kms_panel_fitting@legacy.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-dg2:          NOTRUN -> [SKIP][268] ([fdo#109289]) +7 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-11/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_plane@plane-position-hole-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][269] ([i915#4098] / [i915#8825])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_plane@plane-position-hole-dpms.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][270] ([i915#8292])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][271] ([i915#5176] / [i915#9423]) +1 other test skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling:
    - shard-rkl:          NOTRUN -> [SKIP][272] ([i915#8152])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][273] ([i915#5235]) +11 other tests skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-19/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][274] ([i915#5235]) +7 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][275] ([i915#5235]) +19 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][276] ([i915#3555] / [i915#4098] / [i915#6953] / [i915#8152]) +3 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-factor-0-25.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-rkl:          NOTRUN -> [SKIP][277] ([i915#6524])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@d3hot:
    - shard-dg2:          NOTRUN -> [SKIP][278] ([i915#6524] / [i915#6805])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-dg1:          NOTRUN -> [SKIP][279] ([i915#658])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][280] ([i915#658])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-apl:          NOTRUN -> [SKIP][281] ([fdo#109271] / [i915#658])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][282] ([fdo#111068] / [i915#658]) +1 other test skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-glk:          NOTRUN -> [SKIP][283] ([fdo#109271] / [i915#658])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk8/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][284] ([i915#658]) +3 other tests skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@cursor_plane_onoff:
    - shard-rkl:          NOTRUN -> [SKIP][285] ([i915#1072]) +1 other test skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_psr@cursor_plane_onoff.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#1072]) +5 other tests skip
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-dg1:          NOTRUN -> [SKIP][287] ([i915#1072] / [i915#4078]) +3 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-dg2:          NOTRUN -> [SKIP][288] ([i915#5461] / [i915#658])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-dg2:          NOTRUN -> [SKIP][289] ([i915#4235]) +2 other tests skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
    - shard-rkl:          [PASS][290] -> [INCOMPLETE][291] ([i915#8875] / [i915#9569])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][292] ([i915#8875] / [i915#9569])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - shard-mtlp:         NOTRUN -> [SKIP][293] ([i915#4235])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-dg1:          NOTRUN -> [SKIP][294] ([i915#3555])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_setmode@invalid-clone-single-crtc:
    - shard-dg2:          NOTRUN -> [SKIP][295] ([i915#3555] / [i915#4098])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_setmode@invalid-clone-single-crtc.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-dg2:          NOTRUN -> [SKIP][296] ([i915#8623]) +1 other test skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][297] ([i915#8623])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_universal_plane@universal-plane-sanity:
    - shard-rkl:          NOTRUN -> [SKIP][298] ([i915#4098]) +9 other tests skip
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_universal_plane@universal-plane-sanity.html

  * igt@kms_vblank@ts-continuation-suspend@pipe-a-edp-1:
    - shard-mtlp:         [PASS][299] -> [ABORT][300] ([i915#9414]) +1 other test abort
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-mtlp-5/igt@kms_vblank@ts-continuation-suspend@pipe-a-edp-1.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_vblank@ts-continuation-suspend@pipe-a-edp-1.html

  * igt@kms_vrr@flip-basic:
    - shard-mtlp:         NOTRUN -> [SKIP][301] ([i915#3555] / [i915#8808])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@kms_vrr@flip-basic.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-dg2:          NOTRUN -> [SKIP][302] ([i915#2437])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_writeback@writeback-fb-id.html
    - shard-rkl:          NOTRUN -> [SKIP][303] ([i915#2437])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-dg1:          NOTRUN -> [SKIP][304] ([i915#2437]) +1 other test skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-apl:          NOTRUN -> [SKIP][305] ([fdo#109271] / [i915#2437])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-apl2/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@enable-disable@0-rcs0:
    - shard-dg2:          [PASS][306] -> [FAIL][307] ([i915#8724])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-dg2-2/igt@perf@enable-disable@0-rcs0.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-rkl:          [PASS][308] -> [SKIP][309] ([i915#2436])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-rkl:          NOTRUN -> [SKIP][310] ([i915#2433])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@perf@unprivileged-single-ctx-counters.html

  * igt@perf_pmu@event-wait@rcs0:
    - shard-dg2:          NOTRUN -> [SKIP][311] ([fdo#112283])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@perf_pmu@event-wait@rcs0.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg2:          NOTRUN -> [FAIL][312] ([i915#6806])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@perf_pmu@frequency@gt0.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-rkl:          NOTRUN -> [SKIP][313] ([i915#8516])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@perf_pmu@render-node-busy-idle@ccs0:
    - shard-mtlp:         [PASS][314] -> [FAIL][315] ([i915#4349])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-mtlp-7/igt@perf_pmu@render-node-busy-idle@ccs0.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@perf_pmu@render-node-busy-idle@ccs0.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          NOTRUN -> [CRASH][316] ([i915#9351])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  * igt@prime_vgem@basic-fence-read:
    - shard-rkl:          [PASS][317] -> [SKIP][318] ([fdo#109295] / [i915#3291] / [i915#3708])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@prime_vgem@basic-fence-read.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-2/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - shard-mtlp:         NOTRUN -> [SKIP][319] ([i915#3708])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-dg2:          NOTRUN -> [SKIP][320] ([i915#3708])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@prime_vgem@fence-flip-hang.html

  * igt@prime_vgem@fence-write-hang:
    - shard-dg1:          NOTRUN -> [SKIP][321] ([i915#3708])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@prime_vgem@fence-write-hang.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-dg2:          NOTRUN -> [SKIP][322] ([i915#4818])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@tools_test@sysfs_l3_parity.html

  * igt@v3d/v3d_perfmon@destroy-valid-perfmon:
    - shard-mtlp:         NOTRUN -> [SKIP][323] ([i915#2575]) +5 other tests skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@v3d/v3d_perfmon@destroy-valid-perfmon.html

  * igt@v3d/v3d_submit_csd@bad-flag:
    - shard-dg2:          NOTRUN -> [SKIP][324] ([i915#2575]) +17 other tests skip
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@v3d/v3d_submit_csd@bad-flag.html

  * igt@v3d/v3d_submit_csd@bad-multisync-extension:
    - shard-rkl:          NOTRUN -> [SKIP][325] ([fdo#109315]) +8 other tests skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@v3d/v3d_submit_csd@bad-multisync-extension.html

  * igt@v3d/v3d_wait_bo@bad-bo:
    - shard-dg1:          NOTRUN -> [SKIP][326] ([i915#2575]) +3 other tests skip
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@v3d/v3d_wait_bo@bad-bo.html

  * igt@vc4/vc4_dmabuf_poll@poll-read-waits-until-write-done:
    - shard-dg2:          NOTRUN -> [SKIP][327] ([i915#7711]) +9 other tests skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@vc4/vc4_dmabuf_poll@poll-read-waits-until-write-done.html

  * igt@vc4/vc4_perfmon@destroy-valid-perfmon:
    - shard-rkl:          NOTRUN -> [SKIP][328] ([i915#7711]) +5 other tests skip
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@vc4/vc4_perfmon@destroy-valid-perfmon.html

  * igt@vc4/vc4_tiling@get-bad-handle:
    - shard-mtlp:         NOTRUN -> [SKIP][329] ([i915#7711]) +3 other tests skip
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@vc4/vc4_tiling@get-bad-handle.html

  * igt@vc4/vc4_wait_bo@used-bo-0ns:
    - shard-dg1:          NOTRUN -> [SKIP][330] ([i915#7711]) +2 other tests skip
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@vc4/vc4_wait_bo@used-bo-0ns.html

  
#### Possible fixes ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-rkl:          [FAIL][331] ([i915#4778]) -> [PASS][332]
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@device_reset@unbind-reset-rebind.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-6/igt@device_reset@unbind-reset-rebind.html

  * {igt@gem_compute@compute-square}:
    - shard-rkl:          [SKIP][333] ([i915#9310]) -> [PASS][334]
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@gem_compute@compute-square.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@gem_compute@compute-square.html

  * igt@gem_ctx_persistence@legacy-engines-hang@blt:
    - shard-rkl:          [SKIP][335] ([i915#6252]) -> [PASS][336]
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@gem_ctx_persistence@legacy-engines-hang@blt.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-snb:          [INCOMPLETE][337] -> [PASS][338]
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-snb7/igt@gem_eio@in-flight-contexts-10ms.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-snb2/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglu:         [FAIL][339] ([i915#2842]) -> [PASS][340] +1 other test pass
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-tglu-9/igt@gem_exec_fair@basic-none-share@rcs0.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-tglu-2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - shard-rkl:          [SKIP][341] ([i915#3281]) -> [PASS][342] +4 other tests pass
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-4/igt@gem_exec_reloc@basic-write-read-noreloc.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_exec_suspend@basic-s3@lmem0:
    - shard-dg1:          [FAIL][343] ([fdo#103375]) -> [PASS][344]
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-dg1-15/igt@gem_exec_suspend@basic-s3@lmem0.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-19/igt@gem_exec_suspend@basic-s3@lmem0.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-rkl:          [SKIP][345] ([i915#3282]) -> [PASS][346] +2 other tests pass
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-7/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [INCOMPLETE][347] ([i915#5566]) -> [PASS][348]
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-apl4/igt@gen9_exec_parse@allowed-single.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-apl2/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-rkl:          [SKIP][349] ([i915#2527]) -> [PASS][350] +2 other tests pass
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-7/igt@gen9_exec_parse@bb-chained.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@gen9_exec_parse@bb-chained.html

  * igt@i915_hangman@engine-engine-error@bcs0:
    - shard-rkl:          [SKIP][351] ([i915#9588]) -> [PASS][352]
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-2/igt@i915_hangman@engine-engine-error@bcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [WARN][353] ([i915#7356]) -> [PASS][354]
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rps@thresholds-idle-park@gt0:
    - shard-glk:          [DMESG-WARN][355] ([i915#118]) -> [PASS][356]
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk6/igt@i915_pm_rps@thresholds-idle-park@gt0.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk5/igt@i915_pm_rps@thresholds-idle-park@gt0.html

  * igt@i915_selftest@live@hangcheck:
    - shard-dg1:          [ABORT][357] ([i915#9413]) -> [PASS][358]
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-dg1-19/igt@i915_selftest@live@hangcheck.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         [FAIL][359] ([i915#3743]) -> [PASS][360] +1 other test pass
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-tglu-10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * {igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-rc-ccs}:
    - shard-rkl:          [SKIP][361] ([i915#4098]) -> [PASS][362] +7 other tests pass
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-rc-ccs.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-2/igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-rc-ccs.html

  * {igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-rc-ccs-cc}:
    - shard-rkl:          [SKIP][363] ([fdo#109315]) -> [PASS][364] +21 other tests pass
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-rc-ccs-cc.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-6/igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions:
    - shard-rkl:          [SKIP][365] ([i915#1845] / [i915#4098]) -> [PASS][366] +17 other tests pass
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][367] ([i915#2346]) -> [PASS][368]
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@forked-move@all-pipes:
    - shard-mtlp:         [DMESG-WARN][369] ([i915#2017]) -> [PASS][370]
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-mtlp-4/igt@kms_cursor_legacy@forked-move@all-pipes.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_cursor_legacy@forked-move@all-pipes.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render:
    - shard-rkl:          [SKIP][371] ([i915#1849] / [i915#4098]) -> [PASS][372] +7 other tests pass
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen:
    - shard-dg2:          [FAIL][373] ([i915#6880]) -> [PASS][374] +1 other test pass
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html

  * {igt@kms_plane@planar-pixel-format-settings}:
    - shard-rkl:          [SKIP][375] ([i915#9581]) -> [PASS][376]
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@kms_plane@planar-pixel-format-settings.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_plane@planar-pixel-format-settings.html

  * {igt@kms_pm_dc@dc6-dpms}:
    - shard-tglu:         [FAIL][377] ([i915#9295]) -> [PASS][378]
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-tglu-7/igt@kms_pm_dc@dc6-dpms.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-tglu-2/igt@kms_pm_dc@dc6-dpms.html

  * {igt@kms_pm_rpm@modeset-lpsp-stress}:
    - shard-dg1:          [SKIP][379] ([i915#9519]) -> [PASS][380] +1 other test pass
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-dg1-15/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-19/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * {igt@kms_pm_rpm@modeset-non-lpsp}:
    - shard-rkl:          [SKIP][381] ([i915#9519]) -> [PASS][382]
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_properties@plane-properties-legacy:
    - shard-rkl:          [SKIP][383] ([i915#1849]) -> [PASS][384] +2 other tests pass
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@kms_properties@plane-properties-legacy.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-2/igt@kms_properties@plane-properties-legacy.html

  * {igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_invalid}:
    - shard-snb:          [TIMEOUT][385] -> [PASS][386]
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-snb6/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_invalid.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-snb1/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_invalid.html

  * {igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_name_bpp}:
    - shard-dg1:          [TIMEOUT][387] -> [PASS][388]
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-dg1-16/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_name_bpp.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_name_bpp.html

  * {igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_rotate_90}:
    - shard-tglu:         [TIMEOUT][389] -> [PASS][390] +1 other test pass
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-tglu-9/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_rotate_90.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-tglu-2/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_rotate_90.html

  * {igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_memcpy}:
    - shard-rkl:          [TIMEOUT][391] ([i915#8628]) -> [PASS][392]
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-1/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_memcpy.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_memcpy.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
    - shard-mtlp:         [FAIL][393] ([i915#9196]) -> [PASS][394] +1 other test pass
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html

  * igt@perf@low-oa-exponent-permissions:
    - shard-rkl:          [SKIP][395] ([i915#5608]) -> [PASS][396]
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@perf@low-oa-exponent-permissions.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-6/igt@perf@low-oa-exponent-permissions.html

  * igt@syncobj_timeline@reset-unsignaled:
    - shard-rkl:          [SKIP][397] ([i915#2575]) -> [PASS][398] +13 other tests pass
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@syncobj_timeline@reset-unsignaled.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-6/igt@syncobj_timeline@reset-unsignaled.html

  
#### Warnings ####

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          [SKIP][399] ([i915#3555]) -> [SKIP][400] ([i915#7957])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-7/igt@gem_ccs@block-copy-compressed.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          [SKIP][401] ([i915#9323]) -> [SKIP][402] ([i915#7957])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-4/igt@gem_ccs@block-multicopy-compressed.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-rkl:          [SKIP][403] ([i915#7957]) -> [SKIP][404] ([i915#3555])
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-rkl:          [SKIP][405] ([i915#4098] / [i915#9323]) -> [SKIP][406] ([i915#7957])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-7/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@suspend-resume:
    - shard-rkl:          [SKIP][407] ([i915#7957]) -> [SKIP][408] ([i915#9323])
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@gem_ccs@suspend-resume.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-2/igt@gem_ccs@suspend-resume.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-rkl:          [SKIP][409] ([fdo#109315]) -> [SKIP][410] ([fdo#109313])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_gttfill@multigpu-basic:
    - shard-rkl:          [SKIP][411] ([fdo#109315]) -> [SKIP][412] ([i915#7697]) +1 other test skip
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@gem_exec_gttfill@multigpu-basic.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-6/igt@gem_exec_gttfill@multigpu-basic.html

  * igt@gem_lmem_swapping@massive-random:
    - shard-rkl:          [SKIP][413] -> [SKIP][414] ([i915#4613])
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@gem_lmem_swapping@massive-random.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-6/igt@gem_lmem_swapping@massive-random.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-rkl:          [SKIP][415] ([i915#3282]) -> [WARN][416] ([i915#2658])
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-7/igt@gem_pwrite@basic-exhaustion.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@display-protected-crc:
    - shard-rkl:          [SKIP][417] ([fdo#109315]) -> [SKIP][418] ([i915#4270])
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@gem_pxp@display-protected-crc.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-6/igt@gem_pxp@display-protected-crc.html

  * igt@gen3_render_linear_blits:
    - shard-rkl:          [SKIP][419] ([fdo#109315]) -> [SKIP][420] ([fdo#109289])
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@gen3_render_linear_blits.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-6/igt@gen3_render_linear_blits.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-rkl:          [SKIP][421] ([fdo#109315]) -> [SKIP][422] ([i915#2527])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@gen9_exec_parse@allowed-all.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-6/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_async_flips@crc@pipe-c-edp-1:
    - shard-mtlp:         [DMESG-FAIL][423] ([i915#8561]) -> [FAIL][424] ([i915#8247])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-mtlp-4/igt@kms_async_flips@crc@pipe-c-edp-1.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-mtlp-5/igt@kms_async_flips@crc@pipe-c-edp-1.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-rkl:          [SKIP][425] ([i915#1845] / [i915#4098]) -> [SKIP][426] ([i915#1769] / [i915#3555]) +1 other test skip
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][427] ([i915#1845] / [i915#4098]) -> [SKIP][428] ([i915#5286]) +4 other tests skip
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-rkl:          [SKIP][429] ([fdo#109315]) -> [SKIP][430] ([i915#5286])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-rkl:          [SKIP][431] ([i915#5286]) -> [SKIP][432] ([i915#1845] / [i915#4098]) +4 other tests skip
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-rkl:          [SKIP][433] ([fdo#111614] / [i915#3638]) -> [SKIP][434] ([i915#1845] / [i915#4098]) +1 other test skip
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-7/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - shard-rkl:          [SKIP][435] ([i915#1845] / [i915#4098]) -> [SKIP][436] ([fdo#111614] / [i915#3638]) +1 other test skip
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
    - shard-rkl:          [SKIP][437] ([fdo#110723]) -> [SKIP][438] ([i915#1845] / [i915#4098]) +2 other tests skip
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-4/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-rkl:          [SKIP][439] ([i915#1845] / [i915#4098]) -> [SKIP][440] ([fdo#110723]) +1 other test skip
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-2/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-rkl:          [SKIP][441] ([fdo#111615]) -> [SKIP][442] ([i915#1845] / [i915#4098])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-rkl:          [SKIP][443] ([i915#1845] / [i915#4098]) -> [SKIP][444] ([fdo#111615])
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][445] ([fdo#109315]) -> [SKIP][446] ([fdo#110723])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_chamelium_hpd@dp-hpd-storm:
    - shard-rkl:          [SKIP][447] ([i915#2575]) -> [SKIP][448] ([i915#7828])
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@kms_chamelium_hpd@dp-hpd-storm.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-storm.html

  * igt@kms_color@deep-color:
    - shard-rkl:          [SKIP][449] ([i915#9608]) -> [SKIP][450] ([i915#3555])
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@kms_color@deep-color.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-2/igt@kms_color@deep-color.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-rkl:          [SKIP][451] ([i915#3116]) -> [SKIP][452] ([i915#1845] / [i915#4098])
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-7/igt@kms_content_protection@dp-mst-type-0.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][453] ([i915#7118] / [i915#7162]) -> [SKIP][454] ([i915#7118])
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-dg2-11/igt@kms_content_protection@type1.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_content_protection@type1.html
    - shard-rkl:          [SKIP][455] ([i915#1845] / [i915#4098]) -> [SKIP][456] ([i915#7118]) +1 other test skip
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@kms_content_protection@type1.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          [SKIP][457] ([i915#1845] / [i915#4098]) -> [SKIP][458] ([i915#3359]) +2 other tests skip
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-random-max-size:
    - shard-rkl:          [SKIP][459] ([i915#1845] / [i915#4098]) -> [SKIP][460] ([i915#3555]) +1 other test skip
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-5/igt@kms_cursor_crc@cursor-random-max-size.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-2/igt@kms_cursor_crc@cursor-random-max-size.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-rkl:          [SKIP][461] ([i915#3555]) -> [SKIP][462] ([i915#1845] / [i915#4098]) +4 other tests skip
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/index.html

--===============6424425098951463329==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>series starting with [1/4] drm/i915: move *_=
crtc_clock_get() to intel_dpll.c (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/126345/">https://patchwork.freedesktop.org/series/126345/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126345v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_126345v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13873_full -&gt; Patchwork_126345v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126345v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_126345v2_full, please notify your bug team (lgci.=
bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
126345v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x85@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-mtlp-4/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-e=
dp-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_126345v2/shard-mtlp-5/igt@kms_cursor_crc@cursor-random-256x85@=
pipe-a-edp-1.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_dsc@dsc-fractional-bp=
p.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-snb4/igt@perf_pmu@rc6-suspend.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-sn=
b1/igt@perf_pmu@rc6-suspend.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_create@create-ext-cpu-access-big:<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-dg2-11/igt@gem_create@create-ext-cpu-access-big.html">I=
NCOMPLETE</a> ([i915#9364]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_126345v2/shard-dg2-7/igt@gem_create@create-ext-cpu-acc=
ess-big.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@drm_mm@drm_mm@drm_test_mm_lowest}:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-snb2/igt@drm_mm@drm_mm@drm_test_mm_lowest.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12634=
5v2/shard-snb5/igt@drm_mm@drm_mm@drm_test_mm_lowest.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>{igt@kms_dsc@dsc-fractional-bpp-with-bpc}:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@kms_dsc@dsc-fractional-bp=
p-with-bpc.html">SKIP</a></li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_rotate_90}:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-mtlp-4/igt@kms_selftest@drm_cmdline_parser@drm_test_cmd=
line_rotate_90.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126345v2/shard-mtlp-5/igt@kms_selftest@drm_cmdline_p=
arser@drm_test_cmdline_rotate_90.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_format@drm_test_format_block_width_tiled}:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-dg2-11/igt@kms_selftest@drm_format@drm_test_format_bloc=
k_width_tiled.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_126345v2/shard-dg2-11/igt@kms_selftest@drm_format@drm=
_test_format_block_width_tiled.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create}:</p>
<ul>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13873/shard-rkl-5/igt@kms_selftest@drm_framebuffer@drm_test_framebuf=
fer_create.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_126345v2/shard-rkl-2/igt@kms_selftest@drm_framebuffer@dr=
m_test_framebuffer_create.html">TIMEOUT</a></p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126345v2/shard-snb2/igt@kms_selftest@drm_framebuffer=
@drm_test_framebuffer_create.html">TIMEOUT</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state}:<=
/p>
<ul>
<li>
<p>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13873/shard-dg1-19/igt@kms_selftest@drm_plane_helper@drm_test_check_=
invalid_plane_state.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_126345v2/shard-dg1-15/igt@kms_selftest@drm_plan=
e_helper@drm_test_check_invalid_plane_state.html">TIMEOUT</a> +1 other test=
 timeout</p>
</li>
<li>
<p>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13873/shard-tglu-4/igt@kms_selftest@drm_plane_helper@drm_test_check_=
invalid_plane_state.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_126345v2/shard-tglu-6/igt@kms_selftest@drm_plan=
e_helper@drm_test_check_invalid_plane_state.html">TIMEOUT</a> +1 other test=
 timeout</p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126345v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13873/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk2/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk2/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13873/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13873/shard-glk3/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/sha=
rd-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13873/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk4/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13873/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13873/shard-glk4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk5/boot.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873=
/shard-glk5/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13873/shard-glk6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-gl=
k6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3873/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13873/shard-glk9/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shard-glk9/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/shar=
d-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13873/shard-glk9/boot.html">PASS</a>) ([i915#8293]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-gl=
k2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_126345v2/shard-glk3/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk2/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2=
/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_126345v2/shard-glk3/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk9/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_126345v2/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_126345v2/shard-glk9/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk=
8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_126345v2/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk8/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/=
shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_126345v2/shard-glk6/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk5/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
126345v2/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_126345v2/shard-glk5/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk4=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_126345v2/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk4/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/s=
hard-glk3/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@api_intel_bb@blit-reloc-keep-cache.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
6345v2/shard-rkl-2/igt@api_intel_bb@blit-reloc-keep-cache.html">SKIP</a> ([=
i915#8411])</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@api_intel_bb@blit-reloc-pu=
rge-cache.html">SKIP</a> ([i915#8411]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@api_intel_bb@object-reloc=
-keep-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@device_reset@unbind-cold-r=
eset-rebind.html">SKIP</a> ([i915#7701])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@vcs1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@drm_fdinfo@busy-idle-chec=
k-all@vcs1.html">SKIP</a> ([i915#8414]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@ccs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@drm_fdinfo@busy@ccs0.html"=
>SKIP</a> ([i915#8414]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@idle@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-6/igt@drm_fdinfo@idle@rcs0.html"=
>FAIL</a> ([i915#7742])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_126345v2/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html"=
>FAIL</a> ([i915#7742])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-hang-all:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@drm_fdinfo@virtual-busy-h=
ang-all.html">SKIP</a> ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@fbdev@unaligned-read.html"=
>SKIP</a> ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@gem_bad_reloc@negative-re=
loc.html">SKIP</a> ([i915#3281]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@gem_basic@multigpu-create-c=
lose.html">SKIP</a> ([i915#7697])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126345v2/shard-dg2-1/igt@gem_basic@multigpu-create-c=
lose.html">SKIP</a> ([i915#7697])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@gem_ccs@block-multicopy-c=
ompressed.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@gem_ctx_exec@basic-nohangc=
heck.html">FAIL</a> ([i915#6268])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@gem_ctx_param@set-priority=
-not-supported.html">SKIP</a> ([fdo#109314])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hostile-preempt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-snb7/igt@gem_ctx_persistence@engines=
-hostile-preempt.html">SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-11/igt@gem_ctx_persistence@heart=
beat-hang.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126345v2/shard-dg2-1/igt@gem_ctx_sseu@mmap-args.html=
">SKIP</a> ([i915#280]) +1 other test skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@gem_ctx_sseu@mmap-args.html=
">SKIP</a> ([i915#280]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-1/igt@gem_eio@reset-stress.html"=
>FAIL</a> ([i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-11/igt@gem_exec_balancer@bonded-=
false-hang.html">SKIP</a> ([i915#4812]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-true-hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@gem_exec_balancer@bonded-=
true-hang.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-1/igt@gem_exec_balancer@invalid-=
bonds.html">SKIP</a> ([i915#4036])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@gem_exec_capture@capture-i=
nvisible@smem0.html">SKIP</a> ([i915#6334])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-incremental:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@gem_exec_capture@many-4k-i=
ncremental.html">FAIL</a> ([i915#9606])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-zero:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-apl7/igt@gem_exec_capture@many-4k-ze=
ro.html">FAIL</a> ([i915#9606])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@gem_exec_fair@basic-deadl=
ine.html">SKIP</a> ([i915#4473] / [i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@gem_exec_fair@basic-pace-s=
olo@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@gem_exec_fair@basic-sync.h=
tml">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-ro-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@gem_exec_flush@basic-uc-r=
o-default.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@gem_exec_flush@basic-wb-rw=
-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@gem_exec_reloc@basic-cpu-=
read-noreloc.html">SKIP</a> ([i915#3281]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@gem_exec_reloc@basic-wc-re=
ad-noreloc.html">SKIP</a> ([i915#3281]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@gem_exec_reloc@basic-write-read.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12634=
5v2/shard-rkl-7/igt@gem_exec_reloc@basic-write-read.html">SKIP</a> ([i915#3=
281]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-11/igt@gem_exec_reloc@basic-writ=
e-read-active.html">SKIP</a> ([i915#3281]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@reorder-wide:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@gem_exec_schedule@reorder-=
wide.html">SKIP</a> ([i915#4537] / [i915#4812]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-threaded-none:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@gem_fence_thrash@bo-write-=
verify-threaded-none.html">SKIP</a> ([i915#4860]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@gem_fenced_exec_thrash@no=
-spare-fences-interruptible.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_gtt_cpu_tlb:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@gem_gtt_cpu_tlb.html">SKI=
P</a> ([i915#4077]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@gem_lmem_swapping@parallel=
-random-verify-ccs.html">SKIP</a> ([i915#4613]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@gem_lmem_swapping@smem-oo=
m.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126=
345v2/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (=
[i915#5493])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-glk8/igt@gem_lmem_swapping@verify.ht=
ml">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-1/igt@gem_media_fill@media-fill.=
html">SKIP</a> ([i915#8289])</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-11/igt@gem_media_vme.html">SKIP<=
/a> ([i915#284])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@big-bo:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@gem_mmap@big-bo.html">SKI=
P</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@gem_mmap_gtt@cpuset-big-c=
opy-odd.html">SKIP</a> ([i915#4077]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@gem_mmap_wc@close.html">SK=
IP</a> ([i915#4083]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-read-distinct:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@gem_mmap_wc@write-read-di=
stinct.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345=
v2/shard-rkl-7/igt@gem_partial_pwrite_pread@reads.html">SKIP</a> ([i915#328=
2]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@gem_partial_pwrite_pread@=
reads-uncached.html">SKIP</a> ([i915#3282]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@bench:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@gem_pread@bench.html">SKI=
P</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-glk8/igt@gem_pwrite@basic-exhaustion=
.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-self:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-11/igt@gem_pwrite@basic-self.htm=
l">SKIP</a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@gem_pxp@create-regular-co=
ntext-1.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@gem_pxp@regular-baseline-s=
rc-copy-readible.html">SKIP</a> ([i915#4270]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@gem_pxp@reject-modify-cont=
ext-protection-off-1.html">SKIP</a> ([i915#4270]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@gem_pxp@verify-pxp-execut=
ion-after-suspend-resume.html">SKIP</a> ([i915#4270]) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126345v2/shard-glk8/igt@gem_render_copy@y-tiled-ccs-=
to-y-tiled-mc-ccs.html">SKIP</a> ([fdo#109271]) +39 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@gem_render_copy@y-tiled-ccs=
-to-y-tiled-mc-ccs.html">SKIP</a> ([i915#768]) +2 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-linear:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@gem_render_copy@y-tiled-t=
o-vebox-linear.html">SKIP</a> ([i915#8428]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-1/igt@gem_set_tiling_vs_blt@tile=
d-to-untiled.html">SKIP</a> ([i915#4079]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@gem_set_tiling_vs_gtt.htm=
l">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@gem_softpin@evict-snoop.h=
tml">SKIP</a> ([i915#4885])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@gem_tiled_partial_pwrite_p=
read@reads.html">SKIP</a> ([i915#4077]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@gem_unfence_active_buffers=
.html">SKIP</a> ([i915#4879])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@gem_userptr_blits@coherenc=
y-unsync.html">SKIP</a> ([i915#3297]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@gem_userptr_blits@dmabuf-s=
ync.html">SKIP</a> ([i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@gem_userptr_blits@dmabuf-u=
nsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@gem_userptr_blits@map-fix=
ed-invalidate-busy.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allocation:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@gen7_exec_parse@basic-all=
ocation.html">SKIP</a> ([fdo#109289]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-rejected:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@gen7_exec_parse@basic-reje=
cted.html">SKIP</a> ([fdo#109289]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@load-register-reg:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@gen7_exec_parse@load-regi=
ster-reg.html">SKIP</a> ([fdo#109289]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@gen9_exec_parse@batch-inva=
lid-length.html">SKIP</a> ([i915#2527]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@gen9_exec_parse@batch-without-end.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126=
345v2/shard-rkl-7/igt@gen9_exec_parse@batch-without-end.html">SKIP</a> ([i9=
15#2527]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@gen9_exec_parse@bb-large.=
html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@gen9_exec_parse@bb-oversiz=
e.html">SKIP</a> ([i915#2532])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@gen9_exec_parse@bb-start-o=
ut.html">SKIP</a> ([i915#2856]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@gen9_exec_parse@bb-start-=
param.html">SKIP</a> ([i915#2527]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@i915_fb_tiling.html">SKIP<=
/a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@i915_module_load@load.html=
">SKIP</a> ([i915#6227])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_126345v2/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injec=
tion.html">ABORT</a> ([i915#8489] / [i915#8668])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-6/igt@i915_pm_freq_mult@media-fr=
eq@gt0.html">SKIP</a> ([i915#6590])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-11/igt@i915_pm_rpm@gem-execbuf-s=
tress-pc8.html">SKIP</a> ([fdo#109293] / [fdo#109506])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@i915_pm_rps@min-max-confi=
g-loaded.html">SKIP</a> ([i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-snb5/igt@i915_pm_rps@reset.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-snb6/=
igt@i915_pm_rps@reset.html">INCOMPLETE</a> ([i915#7790])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle@gt0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@i915_pm_rps@thresholds-id=
le@gt0.html">SKIP</a> ([i915#8925]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@i915_pm_sseu@full-enable.ht=
ml">SKIP</a> ([i915#4387])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@i915_pm_sseu@full-enable.ht=
ml">SKIP</a> ([i915#4387])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@i915_query@query-topology-=
coherent-slice-mask.html">SKIP</a> ([i915#6188])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@i915_query@query-topology=
-known-pci-ids.html">SKIP</a> ([fdo#109303])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_addfb_basic@addfb25-x=
-tiled-legacy.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_addfb_basic@addfb25-y=
-tiled-small-legacy.html">SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_addfb_basic@basic-y-ti=
led-legacy.html">SKIP</a> ([i915#4215] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_addfb_basic@bo-too-sm=
all-due-to-tiling.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@clobberred-modifier:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_addfb_basic@clobberred=
-modifier.html">SKIP</a> ([i915#4212]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_async_flips@crc@pipe-a=
-hdmi-a-3.html">FAIL</a> ([i915#8247]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_async_flips@crc@pipe-=
b-hdmi-a-3.html">DMESG-FAIL</a> ([i915#8561]) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_async_flips@crc@pipe-=
d-hdmi-a-3.html">FAIL</a> ([i915#8247]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_atomic@plane-primary-o=
verlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_big_fb@4-tiled-32bpp-r=
otate-270.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-180-async-flip.html">SKIP</a> ([i915#4538] / [i915#528=
6]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-180-hflip.html">FAIL</a> ([i915#5138])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@kms_big_fb@linear-32bpp-ro=
tate-90.html">SKIP</a> ([fdo#111614] / [i915#3638]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-1/igt@kms_big_fb@x-tiled-16bpp-r=
otate-90.html">SKIP</a> ([fdo#111614]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@kms_big_fb@x-tiled-32bpp-=
rotate-90.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13873/shard-rkl-4/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1263=
45v2/shard-rkl-5/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a> ([i91=
5#1845] / [i915#4098]) +18 other tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@kms_big_fb@y-tiled-64bpp-r=
otate-0.html">SKIP</a> ([fdo#111615]) +4 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb-s=
ize-offset-overflow.html">SKIP</a> ([i915#5190]) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_big_fb@yf-tiled-8bpp-=
rotate-0.html">SKIP</a> ([i915#4538]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-11/igt@kms_big_fb@yf-tiled-8bpp-=
rotate-90.html">SKIP</a> ([i915#4538] / [i915#5190]) +6 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb-=
size-offset-overflow.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-180-async-flip.html">SKIP</a> ([fdo#110723]) +3 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_cdclk@mode-transition@=
pipe-d-hdmi-a-3.html">SKIP</a> ([i915#4087] / [i915#7213]) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-75:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_chamelium_color@ctm-0=
-75.html">SKIP</a> ([fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-green-to-red:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_chamelium_color@ctm-gr=
een-to-red.html">SKIP</a> ([fdo#111827]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-max:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_chamelium_color@ctm-m=
ax.html">SKIP</a> ([fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-mode-timings:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_chamelium_edid@dp-mode=
-timings.html">SKIP</a> ([i915#7828]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_chamelium_hpd@hdmi-hp=
d-for-each-pipe.html">SKIP</a> ([i915#7828]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-11/igt@kms_chamelium_hpd@hdmi-hp=
d-with-enabled-mode.html">SKIP</a> ([i915#7828]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_chamelium_hpd@vga-hpd=
.html">SKIP</a> ([i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-75@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-4/igt@kms_color@ctm-0-75@pipe-b.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/sh=
ard-rkl-5/igt@kms_color@ctm-0-75@pipe-b.html">SKIP</a> ([i915#4098]) +3 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_content_protection@ato=
mic.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-11/igt@kms_content_protection@at=
omic@pipe-a-dp-4.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_content_protection@dp=
-mst-lic-type-1.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_content_protection@dp-=
mst-type-0.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_content_protection@le=
gacy.html">SKIP</a> ([i915#7116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-apl7/igt@kms_content_protection@lic@=
pipe-a-dp-1.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_content_protection@srm=
.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-11/igt@kms_content_protection@ue=
vent@pipe-a-dp-4.html">FAIL</a> ([i915#1339])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_cursor_crc@cursor-off=
screen-512x170.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x256:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_cursor_crc@cursor-onsc=
reen-256x256.html">SKIP</a> ([i915#1845] / [i915#4098]) +25 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_cursor_crc@cursor-ons=
creen-512x170.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_cursor_crc@cursor-rand=
om-512x512.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_cursor_crc@cursor-sli=
ding-32x10.html">SKIP</a> ([i915#3555] / [i915#8814]) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_cursor_legacy@2x-curso=
r-vs-flip-legacy.html">SKIP</a> ([fdo#109274] / [i915#5354]) +4 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-=
vs-cursor-atomic.html">SKIP</a> ([fdo#111767] / [fdo#111825]) +3 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-=
vs-cursor-legacy.html">SKIP</a> ([fdo#111825]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@kms_cursor_legacy@cursorb=
-vs-flipb-atomic.html">SKIP</a> ([i915#3546]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_cursor_legacy@cursorb-=
vs-flipb-toggle.html">SKIP</a> ([fdo#109274] / [fdo#111767] / [i915#5354])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_126345v2/shard-apl2/igt@kms_cursor_legacy@flip-v=
s-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i91=
5#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@single-bo@all-pipes:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-mtlp-3/igt@kms_cursor_legacy@single-bo@all-pipes.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_126345v2/shard-mtlp-4/igt@kms_cursor_legacy@single-bo@all-pipes.html">DME=
SG-WARN</a> ([i915#2017])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_display_modes@extende=
d-mode-basic.html">SKIP</a> ([i915#3555] / [i915#8827])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_display_modes@mst-exte=
nded-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-pane=
l-8bpc.html">SKIP</a> ([i915#3555]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_dsc@dsc-basic.html">SK=
IP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_dsc@dsc-with-bpc-form=
ats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_dsc@dsc-with-output-fo=
rmats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_fbcon_fbt@psr.html">SK=
IP</a> ([i915#3955])</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@kms_fence_pin_leak.html">=
SKIP</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_flip@2x-absolute-wf_vb=
lank.html">SKIP</a> ([fdo#109274]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-1/igt@kms_flip@2x-flip-vs-blocki=
ng-wf-vblank.html">SKIP</a> ([fdo#109274] / [fdo#111767]) +1 other test ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@kms_flip@2x-flip-vs-dpms.=
html">SKIP</a> ([i915#3637]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-snb2/igt@kms_flip@2x-flip-vs-expired=
-vblank-interruptible.html">SKIP</a> ([fdo#109271] / [fdo#111767])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_flip@2x-flip-vs-fences=
-interruptible.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@bo-too-big:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_flip@bo-too-big.html">=
SKIP</a> ([i915#3637] / [i915#4098]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a=
> ([i915#2672]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-=
32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
[i915#3555] / [i915#8810])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@p=
ipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-=
32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a=
> ([i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> ([=
i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-upscaling.html">SKIP</a> ([i915#3555]) +14 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-1/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915=
#2672]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
[i915#8810])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a=
-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-=
64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-default-mode.html">SKIP</a> ([i=
915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP<=
/a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@=
fbc-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#8708]) +4 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> ([i915#5354]) +40 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fb=
c-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +32 other=
 tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fb=
c-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#111825] / [i915#1=
825]) +19 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([i915#1825]) +13 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-pri-indfb-draw-pwrite.html">SKIP</a> ([fdo#111825]) +14 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-rend=
er.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_126345v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb565-dra=
w-render.html">SKIP</a> ([i915#1849] / [i915#4098]) +10 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_frontbuffer_tracking@f=
bc-suspend.html">SKIP</a> ([i915#1849] / [i915#4098]) +17 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> ([i915#3023]) +11 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +7 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-snb2/igt@kms_frontbuffer_tracking@ps=
r-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109271]) +119 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-apl7/igt@kms_frontbuffer_tracking@ps=
r-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#109271]) +66 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_frontbuffer_tracking@=
psr-rgb101010-draw-pwrite.html">SKIP</a> ([i915#3458]) +4 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_frontbuffer_tracking@p=
sr-rgb101010-draw-render.html">SKIP</a> ([i915#3458]) +26 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_hdmi_inject@inject-au=
dio.html">SKIP</a> ([i915#433])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_hdr@bpc-switch-suspend=
.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_hdr@static-toggle-dpm=
s.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_hdr@static-toggle-sus=
pend.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> ([i915#4816])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_panel_fitting@atomic-f=
astset.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-1/igt@kms_panel_fitting@legacy.h=
tml">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-11/igt@kms_pipe_b_c_ivb@from-pip=
e-c-to-b-with-3-lanes.html">SKIP</a> ([fdo#109289]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_plane@plane-position-h=
ole-dpms.html">SKIP</a> ([i915#4098] / [i915#8825])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_plane_scaling@intel-ma=
x-src-size@pipe-a-hdmi-a-2.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#=
5176] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-unity-scaling.html">SKIP</a> ([i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-=
hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-19/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#5=
235]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-=
hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#52=
35]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-=
hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#52=
35]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25.html">SKIP</a> ([i915#3555] / [i915#4098] / [i915#6953] =
/ [i915#8152]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_prime@basic-crc-hybrid=
.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_prime@d3hot.html">SKIP=
</a> ([i915#6524] / [i915#6805])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_psr2_sf@overlay-plane=
-move-continuous-exceed-sf.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_psr2_sf@overlay-plane-=
move-continuous-sf.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-apl7/igt@kms_psr2_sf@overlay-plane-u=
pdate-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_psr2_sf@plane-move-sf-=
dmg-area.html">SKIP</a> ([fdo#111068] / [i915#658]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-glk8/igt@kms_psr2_su@page_flip-nv12.=
html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_psr2_su@page_flip-xrgb=
8888.html">SKIP</a> ([i915#658]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_onoff:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_psr@cursor_plane_onoff=
.html">SKIP</a> ([i915#1072]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_psr@psr2_cursor_mmap_g=
tt.html">SKIP</a> ([i915#1072]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_psr@psr2_cursor_plane=
_onoff.html">SKIP</a> ([i915#1072] / [i915#4078]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_psr_stress_test@invali=
date-primary-flip-overlay.html">SKIP</a> ([i915#5461] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@kms_rotation_crc@primary-r=
otation-270.html">SKIP</a> ([i915#4235]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126345v2/shard-rkl-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x=
-0.html">INCOMPLETE</a> ([i915#8875] / [i915#9569])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@kms_rotation_crc@primary-y=
-tiled-reflect-x-180.html">INCOMPLETE</a> ([i915#8875] / [i915#9569])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_rotation_crc@primary-=
y-tiled-reflect-x-270.html">SKIP</a> ([i915#4235])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_setmode@clone-exclusi=
ve-crtc.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_setmode@invalid-clone-=
single-crtc.html">SKIP</a> ([i915#3555] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_tiled_display@basic-te=
st-pattern.html">SKIP</a> ([i915#8623]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_tiled_display@basic-te=
st-pattern-with-chamelium.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-sanity:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_universal_plane@univer=
sal-plane-sanity.html">SKIP</a> ([i915#4098]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-suspend@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-mtlp-5/igt@kms_vblank@ts-continuation-suspend@pipe-a-ed=
p-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_126345v2/shard-mtlp-6/igt@kms_vblank@ts-continuation-suspend@pi=
pe-a-edp-1.html">ABORT</a> ([i915#9414]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-7/igt@kms_vrr@flip-basic.html">=
SKIP</a> ([i915#3555] / [i915#8808])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_writeback@writeback-fb-=
id.html">SKIP</a> ([i915#2437])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@kms_writeback@writeback-fb-=
id.html">SKIP</a> ([i915#2437])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_writeback@writeback-i=
nvalid-parameters.html">SKIP</a> ([i915#2437]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-apl2/igt@kms_writeback@writeback-pix=
el-formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@enable-disable@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-dg2-2/igt@perf@enable-disable@0-rcs0.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/s=
hard-dg2-11/igt@perf@enable-disable@0-rcs0.html">FAIL</a> ([i915#8724])</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_126345v2/shard-rkl-4/igt@perf@gen8-unprivileged-single-ctx-counters.h=
tml">SKIP</a> ([i915#2436])</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@perf@unprivileged-single-c=
tx-counters.html">SKIP</a> ([i915#2433])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait@rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@perf_pmu@event-wait@rcs0.h=
tml">SKIP</a> ([fdo#112283])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@perf_pmu@frequency@gt0.htm=
l">FAIL</a> ([i915#6806])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@perf_pmu@rc6@other-idle-gt=
0.html">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@render-node-busy-idle@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-mtlp-7/igt@perf_pmu@render-node-busy-idle@ccs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
126345v2/shard-mtlp-7/igt@perf_pmu@render-node-busy-idle@ccs0.html">FAIL</a=
> ([i915#4349])</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@prime_mmap@test_aperture_l=
imit@test_aperture_limit-smem.html">CRASH</a> ([i915#9351])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@prime_vgem@basic-fence-read.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/=
shard-rkl-2/igt@prime_vgem@basic-fence-read.html">SKIP</a> ([fdo#109295] / =
[i915#3291] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@prime_vgem@basic-read.htm=
l">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@prime_vgem@fence-flip-hang=
.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@prime_vgem@fence-write-ha=
ng.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@tools_test@sysfs_l3_parity=
.html">SKIP</a> ([i915#4818])</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@destroy-valid-perfmon:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@v3d/v3d_perfmon@destroy-v=
alid-perfmon.html">SKIP</a> ([i915#2575]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-flag:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@v3d/v3d_submit_csd@bad-fla=
g.html">SKIP</a> ([i915#2575]) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-multisync-extension:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@v3d/v3d_submit_csd@bad-mul=
tisync-extension.html">SKIP</a> ([fdo#109315]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_wait_bo@bad-bo:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@v3d/v3d_wait_bo@bad-bo.ht=
ml">SKIP</a> ([i915#2575]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_dmabuf_poll@poll-read-waits-until-write-done:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg2-2/igt@vc4/vc4_dmabuf_poll@poll-r=
ead-waits-until-write-done.html">SKIP</a> ([i915#7711]) +9 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@destroy-valid-perfmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@vc4/vc4_perfmon@destroy-va=
lid-perfmon.html">SKIP</a> ([i915#7711]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@get-bad-handle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@vc4/vc4_tiling@get-bad-ha=
ndle.html">SKIP</a> ([i915#7711]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@used-bo-0ns:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@vc4/vc4_wait_bo@used-bo-0=
ns.html">SKIP</a> ([i915#7711]) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@device_reset@unbind-reset-rebind.html">FAIL</=
a> ([i915#4778]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_126345v2/shard-rkl-6/igt@device_reset@unbind-reset-rebind.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_compute@compute-square}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@gem_compute@compute-square.html">SKIP</a> ([i=
915#9310]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_126345v2/shard-rkl-7/igt@gem_compute@compute-square.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.h=
tml">SKIP</a> ([i915#6252]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@gem_ctx_persistence@legacy-en=
gines-hang@blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-snb7/igt@gem_eio@in-flight-contexts-10ms.html">INCOMPLE=
TE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
126345v2/shard-snb2/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-tglu-9/igt@gem_exec_fair@basic-none-share@rcs0.html">FA=
IL</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_126345v2/shard-tglu-2/igt@gem_exec_fair@basic-none-share@rcs0=
.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-4/igt@gem_exec_reloc@basic-write-read-noreloc.html"=
>SKIP</a> ([i915#3281]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126345v2/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-n=
oreloc.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-dg1-15/igt@gem_exec_suspend@basic-s3@lmem0.html">FAIL</=
a> ([fdo#103375]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_126345v2/shard-dg1-19/igt@gem_exec_suspend@basic-s3@lmem0.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-snoop:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-7/igt@gem_partial_pwrite_pread@writes-after-reads-s=
noop.html">SKIP</a> ([i915#3282]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@gem_partial_pwrite_prea=
d@writes-after-reads-snoop.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-apl4/igt@gen9_exec_parse@allowed-single.html">INCOMPLET=
E</a> ([i915#5566]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_126345v2/shard-apl2/igt@gen9_exec_parse@allowed-single.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-7/igt@gen9_exec_parse@bb-chained.html">SKIP</a> ([i=
915#2527]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_126345v2/shard-rkl-5/igt@gen9_exec_parse@bb-chained.html">PASS</a> +2 o=
ther tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-engine-error@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html">S=
KIP</a> ([i915#9588]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_126345v2/shard-rkl-2/igt@i915_hangman@engine-engine-error@bc=
s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.=
html">WARN</a> ([i915#7356]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_126345v2/shard-dg2-11/igt@i915_module_load@reload-wit=
h-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park@gt0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-glk6/igt@i915_pm_rps@thresholds-idle-park@gt0.html">DME=
SG-WARN</a> ([i915#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_126345v2/shard-glk5/igt@i915_pm_rps@thresholds-idle-park@=
gt0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-dg1-19/igt@i915_selftest@live@hangcheck.html">ABORT</a>=
 ([i915#9413]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126345v2/shard-dg1-13/igt@i915_selftest@live@hangcheck.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-180-hflip-async-flip.html">FAIL</a> ([i915#3743]) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-tglu-10/igt@kms=
_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS<=
/a> +1 other test pass</li>
</ul>
</li>
<li>
<p>{igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-rc-ccs}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12=
-rc-ccs.html">SKIP</a> ([i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-2/igt@kms_ccs@pipe-b-bad-p=
ixel-format-y-tiled-gen12-rc-ccs.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>{igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-rc-ccs-cc}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12=
-rc-ccs-cc.html">SKIP</a> ([fdo#109315]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-6/igt@kms_ccs@pipe-b-b=
ad-pixel-format-y-tiled-gen12-rc-ccs-cc.html">PASS</a> +21 other tests pass=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-tra=
nsitions.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_c=
ursor_legacy@cursora-vs-flipa-atomic-transitions.html">PASS</a> +17 other t=
ests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-glk9/igt@kms_cursor=
_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@forked-move@all-pipes:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-mtlp-4/igt@kms_cursor_legacy@forked-move@all-pipes.html=
">DMESG-WARN</a> ([i915#2017]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-mtlp-6/igt@kms_cursor_legacy@forked-=
move@all-pipes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-=
indfb-draw-render.html">SKIP</a> ([i915#1849] / [i915#4098]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-2=
/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html">P=
ASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-fullscreen.html">FAIL</a> ([i915#6880]) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_frontbu=
ffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html">PASS</a> +1 other =
test pass</li>
</ul>
</li>
<li>
<p>{igt@kms_plane@planar-pixel-format-settings}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@kms_plane@planar-pixel-format-settings.html">=
SKIP</a> ([i915#9581]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_plane@planar-pixel-format-sett=
ings.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_dc@dc6-dpms}:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-tglu-7/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> ([i915#929=
5]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126=
345v2/shard-tglu-2/igt@kms_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@modeset-lpsp-stress}:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-dg1-15/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a=
> ([i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_126345v2/shard-dg1-19/igt@kms_pm_rpm@modeset-lpsp-stress.html">PAS=
S</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@modeset-non-lpsp}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([=
i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_126345v2/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@kms_properties@plane-properties-legacy.html">=
SKIP</a> ([i915#1849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_126345v2/shard-rkl-2/igt@kms_properties@plane-properties-le=
gacy.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_invalid}:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-snb6/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdli=
ne_invalid.html">TIMEOUT</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_126345v2/shard-snb1/igt@kms_selftest@drm_cmdline_pars=
er@drm_test_cmdline_invalid.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_name_bpp}:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-dg1-16/igt@kms_selftest@drm_cmdline_parser@drm_test_cmd=
line_name_bpp.html">TIMEOUT</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_126345v2/shard-dg1-13/igt@kms_selftest@drm_cmdline=
_parser@drm_test_cmdline_name_bpp.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_rotate_90}:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-tglu-9/igt@kms_selftest@drm_cmdline_parser@drm_test_cmd=
line_rotate_90.html">TIMEOUT</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_126345v2/shard-tglu-2/igt@kms_selftest@drm_cmdlin=
e_parser@drm_test_cmdline_rotate_90.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_m=
emcpy}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-1/igt@kms_selftest@drm_format_helper@drm_format_hel=
per_test-drm_test_fb_memcpy.html">TIMEOUT</a> ([i915#8628]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4=
/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_memc=
py.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak@pipe-d-ed=
p-1.html">FAIL</a> ([i915#9196]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_126345v2/shard-mtlp-5/igt@kms_universal_plane@cur=
sor-fb-leak@pipe-d-edp-1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@perf@low-oa-exponent-permissions:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@perf@low-oa-exponent-permissions.html">SKIP</=
a> ([i915#5608]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_126345v2/shard-rkl-6/igt@perf@low-oa-exponent-permissions.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@reset-unsignaled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@syncobj_timeline@reset-unsignaled.html">SKIP<=
/a> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_126345v2/shard-rkl-6/igt@syncobj_timeline@reset-unsignaled.html"=
>PASS</a> +13 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-7/igt@gem_ccs@block-copy-compressed.html">SKIP</a> =
([i915#3555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_126345v2/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html">SKIP</a=
> ([i915#7957])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-4/igt@gem_ccs@block-multicopy-compressed.html">SKIP=
</a> ([i915#9323]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_126345v2/shard-rkl-5/igt@gem_ccs@block-multicopy-compressed.htm=
l">SKIP</a> ([i915#7957])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> ([i915#=
7957]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
126345v2/shard-rkl-4/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> ([i915#3555]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-7/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a>=
 ([i915#4098] / [i915#9323]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy-new-c=
tx.html">SKIP</a> ([i915#7957])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@gem_ccs@suspend-resume.html">SKIP</a> ([i915#=
7957]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
126345v2/shard-rkl-2/igt@gem_ccs@suspend-resume.html">SKIP</a> ([i915#9323]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd=
.html">SKIP</a> ([fdo#109315]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126345v2/shard-rkl-6/igt@gem_exec_flush@basic-batch=
-kernel-default-cmd.html">SKIP</a> ([fdo#109313])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@multigpu-basic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@gem_exec_gttfill@multigpu-basic.html">SKIP</a=
> ([fdo#109315]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_126345v2/shard-rkl-6/igt@gem_exec_gttfill@multigpu-basic.html">SK=
IP</a> ([i915#7697]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive-random:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@gem_lmem_swapping@massive-random.html">SKIP</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1263=
45v2/shard-rkl-6/igt@gem_lmem_swapping@massive-random.html">SKIP</a> ([i915=
#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-7/igt@gem_pwrite@basic-exhaustion.html">SKIP</a> ([=
i915#3282]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_126345v2/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([=
i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@gem_pxp@display-protected-crc.html">SKIP</a> =
([fdo#109315]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126345v2/shard-rkl-6/igt@gem_pxp@display-protected-crc.html">SKIP</=
a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gen3_render_linear_blits:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@gen3_render_linear_blits.html">SKIP</a> ([fdo=
#109315]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_126345v2/shard-rkl-6/igt@gen3_render_linear_blits.html">SKIP</a> ([fdo#1=
09289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@gen9_exec_parse@allowed-all.html">SKIP</a> ([=
fdo#109315]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_126345v2/shard-rkl-6/igt@gen9_exec_parse@allowed-all.html">SKIP</a> (=
[i915#2527])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-mtlp-4/igt@kms_async_flips@crc@pipe-c-edp-1.html">DMESG=
-FAIL</a> ([i915#8561]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126345v2/shard-mtlp-5/igt@kms_async_flips@crc@pipe-c-edp-1=
.html">FAIL</a> ([i915#8247])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-trans=
ition-fencing-internal-panels.html">SKIP</a> ([i915#1845] / [i915#4098]) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/=
shard-rkl-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-=
internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555]) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate=
-0-hflip.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@kms_b=
ig_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([i915#5286=
]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate=
-180-hflip.html">SKIP</a> ([fdo#109315]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-6/igt@kms_big_fb@4-til=
ed-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate=
-180-hflip.html">SKIP</a> ([i915#5286]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_big_fb@4-tile=
d-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([i915#1845] / [i915#=
4098]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-7/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKI=
P</a> ([fdo#111614] / [i915#3638]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_big_fb@x-tiled-32b=
pp-rotate-270.html">SKIP</a> ([i915#1845] / [i915#4098]) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html">SKIP=
</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@kms_big_fb@y-tiled-64bpp=
-rotate-90.html">SKIP</a> ([fdo#111614] / [i915#3638]) +1 other test skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-4/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html">SK=
IP</a> ([fdo#110723]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_big_fb@yf-tiled-32bpp-rotate-18=
0.html">SKIP</a> ([i915#1845] / [i915#4098]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html">SKI=
P</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_126345v2/shard-rkl-2/igt@kms_big_fb@yf-tiled-64b=
pp-rotate-90.html">SKIP</a> ([fdo#110723]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> ([fd=
o#111615]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_126345v2/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> ([i91=
5#1845] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html"=
>SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_big_fb@yf-tiled=
-addfb-size-overflow.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotat=
e-0-hflip.html">SKIP</a> ([fdo#109315]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-6/igt@kms_big_fb@yf-til=
ed-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@kms_chamelium_hpd@dp-hpd-storm.html">SKIP</a>=
 ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126345v2/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-storm.html">SKIP<=
/a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@kms_color@deep-color.html">SKIP</a> ([i915#96=
08]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
6345v2/shard-rkl-2/igt@kms_color@deep-color.html">SKIP</a> ([i915#3555])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-7/igt@kms_content_protection@dp-mst-type-0.html">SK=
IP</a> ([i915#3116]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_126345v2/shard-rkl-5/igt@kms_content_protection@dp-mst-type-0=
.html">SKIP</a> ([i915#1845] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>
<p>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13873/shard-dg2-11/igt@kms_content_protection@type1.html">SKIP</a> (=
[i915#7118] / [i915#7162]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_126345v2/shard-dg2-6/igt@kms_content_protection@type1.h=
tml">SKIP</a> ([i915#7118])</p>
</li>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13873/shard-rkl-5/igt@kms_content_protection@type1.html">SKIP</a> ([=
i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_126345v2/shard-rkl-7/igt@kms_content_protection@type1.ht=
ml">SKIP</a> ([i915#7118]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html">SK=
IP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-4/igt@kms_cursor_crc@cursor-=
random-512x170.html">SKIP</a> ([i915#3359]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-max-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-5/igt@kms_cursor_crc@cursor-random-max-size.html">S=
KIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_126345v2/shard-rkl-2/igt@kms_cursor_crc@cursor=
-random-max-size.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13873/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-32x32.ht=
ml">SKIP</a> ([i915#3555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_126345v2/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-mo=
vement-32x32.html">SKIP</a> ([i915#1845] / [i915#4098]) +4 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
</li>
</ul>

</body>
</html>

--===============6424425098951463329==--
