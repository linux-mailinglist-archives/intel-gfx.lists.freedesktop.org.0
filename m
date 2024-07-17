Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5144B933CC9
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2024 14:06:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A312010E0DE;
	Wed, 17 Jul 2024 12:06:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88E7D10E0DE;
 Wed, 17 Jul 2024 12:06:40 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7573449751424099136=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EIGT=3A_success_for_drm/xe/fbdev=3A_Limit_the_u?=
 =?utf-8?q?sage_of_stolen_for_LNL+_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jul 2024 12:06:40 -0000
Message-ID: <172121800054.269411.4861392306287892995@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240717082252.3875909-1-uma.shankar@intel.com>
In-Reply-To: <20240717082252.3875909-1-uma.shankar@intel.com>
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

--===============7573449751424099136==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/xe/fbdev: Limit the usage of stolen for LNL+ (rev4)
URL   : https://patchwork.freedesktop.org/series/135971/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15085_full -> Patchwork_135971v4_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (9 -> 10)
------------------------------

  Additional (1): shard-snb-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_135971v4_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_properties@plane-properties-legacy@pipe-b-hdmi-a-3}:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@kms_properties@plane-properties-legacy@pipe-b-hdmi-a-3.html

  
Known issues
------------

  Here are the changes found in Patchwork_135971v4_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@crc32:
    - shard-dg1:          NOTRUN -> [SKIP][2] ([i915#6230])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@api_intel_bb@crc32.html

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-rkl:          NOTRUN -> [SKIP][3] ([i915#8411]) +2 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-4/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@drm_fdinfo@busy-idle@vcs1:
    - shard-dg1:          NOTRUN -> [SKIP][4] ([i915#8414]) +5 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@drm_fdinfo@busy-idle@vcs1.html

  * igt@drm_fdinfo@most-busy-check-all@vcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][5] ([i915#8414]) +5 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@drm_fdinfo@most-busy-check-all@vcs0.html

  * igt@drm_fdinfo@virtual-idle:
    - shard-rkl:          [PASS][6] -> [FAIL][7] ([i915#7742]) +1 other test fail
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-4/igt@drm_fdinfo@virtual-idle.html

  * igt@gem_barrier_race@remote-request@rcs0:
    - shard-glk:          [PASS][8] -> [ABORT][9] ([i915#8190])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-glk7/igt@gem_barrier_race@remote-request@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-glk3/igt@gem_barrier_race@remote-request@rcs0.html

  * igt@gem_caching@reads:
    - shard-mtlp:         NOTRUN -> [SKIP][10] ([i915#4873])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@gem_caching@reads.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          NOTRUN -> [SKIP][11] ([i915#3555] / [i915#9323])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-4/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-rkl:          NOTRUN -> [SKIP][12] ([i915#7697])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-2/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_ctx_persistence@heartbeat-close:
    - shard-dg2:          NOTRUN -> [SKIP][13] ([i915#8555])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@gem_ctx_persistence@heartbeat-close.html

  * igt@gem_ctx_sseu@engines:
    - shard-rkl:          NOTRUN -> [SKIP][14] ([i915#280])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-2/igt@gem_ctx_sseu@engines.html

  * igt@gem_eio@kms:
    - shard-dg1:          NOTRUN -> [FAIL][15] ([i915#5784])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-rkl:          NOTRUN -> [SKIP][16] ([i915#4525])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_balancer@sliced:
    - shard-dg2:          NOTRUN -> [SKIP][17] ([i915#4812])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-rkl:          NOTRUN -> [SKIP][18] ([i915#6344])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-1/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-rkl:          [PASS][19] -> [FAIL][20] ([i915#2842]) +2 other tests fail
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-rkl-3/igt@gem_exec_fair@basic-pace@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][21] ([i915#2842])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_fence@concurrent:
    - shard-mtlp:         NOTRUN -> [SKIP][22] ([i915#4812])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@gem_exec_fence@concurrent.html

  * igt@gem_exec_flush@basic-batch-kernel-default-uc:
    - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#3539] / [i915#4852]) +1 other test skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@gem_exec_flush@basic-batch-kernel-default-uc.html

  * igt@gem_exec_flush@basic-batch-kernel-default-wb:
    - shard-dg1:          NOTRUN -> [SKIP][24] ([i915#3539] / [i915#4852]) +2 other tests skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gem_exec_flush@basic-batch-kernel-default-wb.html

  * igt@gem_exec_reloc@basic-gtt-cpu-active:
    - shard-dg2:          NOTRUN -> [SKIP][25] ([i915#3281]) +1 other test skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@gem_exec_reloc@basic-gtt-cpu-active.html

  * igt@gem_exec_reloc@basic-gtt-cpu-noreloc:
    - shard-dg1:          NOTRUN -> [SKIP][26] ([i915#3281]) +2 other tests skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-scanout:
    - shard-rkl:          NOTRUN -> [SKIP][27] ([i915#3281]) +12 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-1/igt@gem_exec_reloc@basic-scanout.html

  * igt@gem_exec_reloc@basic-write-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][28] ([i915#3281]) +1 other test skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@gem_exec_reloc@basic-write-cpu.html

  * igt@gem_exec_schedule@preempt-queue:
    - shard-dg1:          NOTRUN -> [SKIP][29] ([i915#4812])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gem_exec_schedule@preempt-queue.html

  * igt@gem_exec_schedule@preempt-queue-contexts:
    - shard-mtlp:         NOTRUN -> [SKIP][30] ([i915#4537] / [i915#4812])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@gem_exec_schedule@preempt-queue-contexts.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#4537] / [i915#4812])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-tglu:         [PASS][32] -> [ABORT][33] ([i915#7975] / [i915#8213])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-tglu-7/igt@gem_exec_suspend@basic-s4-devices@smem.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html
    - shard-rkl:          NOTRUN -> [ABORT][34] ([i915#7975] / [i915#8213])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-2/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#4860])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@gem_fenced_exec_thrash@2-spare-fences.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-dg1:          NOTRUN -> [SKIP][36] ([i915#4860]) +1 other test skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][37] ([i915#4860])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-rkl:          NOTRUN -> [SKIP][38] ([i915#4613] / [i915#7582])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@heavy-multi@lmem0:
    - shard-dg1:          NOTRUN -> [FAIL][39] ([i915#10378])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gem_lmem_swapping@heavy-multi@lmem0.html

  * igt@gem_lmem_swapping@massive:
    - shard-mtlp:         NOTRUN -> [SKIP][40] ([i915#4613])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@gem_lmem_swapping@massive.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-rkl:          NOTRUN -> [SKIP][41] ([i915#4613]) +2 other tests skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-tglu:         NOTRUN -> [SKIP][42] ([i915#4613])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-glk:          NOTRUN -> [SKIP][43] ([i915#4613]) +1 other test skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-glk1/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_mmap@pf-nonblock:
    - shard-mtlp:         NOTRUN -> [SKIP][44] ([i915#4083])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@gem_mmap@pf-nonblock.html

  * igt@gem_mmap_gtt@isolation:
    - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#4077]) +4 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@gem_mmap_gtt@isolation.html

  * igt@gem_mmap_gtt@medium-copy-odd:
    - shard-dg1:          NOTRUN -> [SKIP][46] ([i915#4077]) +5 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gem_mmap_gtt@medium-copy-odd.html

  * igt@gem_mmap_wc@read:
    - shard-dg1:          NOTRUN -> [SKIP][47] ([i915#4083]) +2 other tests skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gem_mmap_wc@read.html

  * igt@gem_partial_pwrite_pread@write-uncached:
    - shard-dg1:          NOTRUN -> [SKIP][48] ([i915#3282])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gem_partial_pwrite_pread@write-uncached.html

  * igt@gem_pwrite@basic-random:
    - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#3282])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@gem_pwrite@basic-random.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#4270]) +2 other tests skip
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_pxp@reject-modify-context-protection-off-2:
    - shard-rkl:          NOTRUN -> [SKIP][51] ([i915#4270])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-1/igt@gem_pxp@reject-modify-context-protection-off-2.html

  * igt@gem_pxp@reject-modify-context-protection-off-3:
    - shard-dg1:          NOTRUN -> [SKIP][52] ([i915#4270]) +1 other test skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gem_pxp@reject-modify-context-protection-off-3.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-tglu:         NOTRUN -> [SKIP][53] ([i915#4270])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#5190] / [i915#8428]) +2 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html

  * igt@gem_set_tiling_vs_gtt:
    - shard-dg1:          NOTRUN -> [SKIP][55] ([i915#4079])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gem_set_tiling_vs_gtt.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#3282]) +3 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_softpin@evict-snoop:
    - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#4885])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gem_softpin@evict-snoop.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#3297])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gem_userptr_blits@create-destroy-unsync.html
    - shard-tglu:         NOTRUN -> [SKIP][59] ([i915#3297])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#3297] / [i915#4880])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gem_userptr_blits@sd-probe:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#3297] / [i915#4958])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@gem_userptr_blits@sd-probe.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#3297]) +2 other tests skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [PASS][63] -> [ABORT][64] ([i915#5566])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-glk2/igt@gen9_exec_parse@allowed-single.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-glk1/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@basic-rejected:
    - shard-mtlp:         NOTRUN -> [SKIP][65] ([i915#2856])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@gen9_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-tglu:         NOTRUN -> [SKIP][66] ([i915#2527] / [i915#2856]) +2 other tests skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-7/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@bb-large:
    - shard-dg1:          NOTRUN -> [SKIP][67] ([i915#2527]) +1 other test skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#2856]) +1 other test skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@gen9_exec_parse@bb-start-far.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#2527]) +3 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-2/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_pm_rps@min-max-config-idle:
    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#6621])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_power@sanity:
    - shard-mtlp:         [PASS][71] -> [SKIP][72] ([i915#7984])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-mtlp-2/igt@i915_power@sanity.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-8/igt@i915_power@sanity.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#5723])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@i915_query@test-query-geometry-subslices.html

  * igt@intel_hwmon@hwmon-write:
    - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#7707])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-4/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#4212]) +1 other test skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-tglu:         NOTRUN -> [SKIP][76] ([i915#3826])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][77] ([i915#8709]) +7 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:
    - shard-snb:          [PASS][78] -> [FAIL][79] ([i915#5956])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-snb5/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-snb5/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][80] ([i915#5286]) +1 other test skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#5286]) +5 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-4/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#4538] / [i915#5286]) +2 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][83] ([i915#3638])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#4538] / [i915#5190]) +4 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#3638]) +4 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-dg1:          NOTRUN -> [SKIP][86] ([i915#4538]) +2 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-tglu:         NOTRUN -> [SKIP][87] ([i915#10656])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@kms_big_joiner@invalid-modeset.html
    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#10656])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#10307] / [i915#10434] / [i915#6095]) +6 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-4/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#6095]) +75 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][91] ([i915#6095]) +7 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-edp-1.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#10307] / [i915#6095]) +168 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-4/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#6095]) +63 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-13/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][94] ([i915#6095]) +15 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#4087]) +3 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-6/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html

  * igt@kms_chamelium_audio@dp-audio-edid:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#7828]) +4 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@kms_chamelium_audio@dp-audio-edid.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
    - shard-mtlp:         NOTRUN -> [SKIP][97] ([i915#7828])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_hpd@dp-hpd:
    - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#7828]) +8 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-1/igt@kms_chamelium_hpd@dp-hpd.html

  * igt@kms_chamelium_hpd@dp-hpd-after-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][99] ([i915#7828]) +3 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
    - shard-tglu:         NOTRUN -> [SKIP][100] ([i915#7828]) +1 other test skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html

  * igt@kms_content_protection@atomic@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][101] ([i915#7173])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_content_protection@atomic@pipe-a-dp-4.html

  * igt@kms_content_protection@content-type-change:
    - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#9424])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-4/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#3116])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#3116] / [i915#3299])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@kms_content_protection@dp-mst-type-0.html
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#3299])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#7118] / [i915#9424])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-3/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic-type-1:
    - shard-mtlp:         NOTRUN -> [SKIP][107] ([i915#6944] / [i915#9424])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@srm:
    - shard-dg1:          NOTRUN -> [SKIP][108] ([i915#7116])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent:
    - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#7116] / [i915#9424])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-onscreen-32x10:
    - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#3555]) +3 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-32x10.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][111] ([i915#3555] / [i915#8814])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#11453]) +2 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-1/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-random-max-size:
    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#3555]) +2 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_cursor_crc@cursor-random-max-size.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-dg1:          NOTRUN -> [SKIP][114] ([i915#11453])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-dg1:          NOTRUN -> [SKIP][115] ([i915#4103] / [i915#4213])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#4103])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#4103] / [i915#4213])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][118] ([i915#4103])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][119] ([i915#9809])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-mtlp:         NOTRUN -> [SKIP][120] ([i915#9833])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-dg1:          NOTRUN -> [SKIP][121] ([i915#9723])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#8588])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#3804])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#3555] / [i915#3840])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#3840])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-4/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_fbcon_fbt@psr:
    - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#3469])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_fbcon_fbt@psr.html

  * igt@kms_feature_discovery@chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#4854])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-1/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-2x:
    - shard-mtlp:         NOTRUN -> [SKIP][128] ([i915#1839])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@psr1:
    - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#658])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-2/igt@kms_feature_discovery@psr1.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-dg2:          NOTRUN -> [SKIP][130] +13 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][131] -> [FAIL][132] ([i915#2122])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-snb6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-snb7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#8381])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][134] ([i915#3637]) +4 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-fences:
    - shard-dg1:          NOTRUN -> [SKIP][135] ([i915#8381])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][136] ([i915#2672])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#2672])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][138] ([i915#2587] / [i915#2672]) +2 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#2672]) +3 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][140] ([i915#8708]) +1 other test skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#1825]) +38 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][142] +28 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][143] +27 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][144] ([i915#1825]) +2 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][145] +19 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#9766])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-4/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#8708]) +6 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#8708]) +8 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#5354]) +16 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][150] ([i915#3458]) +8 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#3458]) +5 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#3023]) +19 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch:
    - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#3555] / [i915#8228])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-7/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#3555] / [i915#8228])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#3555] / [i915#8228]) +1 other test skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-1/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-dg1:          NOTRUN -> [SKIP][156] ([i915#1839])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#3555] / [i915#8806])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#9423]) +7 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-8/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-d-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][159] +116 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-glk3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][160] ([i915#9423]) +3 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#9423]) +5 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#9423]) +7 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-17/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#5176] / [i915#9423]) +1 other test skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][164] ([i915#5235]) +7 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#5235] / [i915#9423]) +3 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][166] ([i915#5235]) +7 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-7/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#5235]) +5 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#5354])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-2/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][169] ([i915#3361])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][170] ([i915#4281])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#8430])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@fences-dpms:
    - shard-mtlp:         NOTRUN -> [SKIP][172] ([i915#4077]) +1 other test skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@kms_pm_rpm@fences-dpms.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg2:          [PASS][173] -> [SKIP][174] ([i915#9519]) +3 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-3/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#9519])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          [PASS][176] -> [SKIP][177] ([i915#9519]) +2 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#9519]) +2 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-pc8-residency-stress:
    - shard-mtlp:         NOTRUN -> [SKIP][179] +2 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@kms_pm_rpm@modeset-pc8-residency-stress.html

  * igt@kms_prime@d3hot:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#6524] / [i915#6805])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@fbc-overlay-plane-update-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#11520]) +3 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-2/igt@kms_psr2_sf@fbc-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-dg1:          NOTRUN -> [SKIP][182] ([i915#11520]) +2 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-tglu:         NOTRUN -> [SKIP][183] ([i915#11520]) +1 other test skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
    - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#11520]) +1 other test skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-dg1:          NOTRUN -> [SKIP][185] ([i915#9683])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#9683])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-2/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#4348])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@fbc-pr-sprite-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#1072] / [i915#9732]) +4 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@kms_psr@fbc-pr-sprite-mmap-cpu.html

  * igt@kms_psr@fbc-psr-no-drrs:
    - shard-tglu:         NOTRUN -> [SKIP][189] ([i915#9732]) +4 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@kms_psr@fbc-psr-no-drrs.html

  * igt@kms_psr@psr2-cursor-plane-move:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#1072] / [i915#9673] / [i915#9732]) +4 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_psr@psr2-cursor-plane-move.html

  * igt@kms_psr@psr2-sprite-blt:
    - shard-dg1:          NOTRUN -> [SKIP][191] ([i915#1072] / [i915#9732]) +7 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_psr@psr2-sprite-blt.html

  * igt@kms_psr@psr2-sprite-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#1072] / [i915#9732]) +21 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@kms_psr@psr2-sprite-mmap-cpu.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#5289]) +1 other test skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg1:          NOTRUN -> [SKIP][194] ([i915#5289])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#11131] / [i915#4235])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_setmode@invalid-clone-single-crtc:
    - shard-dg1:          NOTRUN -> [SKIP][196] ([i915#3555]) +1 other test skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_setmode@invalid-clone-single-crtc.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-dg1:          NOTRUN -> [SKIP][197] ([i915#8623])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
    - shard-tglu:         [PASS][198] -> [FAIL][199] ([i915#9196]) +1 other test fail
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
    - shard-mtlp:         [PASS][200] -> [FAIL][201] ([i915#9196])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html

  * igt@kms_vrr@flip-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][202] ([i915#3555]) +1 other test skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@kms_vrr@flip-suspend.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#9906])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-glk:          NOTRUN -> [SKIP][204] ([i915#2437])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-glk1/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#2437])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-1/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#2435])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@perf@per-context-mode-unprivileged.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [PASS][207] -> [FAIL][208] ([i915#4349]) +3 other tests fail
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-8/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-tglu:         NOTRUN -> [SKIP][209] ([i915#8516])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@perf_pmu@rc6-all-gts.html
    - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#8516])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_vgem@basic-write:
    - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#3291] / [i915#3708]) +1 other test skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-4/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@fence-write-hang:
    - shard-dg1:          NOTRUN -> [SKIP][212] ([i915#3708]) +1 other test skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@prime_vgem@fence-write-hang.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-dg1:          NOTRUN -> [SKIP][213] ([i915#9917])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@sriov_basic@bind-unbind-vf.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-dg2:          NOTRUN -> [SKIP][214] ([i915#9917])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@sriov_basic@enable-vfs-autoprobe-off.html
    - shard-tglu:         NOTRUN -> [SKIP][215] ([i915#9917])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@syncobj_wait@invalid-wait-zero-handles:
    - shard-rkl:          NOTRUN -> [FAIL][216] ([i915#9781])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-2/igt@syncobj_wait@invalid-wait-zero-handles.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-mtlp:         NOTRUN -> [SKIP][217] ([i915#4818])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@tools_test@sysfs_l3_parity.html

  
#### Possible fixes ####

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [FAIL][218] ([i915#5784]) -> [PASS][219]
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg1-16/igt@gem_eio@reset-stress.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-16/igt@gem_eio@reset-stress.html

  * igt@gem_exec_big@single:
    - shard-tglu:         [ABORT][220] -> [PASS][221]
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-tglu-8/igt@gem_exec_big@single.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@gem_exec_big@single.html

  * igt@gem_mmap_offset@clear@smem0:
    - shard-mtlp:         [ABORT][222] ([i915#10029] / [i915#10729]) -> [PASS][223]
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-mtlp-4/igt@gem_mmap_offset@clear@smem0.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@gem_mmap_offset@clear@smem0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglu:         [ABORT][224] ([i915#9820]) -> [PASS][225]
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-dg1:          [FAIL][226] ([i915#3591]) -> [PASS][227] +1 other test pass
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-snb:          [SKIP][228] -> [PASS][229]
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-snb6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@torture-move@pipe-a:
    - shard-dg1:          [DMESG-WARN][230] ([i915#10166]) -> [PASS][231]
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg1-16/igt@kms_cursor_legacy@torture-move@pipe-a.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-16/igt@kms_cursor_legacy@torture-move@pipe-a.html

  * igt@kms_dp_aux_dev:
    - shard-dg2:          [SKIP][232] ([i915#1257]) -> [PASS][233]
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg2-7/igt@kms_dp_aux_dev.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_dp_aux_dev.html

  * igt@kms_properties@plane-properties-legacy@pipe-d-hdmi-a-4:
    - shard-dg1:          [INCOMPLETE][234] -> [PASS][235]
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg1-18/igt@kms_properties@plane-properties-legacy@pipe-d-hdmi-a-4.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-17/igt@kms_properties@plane-properties-legacy@pipe-d-hdmi-a-4.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:
    - shard-mtlp:         [FAIL][236] ([i915#9196]) -> [PASS][237]
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
    - shard-snb:          [FAIL][238] ([i915#9196]) -> [PASS][239]
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-snb4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-snb2/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglu:         [FAIL][240] ([i915#2876]) -> [FAIL][241] ([i915#2842])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-tglu-9/igt@gem_exec_fair@basic-pace@rcs0.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-3/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [ABORT][242] ([i915#10131] / [i915#9820]) -> [ABORT][243] ([i915#10131] / [i915#10887] / [i915#9820])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          [SKIP][244] ([i915#9433]) -> [SKIP][245] ([i915#9424])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg1-13/igt@kms_content_protection@mei-interface.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-15/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@type1:
    - shard-snb:          [SKIP][246] -> [INCOMPLETE][247] ([i915#8816])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-snb6/igt@kms_content_protection@type1.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-snb7/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg2:          [SKIP][248] ([i915#11453]) -> [SKIP][249] ([i915#11453] / [i915#3359])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg2-7/igt@kms_cursor_crc@cursor-random-512x512.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-dg2:          [SKIP][250] ([i915#11453] / [i915#3359]) -> [SKIP][251] ([i915#11453])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-512x170.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-6/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
    - shard-dg2:          [SKIP][252] ([i915#10433] / [i915#3458]) -> [SKIP][253] ([i915#3458]) +1 other test skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          [SKIP][254] ([i915#3458]) -> [SKIP][255] ([i915#10433] / [i915#3458]) +5 other tests skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][256] ([i915#4816]) -> [SKIP][257] ([i915#4070] / [i915#4816])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-rkl-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_psr@psr-cursor-render:
    - shard-dg2:          [SKIP][258] ([i915#1072] / [i915#9732]) -> [SKIP][259] ([i915#1072] / [i915#9673] / [i915#9732]) +11 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg2-10/igt@kms_psr@psr-cursor-render.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_psr@psr-cursor-render.html

  * igt@kms_psr@psr2-cursor-blt:
    - shard-dg2:          [SKIP][260] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][261] ([i915#1072] / [i915#9732]) +14 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg2-11/igt@kms_psr@psr2-cursor-blt.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-2/igt@kms_psr@psr2-cursor-blt.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-dg2:          [SKIP][262] ([i915#11131] / [i915#4235] / [i915#5190]) -> [SKIP][263] ([i915#11131] / [i915#5190])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_rotation_crc@sprite-rotation-90:
    - shard-dg2:          [SKIP][264] ([i915#11131]) -> [SKIP][265] ([i915#11131] / [i915#4235])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg2-7/igt@kms_rotation_crc@sprite-rotation-90.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-90.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10029]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10029
  [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
  [i915#10166]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10166
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10729]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10729
  [i915#10887]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
  [i915#11131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131
  [i915#11453]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
  [i915#2435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#2876]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2876
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
  [i915#3826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3826
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
  [i915#4348]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4348
  [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
  [i915#4818]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4873]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4873
  [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
  [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
  [i915#4958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4958
  [i915#5176]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
  [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
  [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
  [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
  [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
  [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#7742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
  [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
  [i915#8190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8190
  [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
  [i915#8588]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8588
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
  [i915#8806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806
  [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
  [i915#8816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8816
  [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
  [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
  [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
  [i915#9781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781
  [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
  [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
  [i915#9833]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917


Build changes
-------------

  * Linux: CI_DRM_15085 -> Patchwork_135971v4

  CI-20190529: 20190529
  CI_DRM_15085: 5ed026e3fb07d65872ef64a5428746a0142e13b0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7927: a2ab0ec12ef447c96c67dc539813462b6b39f857 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_135971v4: 5ed026e3fb07d65872ef64a5428746a0142e13b0 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/index.html

--===============7573449751424099136==
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
<tr><td><b>Series:</b></td><td>drm/xe/fbdev: Limit the usage of stolen for LNL+ (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/135971/">https://patchwork.freedesktop.org/series/135971/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15085_full -&gt; Patchwork_135971v4_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (9 -&gt; 10)</h2>
<p>Additional (1): shard-snb-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_135971v4_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_properties@plane-properties-legacy@pipe-b-hdmi-a-3}:<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@kms_properties@plane-properties-legacy@pipe-b-hdmi-a-3.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_135971v4_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@api_intel_bb@crc32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230">i915#6230</a>)</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-4/igt@api_intel_bb@object-reloc-keep-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@vcs1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@drm_fdinfo@busy-idle@vcs1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414">i915#8414</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@vcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@drm_fdinfo@most-busy-check-all@vcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414">i915#8414</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-idle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-4/igt@drm_fdinfo@virtual-idle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742">i915#7742</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_barrier_race@remote-request@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-glk7/igt@gem_barrier_race@remote-request@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-glk3/igt@gem_barrier_race@remote-request@rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8190">i915#8190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_caching@reads:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@gem_caching@reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4873">i915#4873</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-4/igt@gem_ccs@block-copy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-2/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@gem_ctx_persistence@heartbeat-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-2/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gem_eio@kms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@gem_exec_balancer@parallel-ordering.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@sliced:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@gem_exec_balancer@sliced.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-1/igt@gem_exec_capture@capture-recoverable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344">i915#6344</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-rkl-3/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@concurrent:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@gem_exec_fence@concurrent.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-uc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@gem_exec_flush@basic-batch-kernel-default-uc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-wb:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gem_exec_flush@basic-batch-kernel-default-wb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@gem_exec_reloc@basic-gtt-cpu-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-noreloc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-1/igt@gem_exec_reloc@basic-scanout.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@gem_exec_reloc@basic-write-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gem_exec_schedule@preempt-queue.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@gem_exec_schedule@preempt-queue-contexts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537">i915#4537</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-contexts-chain.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537">i915#4537</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-tglu-7/igt@gem_exec_suspend@basic-s4-devices@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213">i915#8213</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-2/igt@gem_exec_suspend@basic-s4-devices@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@2-spare-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@gem_fenced_exec_thrash@2-spare-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gem_fenced_exec_thrash@no-spare-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582">i915#7582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gem_lmem_swapping@heavy-multi@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@gem_lmem_swapping@massive.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@gem_lmem_swapping@parallel-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-glk1/igt@gem_lmem_swapping@verify-random-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@pf-nonblock:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@gem_mmap@pf-nonblock.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@isolation:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@gem_mmap_gtt@isolation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-odd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gem_mmap_gtt@medium-copy-odd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gem_mmap_wc@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-uncached:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gem_partial_pwrite_pread@write-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-random:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@gem_pwrite@basic-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@gem_pxp@create-regular-context-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-1/igt@gem_pxp@reject-modify-context-protection-off-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gem_pxp@reject-modify-context-protection-off-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@gem_pxp@reject-modify-context-protection-on.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gem_set_tiling_vs_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gem_softpin@evict-snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sd-probe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@gem_userptr_blits@sd-probe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4958">i915#4958</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@gem_userptr_blits@unsync-unmap-after-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-glk2/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-glk1/igt@gen9_exec_parse@allowed-single.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566">i915#5566</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@gen9_exec_parse@basic-rejected.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-7/igt@gen9_exec_parse@batch-zero-length.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@gen9_exec_parse@bb-large.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@gen9_exec_parse@bb-start-far.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-2/igt@gen9_exec_parse@unaligned-access.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@i915_pm_rps@min-max-config-idle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-mtlp-2/igt@i915_power@sanity.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-8/igt@i915_power@sanity.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984">i915#7984</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723">i915#5723</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-4/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3826">i915#3826</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709">i915#8709</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-snb5/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-snb5/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-4/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-4/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +75 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-4/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +168 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-13/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +63 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-6/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@dp-audio-edid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@kms_chamelium_audio@dp-audio-edid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-1/igt@kms_chamelium_hpd@dp-hpd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-after-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_content_protection@atomic@pipe-a-dp-4.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-4/igt@kms_content_protection@content-type-change.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-3/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@kms_content_protection@lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_content_protection@srm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116">i915#7116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_content_protection@uevent.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-1/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-max-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_cursor_crc@cursor-random-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809">i915#9809</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833">i915#9833</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8588">i915#8588</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-4/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469">i915#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-1/igt@kms_feature_discovery@chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@kms_feature_discovery@display-2x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-2/igt@kms_feature_discovery@psr1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP</a> +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-snb6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-snb7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_flip@2x-flip-vs-fences-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_flip@flip-vs-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +38 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> +28 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render.html">SKIP</a> +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite.html">SKIP</a> +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-4/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766">i915#9766</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-7/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-1/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806">i915#8806</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-8/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-glk3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1.html">SKIP</a> +116 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-17/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5176">i915#5176</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235">i915#5235</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235">i915#5235</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-7/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235">i915#5235</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235">i915#5235</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-2/igt@kms_pm_backlight@fade-with-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361">i915#3361</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences-dpms:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@kms_pm_rpm@fences-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-3/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@kms_pm_rpm@modeset-pc8-residency-stress.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@kms_prime@d3hot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805">i915#6805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-2/igt@kms_psr2_sf@fbc-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-2/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4348">i915#4348</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-sprite-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@kms_psr@fbc-pr-sprite-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-no-drrs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@kms_psr@fbc-psr-no-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-plane-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_psr@psr2-cursor-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_psr@psr2-sprite-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@kms_psr@psr2-sprite-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131">i915#11131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_setmode@invalid-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196">i915#9196</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@kms_vrr@flip-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-7/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-glk1/igt@kms_writeback@writeback-fb-id.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-1/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-3/igt@perf@per-context-mode-unprivileged.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435">i915#2435</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-8/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#4349</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-4/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@prime_vgem@fence-write-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-18/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@sriov_basic@enable-vfs-autoprobe-off.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@sriov_basic@enable-vfs-autoprobe-off.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-2/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781">i915#9781</a>)</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@tools_test@sysfs_l3_parity.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818">i915#4818</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg1-16/igt@gem_eio@reset-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784">i915#5784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-16/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_big@single:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-tglu-8/igt@gem_exec_big@single.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-8/igt@gem_exec_big@single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear@smem0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-mtlp-4/igt@gem_mmap_offset@clear@smem0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10029">i915#10029</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10729">i915#10729</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-7/igt@gem_mmap_offset@clear@smem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-snb6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@torture-move@pipe-a:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg1-16/igt@kms_cursor_legacy@torture-move@pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10166">i915#10166</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-16/igt@kms_cursor_legacy@torture-move@pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg2-7/igt@kms_dp_aux_dev.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#1257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_dp_aux_dev.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg1-18/igt@kms_properties@plane-properties-legacy@pipe-d-hdmi-a-4.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-17/igt@kms_properties@plane-properties-legacy@pipe-d-hdmi-a-4.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196">i915#9196</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-snb4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196">i915#9196</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-snb2/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-tglu-9/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2876">i915#2876</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-tglu-3/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131">i915#10131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131">i915#10131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887">i915#10887</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg1-13/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433">i915#9433</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg1-15/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-snb6/igt@kms_content_protection@type1.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-snb7/igt@kms_content_protection@type1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8816">i915#8816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg2-7/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359">i915#3359</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-6/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-rkl-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg2-10/igt@kms_psr@psr-cursor-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_psr@psr-cursor-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg2-11/igt@kms_psr@psr2-cursor-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-2/igt@kms_psr@psr2-cursor-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131">i915#11131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235">i915#4235</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131">i915#11131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15085/shard-dg2-7/igt@kms_rotation_crc@sprite-rotation-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131">i915#11131</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135971v4/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131">i915#11131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235">i915#4235</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15085 -&gt; Patchwork_135971v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15085: 5ed026e3fb07d65872ef64a5428746a0142e13b0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7927: a2ab0ec12ef447c96c67dc539813462b6b39f857 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_135971v4: 5ed026e3fb07d65872ef64a5428746a0142e13b0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============7573449751424099136==--
