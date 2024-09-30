Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BCA98A3E5
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 15:02:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2DE610E44E;
	Mon, 30 Sep 2024 13:02:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DFB910E44D;
 Mon, 30 Sep 2024 13:02:32 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8397744533798193190=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EIGT=3A_success_for_Enhance_debugfs_for_forcing?=
 =?utf-8?q?_joiner_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Sep 2024 13:02:32 -0000
Message-ID: <172770135242.1135226.60698805469850146@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240926134322.3728021-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240926134322.3728021-1-ankit.k.nautiyal@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============8397744533798193190==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enhance debugfs for forcing joiner (rev2)
URL   : https://patchwork.freedesktop.org/series/139162/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15454_full -> Patchwork_139162v2_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_139162v2_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_139162v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (8 -> 8)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_139162v2_full:

### IGT changes ###

#### Warnings ####

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-mtlp:         [SKIP][1] ([i915#3359]) -> [SKIP][2] +7 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-8/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
    - shard-mtlp:         [SKIP][3] ([i915#4235]) -> [SKIP][4] +8 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html

  
New tests
---------

  New tests have been introduced between CI_DRM_15454_full and Patchwork_139162v2_full:

### New IGT tests (2) ###

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [30.67] s

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [27.66] s

  

Known issues
------------

  Here are the changes found in Patchwork_139162v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-rkl:          NOTRUN -> [SKIP][5] ([i915#8411])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@drm_fdinfo@most-busy-idle-check-all:
    - shard-rkl:          [PASS][6] -> [FAIL][7] ([i915#12179])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [PASS][8] -> [FAIL][9] ([i915#7742])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@drm_fdinfo@virtual-busy-all:
    - shard-dg2:          NOTRUN -> [SKIP][10] ([i915#8414]) +9 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@drm_fdinfo@virtual-busy-all.html

  * igt@drm_fdinfo@virtual-busy-hang:
    - shard-dg1:          NOTRUN -> [SKIP][11] ([i915#8414])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@drm_fdinfo@virtual-busy-hang.html

  * igt@fbdev@info:
    - shard-dg2:          [PASS][12] -> [SKIP][13] ([i915#1849] / [i915#2582])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@fbdev@info.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@fbdev@info.html

  * igt@fbdev@nullptr:
    - shard-tglu:         NOTRUN -> [SKIP][14] ([i915#2582])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@fbdev@nullptr.html

  * igt@fbdev@unaligned-write:
    - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#2582])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@fbdev@unaligned-write.html

  * igt@gem_caching@writes:
    - shard-mtlp:         NOTRUN -> [SKIP][16] ([i915#4873])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@gem_caching@writes.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-mtlp:         NOTRUN -> [SKIP][17] ([i915#3555] / [i915#9323])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][18] ([i915#7297])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-rkl:          NOTRUN -> [SKIP][19] ([i915#7697])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_ctx_sseu@engines:
    - shard-rkl:          NOTRUN -> [SKIP][20] ([i915#280])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@gem_ctx_sseu@engines.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [PASS][21] -> [FAIL][22] ([i915#5784])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg1-13/igt@gem_eio@reset-stress.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-13/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@bonded-semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#4812])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gem_exec_balancer@bonded-semaphore.html

  * igt@gem_exec_balancer@parallel:
    - shard-rkl:          NOTRUN -> [SKIP][24] ([i915#4525]) +1 other test skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-rkl:          [PASS][25] -> [FAIL][26] ([i915#2876])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-4/igt@gem_exec_fair@basic-pace@rcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-4/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fence@submit3:
    - shard-mtlp:         NOTRUN -> [SKIP][27] ([i915#4812])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-8/igt@gem_exec_fence@submit3.html

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - shard-dg1:          NOTRUN -> [SKIP][28] ([i915#3539] / [i915#4852])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-13/igt@gem_exec_flush@basic-wb-rw-before-default.html

  * igt@gem_exec_flush@basic-wb-rw-default:
    - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#3539] / [i915#4852])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gem_exec_flush@basic-wb-rw-default.html

  * igt@gem_exec_reloc@basic-active:
    - shard-rkl:          NOTRUN -> [SKIP][30] ([i915#3281]) +5 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@gem_exec_reloc@basic-active.html

  * igt@gem_exec_reloc@basic-cpu-read:
    - shard-mtlp:         NOTRUN -> [SKIP][31] ([i915#3281])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@gem_exec_reloc@basic-cpu-read.html

  * igt@gem_exec_reloc@basic-write-cpu-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#3281])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@gem_exec_reloc@basic-write-cpu-noreloc.html

  * igt@gem_exec_schedule@pi-common:
    - shard-tglu:         NOTRUN -> [FAIL][33] ([i915#12296]) +5 other tests fail
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@gem_exec_schedule@pi-common.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg1:          [PASS][34] -> [ABORT][35] ([i915#7975] / [i915#8213]) +1 other test abort
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg1-18/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_fence_thrash@bo-write-verify-y:
    - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#4860])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gem_fence_thrash@bo-write-verify-y.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-tglu:         NOTRUN -> [SKIP][37] ([i915#4613])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][38] ([i915#4613]) +3 other tests skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-glk:          NOTRUN -> [SKIP][39] ([i915#4613]) +1 other test skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk7/igt@gem_lmem_swapping@verify-ccs.html
    - shard-mtlp:         NOTRUN -> [SKIP][40] ([i915#4613])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@gem_lmem_swapping@verify-ccs.html
    - shard-dg1:          NOTRUN -> [SKIP][41] ([i915#12193])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_lmem_swapping@verify-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][42] ([i915#4565])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@gem_lmem_swapping@verify-ccs@lmem0.html

  * igt@gem_mmap@pf-nonblock:
    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#4083]) +1 other test skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gem_mmap@pf-nonblock.html

  * igt@gem_mmap_gtt@basic-read-write:
    - shard-mtlp:         NOTRUN -> [SKIP][44] ([i915#4077])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@gem_mmap_gtt@basic-read-write.html

  * igt@gem_mmap_offset@clear:
    - shard-mtlp:         [PASS][45] -> [ABORT][46] ([i915#10729])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-7/igt@gem_mmap_offset@clear.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-8/igt@gem_mmap_offset@clear.html

  * igt@gem_mmap_offset@clear@smem0:
    - shard-mtlp:         [PASS][47] -> [ABORT][48] ([i915#10029] / [i915#10729])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-7/igt@gem_mmap_offset@clear@smem0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-8/igt@gem_mmap_offset@clear@smem0.html

  * igt@gem_mmap_wc@bad-offset:
    - shard-mtlp:         NOTRUN -> [SKIP][49] ([i915#4083])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@gem_mmap_wc@bad-offset.html

  * igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
    - shard-dg1:          NOTRUN -> [SKIP][50] ([i915#4083])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-14/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-tglu:         NOTRUN -> [SKIP][51] ([i915#4270]) +2 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@gem_pxp@verify-pxp-stale-buf-execution:
    - shard-rkl:          NOTRUN -> [SKIP][52] ([i915#4270])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@gem_pxp@verify-pxp-stale-buf-execution.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][53] ([i915#8428])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#3282]) +3 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][55] ([i915#3297]) +1 other test skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@relocations:
    - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#3281] / [i915#3297])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@gem_userptr_blits@relocations.html

  * igt@gen9_exec_parse@bb-large:
    - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#2527]) +1 other test skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@gen9_exec_parse@bb-large.html
    - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#2856])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-tglu:         NOTRUN -> [SKIP][59] ([i915#2527] / [i915#2856])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#2527]) +2 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@gen9_exec_parse@secure-batches.html
    - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#2856])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [PASS][62] -> [ABORT][63] ([i915#9820])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html
    - shard-glk:          [PASS][64] -> [ABORT][65] ([i915#9820])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk3/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg2:          [PASS][66] -> [ABORT][67] ([i915#9820])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rps@engine-order:
    - shard-glk:          [PASS][68] -> [FAIL][69] ([i915#12308])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-glk1/igt@i915_pm_rps@engine-order.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk5/igt@i915_pm_rps@engine-order.html

  * igt@i915_pm_rps@reset:
    - shard-tglu:         NOTRUN -> [ABORT][70] ([i915#12309])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@thresholds:
    - shard-mtlp:         NOTRUN -> [SKIP][71] ([i915#11681])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@i915_pm_rps@thresholds.html

  * igt@intel_hwmon@hwmon-read:
    - shard-tglu:         NOTRUN -> [SKIP][72] ([i915#7707])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@intel_hwmon@hwmon-read.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#4212]) +1 other test skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#4212])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#8709]) +7 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking:
    - shard-tglu:         [PASS][76] -> [SKIP][77] ([i915#12306]) +12 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_atomic_transition@modeset-transition-nonblocking.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_atomic_transition@modeset-transition-nonblocking.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-tglu:         NOTRUN -> [SKIP][78] ([i915#1769] / [i915#3555])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition:
    - shard-snb:          [PASS][79] -> [FAIL][80] ([i915#5956]) +1 other test fail
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb6/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb1/igt@kms_atomic_transition@plane-toggle-modeset-transition.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1:
    - shard-mtlp:         [PASS][81] -> [FAIL][82] ([i915#11808] / [i915#5956]) +1 other test fail
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-2/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-4/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [PASS][83] -> [FAIL][84] ([i915#5138])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-6/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
    - shard-tglu:         NOTRUN -> [SKIP][85] ([i915#5286])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:
    - shard-tglu:         NOTRUN -> [SKIP][86] ([i915#12306]) +22 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#5286]) +2 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-32bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][88] +1 other test skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-2/igt@kms_big_fb@linear-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#9197]) +16 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
    - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#3638])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#5190] / [i915#9197]) +2 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][92] ([i915#4538])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_joiner@basic:
    - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#10656])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_big_joiner@basic.html

  * igt@kms_big_joiner@basic-force-joiner:
    - shard-mtlp:         [PASS][94] -> [SKIP][95] ([i915#10656]) +1 other test skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-7/igt@kms_big_joiner@basic-force-joiner.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@kms_big_joiner@basic-force-joiner.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][96] ([i915#6095]) +119 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-16/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][97] ([i915#6095]) +18 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#10307] / [i915#6095]) +99 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-8/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#6095]) +101 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs:
    - shard-glk:          NOTRUN -> [SKIP][100] +46 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#6095]) +4 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc@pipe-c-edp-1.html

  * igt@kms_cdclk@mode-transition@pipe-b-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#11616] / [i915#7213]) +3 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-b-dp-3.html

  * igt@kms_chamelium_audio@dp-audio:
    - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#7828]) +2 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_chamelium_audio@dp-audio.html
    - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#4423] / [i915#7828])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@kms_chamelium_audio@dp-audio.html

  * igt@kms_chamelium_edid@dp-edid-change-during-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][105] ([i915#7828]) +5 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html

  * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][106] ([i915#7828])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#7828]) +4 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#7828]) +1 other test skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#3116])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@srm:
    - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#7118])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-tglu:         NOTRUN -> [SKIP][111] ([i915#11453])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#11453])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][113] +19 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#4103])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - shard-mtlp:         NOTRUN -> [SKIP][115] ([i915#4213])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
    - shard-mtlp:         NOTRUN -> [SKIP][116] ([i915#9809]) +1 other test skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][117] +4 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-13/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][118] ([i915#3804])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-mtlp:         NOTRUN -> [SKIP][119] ([i915#3555] / [i915#3840])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#3555] / [i915#3840])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_feature_discovery@chamelium:
    - shard-tglu:         NOTRUN -> [SKIP][121] ([i915#2065] / [i915#4854])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-1x:
    - shard-dg2:          [PASS][122] -> [SKIP][123] ([i915#9738])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_feature_discovery@display-1x.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_feature_discovery@display-1x.html

  * igt@kms_feature_discovery@display-4x:
    - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#1839])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_feature_discovery@display-4x.html

  * igt@kms_feature_discovery@psr2:
    - shard-tglu:         NOTRUN -> [SKIP][125] ([i915#658])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_feature_discovery@psr2.html
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#658])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-8/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][127] -> [FAIL][128] ([i915#2122]) +3 other tests fail
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][129] +1 other test skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html
    - shard-tglu:         NOTRUN -> [SKIP][130] ([i915#3637]) +1 other test skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html
    - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#3637])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-tglu:         [PASS][132] -> [FAIL][133] ([i915#2122]) +1 other test fail
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-9/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank:
    - shard-rkl:          [PASS][134] -> [FAIL][135] ([i915#2122])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-2/igt@kms_flip@flip-vs-blocking-wf-vblank.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-5/igt@kms_flip@flip-vs-blocking-wf-vblank.html
    - shard-snb:          NOTRUN -> [INCOMPLETE][136] ([i915#12314]) +1 other test incomplete
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb1/igt@kms_flip@flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a2:
    - shard-rkl:          NOTRUN -> [FAIL][137] ([i915#12034])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-5/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-fences:
    - shard-tglu:         [PASS][138] -> [SKIP][139] ([i915#3637]) +1 other test skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_flip@flip-vs-fences.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-dg1:          [PASS][140] -> [FAIL][141] ([i915#2122]) +1 other test fail
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg1-18/igt@kms_flip@plain-flip-ts-check.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-18/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_flip@plain-flip-ts-check@c-hdmi-a3:
    - shard-dg2:          NOTRUN -> [FAIL][142] ([i915#2122]) +3 other tests fail
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-7/igt@kms_flip@plain-flip-ts-check@c-hdmi-a3.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#3555] / [i915#5190])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
    - shard-dg1:          NOTRUN -> [SKIP][144] ([i915#2587] / [i915#2672] / [i915#3555])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#2587] / [i915#2672])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][146] ([i915#2672] / [i915#3555])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#2672]) +1 other test skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][148] ([i915#2587] / [i915#2672]) +1 other test skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:
    - shard-dg2:          [PASS][149] -> [SKIP][150] ([i915#3555]) +3 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling:
    - shard-tglu:         [PASS][151] -> [SKIP][152] ([i915#3555]) +1 other test skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#2672] / [i915#3555]) +1 other test skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#2672]) +1 other test skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][155] ([i915#3555]) +3 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt:
    - shard-tglu:         [PASS][156] -> [SKIP][157] ([i915#1849]) +1 other test skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-snb:          [PASS][158] -> [SKIP][159] +1 other test skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt:
    - shard-tglu:         NOTRUN -> [SKIP][160] ([i915#1849]) +9 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-dg2:          [PASS][161] -> [SKIP][162] ([i915#5354]) +10 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#5354]) +14 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen:
    - shard-dg1:          NOTRUN -> [SKIP][164] ([i915#3458]) +1 other test skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
    - shard-tglu:         NOTRUN -> [SKIP][165] +17 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
    - shard-mtlp:         NOTRUN -> [SKIP][166] ([i915#1825]) +4 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#3023]) +8 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear:
    - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#3458])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][169] ([i915#8708]) +2 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#8708]) +2 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#1825]) +18 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@invalid-hdr:
    - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#3555] / [i915#8228])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#3555] / [i915#8228])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_invalid_mode@zero-clock:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][174] ([i915#4423])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@kms_invalid_mode@zero-clock.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#6301])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1:
    - shard-snb:          NOTRUN -> [SKIP][176]
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1.html

  * igt@kms_plane@planar-pixel-format-settings:
    - shard-tglu:         NOTRUN -> [SKIP][177] ([i915#9581])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane@planar-pixel-format-settings.html

  * igt@kms_plane@plane-position-hole-dpms:
    - shard-dg2:          [PASS][178] -> [SKIP][179] ([i915#8825]) +1 other test skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_plane@plane-position-hole-dpms.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane@plane-position-hole-dpms.html

  * igt@kms_plane_alpha_blend@coverage-7efc:
    - shard-dg1:          [PASS][180] -> [DMESG-WARN][181] ([i915#4423]) +2 other tests dmesg-warn
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg1-14/igt@kms_plane_alpha_blend@coverage-7efc.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@kms_plane_alpha_blend@coverage-7efc.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-d:
    - shard-tglu:         [PASS][182] -> [SKIP][183] ([i915#12247] / [i915#8152]) +2 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-d.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers:
    - shard-dg2:          [PASS][184] -> [SKIP][185] ([i915#8152] / [i915#9423]) +1 other test skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-tglu:         NOTRUN -> [SKIP][186] ([i915#3555] / [i915#8152])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-d:
    - shard-tglu:         NOTRUN -> [SKIP][187] ([i915#12247] / [i915#8152])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-d.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d:
    - shard-dg2:          [PASS][188] -> [SKIP][189] ([i915#8152]) +1 other test skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#12247] / [i915#6953])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#12247]) +4 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5:
    - shard-tglu:         NOTRUN -> [SKIP][192] ([i915#12247] / [i915#6953])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b:
    - shard-tglu:         NOTRUN -> [SKIP][193] ([i915#12247]) +11 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
    - shard-tglu:         [PASS][194] -> [SKIP][195] ([i915#6953] / [i915#8152])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-b:
    - shard-tglu:         [PASS][196] -> [SKIP][197] ([i915#12247]) +5 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-b.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-b.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:
    - shard-dg2:          [PASS][198] -> [SKIP][199] ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-a:
    - shard-dg2:          [PASS][200] -> [SKIP][201] ([i915#12247]) +8 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-a.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-a.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d:
    - shard-dg2:          [PASS][202] -> [SKIP][203] ([i915#12247] / [i915#8152])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-tglu:         NOTRUN -> [SKIP][204] ([i915#9685])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc5-psr:
    - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#9685])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_pm_dc@dc5-psr.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu:         [PASS][206] -> [FAIL][207] ([i915#9295])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu:         [PASS][208] -> [SKIP][209] ([i915#4281])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-tglu:         NOTRUN -> [SKIP][210] ([i915#8430])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-tglu:         [PASS][211] -> [SKIP][212] ([i915#9519])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_pm_rpm@dpms-lpsp.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-tglu:         NOTRUN -> [SKIP][213] ([i915#9519]) +1 other test skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-dg2:          [PASS][214] -> [SKIP][215] ([i915#9519])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-6/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@drm-resources-equal:
    - shard-dg2:          [PASS][216] -> [SKIP][217] ([i915#3547])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_pm_rpm@drm-resources-equal.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_pm_rpm@drm-resources-equal.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [PASS][218] -> [SKIP][219] ([i915#9519]) +2 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-mtlp:         NOTRUN -> [SKIP][220] ([i915#6524])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-2/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-tglu:         NOTRUN -> [SKIP][221] ([i915#6524])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][222] ([i915#11520]) +1 other test skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#11520])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][224] ([i915#11520]) +3 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-tglu:         NOTRUN -> [SKIP][225] ([i915#9683])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-psr-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#1072] / [i915#9732]) +1 other test skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_psr@fbc-psr-suspend.html

  * igt@kms_psr@pr-sprite-plane-onoff:
    - shard-mtlp:         NOTRUN -> [SKIP][227] ([i915#9688]) +3 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_psr@pr-sprite-plane-onoff.html

  * igt@kms_psr@psr-cursor-render:
    - shard-rkl:          NOTRUN -> [SKIP][228] ([i915#1072] / [i915#9732]) +9 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_psr@psr-cursor-render.html
    - shard-dg1:          NOTRUN -> [SKIP][229] ([i915#1072] / [i915#9732]) +1 other test skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@kms_psr@psr-cursor-render.html

  * igt@kms_psr@psr2-cursor-plane-onoff:
    - shard-tglu:         NOTRUN -> [SKIP][230] ([i915#9732]) +8 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_psr@psr2-cursor-plane-onoff.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-tglu:         NOTRUN -> [ABORT][231] ([i915#12231]) +1 other test abort
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_setmode@invalid-clone-single-crtc-stealing:
    - shard-rkl:          NOTRUN -> [SKIP][232] ([i915#3555]) +1 other test skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_setmode@invalid-clone-single-crtc-stealing.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          [PASS][233] -> [FAIL][234] ([IGT#2])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_sysfs_edid_timing.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_sysfs_edid_timing.html
    - shard-snb:          [PASS][235] -> [FAIL][236] ([IGT#2] / [i915#6493])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb6/igt@kms_sysfs_edid_timing.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb1/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@query-idle-hang@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [INCOMPLETE][237] ([i915#12276]) +1 other test incomplete
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@kms_vblank@query-idle-hang@pipe-d-edp-1.html

  * igt@kms_vblank@ts-continuation-idle-hang:
    - shard-dg2:          [PASS][238] -> [SKIP][239] ([i915#9197]) +34 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_vblank@ts-continuation-idle-hang.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_vblank@ts-continuation-idle-hang.html

  * igt@kms_vrr@max-min:
    - shard-tglu:         NOTRUN -> [SKIP][240] ([i915#9906])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_vrr@max-min.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-rkl:          NOTRUN -> [SKIP][241] ([i915#2437] / [i915#9412])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@perf@mi-rpc:
    - shard-rkl:          NOTRUN -> [SKIP][242] ([i915#2434])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@perf@mi-rpc.html

  * igt@perf_pmu@all-busy-idle-check-all:
    - shard-dg2:          NOTRUN -> [FAIL][243] ([i915#11943])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@perf_pmu@all-busy-idle-check-all.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-tglu:         NOTRUN -> [SKIP][244] ([i915#8516])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-read:
    - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#3291] / [i915#3708])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@fence-write-hang:
    - shard-dg1:          NOTRUN -> [SKIP][246] ([i915#3708])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-16/igt@prime_vgem@fence-write-hang.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-dg2:          NOTRUN -> [SKIP][247] ([i915#9917])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@sriov_basic@bind-unbind-vf.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - shard-tglu:         NOTRUN -> [SKIP][248] ([i915#9917])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  * igt@syncobj_wait@invalid-wait-zero-handles:
    - shard-rkl:          NOTRUN -> [FAIL][249] ([i915#9781])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@syncobj_wait@invalid-wait-zero-handles.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - shard-dg2:          [SKIP][250] ([i915#2582]) -> [PASS][251]
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@fbdev@read.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@fbdev@read.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [INCOMPLETE][252] ([i915#7297]) -> [PASS][253]
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html

  * igt@gem_exec_balancer@full:
    - shard-dg2:          [FAIL][254] -> [PASS][255]
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-7/igt@gem_exec_balancer@full.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-10/igt@gem_exec_balancer@full.html

  * igt@gem_exec_fair@basic-pace-share:
    - shard-rkl:          [FAIL][256] ([i915#2842]) -> [PASS][257] +2 other tests pass
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-4/igt@gem_exec_fair@basic-pace-share.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-5/igt@gem_exec_fair@basic-pace-share.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][258] ([i915#2842]) -> [PASS][259] +1 other test pass
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [TIMEOUT][260] ([i915#5493]) -> [PASS][261] +1 other test pass
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-4/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-4:
    - shard-dg1:          [FAIL][262] ([i915#5956]) -> [PASS][263] +1 other test pass
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg1-19/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-4.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-4.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [FAIL][264] ([i915#5138]) -> [PASS][265]
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_cursor_edge_walk@128x128-top-bottom:
    - shard-dg2:          [SKIP][266] ([i915#9197]) -> [PASS][267] +46 other tests pass
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_cursor_edge_walk@128x128-top-bottom.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_cursor_edge_walk@128x128-top-bottom.html

  * igt@kms_draw_crc@draw-method-blt@xrgb8888-ytiled:
    - shard-glk:          [DMESG-WARN][268] -> [PASS][269] +1 other test pass
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-glk5/igt@kms_draw_crc@draw-method-blt@xrgb8888-ytiled.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk4/igt@kms_draw_crc@draw-method-blt@xrgb8888-ytiled.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [FAIL][270] ([i915#2122]) -> [PASS][271] +2 other tests pass
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb7/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@absolute-wf_vblank-interruptible:
    - shard-dg2:          [SKIP][272] ([i915#5354]) -> [PASS][273] +18 other tests pass
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_flip@absolute-wf_vblank-interruptible.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_flip@absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank:
    - shard-tglu:         [FAIL][274] ([i915#2122]) -> [PASS][275] +1 other test pass
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-6/igt@kms_flip@flip-vs-blocking-wf-vblank.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-9/igt@kms_flip@flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-tglu:         [SKIP][276] ([i915#3637]) -> [PASS][277] +2 other tests pass
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@plain-flip-ts-check@a-hdmi-a1:
    - shard-glk:          [FAIL][278] ([i915#2122]) -> [PASS][279] +7 other tests pass
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-glk7/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk1/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html
    - {shard-tglu-1}:     [FAIL][280] -> [PASS][281]
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-1/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-1/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check@c-hdmi-a1:
    - {shard-tglu-1}:     [FAIL][282] ([i915#2122]) -> [PASS][283] +1 other test pass
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-1/igt@kms_flip@plain-flip-ts-check@c-hdmi-a1.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-1/igt@kms_flip@plain-flip-ts-check@c-hdmi-a1.html

  * igt@kms_flip@wf_vblank-ts-check:
    - shard-rkl:          [FAIL][284] ([i915#11989] / [i915#2122]) -> [PASS][285]
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-5/igt@kms_flip@wf_vblank-ts-check.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-2/igt@kms_flip@wf_vblank-ts-check.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-dg2:          [SKIP][286] ([i915#3555]) -> [PASS][287] +8 other tests pass
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-tglu:         [SKIP][288] ([i915#1849]) -> [PASS][289] +4 other tests pass
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
    - shard-snb:          [SKIP][290] -> [PASS][291] +7 other tests pass
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_plane@pixel-format:
    - shard-dg2:          [SKIP][292] ([i915#8825]) -> [PASS][293] +1 other test pass
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane@pixel-format.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_plane@pixel-format.html

  * igt@kms_plane_alpha_blend@constant-alpha-max:
    - shard-dg2:          [SKIP][294] ([i915#7294]) -> [PASS][295] +1 other test pass
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-max.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_plane_alpha_blend@constant-alpha-max.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-c:
    - shard-dg2:          [SKIP][296] ([i915#12247]) -> [PASS][297] +20 other tests pass
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-c.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-c.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:
    - shard-tglu:         [SKIP][298] ([i915#8152]) -> [PASS][299] +3 other tests pass
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a:
    - shard-tglu:         [SKIP][300] ([i915#12247]) -> [PASS][301] +5 other tests pass
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:
    - shard-dg2:          [SKIP][302] ([i915#12247] / [i915#8152] / [i915#9423]) -> [PASS][303] +2 other tests pass
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:
    - shard-dg2:          [SKIP][304] ([i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][305] +1 other test pass
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-dg2:          [SKIP][306] ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][307]
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d:
    - shard-dg2:          [SKIP][308] ([i915#12247] / [i915#8152]) -> [PASS][309] +6 other tests pass
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
    - shard-dg2:          [SKIP][310] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][311]
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg2:          [SKIP][312] ([i915#9340]) -> [PASS][313]
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_pm_lpsp@kms-lpsp.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@i2c:
    - shard-dg2:          [SKIP][314] -> [PASS][315]
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_pm_rpm@i2c.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [SKIP][316] ([i915#9519]) -> [PASS][317]
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
    - shard-rkl:          [SKIP][318] ([i915#9519]) -> [PASS][319]
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@system-suspend-modeset:
    - shard-dg1:          [DMESG-WARN][320] ([i915#4423]) -> [PASS][321]
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg1-13/igt@kms_pm_rpm@system-suspend-modeset.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-13/igt@kms_pm_rpm@system-suspend-modeset.html

  * igt@kms_properties@plane-properties-legacy:
    - shard-dg2:          [SKIP][322] ([i915#11521]) -> [PASS][323] +1 other test pass
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_properties@plane-properties-legacy.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_properties@plane-properties-legacy.html

  * igt@kms_vblank@wait-forked-busy:
    - shard-tglu:         [SKIP][324] ([i915#12306]) -> [PASS][325] +15 other tests pass
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_vblank@wait-forked-busy.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_vblank@wait-forked-busy.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [ABORT][326] ([i915#11231]) -> [ABORT][327] ([i915#10131] / [i915#9820])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg2:          [SKIP][328] ([i915#1769] / [i915#3555]) -> [SKIP][329] ([i915#9197])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [SKIP][330] ([i915#12306]) -> [SKIP][331] ([i915#5286])
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         [SKIP][332] ([i915#5286]) -> [SKIP][333] ([i915#12306])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@linear-32bpp-rotate-270:
    - shard-tglu:         [SKIP][334] ([i915#12306]) -> [SKIP][335] +2 other tests skip
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_big_fb@linear-32bpp-rotate-270.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_big_fb@linear-32bpp-rotate-270.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-dg2:          [SKIP][336] ([i915#9197]) -> [SKIP][337] +3 other tests skip
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_big_fb@linear-8bpp-rotate-90.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - shard-dg2:          [SKIP][338] -> [SKIP][339] ([i915#9197]) +2 other tests skip
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb:
    - shard-dg2:          [SKIP][340] ([i915#5190] / [i915#9197]) -> [SKIP][341] ([i915#5190])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_big_fb@y-tiled-addfb.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-dg2:          [SKIP][342] ([i915#5190] / [i915#9197]) -> [SKIP][343] ([i915#4538] / [i915#5190]) +10 other tests skip
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          [SKIP][344] ([i915#4538] / [i915#5190]) -> [SKIP][345] ([i915#5190] / [i915#9197]) +3 other tests skip
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs:
    - shard-dg2:          [SKIP][346] ([i915#10307] / [i915#6095]) -> [SKIP][347] ([i915#9197]) +7 other tests skip
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs:
    - shard-dg2:          [SKIP][348] ([i915#9197]) -> [SKIP][349] ([i915#10307] / [i915#6095]) +11 other tests skip
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-dg2:          [SKIP][350] ([i915#12313]) -> [SKIP][351] ([i915#9197])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc:
    - shard-tglu:         [SKIP][352] ([i915#12306]) -> [SKIP][353] ([i915#6095])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc:
    - shard-tglu:         [SKIP][354] ([i915#6095]) -> [SKIP][355] ([i915#12306]) +3 other tests skip
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg2:          [SKIP][356] ([i915#9197]) -> [SKIP][357] ([i915#11616] / [i915#7213])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_color@deep-color:
    - shard-dg2:          [SKIP][358] ([i915#5354]) -> [SKIP][359] ([i915#3555])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_color@deep-color.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_color@deep-color.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg2:          [SKIP][360] ([i915#9197]) -> [SKIP][361] ([i915#3299])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-0.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          [TIMEOUT][362] ([i915#7173]) -> [SKIP][363] ([i915#9197])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_content_protection@legacy.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][364] ([i915#9197]) -> [SKIP][365] ([i915#7118] / [i915#9424])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_content_protection@type1.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_content_protection@type1.html
    - shard-tglu:         [SKIP][366] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424]) -> [SKIP][367] ([i915#12306])
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_content_protection@type1.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-dg2:          [SKIP][368] ([i915#9197]) -> [SKIP][369] ([i915#3555]) +4 other tests skip
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-max-size.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-tglu:         [SKIP][370] ([i915#12306]) -> [SKIP][371] ([i915#11453])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_cursor_crc@cursor-random-512x512.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-tglu:         [SKIP][372] ([i915#11453]) -> [SKIP][373] ([i915#12306])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-dg2:          [SKIP][374] ([i915#9197]) -> [SKIP][375] ([i915#11453]) +1 other test skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x170.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg2:          [SKIP][376] ([i915#11453]) -> [SKIP][377] ([i915#9197])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_cursor_crc@cursor-sliding-512x512.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-max-size:
    - shard-dg2:          [SKIP][378] ([i915#3555]) -> [SKIP][379] ([i915#9197])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_cursor_crc@cursor-sliding-max-size.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-max-size.html

  * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
    - shard-dg2:          [SKIP][380] ([i915#5354]) -> [SKIP][381] ([i915#9197]) +2 other tests skip
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
    - shard-dg2:          [SKIP][382] ([i915#9197]) -> [SKIP][383] ([i915#5354]) +2 other tests skip
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg2:          [SKIP][384] ([i915#9197]) -> [SKIP][385] ([i915#4103] / [i915#4213]) +2 other tests skip
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
    - shard-tglu:         [SKIP][386] ([i915#4103]) -> [SKIP][387] ([i915#12306])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-tglu:         [SKIP][388] ([i915#12306]) -> [SKIP][389] ([i915#3555]) +1 other test skip
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_display_modes@extended-mode-basic.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-dg2:          [SKIP][390] ([i915#8588]) -> [SKIP][391] ([i915#9197])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_display_modes@mst-extended-mode-negative.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-tglu:         [SKIP][392] ([i915#1769] / [i915#3555] / [i915#3804]) -> [SKIP][393] ([i915#12306])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          [SKIP][394] ([i915#9197]) -> [SKIP][395] ([i915#8812])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-wc.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-dg2:          [SKIP][396] ([i915#9197]) -> [SKIP][397] ([i915#3555] / [i915#3840])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_dsc@dsc-with-formats.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-dg2:          [SKIP][398] ([i915#2672] / [i915#3555] / [i915#5190]) -> [SKIP][399] ([i915#3555] / [i915#5190])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-tglu:         [SKIP][400] ([i915#3555]) -> [SKIP][401] ([i915#2672] / [i915#3555])
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-dg2:          [SKIP][402] ([i915#2672] / [i915#3555]) -> [SKIP][403] ([i915#3555])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
    - shard-dg2:          [SKIP][404] ([i915#3555] / [i915#5190]) -> [SKIP][405] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render:
    - shard-tglu:         [SKIP][406] -> [SKIP][407] ([i915#1849]) +16 other tests skip
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][408] ([i915#10433] / [i915#3458]) -> [SKIP][409] ([i915#3458]) +4 other tests skip
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
    - shard-dg2:          [SKIP][410] ([i915#3458]) -> [SKIP][411] ([i915#5354]) +9 other tests skip
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
    - shard-dg2:          [SKIP][412] ([i915#5354]) -> [SKIP][413] ([i915#10433] / [i915#3458]) +1 other test skip
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          [SKIP][414] ([i915#8708]) -> [SKIP][415] ([i915#5354]) +11 other tests skip
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2:          [SKIP][416] ([i915#5354]) -> [SKIP][417] ([i915#8708]) +16 other tests skip
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:
    - shard-tglu:         [SKIP][418] ([i915#1849]) -> [SKIP][419] +13 other tests skip
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
    - shard-dg2:          [SKIP][420] ([i915#3458]) -> [SKIP][421] ([i915#10433] / [i915#3458])
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-dg2:          [SKIP][422] ([i915#5354]) -> [SKIP][423] ([i915#3458]) +14 other tests skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-rte.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg2:          [SKIP][424] ([i915#3555] / [i915#8228]) -> [SKIP][425] ([i915#9197])
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_hdr@bpc-switch-dpms.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-dg2:          [SKIP][426] ([i915#9197]) -> [SKIP][427] ([i915#3555] / [i915#8228])
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_hdr@invalid-metadata-sizes.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_hdr@invalid-metadata-sizes.html
    - shard-tglu:         [SKIP][428] ([i915#3555] / [i915#8228]) -> [SKIP][429] ([i915#12306])
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_hdr@invalid-metadata-sizes.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-dg2:          [SKIP][430] ([i915#9197]) -> [SKIP][431] ([i915#6301])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_panel_fitting@atomic-fastset.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_plane_lowres@tiling-4:
    - shard-tglu:         [SKIP][432] ([i915#3555]) -> [SKIP][433] ([i915#12306])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_plane_lowres@tiling-4.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_lowres@tiling-4.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-dg2:          [SKIP][434] ([i915#9197]) -> [SKIP][435] ([i915#8806])
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_multiple@tiling-y.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          [SKIP][436] ([i915#6953] / [i915#9423]) -> [SKIP][437] ([i915#6953] / [i915#8152] / [i915#9423])
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
    - shard-dg2:          [SKIP][438] ([i915#12247] / [i915#6953] / [i915#9423]) -> [SKIP][439] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) +1 other test skip
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d:
    - shard-dg2:          [SKIP][440] ([i915#12247]) -> [SKIP][441] ([i915#12247] / [i915#8152]) +1 other test skip
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
    - shard-tglu:         [SKIP][442] ([i915#12247] / [i915#6953]) -> [SKIP][443] ([i915#12247] / [i915#6953] / [i915#8152])
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d:
    - shard-tglu:         [SKIP][444] ([i915#12247]) -> [SKIP][445] ([i915#12247] / [i915#8152])
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-rkl:          [SKIP][446] ([i915#3361]) -> [FAIL][447] ([i915#9295])
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-2/igt@kms_pm_dc@dc6-dpms.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
    - shard-dg2:          [SKIP][448] ([i915#5190]) -> [SKIP][449] ([i915#5190] / [i915#9197]) +2 other tests skip
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_rotation_crc@primary-y-tiled

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/index.html

--===============8397744533798193190==
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
<tr><td><b>Series:</b></td><td>Enhance debugfs for forcing joiner (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/139162/">https://patchwork.freedesktop.org/series/139162/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15454_full -&gt; Patchwork_139162v2_full</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_139162v2_full need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_139162v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (8 -&gt; 8)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_139162v2_full:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> ([i915#3359]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-8/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html">SKIP</a> ([i915#4235]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_15454_full and Patchwork_139162v2_full:</p>
<h3>New IGT tests (2)</h3>
<ul>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [30.67] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [27.66] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139162v2_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@api_intel_bb@object-reloc-purge-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all.html">FAIL</a> ([i915#12179])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">FAIL</a> ([i915#7742])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@drm_fdinfo@virtual-busy-all.html">SKIP</a> ([i915#8414]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@drm_fdinfo@virtual-busy-hang.html">SKIP</a> ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@fbdev@info.html">SKIP</a> ([i915#1849] / [i915#2582])</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@fbdev@nullptr.html">SKIP</a> ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@fbdev@unaligned-write.html">SKIP</a> ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@gem_caching@writes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@gem_caching@writes.html">SKIP</a> ([i915#4873])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@gem_ccs@block-copy-compressed.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg1-13/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-13/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gem_exec_balancer@bonded-semaphore.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@gem_exec_balancer@parallel.html">SKIP</a> ([i915#4525]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-4/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-4/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2876])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit3:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-8/igt@gem_exec_fence@submit3.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-13/igt@gem_exec_flush@basic-wb-rw-before-default.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gem_exec_flush@basic-wb-rw-default.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-active:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@gem_exec_reloc@basic-active.html">SKIP</a> ([i915#3281]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@gem_exec_reloc@basic-cpu-read.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@gem_exec_reloc@basic-write-cpu-noreloc.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-common:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@gem_exec_schedule@pi-common.html">FAIL</a> ([i915#12296]) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg1-18/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">ABORT</a> ([i915#7975] / [i915#8213]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gem_fence_thrash@bo-write-verify-y.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@gem_lmem_swapping@heavy-random.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@gem_lmem_swapping@heavy-verify-random-ccs.html">SKIP</a> ([i915#4613]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk7/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> ([i915#4613])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> ([i915#12193])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@gem_lmem_swapping@verify-ccs@lmem0.html">SKIP</a> ([i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@pf-nonblock:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gem_mmap@pf-nonblock.html">SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-read-write:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@gem_mmap_gtt@basic-read-write.html">SKIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-7/igt@gem_mmap_offset@clear.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-8/igt@gem_mmap_offset@clear.html">ABORT</a> ([i915#10729])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear@smem0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-7/igt@gem_mmap_offset@clear@smem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-8/igt@gem_mmap_offset@clear@smem0.html">ABORT</a> ([i915#10029] / [i915#10729])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-offset:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@gem_mmap_wc@bad-offset.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-cpu-read-wc-unflushed:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-14/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@gem_pxp@reject-modify-context-protection-on.html">SKIP</a> ([i915#4270]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-execution:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@gem_pxp@verify-pxp-stale-buf-execution.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html">SKIP</a> ([i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> ([i915#3282]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@gem_userptr_blits@relocations.html">SKIP</a> ([i915#3281] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@gen9_exec_parse@bb-large.html">SKIP</a> ([i915#2527]) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gen9_exec_parse@bb-large.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@gen9_exec_parse@secure-batches.html">SKIP</a> ([i915#2527]) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@gen9_exec_parse@secure-batches.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk3/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-glk1/igt@i915_pm_rps@engine-order.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk5/igt@i915_pm_rps@engine-order.html">FAIL</a> ([i915#12308])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@i915_pm_rps@reset.html">ABORT</a> ([i915#12309])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@i915_pm_rps@thresholds.html">SKIP</a> ([i915#11681])</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@intel_hwmon@hwmon-read.html">SKIP</a> ([i915#7707])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">SKIP</a> ([i915#4212]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html">SKIP</a> ([i915#8709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_atomic_transition@modeset-transition-nonblocking.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_atomic_transition@modeset-transition-nonblocking.html">SKIP</a> ([i915#12306]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb6/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb1/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">FAIL</a> ([i915#5956]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-2/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-4/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html">FAIL</a> ([i915#11808] / [i915#5956]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-6/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a> ([i915#5138])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html">SKIP</a> ([i915#12306]) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-2/igt@kms_big_fb@linear-32bpp-rotate-270.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKIP</a> ([i915#9197]) +16 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKIP</a> ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html">SKIP</a> ([i915#5190] / [i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> ([i915#4538])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_big_joiner@basic.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic-force-joiner:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-7/igt@kms_big_joiner@basic-force-joiner.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@kms_big_joiner@basic-force-joiner.html">SKIP</a> ([i915#10656]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-16/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html">SKIP</a> ([i915#6095]) +119 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs.html">SKIP</a> ([i915#6095]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-8/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#6095]) +99 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +101 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs.html">SKIP</a> +46 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc@pipe-c-edp-1.html">SKIP</a> ([i915#6095]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-b-dp-3.html">SKIP</a> ([i915#11616] / [i915#7213]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@dp-audio:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_chamelium_audio@dp-audio.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@kms_chamelium_audio@dp-audio.html">SKIP</a> ([i915#4423] / [i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-change-during-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html">SKIP</a> ([i915#7828]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> ([i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-without-ddc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_content_protection@srm.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html">SKIP</a> +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html">SKIP</a> ([i915#9809]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-13/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_feature_discovery@chamelium.html">SKIP</a> ([i915#2065] / [i915#4854])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-1x:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_feature_discovery@display-1x.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_feature_discovery@display-1x.html">SKIP</a> ([i915#9738])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_feature_discovery@display-4x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-8/igt@kms_feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html">FAIL</a> ([i915#2122]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html">SKIP</a> +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html">SKIP</a> ([i915#3637]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html">SKIP</a> ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-9/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-2/igt@kms_flip@flip-vs-blocking-wf-vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-5/igt@kms_flip@flip-vs-blocking-wf-vblank.html">FAIL</a> ([i915#2122])</li>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb1/igt@kms_flip@flip-vs-blocking-wf-vblank.html">INCOMPLETE</a> ([i915#12314]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-5/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a2.html">FAIL</a> ([i915#12034])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_flip@flip-vs-fences.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_flip@flip-vs-fences.html">SKIP</a> ([i915#3637]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg1-18/igt@kms_flip@plain-flip-ts-check.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-18/igt@kms_flip@plain-flip-ts-check.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-7/igt@kms_flip@plain-flip-ts-check@c-hdmi-a3.html">FAIL</a> ([i915#2122]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> ([i915#3555] / [i915#5190])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> ([i915#2587] / [i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html">SKIP</a> ([i915#1849]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> ([i915#1849]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">SKIP</a> ([i915#5354]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html">SKIP</a> ([i915#5354]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen.html">SKIP</a> ([i915#3458]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html">SKIP</a> +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a> ([i915#1825]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html">SKIP</a> ([i915#3023]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html">SKIP</a> ([i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#1825]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_hdr@invalid-hdr.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@kms_invalid_mode@zero-clock.html">DMESG-WARN</a> ([i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@planar-pixel-format-settings:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane@planar-pixel-format-settings.html">SKIP</a> ([i915#9581])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_plane@plane-position-hole-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane@plane-position-hole-dpms.html">SKIP</a> ([i915#8825]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@coverage-7efc:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg1-14/igt@kms_plane_alpha_blend@coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@kms_plane_alpha_blend@coverage-7efc.html">DMESG-WARN</a> ([i915#4423]) +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-d:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html">SKIP</a> ([i915#8152] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> ([i915#3555] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-d:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html">SKIP</a> ([i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b.html">SKIP</a> ([i915#12247]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b.html">SKIP</a> ([i915#12247]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html">SKIP</a> ([i915#6953] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-b:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-b.html">SKIP</a> ([i915#12247]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html">SKIP</a> ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-a:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-a.html">SKIP</a> ([i915#12247]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_pm_dc@dc5-psr.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> ([i915#9295])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> ([i915#8430])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> ([i915#9519]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-6/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@drm-resources-equal:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_pm_rpm@drm-resources-equal.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_pm_rpm@drm-resources-equal.html">SKIP</a> ([i915#3547])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915#9519]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-2/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html">SKIP</a> ([i915#11520]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_psr@fbc-psr-suspend.html">SKIP</a> ([i915#1072] / [i915#9732]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-sprite-plane-onoff:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_psr@pr-sprite-plane-onoff.html">SKIP</a> ([i915#9688]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_psr@psr-cursor-render.html">SKIP</a> ([i915#1072] / [i915#9732]) +9 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@kms_psr@psr-cursor-render.html">SKIP</a> ([i915#1072] / [i915#9732]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-plane-onoff:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_psr@psr2-cursor-plane-onoff.html">SKIP</a> ([i915#9732]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_selftest@drm_framebuffer.html">ABORT</a> ([i915#12231]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc-stealing:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_setmode@invalid-clone-single-crtc-stealing.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_sysfs_edid_timing.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</li>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb6/igt@kms_sysfs_edid_timing.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb1/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2] / [i915#6493])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@query-idle-hang@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@kms_vblank@query-idle-hang@pipe-d-edp-1.html">INCOMPLETE</a> ([i915#12276]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-idle-hang:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_vblank@ts-continuation-idle-hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_vblank@ts-continuation-idle-hang.html">SKIP</a> ([i915#9197]) +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_vrr@max-min.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_writeback@writeback-check-output-xrgb2101010.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@perf@mi-rpc.html">SKIP</a> ([i915#2434])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@all-busy-idle-check-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@perf_pmu@all-busy-idle-check-all.html">FAIL</a> ([i915#11943])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@perf_pmu@rc6@other-idle-gt0.html">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@prime_vgem@basic-read.html">SKIP</a> ([i915#3291] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-16/igt@prime_vgem@fence-write-hang.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@sriov_basic@enable-vfs-bind-unbind-each.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a> ([i915#9781])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@fbdev@read.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@fbdev@read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> ([i915#7297]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@full:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-7/igt@gem_exec_balancer@full.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-10/igt@gem_exec_balancer@full.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-4/igt@gem_exec_fair@basic-pace-share.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-5/igt@gem_exec_fair@basic-pace-share.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-4/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> ([i915#5493]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg1-19/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-4.html">FAIL</a> ([i915#5956]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-4.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">FAIL</a> ([i915#5138]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@128x128-top-bottom:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_cursor_edge_walk@128x128-top-bottom.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_cursor_edge_walk@128x128-top-bottom.html">PASS</a> +46 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-blt@xrgb8888-ytiled:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-glk5/igt@kms_draw_crc@draw-method-blt@xrgb8888-ytiled.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk4/igt@kms_draw_crc@draw-method-blt@xrgb8888-ytiled.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb7/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_flip@absolute-wf_vblank-interruptible.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_flip@absolute-wf_vblank-interruptible.html">PASS</a> +18 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-6/igt@kms_flip@flip-vs-blocking-wf-vblank.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-9/igt@kms_flip@flip-vs-blocking-wf-vblank.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_flip@plain-flip-fb-recreate-interruptible.html">SKIP</a> ([i915#3637]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-glk7/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk1/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html">PASS</a> +7 other tests pass</li>
<li>{shard-tglu-1}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-1/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-1/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-hdmi-a1:</p>
<ul>
<li>{shard-tglu-1}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-1/igt@kms_flip@plain-flip-ts-check@c-hdmi-a1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-1/igt@kms_flip@plain-flip-ts-check@c-hdmi-a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-5/igt@kms_flip@wf_vblank-ts-check.html">FAIL</a> ([i915#11989] / [i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-2/igt@kms_flip@wf_vblank-ts-check.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane@pixel-format.html">SKIP</a> ([i915#8825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_plane@pixel-format.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-max.html">SKIP</a> ([i915#7294]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_plane_alpha_blend@constant-alpha-max.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-c.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-c.html">PASS</a> +20 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html">SKIP</a> ([i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html">SKIP</a> ([i915#12247] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html">SKIP</a> ([i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> ([i915#9340]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_pm_lpsp@kms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_pm_rpm@i2c.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a></li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg1-13/igt@kms_pm_rpm@system-suspend-modeset.html">DMESG-WARN</a> ([i915#4423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-13/igt@kms_pm_rpm@system-suspend-modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_properties@plane-properties-legacy.html">SKIP</a> ([i915#11521]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_properties@plane-properties-legacy.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@wait-forked-busy:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_vblank@wait-forked-busy.html">SKIP</a> ([i915#12306]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_vblank@wait-forked-busy.html">PASS</a> +15 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#11231]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10131] / [i915#9820])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> ([i915#12306]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#5286]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#12306])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_big_fb@linear-32bpp-rotate-270.html">SKIP</a> ([i915#12306]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_big_fb@linear-32bpp-rotate-270.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html">SKIP</a> ([i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_big_fb@y-tiled-addfb.html">SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">SKIP</a> ([i915#4538] / [i915#5190]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#4538] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#5190] / [i915#9197]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs.html">SKIP</a> ([i915#9197]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> ([i915#12306]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> ([i915#6095])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> ([i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> ([i915#12306]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> ([i915#11616] / [i915#7213])</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_color@deep-color.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_color@deep-color.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_content_protection@legacy.html">TIMEOUT</a> ([i915#7173]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_content_protection@legacy.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_content_protection@type1.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_content_protection@type1.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_content_protection@type1.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_content_protection@type1.html">SKIP</a> ([i915#12306])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> ([i915#12306]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> ([i915#11453]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> ([i915#12306])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> ([i915#11453]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> ([i915#11453]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-max-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_cursor_crc@cursor-sliding-max-size.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-max-size.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> ([i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html">SKIP</a> ([i915#5354]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i915#4103] / [i915#4213]) +2 other tests skip</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i915#4103]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i915#12306])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_display_modes@extended-mode-basic.html">SKIP</a> ([i915#12306]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_display_modes@extended-mode-basic.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> ([i915#8588]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a> ([i915#1769] / [i915#3555] / [i915#3804]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a> ([i915#12306])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">SKIP</a> ([i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html">SKIP</a> ([i915#3555] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render.html">SKIP</a> ([i915#1849]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#10433] / [i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html">SKIP</a> ([i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html">SKIP</a> ([i915#5354]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html">SKIP</a> ([i915#10433] / [i915#3458]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#5354]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#8708]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html">SKIP</a> +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html">SKIP</a> ([i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html">SKIP</a> ([i915#10433] / [i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-rte:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-rte.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-rte.html">SKIP</a> ([i915#3458]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> ([i915#3555] / [i915#8228]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> ([i915#3555] / [i915#8228]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> ([i915#12306])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-4:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_plane_lowres@tiling-4.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_lowres@tiling-4.html">SKIP</a> ([i915#12306])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_multiple@tiling-y.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_plane_multiple@tiling-y.html">SKIP</a> ([i915#8806])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> ([i915#6953] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> ([i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#6953]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-2/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> ([i915#3361]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> ([i915#9295])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_rotation_crc@primary-y-tiled">SKIP</a> ([i915#5190]) -&gt; [SKIP][449] ([i915#5190] / [i915#9197]) +2 other tests skip</li>
</ul>
</li>
</ul>

</body>
</html>

--===============8397744533798193190==--
