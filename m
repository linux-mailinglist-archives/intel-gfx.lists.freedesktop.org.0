Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5D37EF42B
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 15:11:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DED2F10E152;
	Fri, 17 Nov 2023 14:11:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 35B6110E149;
 Fri, 17 Nov 2023 14:11:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2EBF2A47DF;
 Fri, 17 Nov 2023 14:11:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4355063301870197399=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 17 Nov 2023 14:11:31 -0000
Message-ID: <170023029116.7875.14657969619770608663@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231116131841.1588781-1-imre.deak@intel.com>
In-Reply-To: <20231116131841.1588781-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_UHBR_data=2C_link_M/N/TU_and_PBN_values?=
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

--===============4355063301870197399==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix UHBR data, link M/N/TU and PBN values
URL   : https://patchwork.freedesktop.org/series/126526/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13884_full -> Patchwork_126526v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126526v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126526v1_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  Additional (1): shard-rkl0 
  Missing    (1): shard-tglu0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126526v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_draw_crc@draw-method-blt@xrgb2101010-ytiled:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-glk5/igt@kms_draw_crc@draw-method-blt@xrgb2101010-ytiled.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-glk5/igt@kms_draw_crc@draw-method-blt@xrgb2101010-ytiled.html

  
#### Warnings ####

  * igt@gem_pxp@create-protected-buffer:
    - shard-glk:          [SKIP][3] ([fdo#109271]) -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-glk4/igt@gem_pxp@create-protected-buffer.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-glk2/igt@gem_pxp@create-protected-buffer.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pathological}:
    - shard-mtlp:         [PASS][5] -> [TIMEOUT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-mtlp-7/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pathological.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-4/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pathological.html

  * {igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0}:
    - shard-tglu:         [WARN][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-tglu-10/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html

  * {igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0}:
    - shard-dg1:          [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * {igt@kms_psr@pr_basic}:
    - shard-mtlp:         NOTRUN -> [SKIP][11] +1 other test skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@kms_psr@pr_basic.html

  * {igt@kms_selftest@drm_format@drm_test_format_block_height_tiled}:
    - shard-snb:          [PASS][12] -> [TIMEOUT][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-snb6/igt@kms_selftest@drm_format@drm_test_format_block_height_tiled.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-snb6/igt@kms_selftest@drm_format@drm_test_format_block_height_tiled.html

  * {igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state}:
    - shard-rkl:          NOTRUN -> [TIMEOUT][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
    - shard-dg1:          [PASS][15] -> [TIMEOUT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg1-15/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
    - shard-snb:          NOTRUN -> [TIMEOUT][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-snb5/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
    - shard-tglu:         [PASS][18] -> [TIMEOUT][19] +1 other test timeout
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-tglu-2/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html

  
New tests
---------

  New tests have been introduced between CI_DRM_13884_full and Patchwork_126526v1_full:

### New IGT tests (1) ###

  * igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_calc_pbn_div:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_126526v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-mtlp:         NOTRUN -> [SKIP][20] ([i915#8411])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-6/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-rkl:          [PASS][21] -> [SKIP][22] ([i915#8411])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@api_intel_bb@object-reloc-purge-cache.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-6/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@api_intel_bb@render-ccs:
    - shard-dg2:          NOTRUN -> [FAIL][23] ([i915#6122])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@api_intel_bb@render-ccs.html

  * igt@debugfs_test@basic-hwmon:
    - shard-mtlp:         NOTRUN -> [SKIP][24] ([i915#9318])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@debugfs_test@basic-hwmon.html

  * igt@drm_fdinfo@busy-check-all@bcs0:
    - shard-dg1:          NOTRUN -> [SKIP][25] ([i915#8414]) +10 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@drm_fdinfo@busy-check-all@bcs0.html

  * igt@drm_fdinfo@busy-hang@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][26] ([i915#8414]) +12 other tests skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-4/igt@drm_fdinfo@busy-hang@rcs0.html

  * igt@drm_fdinfo@busy-idle@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#8414]) +19 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@drm_fdinfo@busy-idle@bcs0.html

  * igt@drm_fdinfo@idle@rcs0:
    - shard-rkl:          [PASS][28] -> [FAIL][29] ([i915#7742])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-6/igt@drm_fdinfo@idle@rcs0.html

  * igt@fbdev@unaligned-read:
    - shard-rkl:          [PASS][30] -> [SKIP][31] ([i915#2582])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@fbdev@unaligned-read.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@fbdev@unaligned-read.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-rkl:          [PASS][32] -> [SKIP][33] ([i915#3281]) +7 other tests skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-1/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_basic@multigpu-create-close:
    - shard-mtlp:         NOTRUN -> [SKIP][34] ([i915#7697])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-6/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-rkl:          NOTRUN -> [SKIP][35] ([i915#4098] / [i915#9323])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
    - shard-dg1:          NOTRUN -> [SKIP][36] ([i915#9323])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][37] ([i915#9364])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_persistence@hang:
    - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#8555]) +1 other test skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs1:
    - shard-mtlp:         NOTRUN -> [SKIP][39] ([i915#5882]) +5 other tests skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs1.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg1:          NOTRUN -> [SKIP][40] ([i915#4812])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_balancer@bonded-pair:
    - shard-mtlp:         NOTRUN -> [SKIP][41] ([i915#4771]) +1 other test skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-4/igt@gem_exec_balancer@bonded-pair.html
    - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4771])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gem_exec_balancer@bonded-pair.html

  * igt@gem_exec_balancer@sliced:
    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#4812]) +1 other test skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_capture@many-4k-zero:
    - shard-dg2:          NOTRUN -> [FAIL][44] ([i915#9606])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gem_exec_capture@many-4k-zero.html

  * igt@gem_exec_endless@dispatch@bcs0:
    - shard-rkl:          [PASS][45] -> [SKIP][46] ([i915#9591])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-6/igt@gem_exec_endless@dispatch@bcs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html

  * igt@gem_exec_fair@basic-flow:
    - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#4473] / [i915#4771])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@gem_exec_fair@basic-flow.html

  * igt@gem_exec_fair@basic-none-vip:
    - shard-dg1:          NOTRUN -> [SKIP][48] ([i915#3539] / [i915#4852])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-13/igt@gem_exec_fair@basic-none-vip.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][49] -> [FAIL][50] ([i915#2842]) +1 other test fail
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle:
    - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#3539]) +1 other test skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gem_exec_fair@basic-throttle.html

  * igt@gem_exec_fence@submit67:
    - shard-mtlp:         NOTRUN -> [SKIP][52] ([i915#4812])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@gem_exec_fence@submit67.html

  * igt@gem_exec_flush@basic-wb-prw-default:
    - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#3539] / [i915#4852]) +1 other test skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-6/igt@gem_exec_flush@basic-wb-prw-default.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-dg2:          NOTRUN -> [SKIP][54] ([fdo#109283] / [i915#5107])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-6/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_params@secure-non-root:
    - shard-dg2:          NOTRUN -> [SKIP][55] ([fdo#112283])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#3281]) +1 other test skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#3281]) +13 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-cpu-read-noreloc:
    - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#3281] / [i915#4423])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@gem_exec_reloc@basic-cpu-read-noreloc.html

  * igt@gem_exec_reloc@basic-write-cpu-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#3281]) +4 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@gem_exec_reloc@basic-write-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-dg1:          NOTRUN -> [SKIP][60] ([i915#3281]) +2 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-13/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#4537] / [i915#4812])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
    - shard-dg1:          NOTRUN -> [SKIP][62] ([i915#4860])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-19/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html
    - shard-mtlp:         NOTRUN -> [SKIP][63] ([i915#4860])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#4613]) +2 other tests skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-apl6/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-tglu:         NOTRUN -> [SKIP][65] ([i915#4613])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@gem_lmem_swapping@heavy-verify-random.html
    - shard-mtlp:         NOTRUN -> [SKIP][66] ([i915#4613])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@random-engines@lmem0:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][67] ([i915#4391] / [i915#4423])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@gem_lmem_swapping@random-engines@lmem0.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [PASS][68] -> [DMESG-WARN][69] ([i915#4936] / [i915#5493])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_media_fill@media-fill:
    - shard-mtlp:         NOTRUN -> [SKIP][70] ([i915#8289])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@gem_media_fill@media-fill.html

  * igt@gem_media_vme:
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#284])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gem_media_vme.html

  * igt@gem_mmap@basic-small-bo:
    - shard-dg1:          NOTRUN -> [SKIP][72] ([i915#4083])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@gem_mmap@basic-small-bo.html

  * igt@gem_mmap_gtt@bad-object:
    - shard-dg1:          NOTRUN -> [SKIP][73] ([i915#4077]) +4 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@gem_mmap_gtt@bad-object.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#4077]) +7 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-medium-copy:
    - shard-mtlp:         NOTRUN -> [SKIP][75] ([i915#4077]) +3 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@gem_mmap_gtt@cpuset-medium-copy.html

  * igt@gem_mmap_wc@close:
    - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#4083]) +2 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@gem_mmap_wc@close.html

  * igt@gem_mmap_wc@write-cpu-read-wc:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#4083]) +2 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gem_mmap_wc@write-cpu-read-wc.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#3282]) +7 other tests skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gem_partial_pwrite_pread@reads.html
    - shard-rkl:          [PASS][79] -> [SKIP][80] ([i915#3282]) +5 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-1/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_partial_pwrite_pread@reads-display:
    - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#3282]) +2 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-4/igt@gem_partial_pwrite_pread@reads-display.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#3282]) +2 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_partial_pwrite_pread@write-uncached:
    - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#3282])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@gem_partial_pwrite_pread@write-uncached.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-apl:          NOTRUN -> [WARN][84] ([i915#2658])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-apl6/igt@gem_pwrite@basic-exhaustion.html
    - shard-snb:          NOTRUN -> [WARN][85] ([i915#2658])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-snb5/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-dg1:          NOTRUN -> [SKIP][86] ([i915#4270]) +1 other test skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-19/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
    - shard-tglu:         NOTRUN -> [SKIP][87] ([i915#4270]) +1 other test skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
    - shard-mtlp:         NOTRUN -> [SKIP][88] ([i915#4270]) +2 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@fail-invalid-protected-context:
    - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#4270])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#4270]) +3 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-6/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][91] ([i915#8428]) +3 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html

  * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
    - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#768]) +4 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html

  * igt@gem_render_tiled_blits@basic:
    - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#4079])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@gem_render_tiled_blits@basic.html

  * igt@gem_softpin@evict-snoop:
    - shard-tglu:         NOTRUN -> [SKIP][94] ([fdo#109312])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@gem_softpin@evict-snoop.html
    - shard-mtlp:         NOTRUN -> [SKIP][95] ([i915#4885])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@gem_softpin@evict-snoop.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#3297])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-6/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg1:          NOTRUN -> [SKIP][97] ([i915#3297]) +1 other test skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-19/igt@gem_userptr_blits@create-destroy-unsync.html
    - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#3297])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@gem_userptr_blits@create-destroy-unsync.html
    - shard-mtlp:         NOTRUN -> [SKIP][99] ([i915#3297]) +1 other test skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#3297] / [i915#4880])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gen3_render_mixed_blits:
    - shard-dg1:          NOTRUN -> [SKIP][101] ([fdo#109289]) +1 other test skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@gen3_render_mixed_blits.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([fdo#109289]) +3 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gen7_exec_parse@basic-offset.html
    - shard-mtlp:         NOTRUN -> [SKIP][103] ([fdo#109289])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-4/igt@gen7_exec_parse@basic-offset.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-rkl:          [PASS][104] -> [SKIP][105] ([i915#2527])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@gen9_exec_parse@allowed-all.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-tglu:         NOTRUN -> [SKIP][106] ([i915#2527] / [i915#2856])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@gen9_exec_parse@bb-chained.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#2856]) +2 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gen9_exec_parse@bb-start-out.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#2527])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@gen9_exec_parse@bb-start-param.html
    - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#2527])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-mtlp:         NOTRUN -> [SKIP][110] ([i915#2856]) +4 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_hangman@gt-engine-error@bcs0:
    - shard-rkl:          [PASS][111] -> [SKIP][112] ([i915#9588])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@i915_hangman@gt-engine-error@bcs0.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [PASS][113] -> [DMESG-WARN][114] ([i915#9559])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-basic-api:
    - shard-apl:          NOTRUN -> [SKIP][115] ([fdo#109271]) +156 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-apl7/igt@i915_pm_freq_api@freq-basic-api.html

  * igt@i915_pm_rps@basic-api:
    - shard-mtlp:         NOTRUN -> [SKIP][116] ([i915#6621])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_rps@engine-order:
    - shard-apl:          NOTRUN -> [FAIL][117] ([i915#6537])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-apl4/igt@i915_pm_rps@engine-order.html

  * igt@i915_pm_rps@thresholds-idle-park@gt0:
    - shard-dg1:          NOTRUN -> [SKIP][118] ([i915#8925])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@i915_pm_rps@thresholds-idle-park@gt0.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#4387])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@i915_pm_sseu@full-enable.html
    - shard-dg1:          NOTRUN -> [SKIP][120] ([i915#4387])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@i915_pm_sseu@full-enable.html

  * igt@i915_suspend@forcewake:
    - shard-tglu:         [PASS][121] -> [INCOMPLETE][122] ([i915#8797])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-tglu-2/igt@i915_suspend@forcewake.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-4/igt@i915_suspend@forcewake.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#4212]) +3 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#4212])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_async_flips@crc@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][125] ([i915#8247]) +3 other tests fail
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-18/igt@kms_async_flips@crc@pipe-d-hdmi-a-4.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#9531])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][127] ([fdo#111614]) +3 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html
    - shard-tglu:         NOTRUN -> [SKIP][128] ([fdo#111615] / [i915#5286])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#5286])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-dg1:          NOTRUN -> [SKIP][130] ([i915#5286])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-13/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         [PASS][131] -> [FAIL][132] ([i915#5138])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-dg1:          NOTRUN -> [SKIP][133] ([i915#4538] / [i915#5286]) +3 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         NOTRUN -> [FAIL][134] ([i915#5138])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-16bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][135] ([fdo#111614])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_big_fb@linear-16bpp-rotate-270.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][136] ([i915#3638]) +2 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - shard-rkl:          [PASS][137] -> [SKIP][138] ([i915#1845] / [i915#4098]) +34 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][139] ([fdo#111614] / [i915#3638])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#5190]) +14 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][141] ([i915#4538]) +2 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-19/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
    - shard-tglu:         NOTRUN -> [SKIP][142] ([fdo#111615])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
    - shard-rkl:          NOTRUN -> [SKIP][143] ([fdo#110723])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#4538] / [i915#5190])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-dg1:          NOTRUN -> [SKIP][145] ([fdo#111615])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][146] ([fdo#111615]) +6 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_joiner@basic:
    - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#2705])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_big_joiner@basic.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-mtlp:         NOTRUN -> [SKIP][148] ([i915#7213])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#7213]) +3 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-2/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2.html

  * igt@kms_cdclk@plane-scaling@pipe-b-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#4087]) +3 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_cdclk@plane-scaling@pipe-b-dp-4.html

  * igt@kms_chamelium_color@ctm-max:
    - shard-rkl:          NOTRUN -> [SKIP][151] ([fdo#111827])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_chamelium_color@ctm-max.html
    - shard-dg1:          NOTRUN -> [SKIP][152] ([fdo#111827]) +1 other test skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@kms_chamelium_color@ctm-max.html

  * igt@kms_chamelium_color@ctm-red-to-blue:
    - shard-tglu:         NOTRUN -> [SKIP][153] ([fdo#111827])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_chamelium_color@ctm-red-to-blue.html
    - shard-mtlp:         NOTRUN -> [SKIP][154] ([fdo#111827])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@kms_chamelium_color@ctm-red-to-blue.html

  * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
    - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#7828]) +1 other test skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
    - shard-dg1:          NOTRUN -> [SKIP][156] ([i915#7828]) +7 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html

  * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#7828]) +8 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-tglu:         NOTRUN -> [SKIP][158] ([i915#7828]) +1 other test skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
    - shard-mtlp:         NOTRUN -> [SKIP][159] ([i915#7828]) +3 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_color@deep-color@pipe-a-hdmi-a-2-gamma:
    - shard-rkl:          NOTRUN -> [FAIL][160] ([i915#6892]) +1 other test fail
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_color@deep-color@pipe-a-hdmi-a-2-gamma.html

  * igt@kms_content_protection@atomic@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [TIMEOUT][161] ([i915#7173])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-apl6/igt@kms_content_protection@atomic@pipe-a-dp-1.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#3299])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-13/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][163] ([i915#3116] / [i915#3299])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_content_protection@dp-mst-type-0.html
    - shard-mtlp:         NOTRUN -> [SKIP][164] ([i915#3299])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@legacy@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][165] ([i915#7173])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_content_protection@legacy@pipe-a-dp-4.html

  * igt@kms_content_protection@uevent:
    - shard-mtlp:         NOTRUN -> [SKIP][166] ([i915#6944])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-6/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#3555]) +4 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-offscreen-max-size:
    - shard-tglu:         NOTRUN -> [SKIP][168] ([i915#3555])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_cursor_crc@cursor-offscreen-max-size.html

  * igt@kms_cursor_crc@cursor-onscreen-32x10:
    - shard-mtlp:         NOTRUN -> [SKIP][169] ([i915#3555] / [i915#8814]) +2 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-onscreen-32x10.html

  * igt@kms_cursor_crc@cursor-random-256x256:
    - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#1845] / [i915#4098]) +24 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-256x256.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-dg1:          NOTRUN -> [SKIP][171] ([i915#3555]) +5 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#3359])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#4103])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
    - shard-mtlp:         NOTRUN -> [SKIP][174] ([i915#4213])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-tglu:         NOTRUN -> [SKIP][175] ([fdo#109274])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
    - shard-mtlp:         NOTRUN -> [SKIP][176] ([i915#3546]) +2 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][177] ([fdo#109274] / [i915#5354]) +2 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-apl:          NOTRUN -> [SKIP][178] ([fdo#109271] / [fdo#111767]) +1 other test skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-apl7/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_dirtyfb@dirtyfb-ioctl:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#3555]) +13 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_dirtyfb@dirtyfb-ioctl.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#8588])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#4098]) +10 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_draw_crc@draw-method-mmap-gtt.html
    - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#8812])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_dsc@dsc-basic:
    - shard-mtlp:         NOTRUN -> [SKIP][183] ([i915#3555] / [i915#3840] / [i915#9159])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-6/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-dg1:          NOTRUN -> [SKIP][184] ([i915#3555] / [i915#3840])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#3469])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-blocking-wf_vblank:
    - shard-rkl:          NOTRUN -> [SKIP][186] ([fdo#111825])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_flip@2x-blocking-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-snb:          NOTRUN -> [SKIP][187] ([fdo#109271] / [fdo#111767]) +1 other test skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-snb5/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-rmfb:
    - shard-mtlp:         NOTRUN -> [SKIP][188] ([i915#3637]) +3 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-6/igt@kms_flip@2x-flip-vs-rmfb.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][189] ([fdo#109274] / [fdo#111767])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][190] ([fdo#109274] / [i915#3637]) +2 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-dg2:          NOTRUN -> [SKIP][191] ([fdo#109274]) +4 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-6/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@dpms-off-confusion-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#3637] / [i915#4098]) +8 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_flip@dpms-off-confusion-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#2672]) +4 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
    - shard-dg1:          NOTRUN -> [SKIP][194] ([i915#2587] / [i915#2672]) +2 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#2672]) +2 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][196] ([i915#2672]) +1 other test skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][197] ([i915#3555] / [i915#8810]) +1 other test skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#2672] / [i915#3555])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - shard-mtlp:         NOTRUN -> [SKIP][199] ([i915#5274])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
    - shard-rkl:          NOTRUN -> [SKIP][200] ([fdo#111825] / [i915#1825]) +8 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][201] ([fdo#111825]) +18 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][202] ([i915#8708]) +12 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - shard-rkl:          [PASS][203] -> [SKIP][204] ([i915#1849] / [i915#4098] / [i915#5354]) +16 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][205] ([i915#3458]) +10 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html
    - shard-tglu:         NOTRUN -> [SKIP][206] ([fdo#110189]) +5 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#3458]) +10 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][208] ([i915#8708]) +4 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglu:         NOTRUN -> [SKIP][209] ([fdo#109280]) +9 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html
    - shard-mtlp:         NOTRUN -> [SKIP][210] ([i915#1825]) +17 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:
    - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#3023]) +5 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][212] ([i915#4423] / [i915#8708])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt:
    - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#5354]) +30 other tests skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][214] ([i915#8708]) +13 other tests skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_hdmi_inject@inject-audio:
    - shard-tglu:         NOTRUN -> [SKIP][215] ([i915#433])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#3555] / [i915#8228])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@invalid-hdr:
    - shard-tglu:         NOTRUN -> [SKIP][217] ([i915#3555] / [i915#8228])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@static-toggle:
    - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#3555] / [i915#8228])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_hdr@static-toggle.html
    - shard-dg1:          NOTRUN -> [SKIP][219] ([i915#3555] / [i915#8228])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@kms_hdr@static-toggle.html

  * igt@kms_invalid_mode@int-max-clock:
    - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#3555] / [i915#4098]) +3 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_invalid_mode@int-max-clock.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-mtlp:         NOTRUN -> [SKIP][221] ([i915#4816])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
    - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#4816])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1:
    - shard-apl:          NOTRUN -> [ABORT][223] ([i915#180])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:
    - shard-apl:          NOTRUN -> [DMESG-WARN][224] ([i915#180])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html

  * igt@kms_plane@plane-panning-top-left:
    - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#4098] / [i915#8825])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_plane@plane-panning-top-left.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][226] ([i915#4573]) +1 other test fail
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-apl4/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [FAIL][227] ([i915#8292])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [FAIL][228] ([i915#8292])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-19/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][229] ([i915#8292])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][230] ([i915#5176]) +1 other test skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-rkl:          NOTRUN -> [SKIP][231] ([i915#3555] / [i915#4098] / [i915#8152])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-c-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#5235]) +3 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-c-dp-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-c-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][233] ([i915#5235]) +3 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-19/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-c-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:
    - shard-rkl:          NOTRUN -> [SKIP][234] ([i915#8152]) +1 other test skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#6953] / [i915#8152]) +1 other test skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][236] ([i915#5235]) +5 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#4098] / [i915#6953] / [i915#8152])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:
    - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#3555] / [i915#4098] / [i915#6953] / [i915#8152]) +1 other test skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][239] ([i915#9683])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-dg1:          NOTRUN -> [SKIP][240] ([fdo#111068] / [i915#9683]) +2 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][241] ([i915#9683]) +3 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-mtlp:         NOTRUN -> [SKIP][242] ([i915#4348])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-4/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-dg1:          NOTRUN -> [SKIP][243] ([i915#9673]) +3 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@kms_psr@psr2_cursor_render.html
    - shard-rkl:          NOTRUN -> [SKIP][244] ([i915#9673])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_psr@psr2_primary_render:
    - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#9681]) +2 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_psr@psr2_primary_render.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-tglu:         NOTRUN -> [SKIP][246] ([i915#9673]) +1 other test skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_rotation_crc@bad-pixel-format:
    - shard-snb:          NOTRUN -> [SKIP][247] ([fdo#109271]) +50 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-snb5/igt@kms_rotation_crc@bad-pixel-format.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-rkl:          NOTRUN -> [SKIP][248] ([i915#5289])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
    - shard-dg1:          NOTRUN -> [SKIP][249] ([i915#5289])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#4235])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:
    - shard-mtlp:         NOTRUN -> [SKIP][251] ([i915#5289])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - shard-rkl:          [PASS][252] -> [INCOMPLETE][253] ([i915#8875] / [i915#9569])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-dg1:          NOTRUN -> [SKIP][254] ([fdo#111615] / [i915#5289])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#3555] / [i915#4098])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_setmode@clone-exclusive-crtc.html
    - shard-mtlp:         NOTRUN -> [SKIP][256] ([i915#3555] / [i915#8809])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-4/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-dg2:          NOTRUN -> [SKIP][257] ([i915#8623])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:
    - shard-mtlp:         [PASS][258] -> [FAIL][259] ([i915#9196])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
    - shard-tglu:         [PASS][260] -> [FAIL][261] ([i915#9196])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-apl:          NOTRUN -> [SKIP][262] ([fdo#109271] / [i915#2437])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-apl4/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@gen12-mi-rpc:
    - shard-rkl:          NOTRUN -> [SKIP][263] ([fdo#109289]) +2 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@perf@gen12-mi-rpc.html

  * igt@perf@global-sseu-config:
    - shard-mtlp:         NOTRUN -> [SKIP][264] ([i915#7387])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@perf@global-sseu-config.html

  * igt@perf@global-sseu-config-invalid:
    - shard-dg2:          NOTRUN -> [SKIP][265] ([i915#7387])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@perf@global-sseu-config-invalid.html

  * igt@perf@mi-rpc:
    - shard-tglu:         NOTRUN -> [SKIP][266] ([fdo#109289])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@perf@mi-rpc.html
    - shard-mtlp:         NOTRUN -> [SKIP][267] ([i915#2434])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@perf@mi-rpc.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          [PASS][268] -> [FAIL][269] ([i915#7484])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg2-6/igt@perf@non-zero-reason@0-rcs0.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html

  * igt@perf_pmu@busy-double-start@rcs0:
    - shard-mtlp:         [PASS][270] -> [FAIL][271] ([i915#4349])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-mtlp-8/igt@perf_pmu@busy-double-start@rcs0.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@perf_pmu@busy-double-start@rcs0.html

  * igt@perf_pmu@semaphore-busy@vcs1:
    - shard-dg1:          NOTRUN -> [FAIL][272] ([i915#4349]) +1 other test fail
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-19/igt@perf_pmu@semaphore-busy@vcs1.html

  * igt@prime_udl:
    - shard-mtlp:         NOTRUN -> [SKIP][273] ([fdo#109291])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@prime_udl.html

  * igt@prime_vgem@basic-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][274] ([i915#3708] / [i915#4077])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          [PASS][275] -> [SKIP][276] ([fdo#109295] / [fdo#111656] / [i915#3708])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@prime_vgem@coherency-gtt.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-6/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-write-hang:
    - shard-mtlp:         NOTRUN -> [SKIP][277] ([i915#3708])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-4/igt@prime_vgem@fence-write-hang.html
    - shard-dg2:          NOTRUN -> [SKIP][278] ([i915#3708])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@prime_vgem@fence-write-hang.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-rkl:          NOTRUN -> [SKIP][279] ([fdo#109307])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@tools_test@sysfs_l3_parity.html
    - shard-dg1:          NOTRUN -> [SKIP][280] ([fdo#109307] / [i915#4818])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@tools_test@sysfs_l3_parity.html

  * igt@v3d/v3d_perfmon@get-values-invalid-perfmon:
    - shard-dg1:          NOTRUN -> [SKIP][281] ([i915#2575]) +10 other tests skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@v3d/v3d_perfmon@get-values-invalid-perfmon.html

  * igt@v3d/v3d_submit_cl@bad-flag:
    - shard-tglu:         NOTRUN -> [SKIP][282] ([fdo#109315] / [i915#2575]) +2 other tests skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@v3d/v3d_submit_cl@bad-flag.html

  * igt@v3d/v3d_submit_cl@bad-multisync-pad:
    - shard-mtlp:         NOTRUN -> [SKIP][283] ([i915#2575]) +11 other tests skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-6/igt@v3d/v3d_submit_cl@bad-multisync-pad.html

  * igt@v3d/v3d_submit_csd@bad-multisync-extension:
    - shard-rkl:          NOTRUN -> [SKIP][284] ([fdo#109315]) +3 other tests skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@v3d/v3d_submit_csd@bad-multisync-extension.html

  * igt@v3d/v3d_submit_csd@job-perfmon:
    - shard-dg2:          NOTRUN -> [SKIP][285] ([i915#2575]) +11 other tests skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@v3d/v3d_submit_csd@job-perfmon.html

  * igt@vc4/vc4_create_bo@create-bo-0:
    - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#7711]) +6 other tests skip
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-6/igt@vc4/vc4_create_bo@create-bo-0.html

  * igt@vc4/vc4_lookup_fail@bad-color-write:
    - shard-dg1:          NOTRUN -> [SKIP][287] ([i915#7711]) +4 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-13/igt@vc4/vc4_lookup_fail@bad-color-write.html

  * igt@vc4/vc4_perfmon@destroy-invalid-perfmon:
    - shard-rkl:          NOTRUN -> [SKIP][288] ([i915#7711])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@vc4/vc4_perfmon@destroy-invalid-perfmon.html

  * igt@vc4/vc4_perfmon@destroy-valid-perfmon:
    - shard-mtlp:         NOTRUN -> [SKIP][289] ([i915#7711]) +3 other tests skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@vc4/vc4_perfmon@destroy-valid-perfmon.html

  * igt@vc4/vc4_wait_seqno@bad-seqno-0ns:
    - shard-tglu:         NOTRUN -> [SKIP][290] ([i915#2575]) +1 other test skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@vc4/vc4_wait_seqno@bad-seqno-0ns.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - shard-dg1:          [DMESG-WARN][291] ([i915#4391] / [i915#4423]) -> [PASS][292]
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg1-16/igt@core_hotunplug@unbind-rebind.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-19/igt@core_hotunplug@unbind-rebind.html

  * {igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pathological}:
    - shard-dg1:          [TIMEOUT][293] -> [PASS][294]
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg1-13/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pathological.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-13/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pathological.html

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [FAIL][295] ([i915#7742]) -> [PASS][296] +2 other tests pass
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@drm_read@short-buffer-nonblock:
    - shard-rkl:          [SKIP][297] ([i915#4098]) -> [PASS][298] +9 other tests pass
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@drm_read@short-buffer-nonblock.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@drm_read@short-buffer-nonblock.html

  * igt@fbdev@read:
    - shard-rkl:          [SKIP][299] ([i915#2582]) -> [PASS][300] +1 other test pass
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@fbdev@read.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@fbdev@read.html

  * igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [INCOMPLETE][301] ([i915#7297]) -> [PASS][302]
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg2-6/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-smem-lmem0.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-smem-lmem0.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-mtlp:         [ABORT][303] ([i915#9414]) -> [PASS][304]
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-mtlp-4/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-6/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_persistence@legacy-engines-hang@blt:
    - shard-rkl:          [SKIP][305] ([i915#6252]) -> [PASS][306]
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-1/igt@gem_ctx_persistence@legacy-engines-hang@blt.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [FAIL][307] ([i915#5784]) -> [PASS][308]
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg1-18/igt@gem_eio@reset-stress.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-18/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          [FAIL][309] ([i915#2842]) -> [PASS][310]
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-glk4/igt@gem_exec_fair@basic-none-share@rcs0.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-glk8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-tglu:         [FAIL][311] ([i915#2842]) -> [PASS][312]
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-tglu-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_reloc@basic-write-read:
    - shard-rkl:          [SKIP][313] ([i915#3281]) -> [PASS][314] +7 other tests pass
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@gem_exec_reloc@basic-write-read.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@gem_exec_reloc@basic-write-read.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-mtlp:         [ABORT][315] ([i915#7975] / [i915#8213] / [i915#9262]) -> [PASS][316]
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-mtlp-4/igt@gem_exec_suspend@basic-s4-devices@smem.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-4/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_mmap_gtt@coherency:
    - shard-rkl:          [SKIP][317] ([fdo#111656]) -> [PASS][318]
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@gem_mmap_gtt@coherency.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@gem_mmap_gtt@coherency.html

  * igt@gem_mmap_wc@set-cache-level:
    - shard-rkl:          [SKIP][319] ([i915#1850]) -> [PASS][320]
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@gem_mmap_wc@set-cache-level.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@gem_mmap_wc@set-cache-level.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          [SKIP][321] ([i915#3282]) -> [PASS][322] +6 other tests pass
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-rkl:          [SKIP][323] ([i915#8411]) -> [PASS][324] +1 other test pass
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-4/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [INCOMPLETE][325] ([i915#5566]) -> [PASS][326]
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-apl1/igt@gen9_exec_parse@allowed-single.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-apl7/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          [SKIP][327] ([i915#2527]) -> [PASS][328] +3 other tests pass
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@gen9_exec_parse@shadow-peek.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_hangman@engine-engine-error@bcs0:
    - shard-rkl:          [SKIP][329] ([i915#9588]) -> [PASS][330]
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@i915_hangman@engine-engine-error@bcs0.html

  * {igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0}:
    - shard-dg1:          [FAIL][331] -> [PASS][332]
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [FAIL][333] ([i915#5138]) -> [PASS][334]
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [FAIL][335] ([i915#3743]) -> [PASS][336] +1 other test pass
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-rkl:          [SKIP][337] ([i915#1845] / [i915#4098]) -> [PASS][338] +13 other tests pass
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-rkl:          [SKIP][339] ([i915#1849] / [i915#4098]) -> [PASS][340]
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_fbcon_fbt@fbc-suspend.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@b-vga1:
    - shard-snb:          [ABORT][341] -> [PASS][342]
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-snb7/igt@kms_flip@flip-vs-blocking-wf-vblank@b-vga1.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-snb5/igt@kms_flip@flip-vs-blocking-wf-vblank@b-vga1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][343] ([i915#1849] / [i915#4098] / [i915#5354]) -> [PASS][344] +8 other tests pass
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
    - shard-dg2:          [FAIL][345] ([i915#6880]) -> [PASS][346]
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:
    - shard-apl:          [INCOMPLETE][347] ([i915#180] / [i915#9392]) -> [PASS][348]
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html

  * {igt@kms_pm_rpm@modeset-non-lpsp}:
    - shard-rkl:          [SKIP][349] ([i915#9519]) -> [PASS][350]
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp.html

  * {igt@kms_pm_rpm@modeset-non-lpsp-stress}:
    - shard-dg1:          [SKIP][351] ([i915#9519]) -> [PASS][352]
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg1-19/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-18/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_properties@crtc-properties-legacy:
    - shard-rkl:          [SKIP][353] ([i915#1849]) -> [PASS][354] +2 other tests pass
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_properties@crtc-properties-legacy.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-1/igt@kms_properties@crtc-properties-legacy.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
    - shard-rkl:          [INCOMPLETE][355] ([i915#9569]) -> [PASS][356]
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html

  * {igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_no_damage_no_crtc}:
    - shard-tglu:         [TIMEOUT][357] -> [PASS][358] +1 other test pass
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-tglu-10/igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_no_damage_no_crtc.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-3/igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_no_damage_no_crtc.html

  * {igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create}:
    - shard-apl:          [TIMEOUT][359] -> [PASS][360] +1 other test pass
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-apl2/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-apl2/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html
    - shard-dg2:          [TIMEOUT][361] -> [PASS][362]
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg2-2/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-6/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html

  * {igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state}:
    - shard-mtlp:         [TIMEOUT][363] -> [PASS][364]
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-mtlp-3/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-1/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html

  * {igt@kms_selftest@drm_plane_helper@drm_test_check_plane_state}:
    - shard-rkl:          [TIMEOUT][365] -> [PASS][366]
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_selftest@drm_plane_helper@drm_test_check_plane_state.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_selftest@drm_plane_helper@drm_test_check_plane_state.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:
    - shard-mtlp:         [FAIL][367] ([i915#9196]) -> [PASS][368]
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
    - shard-tglu:         [FAIL][369] ([i915#9196]) -> [PASS][370]
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html

  * igt@perf@gen12-group-exclusive-stream-sample-oa:
    - shard-rkl:          [SKIP][371] ([fdo#109289]) -> [PASS][372]
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@perf@gen12-group-exclusive-stream-sample-oa.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@perf@gen12-group-exclusive-stream-sample-oa.html

  * igt@perf_pmu@busy-double-start@ccs0:
    - shard-mtlp:         [FAIL][373] ([i915#4349]) -> [PASS][374]
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-mtlp-8/igt@perf_pmu@busy-double-start@ccs0.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@perf_pmu@busy-double-start@ccs0.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [FAIL][375] ([i915#4349]) -> [PASS][376] +3 other tests pass
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg2-1/igt@perf_pmu@busy-double-start@vecs1.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@prime_vgem@basic-fence-read:
    - shard-rkl:          [SKIP][377] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][378] +1 other test pass
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-6/igt@prime_vgem@basic-fence-read.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@prime_vgem@basic-fence-read.html

  
#### Warnings ####

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          [SKIP][379] ([i915#3555]) -> [SKIP][380] ([i915#7957])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          [SKIP][381] ([i915#9323]) -> [SKIP][382] ([i915#7957])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@gem_ccs@block-multicopy-compressed.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-rkl:          [SKIP][383] ([i915#3282]) -> [WARN][384] ([i915#2658])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@gem_pwrite@basic-exhaustion.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          [SKIP][385] ([i915#2532]) -> [SKIP][386] ([i915#2527])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-6/igt@gen9_exec_parse@bb-oversize.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-rkl:          [SKIP][387] ([i915#1845] / [i915#4098]) -> [SKIP][388] ([i915#9531])
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
    - shard-rkl:          [SKIP][389] ([i915#5286]) -> [SKIP][390] ([i915#1845] / [i915#4098]) +5 other tests skip
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
    - shard-rkl:          [SKIP][391] ([i915#1845] / [i915#4098]) -> [SKIP][392] ([i915#5286]) +4 other tests skip
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-6/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-rkl:          [SKIP][393] ([fdo#111614] / [i915#3638]) -> [SKIP][394] ([i915#1845] / [i915#4098]) +3 other tests skip
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-6/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-rkl:          [SKIP][395] ([i915#1845] / [i915#4098]) -> [SKIP][396] ([fdo#111614] / [i915#3638])
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-rkl:          [SKIP][397] ([i915#1845] / [i915#4098]) -> [SKIP][398] ([fdo#110723]) +3 other tests skip
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-rkl:          [SKIP][399] ([i915#1845] / [i915#4098]) -> [SKIP][400] ([fdo#111615])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-rkl:          [SKIP][401] ([fdo#111615]) -> [SKIP][402] ([i915#1845] / [i915#4098])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-rkl:          [SKIP][403] ([fdo#110723]) -> [SKIP][404] ([i915#1845] / [i915#4098]) +5 other tests skip
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-rkl:          [SKIP][405] ([i915#1845] / [i915#4098]) -> [SKIP][406] ([i915#3116])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-1.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-rkl:          [SKIP][407] ([i915#3116]) -> [SKIP][408] ([i915#1845] / [i915#4098])
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-rkl:          [SKIP][409] ([i915#7118]) -> [SKIP][410] ([i915#1845] / [i915#4098]) +1 other test skip
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_content_protection@legacy.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@srm:
    - shard-rkl:          [SKIP][411] ([i915#1845] / [i915#4098]) -> [SKIP][412] ([i915#7118])
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_content_protection@srm.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-rkl:          [SKIP][413] ([i915#1845] / [i915#4098]) -> [SKIP][414] ([i915#3555]) +1 other test skip
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-32x10.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-1/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-rkl:          [SKIP][415] ([i915#1845] / [i915#4098]) -> [SKIP][416] ([i915#3359]) +1 other test skip
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-rkl:          [SKIP][417] ([i915#3359]) -> [SKIP][418] ([i915#1845] / [i915#4098]) +1 other test skip
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-512x512.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-rkl:          [SKIP][419] ([fdo#111767] / [fdo#111825]) -> [SKIP][420] ([i915#1845] / [i915#4098])
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-rkl:          [SKIP][421] ([i915#4103]) -> [SKIP][422] ([i915#1845] / [i915#4098])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          [SKIP][423] ([i915#1845] / [i915#4098]) -> [SKIP][424] ([i915#4103])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
    - shard-rkl:          [SKIP][425] ([fdo#111825]) -> [SKIP][426] ([i915#1845] / [i915#4098]) +1 other test skip
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-rkl:          [SKIP][427] ([i915#1845] / [i915#4098]) -> [SKIP][428] ([fdo#111825]) +5 other tests skip
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-rkl:          [SKIP][429] ([i915#4098]) -> [SKIP][430] ([i915#8588])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_display_modes@mst-extended-mode-negative.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-1/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-rkl:          [SKIP][431] ([i915#3555] / [i915#3840]) -> [SKIP][432] ([i915#1845] / [i915#4098])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-4/igt@kms_dsc@dsc-with-bpc-formats.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][433] ([i915#3955]) -> [SKIP][434] ([fdo#110189] / [i915#3955])
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-6/igt@kms_fbcon_fbt@psr.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_fbcon_fbt@psr.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-rkl:          [SKIP][435] ([fdo#109285] / [i915#4098]) -> [SKIP][436] ([fdo#109285])
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_force_connector_basic@force-load-detect.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
    - shard-rkl:          [SKIP][437] ([i915#3023]) -> [SKIP][438] ([i915#1849] / [i915#4098] / [i915#5354]) +27 other tests skip
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt:
    - shard-rkl:          [SKIP][439] ([i915#1849] / [i915#4098] / [i915#5354]) -> [SKIP][440] ([fdo#111825] / [i915#1825]) +24 other tests skip
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          [SKIP][441] ([fdo#111825] / [i915#1825]) -> [SKIP][442] ([i915#1849] / [i915#4098] / [i915#5354]) +41 other tests skip
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-rkl:          [SKIP][443] ([i915#1849] / [i915#4098] / [i915#5354]) -> [SKIP][444] ([i915#3023]) +14 other tests skip
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/index.html

--===============4355063301870197399==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix UHBR data, link M/N/TU and PBN values</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126526/">https://patchwork.freedesktop.org/series/126526/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13884_full -&gt; Patchwork_126526v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126526v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_126526v1_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>Additional (1): shard-rkl0 <br />
  Missing    (1): shard-tglu0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_126526v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_draw_crc@draw-method-blt@xrgb2101010-ytiled:<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-glk5/igt@kms_draw_crc@draw-method-blt@xrgb2101010-ytiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-glk5/igt@kms_draw_crc@draw-method-blt@xrgb2101010-ytiled.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_pxp@create-protected-buffer:<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-glk4/igt@gem_pxp@create-protected-buffer.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-glk2/igt@gem_pxp@create-protected-buffer.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pathological}:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-mtlp-7/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pathological.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-4/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pathological.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>{igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0}:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-tglu-10/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html">WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html">FAIL</a></li>
</ul>
</li>
<li>
<p>{igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0}:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">FAIL</a></li>
</ul>
</li>
<li>
<p>{igt@kms_psr@pr_basic}:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@kms_psr@pr_basic.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_format@drm_test_format_block_height_tiled}:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-snb6/igt@kms_selftest@drm_format@drm_test_format_block_height_tiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-snb6/igt@kms_selftest@drm_format@drm_test_format_block_height_tiled.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state}:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html">TIMEOUT</a></p>
</li>
<li>
<p>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg1-15/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html">TIMEOUT</a></p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-snb5/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html">TIMEOUT</a></p>
</li>
<li>
<p>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-tglu-2/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html">TIMEOUT</a> +1 other test timeout</p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_13884_full and Patchwork_126526v1_full:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_calc_pbn_div:<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126526v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-6/igt@api_intel_bb@blit-reloc-purge-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@api_intel_bb@object-reloc-purge-cache.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-6/igt@api_intel_bb@object-reloc-purge-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@render-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@api_intel_bb@render-ccs.html">FAIL</a> ([i915#6122])</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#9318])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@bcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@drm_fdinfo@busy-check-all@bcs0.html">SKIP</a> ([i915#8414]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-4/igt@drm_fdinfo@busy-hang@rcs0.html">SKIP</a> ([i915#8414]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@drm_fdinfo@busy-idle@bcs0.html">SKIP</a> ([i915#8414]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@idle@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-6/igt@drm_fdinfo@idle@rcs0.html">FAIL</a> ([i915#7742])</li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@fbdev@unaligned-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@fbdev@unaligned-read.html">SKIP</a> ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-1/igt@gem_bad_reloc@negative-reloc-lut.html">SKIP</a> ([i915#3281]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-6/igt@gem_basic@multigpu-create-close.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a> ([i915#4098] / [i915#9323])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a> ([i915#9323])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gem_create@create-ext-cpu-access-big.html">INCOMPLETE</a> ([i915#9364])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@gem_ctx_persistence@hang.html">SKIP</a> ([i915#8555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs1.html">SKIP</a> ([i915#5882]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@gem_exec_balancer@bonded-false-hang.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-pair:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-4/igt@gem_exec_balancer@bonded-pair.html">SKIP</a> ([i915#4771]) +1 other test skip</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gem_exec_balancer@bonded-pair.html">SKIP</a> ([i915#4771])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@sliced:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gem_exec_balancer@sliced.html">SKIP</a> ([i915#4812]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-zero:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gem_exec_capture@many-4k-zero.html">FAIL</a> ([i915#9606])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@bcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-6/igt@gem_exec_endless@dispatch@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html">SKIP</a> ([i915#9591])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@gem_exec_fair@basic-flow.html">SKIP</a> ([i915#4473] / [i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-13/igt@gem_exec_fair@basic-none-vip.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gem_exec_fair@basic-throttle.html">SKIP</a> ([i915#3539]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit67:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@gem_exec_fence@submit67.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-prw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-6/igt@gem_exec_flush@basic-wb-prw-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-6/igt@gem_exec_params@rsvd2-dirt.html">SKIP</a> ([fdo#109283] / [i915#5107])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gem_exec_params@secure-non-root.html">SKIP</a> ([fdo#112283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@gem_exec_reloc@basic-concurrent0.html">SKIP</a> ([i915#3281]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SKIP</a> ([i915#3281]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-noreloc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@gem_exec_reloc@basic-cpu-read-noreloc.html">SKIP</a> ([i915#3281] / [i915#4423])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@gem_exec_reloc@basic-write-cpu-noreloc.html">SKIP</a> ([i915#3281]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-13/igt@gem_exec_reloc@basic-write-read-active.html">SKIP</a> ([i915#3281]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-contexts-chain.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-19/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html">SKIP</a> ([i915#4860])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html">SKIP</a> ([i915#4860])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-apl6/igt@gem_lmem_swapping@heavy-multi.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@gem_lmem_swapping@heavy-verify-random.html">SKIP</a> ([i915#4613])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@gem_lmem_swapping@heavy-verify-random.html">SKIP</a> ([i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@gem_lmem_swapping@random-engines@lmem0.html">DMESG-WARN</a> ([i915#4391] / [i915#4423])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG-WARN</a> ([i915#4936] / [i915#5493])</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@gem_media_fill@media-fill.html">SKIP</a> ([i915#8289])</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gem_media_vme.html">SKIP</a> ([i915#284])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic-small-bo:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@gem_mmap@basic-small-bo.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@bad-object:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@gem_mmap_gtt@bad-object.html">SKIP</a> ([i915#4077]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">SKIP</a> ([i915#4077]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@gem_mmap_gtt@cpuset-medium-copy.html">SKIP</a> ([i915#4077]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@close:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@gem_mmap_wc@close.html">SKIP</a> ([i915#4083]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-cpu-read-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gem_mmap_wc@write-cpu-read-wc.html">SKIP</a> ([i915#4083]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gem_partial_pwrite_pread@reads.html">SKIP</a> ([i915#3282]) +7 other tests skip</p>
</li>
<li>
<p>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-1/igt@gem_partial_pwrite_pread@reads.html">SKIP</a> ([i915#3282]) +5 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-display:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-4/igt@gem_partial_pwrite_pread@reads-display.html">SKIP</a> ([i915#3282]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@gem_partial_pwrite_pread@reads-uncached.html">SKIP</a> ([i915#3282]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-uncached:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@gem_partial_pwrite_pread@write-uncached.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-apl6/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-snb5/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-19/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html">SKIP</a> ([i915#4270]) +1 other test skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html">SKIP</a> ([i915#4270]) +1 other test skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html">SKIP</a> ([i915#4270]) +2 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@gem_pxp@fail-invalid-protected-context.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-6/igt@gem_pxp@protected-raw-src-copy-not-readible.html">SKIP</a> ([i915#4270]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html">SKIP</a> ([i915#8428]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html">SKIP</a> ([i915#768]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@gem_render_tiled_blits@basic.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@gem_softpin@evict-snoop.html">SKIP</a> ([fdo#109312])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@gem_softpin@evict-snoop.html">SKIP</a> ([i915#4885])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-6/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-19/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> ([i915#3297])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gen3_render_mixed_blits:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@gen3_render_mixed_blits.html">SKIP</a> ([fdo#109289]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gen7_exec_parse@basic-offset.html">SKIP</a> ([fdo#109289]) +3 other tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-4/igt@gen7_exec_parse@basic-offset.html">SKIP</a> ([fdo#109289])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@gen9_exec_parse@allowed-all.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@gen9_exec_parse@bb-chained.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gen9_exec_parse@bb-start-out.html">SKIP</a> ([i915#2856]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> ([i915#2527])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> ([i915#2527])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@gen9_exec_parse@unaligned-jump.html">SKIP</a> ([i915#2856]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@gt-engine-error@bcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@i915_hangman@gt-engine-error@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html">SKIP</a> ([i915#9588])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html">DMESG-WARN</a> ([i915#9559])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-basic-api:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-apl7/igt@i915_pm_freq_api@freq-basic-api.html">SKIP</a> ([fdo#109271]) +156 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-apl4/igt@i915_pm_rps@engine-order.html">FAIL</a> ([i915#6537])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park@gt0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@i915_pm_rps@thresholds-idle-park@gt0.html">SKIP</a> ([i915#8925])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([i915#4387])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([i915#4387])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-tglu-2/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-4/igt@i915_suspend@forcewake.html">INCOMPLETE</a> ([i915#8797])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">SKIP</a> ([i915#4212]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-18/igt@kms_async_flips@crc@pipe-d-hdmi-a-4.html">FAIL</a> ([i915#8247]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-270:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html">SKIP</a> ([fdo#111614]) +3 other tests skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html">SKIP</a> ([fdo#111615] / [i915#5286])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-13/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html">FAIL</a> ([i915#5138])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([i915#4538] / [i915#5286]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">FAIL</a> ([i915#5138])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_big_fb@linear-16bpp-rotate-270.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> ([i915#3638]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">SKIP</a> ([i915#1845] / [i915#4098]) +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html">SKIP</a> ([fdo#111614] / [i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">SKIP</a> ([i915#5190]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-19/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SKIP</a> ([i915#4538]) +2 other tests skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SKIP</a> ([fdo#111615])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html">SKIP</a> ([i915#4538] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#111615]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_big_joiner@basic.html">SKIP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> ([i915#7213])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-2/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#7213]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-b-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_cdclk@plane-scaling@pipe-b-dp-4.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-max:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_chamelium_color@ctm-max.html">SKIP</a> ([fdo#111827])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@kms_chamelium_color@ctm-max.html">SKIP</a> ([fdo#111827]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-red-to-blue:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_chamelium_color@ctm-red-to-blue.html">SKIP</a> ([fdo#111827])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@kms_chamelium_color@ctm-red-to-blue.html">SKIP</a> ([fdo#111827])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html">SKIP</a> ([i915#7828]) +1 other test skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html">SKIP</a> ([i915#7828]) +7 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html">SKIP</a> ([i915#7828]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html">SKIP</a> ([i915#7828]) +1 other test skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html">SKIP</a> ([i915#7828]) +3 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color@pipe-a-hdmi-a-2-gamma:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_color@deep-color@pipe-a-hdmi-a-2-gamma.html">FAIL</a> ([i915#6892]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-apl6/igt@kms_content_protection@atomic@pipe-a-dp-1.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-13/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> ([i915#3116] / [i915#3299])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> ([i915#3299])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_content_protection@legacy@pipe-a-dp-4.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-6/igt@kms_content_protection@uevent.html">SKIP</a> ([i915#6944])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-max-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_cursor_crc@cursor-offscreen-max-size.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x10:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-onscreen-32x10.html">SKIP</a> ([i915#3555] / [i915#8814]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x256:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-256x256.html">SKIP</a> ([i915#1845] / [i915#4098]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html">SKIP</a> ([i915#3555]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4213])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html">SKIP</a> ([fdo#109274])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html">SKIP</a> ([i915#3546]) +2 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html">SKIP</a> ([fdo#109274] / [i915#5354]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-apl7/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html">SKIP</a> ([fdo#109271] / [fdo#111767]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_dirtyfb@dirtyfb-ioctl.html">SKIP</a> ([i915#3555]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> ([i915#4098]) +10 other tests skip</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> ([i915#8812])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-6/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#3840] / [i915#9159])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> ([i915#3469])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_flip@2x-blocking-wf_vblank.html">SKIP</a> ([fdo#111825])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-snb5/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html">SKIP</a> ([fdo#109271] / [fdo#111767]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-6/igt@kms_flip@2x-flip-vs-rmfb.html">SKIP</a> ([i915#3637]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html">SKIP</a> ([fdo#109274] / [fdo#111767])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html">SKIP</a> ([fdo#109274] / [i915#3637]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-6/igt@kms_flip@2x-modeset-vs-vblank-race.html">SKIP</a> ([fdo#109274]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-off-confusion-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_flip@dpms-off-confusion-interruptible.html">SKIP</a> ([i915#3637] / [i915#4098]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +4 other tests skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +2 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">SKIP</a> ([i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> ([i915#3555] / [i915#8810]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> ([i915#5274])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> ([fdo#111825] / [i915#1825]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html">SKIP</a> ([fdo#111825]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html">SKIP</a> ([i915#8708]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html">SKIP</a> ([i915#1849] / [i915#4098] / [i915#5354]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html">SKIP</a> ([i915#3458]) +10 other tests skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html">SKIP</a> ([fdo#110189]) +5 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([fdo#109280]) +9 other tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([i915#1825]) +17 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html">SKIP</a> ([i915#3023]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#4423] / [i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> ([i915#5354]) +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> ([i915#433])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-2/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_hdr@invalid-hdr.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_hdr@static-toggle.html">SKIP</a> ([i915#3555] / [i915#8228])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@kms_hdr@static-toggle.html">SKIP</a> ([i915#3555] / [i915#8228])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_invalid_mode@int-max-clock.html">SKIP</a> ([i915#3555] / [i915#4098]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#4816])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#4816])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1.html">ABORT</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-top-left:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_plane@plane-panning-top-left.html">SKIP</a> ([i915#4098] / [i915#8825])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-apl4/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1.html">FAIL</a> ([i915#4573]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-19/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html">SKIP</a> ([i915#5176]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> ([i915#3555] / [i915#4098] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-c-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-c-dp-4.html">SKIP</a> ([i915#5235]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-19/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#5235]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html">SKIP</a> ([i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html">SKIP</a> ([i915#6953] / [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#5235]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> ([i915#4098] / [i915#6953] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html">SKIP</a> ([i915#3555] / [i915#4098] / [i915#6953] / [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html">SKIP</a> ([fdo#111068] / [i915#9683]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([i915#9683]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-4/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> ([i915#4348])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@kms_psr@psr2_cursor_render.html">SKIP</a> ([i915#9673]) +3 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_psr@psr2_cursor_render.html">SKIP</a> ([i915#9673])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_psr@psr2_primary_render.html">SKIP</a> ([i915#9681]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_psr@psr2_sprite_plane_onoff.html">SKIP</a> ([i915#9673]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-pixel-format:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-snb5/igt@kms_rotation_crc@bad-pixel-format.html">SKIP</a> ([fdo#109271]) +50 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html">SKIP</a> ([i915#5289])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html">SKIP</a> ([i915#5289])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_rotation_crc@primary-rotation-90.html">SKIP</a> ([i915#4235])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html">INCOMPLETE</a> ([i915#8875] / [i915#9569])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-15/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> ([fdo#111615] / [i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_setmode@clone-exclusive-crtc.html">SKIP</a> ([i915#3555] / [i915#4098])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-4/igt@kms_setmode@clone-exclusive-crtc.html">SKIP</a> ([i915#3555] / [i915#8809])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html">FAIL</a> ([i915#9196])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html">FAIL</a> ([i915#9196])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-apl4/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-mi-rpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@perf@gen12-mi-rpc.html">SKIP</a> ([fdo#109289]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@perf@global-sseu-config.html">SKIP</a> ([i915#7387])</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config-invalid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@perf@global-sseu-config-invalid.html">SKIP</a> ([i915#7387])</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@perf@mi-rpc.html">SKIP</a> ([fdo#109289])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-5/igt@perf@mi-rpc.html">SKIP</a> ([i915#2434])</p>
</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg2-6/igt@perf@non-zero-reason@0-rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> ([i915#7484])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-mtlp-8/igt@perf_pmu@busy-double-start@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@perf_pmu@busy-double-start@rcs0.html">FAIL</a> ([i915#4349])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@semaphore-busy@vcs1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-19/igt@perf_pmu@semaphore-busy@vcs1.html">FAIL</a> ([i915#4349]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@prime_udl:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@prime_udl.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@prime_vgem@basic-gtt.html">SKIP</a> ([i915#3708] / [i915#4077])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@prime_vgem@coherency-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-6/igt@prime_vgem@coherency-gtt.html">SKIP</a> ([fdo#109295] / [fdo#111656] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-4/igt@prime_vgem@fence-write-hang.html">SKIP</a> ([i915#3708])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@prime_vgem@fence-write-hang.html">SKIP</a> ([i915#3708])</p>
</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@tools_test@sysfs_l3_parity.html">SKIP</a> ([fdo#109307])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@tools_test@sysfs_l3_parity.html">SKIP</a> ([fdo#109307] / [i915#4818])</p>
</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-invalid-perfmon:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-17/igt@v3d/v3d_perfmon@get-values-invalid-perfmon.html">SKIP</a> ([i915#2575]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-flag:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@v3d/v3d_submit_cl@bad-flag.html">SKIP</a> ([fdo#109315] / [i915#2575]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-multisync-pad:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-6/igt@v3d/v3d_submit_cl@bad-multisync-pad.html">SKIP</a> ([i915#2575]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-multisync-extension:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@v3d/v3d_submit_csd@bad-multisync-extension.html">SKIP</a> ([fdo#109315]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@job-perfmon:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@v3d/v3d_submit_csd@job-perfmon.html">SKIP</a> ([i915#2575]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_create_bo@create-bo-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-6/igt@vc4/vc4_create_bo@create-bo-0.html">SKIP</a> ([i915#7711]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_lookup_fail@bad-color-write:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-13/igt@vc4/vc4_lookup_fail@bad-color-write.html">SKIP</a> ([i915#7711]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@destroy-invalid-perfmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@vc4/vc4_perfmon@destroy-invalid-perfmon.html">SKIP</a> ([i915#7711])</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@destroy-valid-perfmon:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@vc4/vc4_perfmon@destroy-valid-perfmon.html">SKIP</a> ([i915#7711]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_seqno@bad-seqno-0ns:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@vc4/vc4_wait_seqno@bad-seqno-0ns.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg1-16/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> ([i915#4391] / [i915#4423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-19/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pathological}:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg1-13/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pathological.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-13/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pathological.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAIL</a> ([i915#7742]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@drm_read@short-buffer-nonblock:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@drm_read@short-buffer-nonblock.html">SKIP</a> ([i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@drm_read@short-buffer-nonblock.html">PASS</a> +9 other tests pass</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@fbdev@read.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@fbdev@read.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg2-6/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> ([i915#7297]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-11/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-smem-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-mtlp-4/igt@gem_ctx_isolation@preservation-s3@rcs0.html">ABORT</a> ([i915#9414]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-6/igt@gem_ctx_isolation@preservation-s3@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.html">SKIP</a> ([i915#6252]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-1/igt@gem_ctx_persistence@legacy-engines-hang@blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg1-18/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#5784]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-18/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-glk4/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-glk8/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-tglu-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@gem_exec_reloc@basic-write-read.html">SKIP</a> ([i915#3281]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@gem_exec_reloc@basic-write-read.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-mtlp-4/igt@gem_exec_suspend@basic-s4-devices@smem.html">ABORT</a> ([i915#7975] / [i915#8213] / [i915#9262]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-4/igt@gem_exec_suspend@basic-s4-devices@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@gem_mmap_gtt@coherency.html">SKIP</a> ([fdo#111656]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@gem_mmap_gtt@coherency.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@gem_mmap_wc@set-cache-level.html">SKIP</a> ([i915#1850]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@gem_mmap_wc@set-cache-level.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a> ([i915#3282]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-4/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html">SKIP</a> ([i915#8411]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-apl1/igt@gen9_exec_parse@allowed-single.html">INCOMPLETE</a> ([i915#5566]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-apl7/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> ([i915#2527]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-engine-error@bcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html">SKIP</a> ([i915#9588]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@i915_hangman@engine-engine-error@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0}:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a> ([i915#5138]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">FAIL</a> ([i915#3743]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">PASS</a> +13 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_fbcon_fbt@fbc-suspend.html">SKIP</a> ([i915#1849] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-1/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@b-vga1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-snb7/igt@kms_flip@flip-vs-blocking-wf-vblank@b-vga1.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-snb5/igt@kms_flip@flip-vs-blocking-wf-vblank@b-vga1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#1849] / [i915#4098] / [i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html">FAIL</a> ([i915#6880]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html">INCOMPLETE</a> ([i915#180] / [i915#9392]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@modeset-non-lpsp}:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@modeset-non-lpsp-stress}:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg1-19/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg1-18/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@crtc-properties-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_properties@crtc-properties-legacy.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-1/igt@kms_properties@crtc-properties-legacy.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html">INCOMPLETE</a> ([i915#9569]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_no_damage_no_crtc}:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-tglu-10/igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_no_damage_no_crtc.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-3/igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_no_damage_no_crtc.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create}:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-apl2/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-apl2/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html">PASS</a> +1 other test pass</p>
</li>
<li>
<p>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg2-2/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-6/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state}:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-mtlp-3/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-1/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_plane_helper@drm_test_check_plane_state}:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_selftest@drm_plane_helper@drm_test_check_plane_state.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_selftest@drm_plane_helper@drm_test_check_plane_state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html">FAIL</a> ([i915#9196]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#9196]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-exclusive-stream-sample-oa:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@perf@gen12-group-exclusive-stream-sample-oa.html">SKIP</a> ([fdo#109289]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@perf@gen12-group-exclusive-stream-sample-oa.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-mtlp-8/igt@perf_pmu@busy-double-start@ccs0.html">FAIL</a> ([i915#4349]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-mtlp-7/igt@perf_pmu@busy-double-start@ccs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg2-1/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</a> ([i915#4349]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-6/igt@prime_vgem@basic-fence-read.html">SKIP</a> ([fdo#109295] / [i915#3291] / [i915#3708]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@prime_vgem@basic-fence-read.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html">SKIP</a> ([i915#7957])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> ([i915#9323]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> ([i915#7957])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@gem_pwrite@basic-exhaustion.html">SKIP</a> ([i915#3282]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> ([i915#2532]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-6/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html">SKIP</a> ([i915#5286]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html">SKIP</a> ([i915#1845] / [i915#4098]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-6/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html">SKIP</a> ([i915#5286]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-6/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html">SKIP</a> ([fdo#111614] / [i915#3638]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html">SKIP</a> ([i915#1845] / [i915#4098]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKIP</a> ([fdo#111614] / [i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html">SKIP</a> ([fdo#110723]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html">SKIP</a> ([fdo#111615]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html">SKIP</a> ([i915#1845] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> ([fdo#110723]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> ([i915#1845] / [i915#4098]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> ([i915#3116]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> ([i915#1845] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_content_protection@legacy.html">SKIP</a> ([i915#7118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_content_protection@legacy.html">SKIP</a> ([i915#1845] / [i915#4098]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_content_protection@srm.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_content_protection@srm.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-1/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> ([i915#3359]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> ([i915#3359]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> ([i915#1845] / [i915#4098]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html">SKIP</a> ([fdo#111767] / [fdo#111825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html">SKIP</a> ([i915#1845] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#1845] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html">SKIP</a> ([fdo#111825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html">SKIP</a> ([i915#1845] / [i915#4098]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html">SKIP</a> ([fdo#111825]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> ([i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-1/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-4/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> ([i915#3555] / [i915#3840]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> ([i915#1845] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-6/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([i915#3955]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([fdo#110189] / [i915#3955])</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html">SKIP</a> ([i915#3023]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html">SKIP</a> ([i915#1849] / [i915#4098] / [i915#5354]) +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt.html">SKIP</a> ([i915#1849] / [i915#4098] / [i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt.html">SKIP</a> ([fdo#111825] / [i915#1825]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> ([fdo#111825] / [i915#1825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126526v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> ([i915#1849] / [i915#4098] / [i915#5354]) +41 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard">SKIP</a> ([i915#1849] / [i915#4098] / [i915#5354]) -&gt; [SKIP][444] ([i915#3023]) +14 other tests skip</li>
</ul>
</li>
</ul>

</body>
</html>

--===============4355063301870197399==--
