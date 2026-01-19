Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C4BD3B5F7
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jan 2026 19:39:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56D6910E11E;
	Mon, 19 Jan 2026 18:39:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D318810E11E;
 Mon, 19 Jan 2026 18:39:52 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5835926506095671578=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EFull=3A_success_for_drm/i915/pll=3A_Verify_p?=
 =?utf-8?q?ll_dividers_and_remove_redundant_=2Eclock_member_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Jan 2026 18:39:52 -0000
Message-ID: <176884799284.169325.12256279312329349482@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260119093757.2850233-1-mika.kahola@intel.com>
In-Reply-To: <20260119093757.2850233-1-mika.kahola@intel.com>
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

--===============5835926506095671578==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pll: Verify pll dividers and remove redundant .clock member (rev4)
URL   : https://patchwork.freedesktop.org/series/159088/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_17843_full -> Patchwork_159088v4_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_159088v4_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-dg2:          NOTRUN -> [SKIP][1] ([i915#8411])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-rkl:          NOTRUN -> [SKIP][2] ([i915#8411]) +1 other test skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@drm_buddy@drm_buddy:
    - shard-glk:          NOTRUN -> [DMESG-WARN][3] ([i915#15095]) +1 other test dmesg-warn
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-glk6/igt@drm_buddy@drm_buddy.html

  * igt@gem_basic@multigpu-create-close:
    - shard-rkl:          NOTRUN -> [SKIP][4] ([i915#7697])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@gem_basic@multigpu-create-close.html

  * igt@gem_busy@semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][5] ([i915#3936])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-8/igt@gem_busy@semaphore.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-tglu:         NOTRUN -> [SKIP][6] ([i915#3555] / [i915#9323])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-5/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-mtlp:         NOTRUN -> [SKIP][7] ([i915#13008])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-mtlp-3/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-tglu:         NOTRUN -> [SKIP][8] ([i915#6335])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_persistence@file:
    - shard-snb:          NOTRUN -> [SKIP][9] ([i915#1099])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-snb6/igt@gem_ctx_persistence@file.html

  * igt@gem_eio@in-flight-suspend:
    - shard-rkl:          [PASS][10] -> [INCOMPLETE][11] ([i915#13390])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-5/igt@gem_eio@in-flight-suspend.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg1:          NOTRUN -> [SKIP][12] ([i915#4771])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@parallel:
    - shard-tglu-1:       NOTRUN -> [SKIP][13] ([i915#4525])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_big@single:
    - shard-tglu:         NOTRUN -> [ABORT][14] ([i915#11713])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-5/igt@gem_exec_big@single.html

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - shard-dg1:          NOTRUN -> [SKIP][15] ([i915#3539] / [i915#4852]) +1 other test skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-18/igt@gem_exec_flush@basic-wb-rw-before-default.html

  * igt@gem_exec_reloc@basic-wc-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#3281]) +2 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-8/igt@gem_exec_reloc@basic-wc-gtt.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-rkl:          NOTRUN -> [SKIP][17] ([i915#3281]) +4 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-mtlp:         NOTRUN -> [SKIP][18] ([i915#4537] / [i915#4812]) +1 other test skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-mtlp-3/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
    - shard-dg1:          NOTRUN -> [SKIP][19] ([i915#4860]) +1 other test skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglu:         NOTRUN -> [SKIP][20] ([i915#2190])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@massive:
    - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#4613]) +1 other test skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@gem_lmem_swapping@massive.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-tglu:         NOTRUN -> [SKIP][22] ([i915#4613])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@random:
    - shard-glk:          NOTRUN -> [SKIP][23] ([i915#4613]) +1 other test skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-glk3/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][24] ([i915#4613]) +1 other test skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_mmap_gtt@coherency:
    - shard-dg1:          NOTRUN -> [SKIP][25] ([i915#4077]) +2 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@gem_mmap_gtt@coherency.html

  * igt@gem_mmap_wc@write-cpu-read-wc:
    - shard-dg1:          NOTRUN -> [SKIP][26] ([i915#4083]) +1 other test skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@gem_mmap_wc@write-cpu-read-wc.html

  * igt@gem_partial_pwrite_pread@reads-snoop:
    - shard-dg1:          NOTRUN -> [SKIP][27] ([i915#3282])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@gem_partial_pwrite_pread@reads-snoop.html

  * igt@gem_pread@bench:
    - shard-rkl:          NOTRUN -> [SKIP][28] ([i915#3282]) +1 other test skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@gem_pread@bench.html

  * igt@gem_pread@exhaustion:
    - shard-tglu-1:       NOTRUN -> [WARN][29] ([i915#2658])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@gem_pread@exhaustion.html
    - shard-snb:          NOTRUN -> [WARN][30] ([i915#2658])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-snb6/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-random:
    - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#3282])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-8/igt@gem_pwrite@basic-random.html

  * igt@gem_pxp@hw-rejects-pxp-context:
    - shard-tglu-1:       NOTRUN -> [SKIP][32] ([i915#13398])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@gem_pxp@hw-rejects-pxp-context.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#4270])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#5190] / [i915#8428])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][35] ([i915#4079])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#3297])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-dg1:          NOTRUN -> [SKIP][37] ([i915#3297])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-tglu:         NOTRUN -> [SKIP][38] ([i915#3297] / [i915#3323])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][39] ([i915#3297]) +1 other test skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#3297] / [i915#4880])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#3297]) +2 other tests skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#2527]) +1 other test skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#2856]) +1 other test skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-8/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-dg1:          NOTRUN -> [SKIP][44] ([i915#2527])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-tglu-1:       NOTRUN -> [SKIP][45] ([i915#2527] / [i915#2856]) +1 other test skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_drm_fdinfo@busy-check-all:
    - shard-dg1:          NOTRUN -> [SKIP][46] ([i915#11527]) +5 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@i915_drm_fdinfo@busy-check-all.html

  * igt@i915_drm_fdinfo@busy-hang@ccs0:
    - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#14073]) +6 other tests skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-mtlp-3/igt@i915_drm_fdinfo@busy-hang@ccs0.html

  * igt@i915_drm_fdinfo@virtual-busy-hang-all:
    - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#14118])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@i915_drm_fdinfo@virtual-busy-hang-all.html

  * igt@i915_module_load@fault-injection:
    - shard-dg1:          NOTRUN -> [ABORT][49] ([i915#11815] / [i915#15481]) +1 other test abort
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@i915_module_load@fault-injection.html

  * igt@i915_module_load@fault-injection@i915_driver_mmio_probe:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][50] ([i915#15481])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@i915_module_load@fault-injection@i915_driver_mmio_probe.html

  * igt@i915_module_load@reload-no-display:
    - shard-dg1:          [PASS][51] -> [DMESG-WARN][52] ([i915#13029] / [i915#14545])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg1-16/igt@i915_module_load@reload-no-display.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-19/igt@i915_module_load@reload-no-display.html

  * igt@i915_module_load@resize-bar:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][53] ([i915#14545])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-8/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-tglu:         NOTRUN -> [SKIP][54] ([i915#8399])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_sseu@full-enable:
    - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#4387])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@i915_pm_sseu@full-enable.html
    - shard-tglu:         NOTRUN -> [SKIP][56] ([i915#4387])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@live:
    - shard-dg1:          [PASS][57] -> [DMESG-FAIL][58] ([i915#15560])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg1-16/igt@i915_selftest@live.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-16/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gem_contexts:
    - shard-dg1:          [PASS][59] -> [DMESG-FAIL][60] ([i915#15433])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg1-16/igt@i915_selftest@live@gem_contexts.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-16/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-rkl:          [PASS][61] -> [INCOMPLETE][62] ([i915#4817]) +1 other test incomplete
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@i915_suspend@fence-restore-untiled.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@i915_suspend@fence-restore-untiled.html

  * igt@i915_suspend@forcewake:
    - shard-glk:          NOTRUN -> [INCOMPLETE][63] ([i915#4817]) +1 other test incomplete
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-glk3/igt@i915_suspend@forcewake.html

  * igt@i915_suspend@sysfs-reader:
    - shard-rkl:          [PASS][64] -> [ABORT][65] ([i915#15140])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-2/igt@i915_suspend@sysfs-reader.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-1/igt@i915_suspend@sysfs-reader.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-tglu:         NOTRUN -> [SKIP][66] ([i915#12454] / [i915#12712])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][67] ([i915#5286]) +3 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglu:         NOTRUN -> [SKIP][68] ([i915#5286]) +2 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         [PASS][69] -> [FAIL][70] ([i915#5138])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#5286]) +2 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][72] ([i915#3638])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#3828])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#3638])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#4538]) +2 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#4538] / [i915#5190]) +3 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
    - shard-mtlp:         NOTRUN -> [SKIP][77]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-mtlp-3/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][78] +7 other tests skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][79] ([i915#14098] / [i915#6095]) +47 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#6095]) +220 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-14/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][81] ([i915#6095]) +29 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#10307] / [i915#6095]) +105 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-11/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][83] ([i915#12313]) +1 other test skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#6095]) +81 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#6095]) +34 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][86] ([i915#6095]) +34 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc:
    - shard-mtlp:         NOTRUN -> [SKIP][87] ([i915#6095]) +4 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-mtlp-3/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][88] +84 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-glk3/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition:
    - shard-tglu-1:       NOTRUN -> [SKIP][89] ([i915#3742])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#13781]) +3 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_chamelium_color@ctm-0-25:
    - shard-dg2:          NOTRUN -> [SKIP][91] +4 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_chamelium_color@ctm-0-25.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - shard-tglu-1:       NOTRUN -> [SKIP][92] ([i915#11151] / [i915#7828]) +2 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_chamelium_edid@vga-edid-read:
    - shard-tglu:         NOTRUN -> [SKIP][93] ([i915#11151] / [i915#7828]) +2 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-5/igt@kms_chamelium_edid@vga-edid-read.html

  * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
    - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#11151] / [i915#7828]) +1 other test skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html

  * igt@kms_chamelium_frames@hdmi-crc-single:
    - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#11151] / [i915#7828]) +3 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_chamelium_frames@hdmi-crc-single.html

  * igt@kms_color_pipeline@plane-lut3d-green-only@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#15523]) +3 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@kms_color_pipeline@plane-lut3d-green-only@pipe-b-hdmi-a-1.html

  * igt@kms_color_pipeline@plane-lut3d-green-only@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][97] ([i915#15523]) +3 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-16/igt@kms_color_pipeline@plane-lut3d-green-only@pipe-d-hdmi-a-4.html

  * igt@kms_content_protection@atomic-dpms-hdcp14:
    - shard-tglu-1:       NOTRUN -> [SKIP][98] ([i915#6944])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_content_protection@atomic-dpms-hdcp14.html

  * igt@kms_content_protection@atomic-hdcp14:
    - shard-tglu:         NOTRUN -> [SKIP][99] ([i915#6944])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_content_protection@atomic-hdcp14.html
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#6944])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_content_protection@atomic-hdcp14.html

  * igt@kms_content_protection@content-type-change:
    - shard-tglu-1:       NOTRUN -> [SKIP][101] ([i915#6944] / [i915#9424])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-lic-type-0-hdcp14:
    - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#15330])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85:
    - shard-tglu-1:       NOTRUN -> [FAIL][103] ([i915#13566]) +1 other test fail
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-256x85.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][104] ([i915#13566])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#3555])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-random-32x10:
    - shard-tglu:         NOTRUN -> [SKIP][106] ([i915#3555]) +1 other test skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_cursor_crc@cursor-random-32x10.html
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#3555])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_cursor_crc@cursor-random-32x10.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#13049]) +1 other test skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#13046] / [i915#5354]) +1 other test skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-8/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-tglu-1:       NOTRUN -> [SKIP][110] ([i915#4103])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-tglu:         NOTRUN -> [SKIP][111] +20 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-dg1:          NOTRUN -> [SKIP][112] +4 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#9067])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#3804])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dp_aux_dev:
    - shard-dg2:          [PASS][115] -> [SKIP][116] ([i915#1257])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-10/igt@kms_dp_aux_dev.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-3/igt@kms_dp_aux_dev.html

  * igt@kms_dp_link_training@non-uhbr-sst:
    - shard-tglu-1:       NOTRUN -> [SKIP][117] ([i915#13749])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_dp_link_training@non-uhbr-sst.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-tglu-1:       NOTRUN -> [SKIP][118] ([i915#3840])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-tglu:         NOTRUN -> [SKIP][119] ([i915#3555] / [i915#3840])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][120] ([i915#3469])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@display-3x:
    - shard-dg1:          NOTRUN -> [SKIP][121] ([i915#1839])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_feature_discovery@display-3x.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#9934]) +2 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][123] ([i915#9934])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][124] ([i915#3637] / [i915#9934]) +3 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
    - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#9934]) +3 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-tglu:         NOTRUN -> [SKIP][126] ([i915#3637] / [i915#9934]) +2 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][127] ([i915#2587] / [i915#2672]) +2 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#2672] / [i915#3555] / [i915#5190])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
    - shard-tglu:         NOTRUN -> [SKIP][129] ([i915#2587] / [i915#2672] / [i915#3555])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#2672])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yuv-linear-to-32bpp-yuv-linear-reflect-x:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#15573]) +1 other test skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-yuv-linear-to-32bpp-yuv-linear-reflect-x.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-dg1:          NOTRUN -> [SKIP][132] ([i915#2672] / [i915#3555])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][133] ([i915#2587] / [i915#2672])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][134] ([i915#2672] / [i915#3555])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][135] ([i915#2587] / [i915#2672]) +1 other test skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][136] ([i915#2672] / [i915#3555]) +2 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt:
    - shard-tglu-1:       NOTRUN -> [SKIP][137] +28 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-rte:
    - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#5354]) +8 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-2p-rte.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#8708]) +2 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-argb161616f-draw-blt:
    - shard-tglu:         NOTRUN -> [SKIP][140] ([i915#15574])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-argb161616f-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][141] ([i915#10056])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-glk10/igt@kms_frontbuffer_tracking@fbc-suspend.html
    - shard-rkl:          [PASS][142] -> [INCOMPLETE][143] ([i915#10056])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-tglu-1:       NOTRUN -> [SKIP][144] ([i915#5439])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#1825]) +19 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-abgr161616f-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][146] ([i915#15574])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-abgr161616f-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-argb161616f-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#15574]) +1 other test skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-argb161616f-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-tglu:         NOTRUN -> [SKIP][148] ([i915#5439])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#10055])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#15102])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#15102]) +1 other test skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#15102] / [i915#3023]) +7 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff:
    - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#15102] / [i915#3458]) +3 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#8708]) +1 other test skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-abgr161616f-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#15574]) +1 other test skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-abgr161616f-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-argb161616f-draw-render:
    - shard-tglu-1:       NOTRUN -> [SKIP][156] ([i915#15574])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-argb161616f-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#10433] / [i915#15102] / [i915#3458]) +3 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
    - shard-tglu-1:       NOTRUN -> [SKIP][158] ([i915#15102]) +12 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
    - shard-tglu:         NOTRUN -> [SKIP][159] ([i915#15102]) +10 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html

  * igt@kms_hdr@static-toggle:
    - shard-dg2:          [PASS][160] -> [SKIP][161] ([i915#3555] / [i915#8228]) +1 other test skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-11/igt@kms_hdr@static-toggle.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-1/igt@kms_hdr@static-toggle.html
    - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#3555] / [i915#8228])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_hdr@static-toggle.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-tglu-1:       NOTRUN -> [SKIP][163] ([i915#3555] / [i915#8228])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][164] ([i915#15459])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#15458])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-8/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#15458])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_panel_fitting@legacy:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#6301])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_panel_fitting@legacy.html

  * igt@kms_pipe_stress@stress-xrgb8888-4tiled:
    - shard-tglu:         NOTRUN -> [SKIP][168] ([i915#14712])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_pipe_stress@stress-xrgb8888-4tiled.html

  * igt@kms_plane@plane-panning-bottom-right-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][169] ([i915#13026]) +1 other test incomplete
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-glk6/igt@kms_plane@plane-panning-bottom-right-suspend.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-dg1:          NOTRUN -> [SKIP][170] ([i915#3555])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_multiple@2x-tiling-y:
    - shard-tglu-1:       NOTRUN -> [SKIP][171] ([i915#13958])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-y.html

  * igt@kms_plane_multiple@2x-tiling-yf:
    - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#13958])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-yf.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#15329] / [i915#3555])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
    - shard-tglu:         NOTRUN -> [SKIP][174] ([i915#15329]) +3 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:
    - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#15329]) +3 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:
    - shard-dg1:          [PASS][176] -> [DMESG-WARN][177] ([i915#4423])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg1-19/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-13/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html

  * igt@kms_pm_backlight@bad-brightness:
    - shard-tglu:         NOTRUN -> [SKIP][178] ([i915#9812]) +1 other test skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_pm_backlight@bad-brightness.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#9685])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-tglu-1:       NOTRUN -> [SKIP][180] ([i915#3828]) +1 other test skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-tglu:         NOTRUN -> [SKIP][181] ([i915#15073])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@fences-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#4077])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_pm_rpm@fences-dpms.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [PASS][183] -> [SKIP][184] ([i915#15073])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-dg2:          [PASS][185] -> [SKIP][186] ([i915#15073])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-7/igt@kms_pm_rpm@modeset-lpsp-stress.html
    - shard-dg1:          [PASS][187] -> [SKIP][188] ([i915#15073])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg1-15/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#15073])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_prime@d3hot:
    - shard-tglu:         NOTRUN -> [SKIP][190] ([i915#6524])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:
    - shard-glk10:        NOTRUN -> [SKIP][191] ([i915#11520])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-glk10/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#11520]) +3 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area:
    - shard-tglu-1:       NOTRUN -> [SKIP][193] ([i915#11520]) +1 other test skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-cursor-plane-update-sf:
    - shard-glk:          NOTRUN -> [SKIP][194] ([i915#11520]) +3 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-glk3/igt@kms_psr2_sf@pr-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf:
    - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#11520]) +1 other test skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-8/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:
    - shard-tglu:         NOTRUN -> [SKIP][196] ([i915#11520]) +1 other test skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-5/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#9683])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-psr-cursor-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][198] ([i915#9732]) +7 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_psr@fbc-psr-cursor-mmap-gtt.html

  * igt@kms_psr@fbc-psr2-primary-blt:
    - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#1072] / [i915#9732]) +9 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@kms_psr@fbc-psr2-primary-blt.html

  * igt@kms_psr@pr-sprite-plane-move:
    - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#9688])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-mtlp-3/igt@kms_psr@pr-sprite-plane-move.html

  * igt@kms_psr@psr-cursor-render:
    - shard-glk10:        NOTRUN -> [SKIP][201] +90 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-glk10/igt@kms_psr@psr-cursor-render.html

  * igt@kms_psr@psr-sprite-plane-move:
    - shard-dg1:          NOTRUN -> [SKIP][202] ([i915#1072] / [i915#9732]) +5 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_psr@psr-sprite-plane-move.html

  * igt@kms_psr@psr2-cursor-blt:
    - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#1072] / [i915#9732]) +6 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_psr@psr2-cursor-blt.html

  * igt@kms_psr@psr2-sprite-mmap-gtt:
    - shard-tglu-1:       NOTRUN -> [SKIP][204] ([i915#9732]) +10 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_psr@psr2-sprite-mmap-gtt.html

  * igt@kms_scaling_modes@scaling-mode-full:
    - shard-tglu-1:       NOTRUN -> [SKIP][205] ([i915#3555])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_scaling_modes@scaling-mode-full.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-tglu:         NOTRUN -> [ABORT][206] ([i915#13179]) +1 other test abort
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][207] ([i915#12276]) +1 other test incomplete
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-glk10/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1.html

  * igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2:
    - shard-rkl:          [PASS][208] -> [INCOMPLETE][209] ([i915#12276]) +1 other test incomplete
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-4/igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2.html

  * igt@perf@gen12-group-concurrent-oa-buffer-read:
    - shard-rkl:          [PASS][210] -> [FAIL][211] ([i915#10538])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@perf@gen12-group-concurrent-oa-buffer-read.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-3/igt@perf@gen12-group-concurrent-oa-buffer-read.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg1:          NOTRUN -> [FAIL][212] ([i915#12549] / [i915#6806]) +1 other test fail
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@perf_pmu@frequency@gt0.html

  * igt@prime_vgem@basic-read:
    - shard-dg1:          NOTRUN -> [SKIP][213] ([i915#3708])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@prime_vgem@basic-read.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-rkl:          NOTRUN -> [SKIP][214] ([i915#9917])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-tglu-1:       NOTRUN -> [FAIL][215] ([i915#12910])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  * igt@sysfs_heartbeat_interval@precise:
    - shard-snb:          NOTRUN -> [SKIP][216] +41 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-snb6/igt@sysfs_heartbeat_interval@precise.html

  
#### Possible fixes ####

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [INCOMPLETE][217] ([i915#13356]) -> [PASS][218]
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-7/igt@gem_ccs@suspend-resume.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-8/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [INCOMPLETE][219] ([i915#12392] / [i915#13356]) -> [PASS][220]
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-7/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-8/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html

  * igt@gem_mmap_offset@clear-via-pagefault:
    - shard-mtlp:         [ABORT][221] ([i915#14809]) -> [PASS][222] +1 other test pass
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-mtlp-2/igt@gem_mmap_offset@clear-via-pagefault.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-mtlp-3/igt@gem_mmap_offset@clear-via-pagefault.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-dg1:          [ABORT][223] ([i915#13562]) -> [PASS][224]
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg1-14/igt@i915_pm_rpm@system-suspend-execbuf.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-19/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][225] ([i915#13729] / [i915#13821]) -> [PASS][226]
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-snb4/igt@i915_pm_rps@reset.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-snb6/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@forcewake:
    - shard-rkl:          [INCOMPLETE][227] ([i915#4817]) -> [PASS][228]
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@i915_suspend@forcewake.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@i915_suspend@forcewake.html

  * igt@kms_async_flips@async-flip-suspend-resume:
    - shard-dg2:          [FAIL][229] ([i915#15285]) -> [PASS][230]
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-11/igt@kms_async_flips@async-flip-suspend-resume.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-3/igt@kms_async_flips@async-flip-suspend-resume.html

  * igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1:
    - shard-tglu:         [FAIL][231] ([i915#13566]) -> [PASS][232] +1 other test pass
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-tglu-6/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-3/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-2:
    - shard-rkl:          [FAIL][233] ([i915#13566]) -> [PASS][234] +2 other tests pass
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-3/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-2.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-2.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-snb:          [TIMEOUT][235] ([i915#14033] / [i915#14350]) -> [PASS][236]
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-snb4/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [TIMEOUT][237] ([i915#14033]) -> [PASS][238] +2 other tests pass
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-snb4/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a1:
    - shard-rkl:          [FAIL][239] ([i915#10826]) -> [PASS][240] +1 other test pass
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-5/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a1.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg2:          [SKIP][241] ([i915#3555] / [i915#8228]) -> [PASS][242]
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-1/igt@kms_hdr@bpc-switch-dpms.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-11/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@static-toggle:
    - shard-rkl:          [SKIP][243] ([i915#3555] / [i915#8228]) -> [PASS][244]
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-5/igt@kms_hdr@static-toggle.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_hdr@static-toggle.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - shard-rkl:          [INCOMPLETE][245] ([i915#12756] / [i915#13476]) -> [PASS][246]
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-3/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-dg2:          [SKIP][247] ([i915#15073]) -> [PASS][248]
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-3/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@i2c:
    - shard-dg1:          [DMESG-WARN][249] ([i915#4423]) -> [PASS][250] +1 other test pass
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg1-18/igt@kms_pm_rpm@i2c.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-14/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          [SKIP][251] ([i915#15073]) -> [PASS][252] +3 other tests pass
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-dg1:          [SKIP][253] ([i915#15073]) -> [PASS][254] +2 other tests pass
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg1-15/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@system-suspend-modeset:
    - shard-rkl:          [INCOMPLETE][255] ([i915#14419]) -> [PASS][256]
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-3/igt@kms_pm_rpm@system-suspend-modeset.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-4/igt@kms_pm_rpm@system-suspend-modeset.html

  * igt@perf@blocking@0-rcs0:
    - shard-tglu:         [FAIL][257] ([i915#10538]) -> [PASS][258] +1 other test pass
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-tglu-4/igt@perf@blocking@0-rcs0.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-9/igt@perf@blocking@0-rcs0.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [FAIL][259] ([i915#4349]) -> [PASS][260] +4 other tests pass
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-4/igt@perf_pmu@busy-double-start@vecs1.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html

  
#### Warnings ####

  * igt@api_intel_bb@crc32:
    - shard-rkl:          [SKIP][261] ([i915#6230]) -> [SKIP][262] ([i915#14544] / [i915#6230])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@api_intel_bb@crc32.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@api_intel_bb@crc32.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          [SKIP][263] ([i915#3555] / [i915#9323]) -> [SKIP][264] ([i915#14544] / [i915#3555] / [i915#9323])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@gem_ccs@block-copy-compressed.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-rkl:          [SKIP][265] ([i915#13008] / [i915#14544]) -> [SKIP][266] ([i915#13008])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@gem_ccs@large-ctrl-surf-copy.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_exec_balancer@parallel:
    - shard-rkl:          [SKIP][267] ([i915#14544] / [i915#4525]) -> [SKIP][268] ([i915#4525])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@gem_exec_balancer@parallel.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-rkl:          [SKIP][269] ([i915#4525]) -> [SKIP][270] ([i915#14544] / [i915#4525])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-5/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-rkl:          [SKIP][271] ([i915#14544] / [i915#6344]) -> [SKIP][272] ([i915#6344])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@gem_exec_capture@capture-recoverable.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-rkl:          [SKIP][273] ([i915#3281]) -> [SKIP][274] ([i915#14544] / [i915#3281]) +1 other test skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@gem_exec_reloc@basic-concurrent0.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_reloc@basic-gtt-read-noreloc:
    - shard-rkl:          [SKIP][275] ([i915#14544] / [i915#3281]) -> [SKIP][276] ([i915#3281]) +2 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-read-noreloc.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@gem_exec_reloc@basic-gtt-read-noreloc.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-rkl:          [SKIP][277] ([i915#14544] / [i915#4613]) -> [SKIP][278] ([i915#4613]) +1 other test skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-rkl:          [SKIP][279] ([i915#4613]) -> [SKIP][280] ([i915#14544] / [i915#4613]) +1 other test skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_partial_pwrite_pread@write:
    - shard-rkl:          [SKIP][281] ([i915#14544] / [i915#3282]) -> [SKIP][282] ([i915#3282]) +3 other tests skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@gem_partial_pwrite_pread@write.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@gem_partial_pwrite_pread@write.html

  * igt@gem_pxp@hw-rejects-pxp-context:
    - shard-rkl:          [SKIP][283] ([i915#13717] / [i915#14544]) -> [SKIP][284] ([i915#13717])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-context.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-context.html

  * igt@gem_readwrite@beyond-eob:
    - shard-rkl:          [SKIP][285] ([i915#3282]) -> [SKIP][286] ([i915#14544] / [i915#3282]) +1 other test skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@gem_readwrite@beyond-eob.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@gem_readwrite@beyond-eob.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-rkl:          [SKIP][287] ([i915#2527]) -> [SKIP][288] ([i915#14544] / [i915#2527]) +1 other test skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-5/igt@gen9_exec_parse@cmd-crossing-page.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          [SKIP][289] ([i915#14544] / [i915#2527]) -> [SKIP][290] ([i915#2527]) +1 other test skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@gen9_exec_parse@shadow-peek.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@gen9_exec_parse@shadow-peek.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-rkl:          [SKIP][291] ([i915#14544] / [i915#5286]) -> [SKIP][292] ([i915#5286]) +1 other test skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][293] ([i915#5286]) -> [SKIP][294] ([i915#14544] / [i915#5286]) +1 other test skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-32bpp-rotate-270:
    - shard-rkl:          [SKIP][295] ([i915#14544] / [i915#3638]) -> [SKIP][296] ([i915#3638])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-270.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_big_fb@linear-32bpp-rotate-270.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-rkl:          [SKIP][297] ([i915#3638]) -> [SKIP][298] ([i915#14544] / [i915#3638])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rotate-270.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-rkl:          [SKIP][299] ([i915#14544] / [i915#3828]) -> [SKIP][300] ([i915#3828])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          [SKIP][301] ([i915#14098] / [i915#6095]) -> [SKIP][302] ([i915#14098] / [i915#14544] / [i915#6095]) +15 other tests skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][303] ([i915#12313] / [i915#14544]) -> [SKIP][304] ([i915#12313])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          [SKIP][305] ([i915#6095]) -> [SKIP][306] ([i915#14544] / [i915#6095]) +14 other tests skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs:
    - shard-rkl:          [SKIP][307] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][308] ([i915#14098] / [i915#6095]) +7 other tests skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - shard-rkl:          [SKIP][309] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][310] ([i915#11151] / [i915#7828]) +3 other tests skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-read.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_chamelium_edid@vga-edid-read:
    - shard-rkl:          [SKIP][311] ([i915#11151] / [i915#7828]) -> [SKIP][312] ([i915#11151] / [i915#14544] / [i915#7828])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@kms_chamelium_edid@vga-edid-read.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_chamelium_edid@vga-edid-read.html

  * igt@kms_content_protection@atomic-dpms-hdcp14:
    - shard-rkl:          [SKIP][313] ([i915#14544] / [i915#6944]) -> [SKIP][314] ([i915#6944]) +1 other test skip
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_content_protection@atomic-dpms-hdcp14.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_content_protection@atomic-dpms-hdcp14.html

  * igt@kms_content_protection@dp-mst-type-0-hdcp14:
    - shard-rkl:          [SKIP][315] ([i915#15330]) -> [SKIP][316] ([i915#14544] / [i915#15330])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_content_protection@dp-mst-type-0-hdcp14.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0-hdcp14.html

  * igt@kms_content_protection@lic-type-0:
    - shard-dg2:          [FAIL][317] ([i915#7173]) -> [SKIP][318] ([i915#6944] / [i915#9424])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-11/igt@kms_content_protection@lic-type-0.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-3/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@lic-type-1:
    - shard-rkl:          [SKIP][319] ([i915#14544] / [i915#6944] / [i915#9424]) -> [SKIP][320] ([i915#6944] / [i915#9424])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_content_protection@lic-type-1.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@uevent-hdcp14:
    - shard-dg2:          [FAIL][321] ([i915#7173]) -> [SKIP][322] ([i915#6944])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-10/igt@kms_content_protection@uevent-hdcp14.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-3/igt@kms_content_protection@uevent-hdcp14.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-rkl:          [SKIP][323] ([i915#3555]) -> [SKIP][324] ([i915#14544] / [i915#3555]) +2 other tests skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-32x10.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-32x32:
    - shard-rkl:          [SKIP][325] ([i915#14544] / [i915#3555]) -> [SKIP][326] ([i915#3555]) +1 other test skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-32x32.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-32x32.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          [SKIP][327] ([i915#14544] / [i915#4103]) -> [SKIP][328] ([i915#4103]) +1 other test skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dp_aux_dev:
    - shard-rkl:          [SKIP][329] ([i915#1257] / [i915#14544]) -> [SKIP][330] ([i915#1257])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_dp_aux_dev.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_dp_aux_dev.html

  * igt@kms_dp_link_training@non-uhbr-sst:
    - shard-rkl:          [SKIP][331] ([i915#13749] / [i915#14544]) -> [SKIP][332] ([i915#13749])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-sst.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_dp_link_training@non-uhbr-sst.html

  * igt@kms_dp_link_training@uhbr-mst:
    - shard-rkl:          [SKIP][333] ([i915#13748] / [i915#14544]) -> [SKIP][334] ([i915#13748])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_dp_link_training@uhbr-mst.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_dp_link_training@uhbr-mst.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-rkl:          [SKIP][335] ([i915#13707]) -> [SKIP][336] ([i915#13707] / [i915#14544])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@kms_dp_linktrain_fallback@dp-fallback.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_feature_discovery@display-3x:
    - shard-rkl:          [SKIP][337] ([i915#1839]) -> [SKIP][338] ([i915#14544] / [i915#1839])
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-5/igt@kms_feature_discovery@display-3x.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_feature_discovery@display-3x.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-rkl:          [SKIP][339] ([i915#9934]) -> [SKIP][340] ([i915#14544] / [i915#9934]) +2 other tests skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-5/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-rkl:          [SKIP][341] ([i915#14544] / [i915#9934]) -> [SKIP][342] ([i915#9934])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_flip@2x-flip-vs-fences-interruptible.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
    - shard-rkl:          [SKIP][343] ([i915#2672]) -> [SKIP][344] ([i915#14544] / [i915#2672]) +1 other test skip
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-rkl:          [SKIP][345] ([i915#14544] / [i915#2672] / [i915#3555]) -> [SKIP][346] ([i915#2672] / [i915#3555]) +1 other test skip
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          [SKIP][347] ([i915#14544] / [i915#2672]) -> [SKIP][348] ([i915#2672]) +1 other test skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-rkl:          [SKIP][349] ([i915#2672] / [i915#3555]) -> [SKIP][350] ([i915#14544] / [i915#2672] / [i915#3555]) +1 other test skip
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-nv12-linear-to-nv12-linear-reflect-x@pipe-a-valid-mode:
    - shard-rkl:          [SKIP][351] ([i915#14544] / [i915#15573]) -> [SKIP][352] ([i915#15573]) +1 other test skip
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_flip_scaled_crc@flip-nv12-linear-to-nv12-linear-reflect-x@pipe-a-valid-mode.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_flip_scaled_crc@flip-nv12-linear-to-nv12-linear-reflect-x@pipe-a-valid-mode.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-rkl:          [SKIP][353] -> [SKIP][354] ([i915#14544]) +9 other tests skip
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_force_connector_basic@force-load-detect.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][355] ([i915#1825]) -> [SKIP][356] ([i915#14544] / [i915#1825]) +13 other tests skip
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][357] ([i915#15102]) -> [SKIP][358] ([i915#14544] / [i915#15102]) +1 other test skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render:
    - shard-rkl:          [SKIP][359] ([i915#14544] / [i915#15102]) -> [SKIP][360] ([i915#15102]) +2 other tests skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render:
    - shard-rkl:          [SKIP][361] ([i915#15102] / [i915#3023]) -> [SKIP][362] ([i915#14544] / [i915#15102] / [i915#3023]) +6 other tests skip
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
    - shard-rkl:          [SKIP][363] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][364] ([i915#15102] / [i915#3023]) +8 other tests skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:
    - shard-dg2:          [SKIP][365] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][366] ([i915#15102] / [i915#3458]) +1 other test skip
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][367] ([i915#14544]) -> [SKIP][368] +7 other tests skip
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-dg2:          [SKIP][369] ([i915#15102] / [i915#3458]) -> [SKIP][370] ([i915#10433] / [i915#15102] / [i915#3458]) +1 other test skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-dg1:          [SKIP][371] ([i915#4423] / [i915#5439]) -> [SKIP][372] ([i915#5439])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc:
    - shard-dg1:          [SKIP][373] ([i915#8708]) -> [SKIP][374] ([i915#4423] / [i915#8708])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt:
    - shard-rkl:          [SKIP][375] ([i915#14544] / [i915#1825]) -> [SKIP][376] ([i915#1825]) +13 other tests skip
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-abgr161616f-draw-mmap-gtt:
    - shard-rkl:          [SKIP][377] ([i915#14544] / [i915#15574]) -> [SKIP][378] ([i915#15574])
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-abgr161616f-draw-mmap-gtt.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-abgr161616f-draw-mmap-gtt.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-dg2:          [SKIP][379] ([i915#13331]) -> [SKIP][380] ([i915#12713])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-10/igt@kms_hdr@brightness-with-hdr.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-3/igt@kms_hdr@brightness-with-hdr.html
    - shard-rkl:          [SKIP][381] ([i915#13331] / [i915#14544]) -> [SKIP][382] ([i915#12713])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_hdr@brightness-with-hdr.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_hdr@brightness-with-hdr.html
    - shard-dg1:          [SKIP][383] ([i915#1187] / [i915#12713]) -> [SKIP][384] ([i915#12713])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-19/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-rkl:          [SKIP][385] ([i915#14544] / [i915#15459]) -> [SKIP][386] ([i915#15459])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_joiner@basic-force-big-joiner.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_plane_multiple@2x-tiling-y:
    - shard-rkl:          [SKIP][387] ([i915#13958] / [i915#14544]) -> [SKIP][388] ([i915#13958])
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-y.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_plane_multiple@2x-tiling-y.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-rkl:          [SKIP][389] ([i915#14259]) -> [SKIP][390] ([i915#14259] / [i915#14544])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_plane_multiple@tiling-yf.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu:         [FAIL][391] ([i915#9295]) -> [SKIP][392] ([i915#15128])
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-rkl:          [SKIP][393] ([i915#9685]) -> [SKIP][394] ([i915#14544] / [i915#9685])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@kms_pm_dc@dc6-psr.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          [SKIP][395] ([i915#14544] / [i915#9340]) -> [SKIP][396] ([i915#3828])
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:
    - shard-rkl:          [SKIP][397] ([i915#11520]) -> [SKIP][398] ([i915#11520] / [i915#14544]) +1 other test skip
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:
    - shard-rkl:          [SKIP][399] ([i915#11520] / [i915#14544]) -> [SKIP][400] ([i915#11520]) +1 other test skip
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-rkl:          [SKIP][401] ([i915#9683]) -> [SKIP][402] ([i915#14544] / [i915#9683])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_psr2_su@page_flip-nv12.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-rkl:          [SKIP][403] ([i915#14544] / [i915#9683]) -> [SKIP][404] ([i915#9683])
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_psr2_su@page_flip-p010.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@pr-primary-mmap-gtt:
    - shard-rkl:          [SKIP][405] ([i915#1072] / [i915#9732]) -> [SKIP][406] ([i915#1072] / [i915#14544] / [i915#9732]) +7 other tests skip
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_psr@pr-primary-mmap-gtt.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_psr@pr-primary-mmap-gtt.html

  * igt@kms_psr@pr-sprite-mmap-gtt:
    - shard-rkl:          [SKIP][407] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][408] ([i915#1072] / [i915#9732]) +10 other tests skip
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_psr@pr-sprite-mmap-gtt.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_psr@pr-sprite-mmap-gtt.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-rkl:          [SKIP][409] ([i915#5289]) -> [SKIP][410] ([i915#14544] / [i915#5289])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-rkl:          [SKIP][411] ([i915#14544] / [i915#8516]) -> [SKIP][412] ([i915#8516])
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@perf_pmu@rc6-all-gts.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_vgem@basic-fence-read:
    - shard-rkl:          [SKIP][413] ([i915#3291] / [i915#3708]) -> [SKIP][414] ([i915#14544] / [i915#3291] / [i915#3708])
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@prime_vgem@basic-fence-read.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@prime_vgem@basic-fence-read.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-rkl:          [SKIP][415] ([i915#14544] / [i915#9917]) -> [SKIP][416] ([i915#9917])
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  
  [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
  [i915#10056]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826
  [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11527
  [i915#11713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713
  [i915#11815]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11815
  [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
  [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
  [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
  [i915#12549]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12549
  [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
  [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#12756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756
  [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
  [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
  [i915#13026]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026
  [i915#13029]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
  [i915#13331]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13390]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390
  [i915#13398]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
  [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
  [i915#13562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13562
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
  [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
  [i915#13729]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13729
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
  [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
  [i915#13821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
  [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
  [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
  [i915#14350]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14350
  [i915#14419]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
  [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
  [i915#14809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14809
  [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
  [i915#15095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15095
  [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
  [i915#15128]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15128
  [i915#15140]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15140
  [i915#15285]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15285
  [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
  [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
  [i915#15433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15433
  [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
  [i915#15459]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459
  [i915#15481]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15481
  [i915#15523]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15523
  [i915#15560]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15560
  [i915#15573]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15573
  [i915#15574]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15574
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#3936]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3936
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
  [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#6806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6806
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
  [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_17843 -> Patchwork_159088v4

  CI-20190529: 20190529
  CI_DRM_17843: ce23d0a333e80437caeac552d098b1f241ff2926 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8704: 8704
  Patchwork_159088v4: ce23d0a333e80437caeac552d098b1f241ff2926 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/index.html

--===============5835926506095671578==
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
<tr><td><b>Series:</b></td><td>drm/i915/pll: Verify pll dividers and remove redundant .clock member (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/159088/">https://patchwork.freedesktop.org/series/159088/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17843_full -&gt; Patchwork_159088v4_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_159088v4_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@api_intel_bb@object-reloc-keep-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@api_intel_bb@object-reloc-purge-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@drm_buddy@drm_buddy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-glk6/igt@drm_buddy@drm_buddy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15095">i915#15095</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@gem_basic@multigpu-create-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-8/igt@gem_busy@semaphore.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3936">i915#3936</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-5/igt@gem_ccs@block-copy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-mtlp-3/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008">i915#13008</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@file:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-snb6/igt@gem_ctx_persistence@file.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-5/igt@gem_eio@in-flight-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390">i915#13390</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@gem_exec_balancer@bonded-dual.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_big@single:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-5/igt@gem_exec_big@single.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713">i915#11713</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-18/igt@gem_exec_flush@basic-wb-rw-before-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-8/igt@gem_exec_reloc@basic-wc-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@gem_exec_reloc@basic-write-read-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-mtlp-3/igt@gem_exec_schedule@preempt-queue-chain.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537">i915#4537</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@gem_lmem_swapping@massive.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-glk3/igt@gem_lmem_swapping@random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@gem_lmem_swapping@verify-random-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@gem_mmap_gtt@coherency.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-cpu-read-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@gem_mmap_wc@write-cpu-read-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-snoop:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@gem_partial_pwrite_pread@reads-snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@bench:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@gem_pread@bench.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@gem_pread@exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658">i915#2658</a>)</li>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-snb6/igt@gem_pread@exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-random:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-8/igt@gem_pwrite@basic-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-context:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@gem_pxp@hw-rejects-pxp-context.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398">i915#13398</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@gem_userptr_blits@map-fixed-invalidate-busy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-8/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@busy-check-all:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@i915_drm_fdinfo@busy-check-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11527">i915#11527</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@busy-hang@ccs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-mtlp-3/igt@i915_drm_fdinfo@busy-hang@ccs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073">i915#14073</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@virtual-busy-hang-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@i915_drm_fdinfo@virtual-busy-hang-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118">i915#14118</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@fault-injection:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@i915_module_load@fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11815">i915#11815</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15481">i915#15481</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@fault-injection@i915_driver_mmio_probe:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@i915_module_load@fault-injection@i915_driver_mmio_probe.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15481">i915#15481</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg1-16/igt@i915_module_load@reload-no-display.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-19/igt@i915_module_load@reload-no-display.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029">i915#13029</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545">i915#14545</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-8/igt@i915_module_load@resize-bar.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545">i915#14545</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@i915_pm_freq_api@freq-reset-multiple.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg1-16/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-16/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15560">i915#15560</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg1-16/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-16/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15433">i915#15433</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@i915_suspend@fence-restore-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@i915_suspend@fence-restore-untiled.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-glk3/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-2/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-1/igt@i915_suspend@sysfs-reader.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15140">i915#15140</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454">i915#12454</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712">i915#12712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-mtlp-3/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +47 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-14/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +220 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-11/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +105 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +81 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-mtlp-3/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-glk3/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1.html">SKIP</a> +84 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_cdclk@mode-transition.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781">i915#13781</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-25:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_chamelium_color@ctm-0-25.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_chamelium_edid@hdmi-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@vga-edid-read:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-5/igt@kms_chamelium_edid@vga-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-cmp-planar-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-single:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_chamelium_frames@hdmi-crc-single.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color_pipeline@plane-lut3d-green-only@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@kms_color_pipeline@plane-lut3d-green-only@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15523">i915#15523</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color_pipeline@plane-lut3d-green-only@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-16/igt@kms_color_pipeline@plane-lut3d-green-only@pipe-d-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15523">i915#15523</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms-hdcp14:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_content_protection@atomic-dpms-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-hdcp14:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_content_protection@atomic-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_content_protection@atomic-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_content_protection@content-type-change.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0-hdcp14:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-256x85.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x10:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_cursor_crc@cursor-random-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_cursor_crc@cursor-random-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-8/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html">SKIP</a> +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-10/igt@kms_dp_aux_dev.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-3/igt@kms_dp_aux_dev.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-sst:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_dp_link_training@non-uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749">i915#13749</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469">i915#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_feature_discovery@display-3x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_flip@2x-flip-vs-fences-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_flip@2x-nonexisting-fb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yuv-linear-to-32bpp-yuv-linear-reflect-x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-yuv-linear-to-32bpp-yuv-linear-reflect-x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15573">i915#15573</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt.html">SKIP</a> +28 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-2p-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-argb161616f-draw-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-argb161616f-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15574">i915#15574</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-glk10/igt@kms_frontbuffer_tracking@fbc-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056">i915#10056</a>)</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056">i915#10056</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-abgr161616f-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-abgr161616f-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15574">i915#15574</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-argb161616f-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-argb161616f-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15574">i915#15574</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055">i915#10055</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-abgr161616f-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-abgr161616f-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15574">i915#15574</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-argb161616f-draw-render:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-argb161616f-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15574">i915#15574</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-11/igt@kms_hdr@static-toggle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-1/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_joiner@basic-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459">i915#15459</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-8/igt@kms_joiner@basic-force-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458">i915#15458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458">i915#15458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_stress@stress-xrgb8888-4tiled:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_pipe_stress@stress-xrgb8888-4tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712">i915#14712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-glk6/igt@kms_plane@plane-panning-bottom-right-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-y:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-yf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg1-19/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-13/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_pm_backlight@bad-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_pm_rpm@fences-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-7/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg1-15/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_prime@d3hot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-glk10/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-update-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-glk3/igt@kms_psr2_sf@pr-cursor-plane-update-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-8/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-5/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_psr@fbc-psr-cursor-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-primary-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@kms_psr@fbc-psr2-primary-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-sprite-plane-move:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-mtlp-3/igt@kms_psr@pr-sprite-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-render:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-glk10/igt@kms_psr@psr-cursor-render.html">SKIP</a> +90 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-move:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_psr@psr-sprite-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_psr@psr2-cursor-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_psr@psr2-sprite-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@kms_scaling_modes@scaling-mode-full.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_selftest@drm_framebuffer.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179">i915#13179</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-glk10/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276">i915#12276</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-4/igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276">i915#12276</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-concurrent-oa-buffer-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@perf@gen12-group-concurrent-oa-buffer-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-3/igt@perf@gen12-group-concurrent-oa-buffer-read.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538">i915#10538</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@perf_pmu@frequency@gt0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12549">i915#12549</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6806">i915#6806</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@sriov_basic@enable-vfs-autoprobe-off.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910">i915#12910</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@precise:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-snb6/igt@sysfs_heartbeat_interval@precise.html">SKIP</a> +41 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-7/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-8/igt@gem_ccs@suspend-resume.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-7/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-8/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear-via-pagefault:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-mtlp-2/igt@gem_mmap_offset@clear-via-pagefault.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14809">i915#14809</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-mtlp-3/igt@gem_mmap_offset@clear-via-pagefault.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg1-14/igt@i915_pm_rpm@system-suspend-execbuf.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13562">i915#13562</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-19/igt@i915_pm_rpm@system-suspend-execbuf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-snb4/igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13729">i915#13729</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821">i915#13821</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-snb6/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@i915_suspend@forcewake.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-11/igt@kms_async_flips@async-flip-suspend-resume.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15285">i915#15285</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-3/igt@kms_async_flips@async-flip-suspend-resume.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-tglu-6/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-3/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-3/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-2.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-snb4/igt@kms_flip@2x-flip-vs-suspend-interruptible.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033">i915#14033</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14350">i915#14350</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-snb4/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033">i915#14033</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-5/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826">i915#10826</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-1/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-11/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-5/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_hdr@static-toggle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-3/igt@kms_pipe_crc_basic@suspend-read-crc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756">i915#12756</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476">i915#13476</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-2/igt@kms_pipe_crc_basic@suspend-read-crc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-3/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg1-18/igt@kms_pm_rpm@i2c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-14/igt@kms_pm_rpm@i2c.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg1-15/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-12/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-3/igt@kms_pm_rpm@system-suspend-modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419">i915#14419</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-4/igt@kms_pm_rpm@system-suspend-modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@blocking@0-rcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-tglu-4/igt@perf@blocking@0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538">i915#10538</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-9/igt@perf@blocking@0-rcs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-4/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#4349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@api_intel_bb@crc32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230">i915#6230</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@api_intel_bb@crc32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230">i915#6230</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@gem_ccs@block-copy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008">i915#13008</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008">i915#13008</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-5/igt@gem_exec_balancer@parallel-keep-submit-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@gem_exec_capture@capture-recoverable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344">i915#6344</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@gem_exec_capture@capture-recoverable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344">i915#6344</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@gem_exec_reloc@basic-concurrent0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@gem_exec_reloc@basic-concurrent0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-noreloc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-read-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@gem_exec_reloc@basic-gtt-read-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@gem_lmem_swapping@heavy-verify-random-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@gem_partial_pwrite_pread@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@gem_partial_pwrite_pread@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-context:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-context.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717">i915#13717</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-context.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717">i915#13717</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@gem_readwrite@beyond-eob.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@gem_readwrite@beyond-eob.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-5/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_big_fb@linear-32bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_chamelium_edid@hdmi-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@vga-edid-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@kms_chamelium_edid@vga-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_chamelium_edid@vga-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms-hdcp14:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_content_protection@atomic-dpms-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_content_protection@atomic-dpms-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0-hdcp14:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_content_protection@dp-mst-type-0-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-11/igt@kms_content_protection@lic-type-0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-3/igt@kms_content_protection@lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_content_protection@lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_content_protection@lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent-hdcp14:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-10/igt@kms_content_protection@uevent-hdcp14.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-3/igt@kms_content_protection@uevent-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x32:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_dp_aux_dev.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#1257</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_dp_aux_dev.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-sst:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749">i915#13749</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_dp_link_training@non-uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749">i915#13749</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-mst:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_dp_link_training@uhbr-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">i915#13748</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-5/igt@kms_dp_link_training@uhbr-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">i915#13748</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707">i915#13707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707">i915#13707</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-5/igt@kms_feature_discovery@display-3x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_feature_discovery@display-3x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-5/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_flip@2x-flip-vs-fences-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_flip@2x-flip-vs-fences-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-nv12-linear-to-nv12-linear-reflect-x@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_flip_scaled_crc@flip-nv12-linear-to-nv12-linear-reflect-x@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15573">i915#15573</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_flip_scaled_crc@flip-nv12-linear-to-nv12-linear-reflect-x@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15573">i915#15573</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-abgr161616f-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-abgr161616f-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15574">i915#15574</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-abgr161616f-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15574">i915#15574</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg2-10/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331">i915#13331</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg2-3/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>)</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331">i915#13331</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>)</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187">i915#1187</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-dg1-19/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_joiner@basic-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459">i915#15459</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_joiner@basic-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459">i915#15459</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-y:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_plane_multiple@2x-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295">i915#9295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15128">i915#15128</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@kms_pm_dc@dc6-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_pm_dc@dc6-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-primary-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_psr@pr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_psr@pr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-sprite-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@kms_psr@pr-sprite-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@kms_psr@pr-sprite-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-7/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-4/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-6/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/shard-rkl-8/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17843 -&gt; Patchwork_159088v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17843: ce23d0a333e80437caeac552d098b1f241ff2926 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8704: 8704<br />
  Patchwork_159088v4: ce23d0a333e80437caeac552d098b1f241ff2926 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============5835926506095671578==--
