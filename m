Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30CA9CC77A2
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 13:04:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A833810ECCD;
	Wed, 17 Dec 2025 12:04:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F030910ECB6;
 Wed, 17 Dec 2025 12:03:58 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2926774378677621431=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/gt=3A_use_desig?=
 =?utf-8?q?nated_initializers_for_intel=5Fgt=5Fdebugfs=5Ffile_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sebastian Brzezinka" <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Dec 2025 12:03:58 -0000
Message-ID: <176597303896.97631.12852918908528754241@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <bae491e8098705a87304a7c94573b377e8c8fa37.1765897826.git.sebastian.brzezinka@intel.com>
In-Reply-To: <bae491e8098705a87304a7c94573b377e8c8fa37.1765897826.git.sebastian.brzezinka@intel.com>
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

--===============2926774378677621431==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: use designated initializers for intel_gt_debugfs_file (rev5)
URL   : https://patchwork.freedesktop.org/series/158761/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17694_full -> Patchwork_158761v5_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_158761v5_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_158761v5_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_158761v5_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@engines:
    - shard-dg1:          [PASS][1] -> [ABORT][2] +1 other test abort
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-17/igt@gem_exec_parallel@engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-14/igt@gem_exec_parallel@engines.html

  * igt@gem_mmap_offset@clear@lmem0:
    - shard-dg2:          [PASS][3] -> [INCOMPLETE][4] +1 other test incomplete
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-3/igt@gem_mmap_offset@clear@lmem0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-1/igt@gem_mmap_offset@clear@lmem0.html

  
New tests
---------

  New tests have been introduced between CI_DRM_17694_full and Patchwork_158761v5_full:

### New IGT tests (40) ###

  * igt@kms_properties@addfb25-modifier-no-flag:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@bad-close:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@bad-flag:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@basic-busy-all:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@basic-normal:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@bo-copy:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@cliprects_ptr-dirt:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@cursora-vs-flipa-atomic-transitions:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@cursora-vs-flipa-legacy:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@display-on-read-all:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@engines-queued:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@fbc-1p-rte:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@fbc-2p-primscrn-cur-indfb-move:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@fbcpsr-2p-primscrn-pri-indfb-draw-blt:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@huc-copy:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@independent:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@load:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@main:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@master-drop-set-user:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@master-vs-lease:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@multi-wait-all-for-submit-available-submitted-signaled:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@multi-wait-for-submit-unsubmitted-submitted-signaled:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@non-system-wide-paranoid:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@nonpriv:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@object-noreloc-keep-cache-simple:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@plane-upscale-20x20-with-pixel-format:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@primary-yf-tiled-reflect-x-0:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@psr-2p-primscrn-pri-shrfb-draw-pwrite:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@regular-baseline-src-copy-readible:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@reset-multiple-signaled:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@set-priority-range:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@shrink:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@system-suspend-modeset:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@x-tiled-max-hw-stride-64bpp-rotate-180:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@y-tiled-ccs-to-x-tiled:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@y-tiled-ccs-to-y-tiled-ccs:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_properties@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_158761v5_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@cold-reset-bound:
    - shard-rkl:          NOTRUN -> [SKIP][5] ([i915#11078])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@device_reset@cold-reset-bound.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-tglu:         NOTRUN -> [SKIP][6] ([i915#9323])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-tglu-1:       NOTRUN -> [SKIP][7] ([i915#9323])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@suspend-resume:
    - shard-rkl:          NOTRUN -> [SKIP][8] ([i915#9323])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@gem_ccs@suspend-resume.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#7697])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@gem_close_race@multigpu-basic-threads.html
    - shard-tglu:         NOTRUN -> [SKIP][10] ([i915#7697])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-tglu:         NOTRUN -> [SKIP][11] ([i915#280])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-rkl:          NOTRUN -> [SKIP][12] ([i915#280])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_balancer@noheartbeat:
    - shard-dg2:          NOTRUN -> [SKIP][13] ([i915#8555])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@gem_exec_balancer@noheartbeat.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-rkl:          NOTRUN -> [SKIP][14] ([i915#4525])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-tglu-1:       NOTRUN -> [SKIP][15] ([i915#6344])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_fence@submit67:
    - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#4812])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@gem_exec_fence@submit67.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-dg2:          NOTRUN -> [SKIP][17] ([i915#3539] / [i915#4852]) +1 other test skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_reloc@basic-write-gtt-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][18] ([i915#3281]) +5 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@gem_exec_reloc@basic-write-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-write-wc-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#3281]) +3 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@gem_exec_reloc@basic-write-wc-noreloc.html

  * igt@gem_exec_schedule@preempt-queue-contexts:
    - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#4537] / [i915#4812])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@gem_exec_schedule@preempt-queue-contexts.html

  * igt@gem_huc_copy@huc-copy:
    - shard-glk:          NOTRUN -> [SKIP][21] ([i915#2190])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-glk6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@random:
    - shard-glk:          NOTRUN -> [SKIP][22] ([i915#4613]) +2 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-glk6/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-tglu-1:       NOTRUN -> [SKIP][23] ([i915#4613])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_lmem_swapping@verify:
    - shard-rkl:          NOTRUN -> [SKIP][24] ([i915#4613]) +1 other test skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@gem_lmem_swapping@verify.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][25] ([i915#4613])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_media_fill@media-fill:
    - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#8289])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@gem_media_fill@media-fill.html

  * igt@gem_mmap_gtt@hang:
    - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#4077]) +6 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@gem_mmap_gtt@hang.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-rkl:          NOTRUN -> [SKIP][28] ([i915#3282]) +3 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pwrite@basic-random:
    - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#3282]) +3 other tests skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@gem_pwrite@basic-random.html

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - shard-rkl:          NOTRUN -> [SKIP][30] ([i915#13717])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@gem_pxp@hw-rejects-pxp-buffer.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-rkl:          [PASS][31] -> [ABORT][32] ([i915#15131])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-4/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-1/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_pxp@verify-pxp-stale-buf-execution:
    - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#4270]) +1 other test skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@gem_pxp@verify-pxp-stale-buf-execution.html

  * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#5190] / [i915#8428]) +3 other tests skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-rkl:          NOTRUN -> [SKIP][35] ([i915#8411])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#4079]) +1 other test skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#4885])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@gem_softpin@evict-snoop.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-glk:          NOTRUN -> [SKIP][38] ([i915#3323])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-glk6/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#3282] / [i915#3297])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#3297]) +1 other test skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@gem_userptr_blits@readonly-unsync.html
    - shard-tglu:         NOTRUN -> [SKIP][41] ([i915#3297])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@gem_userptr_blits@readonly-unsync.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#3297])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-tglu-1:       NOTRUN -> [SKIP][43] ([i915#3297])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-tglu:         NOTRUN -> [SKIP][44] ([i915#2527] / [i915#2856]) +1 other test skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#2527]) +2 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@gen9_exec_parse@bb-chained.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-tglu-1:       NOTRUN -> [SKIP][46] ([i915#2527] / [i915#2856]) +1 other test skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@gen9_exec_parse@shadow-peek.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#2856]) +1 other test skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_drm_fdinfo@busy-idle@vcs0:
    - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#14073]) +7 other tests skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@i915_drm_fdinfo@busy-idle@vcs0.html

  * igt@i915_module_load@load:
    - shard-dg1:          ([PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73]) -> ([PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [SKIP][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [SKIP][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [SKIP][93], [PASS][94]) ([i915#14785])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-12/igt@i915_module_load@load.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-15/igt@i915_module_load@load.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-18/igt@i915_module_load@load.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-12/igt@i915_module_load@load.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-15/igt@i915_module_load@load.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-18/igt@i915_module_load@load.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-17/igt@i915_module_load@load.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-13/igt@i915_module_load@load.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-18/igt@i915_module_load@load.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-12/igt@i915_module_load@load.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-14/igt@i915_module_load@load.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-14/igt@i915_module_load@load.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-15/igt@i915_module_load@load.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-19/igt@i915_module_load@load.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-17/igt@i915_module_load@load.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-15/igt@i915_module_load@load.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-13/igt@i915_module_load@load.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-19/igt@i915_module_load@load.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-16/igt@i915_module_load@load.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-14/igt@i915_module_load@load.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-13/igt@i915_module_load@load.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-16/igt@i915_module_load@load.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-16/igt@i915_module_load@load.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-17/igt@i915_module_load@load.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-13/igt@i915_module_load@load.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-19/igt@i915_module_load@load.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-15/igt@i915_module_load@load.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-19/igt@i915_module_load@load.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-15/igt@i915_module_load@load.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-18/igt@i915_module_load@load.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-13/igt@i915_module_load@load.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-12/igt@i915_module_load@load.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-16/igt@i915_module_load@load.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-17/igt@i915_module_load@load.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-13/igt@i915_module_load@load.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-14/igt@i915_module_load@load.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-12/igt@i915_module_load@load.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-17/igt@i915_module_load@load.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-16/igt@i915_module_load@load.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-14/igt@i915_module_load@load.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-19/igt@i915_module_load@load.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-12/igt@i915_module_load@load.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-12/igt@i915_module_load@load.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-14/igt@i915_module_load@load.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-13/igt@i915_module_load@load.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-19/igt@i915_module_load@load.html
    - shard-tglu:         ([PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104], [PASS][105], [PASS][106], [PASS][107], [PASS][108], [PASS][109], [PASS][110], [PASS][111], [PASS][112], [PASS][113], [PASS][114], [PASS][115], [PASS][116], [PASS][117]) -> ([PASS][118], [PASS][119], [PASS][120], [PASS][121], [PASS][122], [PASS][123], [PASS][124], [PASS][125], [PASS][126], [PASS][127], [PASS][128], [PASS][129], [PASS][130], [PASS][131], [PASS][132], [SKIP][133], [PASS][134], [PASS][135], [PASS][136], [SKIP][137], [PASS][138]) ([i915#14785])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-6/igt@i915_module_load@load.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-6/igt@i915_module_load@load.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-2/igt@i915_module_load@load.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-6/igt@i915_module_load@load.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-8/igt@i915_module_load@load.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-7/igt@i915_module_load@load.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-10/igt@i915_module_load@load.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-5/igt@i915_module_load@load.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-2/igt@i915_module_load@load.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-5/igt@i915_module_load@load.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-8/igt@i915_module_load@load.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-10/igt@i915_module_load@load.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-4/igt@i915_module_load@load.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-7/igt@i915_module_load@load.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-2/igt@i915_module_load@load.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-9/igt@i915_module_load@load.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-4/igt@i915_module_load@load.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-10/igt@i915_module_load@load.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-9/igt@i915_module_load@load.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-4/igt@i915_module_load@load.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-3/igt@i915_module_load@load.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-3/igt@i915_module_load@load.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-9/igt@i915_module_load@load.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@i915_module_load@load.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-4/igt@i915_module_load@load.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-10/igt@i915_module_load@load.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@i915_module_load@load.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-10/igt@i915_module_load@load.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-4/igt@i915_module_load@load.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-10/igt@i915_module_load@load.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@i915_module_load@load.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-9/igt@i915_module_load@load.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@i915_module_load@load.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-7/igt@i915_module_load@load.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-5/igt@i915_module_load@load.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-3/igt@i915_module_load@load.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-9/igt@i915_module_load@load.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-5/igt@i915_module_load@load.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-3/igt@i915_module_load@load.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@i915_module_load@load.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-5/igt@i915_module_load@load.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@i915_module_load@load.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-4/igt@i915_module_load@load.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-6/igt@i915_module_load@load.html
    - shard-glk:          ([PASS][139], [PASS][140], [PASS][141], [PASS][142], [PASS][143]) -> ([PASS][144], [PASS][145], [PASS][146], [SKIP][147], [PASS][148])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-glk9/igt@i915_module_load@load.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-glk9/igt@i915_module_load@load.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-glk6/igt@i915_module_load@load.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-glk6/igt@i915_module_load@load.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-glk5/igt@i915_module_load@load.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-glk5/igt@i915_module_load@load.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-glk6/igt@i915_module_load@load.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-glk6/igt@i915_module_load@load.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-glk8/igt@i915_module_load@load.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-glk9/igt@i915_module_load@load.html
    - shard-mtlp:         ([PASS][149], [PASS][150], [PASS][151], [PASS][152], [PASS][153], [PASS][154], [PASS][155], [PASS][156], [PASS][157], [PASS][158], [PASS][159], [PASS][160], [PASS][161], [PASS][162], [PASS][163], [PASS][164], [PASS][165], [PASS][166], [PASS][167], [PASS][168], [PASS][169], [PASS][170], [PASS][171], [PASS][172], [PASS][173]) -> ([PASS][174], [PASS][175], [PASS][176], [SKIP][177], [PASS][178], [PASS][179], [PASS][180], [PASS][181], [PASS][182], [PASS][183], [PASS][184], [PASS][185], [PASS][186], [PASS][187], [PASS][188], [PASS][189], [PASS][190], [SKIP][191], [PASS][192], [SKIP][193], [SKIP][194]) ([i915#14785])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-4/igt@i915_module_load@load.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-2/igt@i915_module_load@load.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-8/igt@i915_module_load@load.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-8/igt@i915_module_load@load.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-6/igt@i915_module_load@load.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-4/igt@i915_module_load@load.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-7/igt@i915_module_load@load.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-5/igt@i915_module_load@load.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-2/igt@i915_module_load@load.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-8/igt@i915_module_load@load.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-6/igt@i915_module_load@load.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-3/igt@i915_module_load@load.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-8/igt@i915_module_load@load.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-7/igt@i915_module_load@load.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-6/igt@i915_module_load@load.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-7/igt@i915_module_load@load.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-7/igt@i915_module_load@load.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-3/igt@i915_module_load@load.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-2/igt@i915_module_load@load.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-4/igt@i915_module_load@load.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-5/igt@i915_module_load@load.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-3/igt@i915_module_load@load.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-5/igt@i915_module_load@load.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-6/igt@i915_module_load@load.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-2/igt@i915_module_load@load.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-3/igt@i915_module_load@load.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-2/igt@i915_module_load@load.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-7/igt@i915_module_load@load.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-5/igt@i915_module_load@load.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-7/igt@i915_module_load@load.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-4/igt@i915_module_load@load.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-6/igt@i915_module_load@load.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-2/igt@i915_module_load@load.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-5/igt@i915_module_load@load.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-8/igt@i915_module_load@load.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-3/igt@i915_module_load@load.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-5/igt@i915_module_load@load.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-3/igt@i915_module_load@load.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-7/igt@i915_module_load@load.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-8/igt@i915_module_load@load.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-2/igt@i915_module_load@load.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-3/igt@i915_module_load@load.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-8/igt@i915_module_load@load.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-4/igt@i915_module_load@load.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-6/igt@i915_module_load@load.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-4/igt@i915_module_load@load.html
    - shard-glk10:        [PASS][195] -> [SKIP][196]
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-glk10/igt@i915_module_load@load.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-glk10/igt@i915_module_load@load.html
    - shard-dg2:          ([PASS][197], [PASS][198], [PASS][199], [PASS][200], [PASS][201], [PASS][202], [PASS][203], [PASS][204], [PASS][205], [PASS][206], [PASS][207], [PASS][208], [PASS][209], [PASS][210], [PASS][211], [PASS][212], [PASS][213], [PASS][214], [PASS][215], [PASS][216], [PASS][217], [PASS][218], [PASS][219], [PASS][220]) -> ([PASS][221], [PASS][222], [PASS][223], [PASS][224], [PASS][225], [PASS][226], [PASS][227], [PASS][228], [PASS][229], [PASS][230], [PASS][231], [PASS][232], [PASS][233], [PASS][234], [PASS][235], [PASS][236], [PASS][237], [PASS][238], [PASS][239], [SKIP][240], [SKIP][241], [PASS][242], [PASS][243]) ([i915#14785])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-6/igt@i915_module_load@load.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-6/igt@i915_module_load@load.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-6/igt@i915_module_load@load.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-5/igt@i915_module_load@load.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-7/igt@i915_module_load@load.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-5/igt@i915_module_load@load.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-4/igt@i915_module_load@load.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-7/igt@i915_module_load@load.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-4/igt@i915_module_load@load.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-7/igt@i915_module_load@load.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-3/igt@i915_module_load@load.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-3/igt@i915_module_load@load.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-7/igt@i915_module_load@load.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-3/igt@i915_module_load@load.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-1/igt@i915_module_load@load.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-8/igt@i915_module_load@load.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-1/igt@i915_module_load@load.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-8/igt@i915_module_load@load.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-1/igt@i915_module_load@load.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-11/igt@i915_module_load@load.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-11/igt@i915_module_load@load.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-8/igt@i915_module_load@load.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-11/igt@i915_module_load@load.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-11/igt@i915_module_load@load.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@i915_module_load@load.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@i915_module_load@load.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-4/igt@i915_module_load@load.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@i915_module_load@load.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-4/igt@i915_module_load@load.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@i915_module_load@load.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-8/igt@i915_module_load@load.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-5/igt@i915_module_load@load.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-4/igt@i915_module_load@load.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-1/igt@i915_module_load@load.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@i915_module_load@load.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@i915_module_load@load.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-7/igt@i915_module_load@load.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@i915_module_load@load.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-1/igt@i915_module_load@load.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-4/igt@i915_module_load@load.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-8/igt@i915_module_load@load.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-5/igt@i915_module_load@load.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-5/igt@i915_module_load@load.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-8/igt@i915_module_load@load.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@i915_module_load@load.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@i915_module_load@load.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-1/igt@i915_module_load@load.html
    - shard-rkl:          ([PASS][244], [PASS][245], [PASS][246], [PASS][247], [PASS][248], [PASS][249], [PASS][250], [PASS][251], [PASS][252], [PASS][253], [PASS][254], [PASS][255], [PASS][256], [PASS][257], [PASS][258], [PASS][259], [PASS][260], [PASS][261], [PASS][262], [PASS][263], [PASS][264], [PASS][265], [PASS][266], [PASS][267]) -> ([SKIP][268], [SKIP][269], [PASS][270], [PASS][271], [PASS][272], [PASS][273], [PASS][274], [PASS][275], [PASS][276], [PASS][277], [PASS][278], [PASS][279], [PASS][280], [PASS][281], [PASS][282], [PASS][283], [PASS][284], [PASS][285], [PASS][286], [PASS][287], [PASS][288], [PASS][289]) ([i915#14785])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-3/igt@i915_module_load@load.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-8/igt@i915_module_load@load.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-8/igt@i915_module_load@load.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-3/igt@i915_module_load@load.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-3/igt@i915_module_load@load.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-8/igt@i915_module_load@load.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-4/igt@i915_module_load@load.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-7/igt@i915_module_load@load.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-7/igt@i915_module_load@load.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-3/igt@i915_module_load@load.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-4/igt@i915_module_load@load.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-7/igt@i915_module_load@load.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-1/igt@i915_module_load@load.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@i915_module_load@load.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-2/igt@i915_module_load@load.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-4/igt@i915_module_load@load.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@i915_module_load@load.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@i915_module_load@load.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@i915_module_load@load.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@i915_module_load@load.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-2/igt@i915_module_load@load.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-2/igt@i915_module_load@load.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@i915_module_load@load.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@i915_module_load@load.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@i915_module_load@load.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@i915_module_load@load.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-3/igt@i915_module_load@load.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@i915_module_load@load.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@i915_module_load@load.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-1/igt@i915_module_load@load.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-8/igt@i915_module_load@load.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@i915_module_load@load.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@i915_module_load@load.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-1/igt@i915_module_load@load.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@i915_module_load@load.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-3/igt@i915_module_load@load.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-7/igt@i915_module_load@load.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@i915_module_load@load.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@i915_module_load@load.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-7/igt@i915_module_load@load.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@i915_module_load@load.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@i915_module_load@load.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-7/igt@i915_module_load@load.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-3/igt@i915_module_load@load.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-7/igt@i915_module_load@load.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-3/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [PASS][290] -> [ABORT][291] ([i915#15342])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg2:          [PASS][292] -> [ABORT][293] ([i915#15342])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-4/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-tglu-1:       NOTRUN -> [SKIP][294] ([i915#8399])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_rc6_residency@rc6-accuracy:
    - shard-dg2:          [PASS][295] -> [FAIL][296] ([i915#12964]) +1 other test fail
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-6/igt@i915_pm_rc6_residency@rc6-accuracy.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-5/igt@i915_pm_rc6_residency@rc6-accuracy.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-rkl:          [PASS][297] -> [ABORT][298] ([i915#15060])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-7/igt@i915_pm_rpm@system-suspend-execbuf.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-1/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-dg2:          NOTRUN -> [SKIP][299] ([i915#11681] / [i915#6621])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_pm_rps@thresholds-park:
    - shard-dg2:          NOTRUN -> [SKIP][300] ([i915#11681])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@i915_pm_rps@thresholds-park.html

  * igt@i915_query@hwconfig_table:
    - shard-tglu:         NOTRUN -> [SKIP][301] ([i915#6245])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@i915_query@hwconfig_table.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          NOTRUN -> [SKIP][302] ([i915#5723])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_selftest@live@workarounds:
    - shard-dg2:          [PASS][303] -> [DMESG-FAIL][304] ([i915#12061]) +1 other test dmesg-fail
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-6/igt@i915_selftest@live@workarounds.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-5/igt@i915_selftest@live@workarounds.html

  * igt@i915_suspend@debugfs-reader:
    - shard-rkl:          [PASS][305] -> [INCOMPLETE][306] ([i915#4817])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@i915_suspend@debugfs-reader.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-3/igt@i915_suspend@debugfs-reader.html

  * igt@intel_hwmon@hwmon-write:
    - shard-tglu:         NOTRUN -> [SKIP][307] ([i915#7707])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@clobberred-modifier:
    - shard-dg2:          NOTRUN -> [SKIP][308] ([i915#4212])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_addfb_basic@clobberred-modifier.html

  * igt@kms_async_flips@async-flip-dpms:
    - shard-dg1:          [PASS][309] -> [DMESG-WARN][310] ([i915#4423])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-15/igt@kms_async_flips@async-flip-dpms.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-15/igt@kms_async_flips@async-flip-dpms.html

  * igt@kms_async_flips@async-flip-suspend-resume:
    - shard-glk:          NOTRUN -> [INCOMPLETE][311] ([i915#12761])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-glk5/igt@kms_async_flips@async-flip-suspend-resume.html

  * igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][312] ([i915#12761] / [i915#14995])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-glk5/igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-tglu-1:       NOTRUN -> [SKIP][313] ([i915#9531])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-rkl:          NOTRUN -> [SKIP][314] ([i915#1769] / [i915#3555])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][315] ([i915#5286]) +3 other tests skip
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-tglu-1:       NOTRUN -> [SKIP][316] ([i915#5286]) +2 other tests skip
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][317] ([i915#5286]) +1 other test skip
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         [PASS][318] -> [FAIL][319] ([i915#5138])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][320] ([i915#3638]) +1 other test skip
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][321] +2 other tests skip
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][322] ([i915#4538] / [i915#5190]) +5 other tests skip
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][323] ([i915#14098] / [i915#14544] / [i915#6095]) +6 other tests skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][324] ([i915#12313])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][325] ([i915#6095]) +29 other tests skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_ccs@crc-primary-basic-y-tiled-ccs.html

  * igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][326] ([i915#10307] / [i915#6095]) +98 other tests skip
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-a-dp-3.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][327] +182 other tests skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-glk6/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][328] ([i915#6095]) +73 other tests skip
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1:
    - shard-glk10:        NOTRUN -> [SKIP][329] +118 other tests skip
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-glk10/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][330] ([i915#12796]) +1 other test incomplete
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-glk6/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:
    - shard-rkl:          [PASS][331] -> [INCOMPLETE][332] ([i915#12796])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][333] ([i915#12796])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-c-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][334] ([i915#6095]) +67 other tests skip
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-c-dp-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][335] ([i915#6095]) +39 other tests skip
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][336] ([i915#14098] / [i915#6095]) +46 other tests skip
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][337] ([i915#14544] / [i915#6095]) +13 other tests skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][338] ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-4/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][339] ([i915#12313]) +1 other test skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-7/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
    - shard-tglu-1:       NOTRUN -> [SKIP][340] ([i915#12313]) +1 other test skip
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][341] ([i915#6095]) +155 other tests skip
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-13/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-tglu:         NOTRUN -> [SKIP][342] ([i915#3742])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@kms_cdclk@mode-transition-all-outputs.html
    - shard-dg2:          NOTRUN -> [SKIP][343] ([i915#13784])
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@plane-scaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][344] ([i915#3742])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_cdclk@plane-scaling.html

  * igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][345] ([i915#13783]) +4 other tests skip
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html

  * igt@kms_chamelium_edid@hdmi-mode-timings:
    - shard-tglu:         NOTRUN -> [SKIP][346] ([i915#11151] / [i915#7828]) +3 other tests skip
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@kms_chamelium_edid@hdmi-mode-timings.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][347] ([i915#11151] / [i915#7828]) +3 other tests skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@dp-hpd-storm:
    - shard-rkl:          NOTRUN -> [SKIP][348] ([i915#11151] / [i915#7828]) +4 other tests skip
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@kms_chamelium_hpd@dp-hpd-storm.html

  * igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][349] ([i915#11151] / [i915#7828]) +3 other tests skip
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode.html

  * igt@kms_content_protection@atomic:
    - shard-tglu:         NOTRUN -> [SKIP][350] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][351] ([i915#7173]) +1 other test fail
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_content_protection@atomic-dpms@pipe-a-dp-3.html

  * igt@kms_content_protection@mei-interface:
    - shard-tglu-1:       NOTRUN -> [SKIP][352] ([i915#6944] / [i915#9424])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@suspend-resume:
    - shard-rkl:          NOTRUN -> [SKIP][353] ([i915#6944])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_content_protection@suspend-resume.html

  * igt@kms_content_protection@type1:
    - shard-tglu-1:       NOTRUN -> [SKIP][354] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][355] ([i915#13049])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@kms_cursor_crc@cursor-offscreen-512x170.html
    - shard-dg2:          NOTRUN -> [SKIP][356] ([i915#13049])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85:
    - shard-tglu:         NOTRUN -> [FAIL][357] ([i915#13566]) +1 other test fail
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@kms_cursor_crc@cursor-onscreen-256x85.html

  * igt@kms_cursor_crc@cursor-onscreen-64x21:
    - shard-rkl:          NOTRUN -> [FAIL][358] ([i915#13566]) +2 other tests fail
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-64x21.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-tglu-1:       NOTRUN -> [SKIP][359] ([i915#13049])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][360] ([i915#13049]) +1 other test skip
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_crc@cursor-suspend:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][361] ([i915#12358] / [i915#14152] / [i915#7882])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-glk10/igt@kms_cursor_crc@cursor-suspend.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][362] ([i915#12358] / [i915#14152])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-glk10/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][363] +12 other tests skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][364] ([i915#13046] / [i915#5354])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][365] -> [FAIL][366] ([i915#2346])
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][367] ([i915#4103] / [i915#4213])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
    - shard-rkl:          NOTRUN -> [SKIP][368] ([i915#4103]) +1 other test skip
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-tglu:         NOTRUN -> [SKIP][369] ([i915#1769] / [i915#3555] / [i915#3804])
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
    - shard-dg2:          [PASS][370] -> [SKIP][371] ([i915#3555])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][372] ([i915#3804])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][373] ([i915#14544] / [i915#3804])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-dg2:          NOTRUN -> [SKIP][374] ([i915#13707])
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_dp_linktrain_fallback@dp-fallback.html
    - shard-tglu:         NOTRUN -> [SKIP][375] ([i915#13707])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][376] ([i915#3555] / [i915#3840])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_feature_discovery@chamelium:
    - shard-tglu-1:       NOTRUN -> [SKIP][377] ([i915#2065] / [i915#4854])
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-3x:
    - shard-tglu:         NOTRUN -> [SKIP][378] ([i915#1839])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-rkl:          NOTRUN -> [SKIP][379] ([i915#9337])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-absolute-wf_vblank-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][380] ([i915#9934])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-tglu-1:       NOTRUN -> [SKIP][381] ([i915#3637] / [i915#9934]) +2 other tests skip
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-plain-flip:
    - shard-tglu:         NOTRUN -> [SKIP][382] ([i915#3637] / [i915#9934]) +3 other tests skip
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@kms_flip@2x-plain-flip.html
    - shard-dg2:          NOTRUN -> [SKIP][383] ([i915#9934]) +1 other test skip
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1:
    - shard-tglu:         [PASS][384] -> [FAIL][385] ([i915#14600]) +1 other test fail
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-2/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-3/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-snb:          [PASS][386] -> [ABORT][387] ([i915#14871]) +1 other test abort
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-snb7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-snb1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible:
    - shard-rkl:          [PASS][388] -> [FAIL][389] ([i915#10826])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-4/igt@kms_flip@wf_vblank-ts-check-interruptible.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@kms_flip@wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1:
    - shard-rkl:          NOTRUN -> [FAIL][390] ([i915#10826])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][391] ([i915#2672] / [i915#3555]) +1 other test skip
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html
    - shard-dg2:          NOTRUN -> [SKIP][392] ([i915#2672] / [i915#3555])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][393] ([i915#2587] / [i915#2672] / [i915#3555])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][394] ([i915#2672]) +2 other tests skip
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][395] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
    - shard-tglu-1:       NOTRUN -> [SKIP][396] ([i915#2587] / [i915#2672] / [i915#3555])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][397] ([i915#2587] / [i915#2672])
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][398] ([i915#2672] / [i915#3555])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][399] ([i915#2672])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][400] ([i915#2587] / [i915#2672]) +2 other tests skip
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][401] ([i915#15104])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
    - shard-snb:          [PASS][402] -> [SKIP][403]
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][404] ([i915#1825]) +28 other tests skip
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][405] +22 other tests skip
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-tglu-1:       NOTRUN -> [SKIP][406] +32 other tests skip
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [FAIL][407] ([i915#6880])
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt:
    - shard-tglu:         NOTRUN -> [SKIP][408] ([i915#15102]) +12 other tests skip
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][409] ([i915#8708]) +5 other tests skip
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-tglu:         NOTRUN -> [SKIP][410] ([i915#5439])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt:
    - shard-rkl:          NOTRUN -> [SKIP][411] ([i915#15102]) +1 other test skip
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt:
    - shard-tglu-1:       NOTRUN -> [SKIP][412] ([i915#15102]) +10 other tests skip
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][413] ([i915#15102])
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][414] ([i915#15102] / [i915#3023]) +13 other tests skip
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff:
    - shard-dg2:          NOTRUN -> [SKIP][415] ([i915#15102] / [i915#3458]) +8 other tests skip
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][416] ([i915#5354]) +11 other tests skip
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_hdr@bpc-switch:
    - shard-tglu:         NOTRUN -> [SKIP][417] ([i915#3555] / [i915#8228])
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@kms_hdr@bpc-switch.html
    - shard-dg2:          NOTRUN -> [SKIP][418] ([i915#3555] / [i915#8228])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@static-swap:
    - shard-rkl:          NOTRUN -> [SKIP][419] ([i915#3555] / [i915#8228])
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@kms_hdr@static-swap.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-rkl:          [PASS][420] -> [SKIP][421] ([i915#3555] / [i915#8228]) +1 other test skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@kms_hdr@static-toggle-dpms.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][422] ([i915#12388])
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][423] ([i915#10656])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][424] ([i915#12339])
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][425] ([i915#10656])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][426] ([i915#10656] / [i915#12388])
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-7/igt@kms_joiner@invalid-modeset-force-big-joiner.html
    - shard-tglu-1:       NOTRUN -> [SKIP][427] ([i915#10656] / [i915#12388])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][428] ([i915#12394]) +1 other test skip
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          NOTRUN -> [SKIP][429] ([i915#1839] / [i915#4816])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][430] ([i915#6301])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_panel_fitting@legacy.html
    - shard-rkl:          NOTRUN -> [SKIP][431] ([i915#6301])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb:
    - shard-glk:          NOTRUN -> [FAIL][432] ([i915#10647] / [i915#12169])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-glk5/igt@kms_plane_alpha_blend@alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][433] ([i915#10647]) +1 other test fail
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-glk5/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb:
    - shard-glk10:        NOTRUN -> [FAIL][434] ([i915#10647] / [i915#12177])
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-glk10/igt@kms_plane_alpha_blend@alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:
    - shard-glk10:        NOTRUN -> [FAIL][435] ([i915#10647]) +1 other test fail
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-glk10/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-rkl:          NOTRUN -> [SKIP][436] ([i915#3555]) +2 other tests skip
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_multiple@2x-tiling-4:
    - shard-tglu:         NOTRUN -> [SKIP][437] ([i915#13958])
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@kms_plane_multiple@2x-tiling-4.html

  * igt@kms_plane_multiple@2x-tiling-y:
    - shard-rkl:          NOTRUN -> [SKIP][438] ([i915#13958])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@kms_plane_multiple@2x-tiling-y.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-tglu:         NOTRUN -> [SKIP][439] ([i915#14259])
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@kms_plane_multiple@tiling-yf.html
    - shard-dg2:          NOTRUN -> [SKIP][440] ([i915#14259])
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][441] ([i915#15329]) +7 other tests skip
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][442] ([i915#12343])
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][443] ([i915#5354])
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-tglu-1:       NOTRUN -> [SKIP][444] ([i915#9685])
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-tglu:         NOTRUN -> [SKIP][445] ([i915#3828])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg2:          [PASS][446] -> [SKIP][447] ([i915#9340])
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-4/igt@kms_pm_lpsp@kms-lpsp.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_pm_lpsp@kms-lpsp.html
    - shard-rkl:          NOTRUN -> [SKIP][448] ([i915#3828])
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][449] ([i915#15073])
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [PASS][450] -> [SKIP][451] ([i915#15073]) +1 other test skip
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
    - shard-tglu:         NOTRUN -> [SKIP][452] ([i915#15073])
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [PASS][453] -> [SKIP][454] ([i915#15073]) +1 other test skip
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_prime@d3hot:
    - shard-tglu-1:       NOTRUN -> [SKIP][455] ([i915#6524])
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_prime@d3hot.html

  * igt@kms_properties@plane-properties-atomic:
    - shard-dg1:          [PASS][456] -> [ABORT][457] ([i915#13562]) +1 other test abort
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-16/igt@kms_properties@plane-properties-atomic.html
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-15/igt@kms_properties@plane-properties-atomic.html

  * igt@kms_properties@plane-properties-atomic@pipe-b-hdmi-a-4:
    - shard-dg1:          [PASS][458] -> [DMESG-WARN][459] ([i915#13562])
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-16/igt@kms_properties@plane-properties-atomic@pipe-b-hdmi-a-4.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-15/igt@kms_properties@plane-properties-atomic@pipe-b-hdmi-a-4.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:
    - shard-tglu:         NOTRUN -> [SKIP][460] ([i915#11520]) +3 other tests skip
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][461] ([i915#11520]) +5 other tests skip
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
    - shard-tglu-1:       NOTRUN -> [SKIP][462] ([i915#11520]) +4 other tests skip
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-plane-move-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][463] ([i915#11520]) +7 other tests skip
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-glk6/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area:
    - shard-glk10:        NOTRUN -> [SKIP][464] ([i915#11520]) +2 other tests skip
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-glk10/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:
    - shard-dg2:          NOTRUN -> [SKIP][465] ([i915#11520]) +2 other tests skip
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][466] ([i915#9683])
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_psr2_su@frontbuffer-xrgb8888.html
    - shard-tglu:         NOTRUN -> [SKIP][467] ([i915#9683])
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@fbc-psr-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][468] ([i915#1072] / [i915#9732]) +9 other tests skip
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_psr@fbc-psr-suspend.html

  * igt@kms_psr@pr-cursor-plane-onoff:
    - shard-tglu-1:       NOTRUN -> [SKIP][469] ([i915#9732]) +8 other tests skip
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_psr@pr-cursor-plane-onoff.html

  * igt@kms_psr@pr-sprite-render:
    - shard-rkl:          NOTRUN -> [SKIP][470] ([i915#1072] / [i915#9732]) +13 other tests skip
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_psr@pr-sprite-render.html

  * igt@kms_psr@psr2-cursor-plane-onoff:
    - shard-tglu:         NOTRUN -> [SKIP][471] ([i915#9732]) +10 other tests skip
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@kms_psr@psr2-cursor-plane-onoff.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          NOTRUN -> [SKIP][472] ([i915#9685]) +1 other test skip
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
    - shard-dg2:          NOTRUN -> [SKIP][473] ([i915#9685])
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][474] ([i915#12755] / [i915#5190])
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-rkl:          NOTRUN -> [SKIP][475] ([i915#5289])
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-dg2:          NOTRUN -> [SKIP][476] ([i915#12755]) +1 other test skip
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-tglu-1:       NOTRUN -> [SKIP][477] ([i915#3555]) +2 other tests skip
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_setmode@clone-exclusive-crtc.html
    - shard-dg2:          NOTRUN -> [SKIP][478] ([i915#3555])
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-glk:          NOTRUN -> [FAIL][479] ([i915#10959])
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-glk1/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-rkl:          NOTRUN -> [SKIP][480] ([i915#9906])
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@kms_vrr@flip-basic-fastset.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-dg2:          NOTRUN -> [SKIP][481] ([i915#2436])
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-rkl:          NOTRUN -> [SKIP][482] ([i915#2435])
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@perf@per-context-mode-unprivileged.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-tglu-1:       NOTRUN -> [SKIP][483] ([i915#8516])
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@perf_pmu@rc6-all-gts.html

  * igt@perf_pmu@rc6-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][484] ([i915#13356] / [i915#14242])
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-glk1/igt@perf_pmu@rc6-suspend.html

  * igt@runner@aborted:
    - shard-tglu:         NOTRUN -> [FAIL][485] ([i915#15353])
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-4/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [INCOMPLETE][486] ([i915#13356]) -> [PASS][487]
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-4/igt@gem_ccs@suspend-resume.html
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [INCOMPLETE][488] ([i915#12392] / [i915#13356]) -> [PASS][489]
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-4/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html

  * igt@gem_exec_big@single:
    - shard-mtlp:         [DMESG-FAIL][490] -> [PASS][491]
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-5/igt@gem_exec_big@single.html
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-3/igt@gem_exec_big@single.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-rkl:          [ABORT][492] ([i915#15131]) -> [PASS][493] +1 other test pass
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-1/igt@gem_exec_suspend@basic-s3.html
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-7/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [INCOMPLETE][494] ([i915#13356] / [i915#13820]) -> [PASS][495] +1 other test pass
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - shard-dg1:          [DMESG-WARN][496] ([i915#4391] / [i915#4423]) -> [PASS][497]
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-16/igt@i915_suspend@basic-s2idle-without-i915.html
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-18/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         [FAIL][498] ([i915#5138]) -> [PASS][499] +1 other test pass
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_color@deep-color:
    - shard-rkl:          [SKIP][500] ([i915#12655] / [i915#3555]) -> [PASS][501]
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-2/igt@kms_color@deep-color.html
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_color@deep-color.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85:
    - shard-rkl:          [FAIL][502] ([i915#13566]) -> [PASS][503]
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-256x85.html
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-256x85.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [FAIL][504] ([i915#10826]) -> [PASS][505] +1 other test pass
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-snb4/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-snb7/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@dpms-vs-vblank-race:
    - shard-dg1:          [FAIL][506] ([i915#10826]) -> [PASS][507]
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-12/igt@kms_flip@dpms-vs-vblank-race.html
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-16/igt@kms_flip@dpms-vs-vblank-race.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@d-hdmi-a3:
    - shard-dg2:          [FAIL][508] ([i915#13027]) -> [PASS][509] +1 other test pass
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-6/igt@kms_flip@flip-vs-expired-vblank-interruptible@d-hdmi-a3.html
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-5/igt@kms_flip@flip-vs-expired-vblank-interruptible@d-hdmi-a3.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-rkl:          [INCOMPLETE][510] ([i915#6113]) -> [PASS][511]
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@kms_flip@flip-vs-suspend.html
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:
    - shard-dg1:          [DMESG-WARN][512] ([i915#4423]) -> [PASS][513] +1 other test pass
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html

  * igt@kms_hdmi_inject@inject-audio:
    - shard-tglu:         [FAIL][514] ([i915#14867]) -> [PASS][515]
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-7/igt@kms_hdmi_inject@inject-audio.html
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-dg2:          [SKIP][516] ([i915#15073]) -> [PASS][517]
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          [SKIP][518] ([i915#15073]) -> [PASS][519] +1 other test pass
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [519]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@system-suspend-idle:
    - shard-rkl:          [INCOMPLETE][520] ([i915#14419]) -> [PASS][521]
   [520]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-3/igt@kms_pm_rpm@system-suspend-idle.html
   [521]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@kms_pm_rpm@system-suspend-idle.html

  
#### Warnings ####

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-rkl:          [SKIP][522] ([i915#14544] / [i915#8411]) -> [SKIP][523] ([i915#8411]) +1 other test skip
   [522]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@api_intel_bb@object-reloc-purge-cache.html
   [523]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          [SKIP][524] ([i915#14544] / [i915#3555] / [i915#9323]) -> [SKIP][525] ([i915#3555] / [i915#9323])
   [524]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html
   [525]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          [SKIP][526] ([i915#9323]) -> [SKIP][527] ([i915#14544] / [i915#9323])
   [526]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@gem_ccs@block-multicopy-compressed.html
   [527]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-rkl:          [SKIP][528] ([i915#280]) -> [SKIP][529] ([i915#14544] / [i915#280])
   [528]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@gem_ctx_sseu@invalid-args.html
   [529]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-rkl:          [SKIP][530] ([i915#14544] / [i915#4525]) -> [SKIP][531] ([i915#4525])
   [530]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@gem_exec_balancer@parallel-ordering.html
   [531]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_reloc@basic-cpu-noreloc:
    - shard-rkl:          [SKIP][532] ([i915#14544] / [i915#3281]) -> [SKIP][533] ([i915#3281]) +2 other tests skip
   [532]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-noreloc.html
   [533]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@gem_exec_reloc@basic-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-wc-read-noreloc:
    - shard-rkl:          [SKIP][534] ([i915#3281]) -> [SKIP][535] ([i915#14544] / [i915#3281]) +7 other tests skip
   [534]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-2/igt@gem_exec_reloc@basic-wc-read-noreloc.html
   [535]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@gem_exec_reloc@basic-wc-read-noreloc.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-rkl:          [SKIP][536] ([i915#4613]) -> [SKIP][537] ([i915#14544] / [i915#4613]) +1 other test skip
   [536]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
   [537]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-rkl:          [SKIP][538] ([i915#14544] / [i915#4613]) -> [SKIP][539] ([i915#4613])
   [538]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random.html
   [539]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_partial_pwrite_pread@write:
    - shard-rkl:          [SKIP][540] ([i915#14544] / [i915#3282]) -> [SKIP][541] ([i915#3282]) +1 other test skip
   [540]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@gem_partial_pwrite_pread@write.html
   [541]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@gem_partial_pwrite_pread@write.html

  * igt@gem_tiled_partial_pwrite_pread@writes:
    - shard-rkl:          [SKIP][542] ([i915#3282]) -> [SKIP][543] ([i915#14544] / [i915#3282]) +2 other tests skip
   [542]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-2/igt@gem_tiled_partial_pwrite_pread@writes.html
   [543]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@gem_tiled_partial_pwrite_pread@writes.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-rkl:          [SKIP][544] ([i915#3297]) -> [SKIP][545] ([i915#14544] / [i915#3297]) +1 other test skip
   [544]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-2/igt@gem_userptr_blits@unsync-unmap-after-close.html
   [545]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          [SKIP][546] ([i915#14544] / [i915#2527]) -> [SKIP][547] ([i915#2527]) +1 other test skip
   [546]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@gen9_exec_parse@bb-oversize.html
   [547]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-rkl:          [SKIP][548] ([i915#2527]) -> [SKIP][549] ([i915#14544] / [i915#2527]) +2 other tests skip
   [548]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html
   [549]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_pm_freq_api@freq-reset:
    - shard-rkl:          [SKIP][550] ([i915#14544] / [i915#8399]) -> [SKIP][551] ([i915#8399])
   [550]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@i915_pm_freq_api@freq-reset.html
   [551]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@i915_pm_freq_api@freq-reset.html

  * igt@i915_query@hwconfig_table:
    - shard-rkl:          [SKIP][552] ([i915#6245]) -> [SKIP][553] ([i915#14544] / [i915#6245])
   [552]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@i915_query@hwconfig_table.html
   [553]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@i915_query@hwconfig_table.html

  * igt@intel_hwmon@hwmon-write:
    - shard-rkl:          [SKIP][554] ([i915#7707]) -> [SKIP][555] ([i915#14544] / [i915#7707])
   [554]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@intel_hwmon@hwmon-write.html
   [555]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@intel_hwmon@hwmon-write.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
    - shard-rkl:          [SKIP][556] ([i915#14544] / [i915#5286]) -> [SKIP][557] ([i915#5286]) +2 other tests skip
   [556]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html
   [557]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][558] ([i915#5286]) -> [SKIP][559] ([i915#14544] / [i915#5286]) +3 other tests skip
   [558]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
   [559]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-rkl:          [SKIP][560] ([i915#14544] / [i915#3638]) -> [SKIP][561] ([i915#3638]) +2 other tests skip
   [560]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-90.html
   [561]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][562] ([i915#12805]) -> [SKIP][563] ([i915#12805] / [i915#14544])
   [562]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
   [563]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][564] ([i915#12313] / [i915#14544]) -> [SKIP][565] ([i915#12313]) +1 other test skip
   [564]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
   [565]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs:
    - shard-rkl:          [SKIP][566] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][567] ([i915#14098] / [i915#6095]) +4 other tests skip
   [566]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs.html
   [567]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs.html

  * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs:
    - shard-rkl:          [SKIP][568] ([i915#14098] / [i915#6095]) -> [SKIP][569] ([i915#14098] / [i915#14544] / [i915#6095]) +6 other tests skip
   [568]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs.html
   [569]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][570] ([i915#12313]) -> [SKIP][571] ([i915#12313] / [i915#14544])
   [570]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-2/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
   [571]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
    - shard-rkl:          [SKIP][572] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][573] ([i915#11151] / [i915#7828]) +3 other tests skip
   [572]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html
   [573]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - shard-rkl:          [SKIP][574] ([i915#11151] / [i915#7828]) -> [SKIP][575] ([i915#11151] / [i915#14544] / [i915#7828]) +4 other tests skip
   [574]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@kms_chamelium_edid@hdmi-edid-read.html
   [575]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_content_protection@atomic:
    - shard-dg2:          [FAIL][576] ([i915#7173]) -> [SKIP][577] ([i915#6944] / [i915#7118] / [i915#9424])
   [576]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-11/igt@kms_content_protection@atomic.html
   [577]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-4/igt@kms_content_protection@atomic.html
    - shard-rkl:          [SKIP][578] ([i915#6944] / [i915#7118] / [i915#9424]) -> [SKIP][579] ([i915#14544] / [i915#6944] / [i915#7118] / [i915#9424])
   [578]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@kms_content_protection@atomic.html
   [579]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          [SKIP][580] ([i915#6944] / [i915#7118] / [i915#9424]) -> [FAIL][581] ([i915#7173])
   [580]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-1/igt@kms_content_protection@atomic-dpms.html
   [581]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-rkl:          [SKIP][582] ([i915#3116]) -> [SKIP][583] ([i915#14544] / [i915#3116])
   [582]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@kms_content_protection@dp-mst-type-1.html
   [583]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@lic-type-1:
    - shard-rkl:          [SKIP][584] ([i915#14544] / [i915#6944] / [i915#9424]) -> [SKIP][585] ([i915#6944] / [i915#9424])
   [584]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@kms_content_protection@lic-type-1.html
   [585]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          [SKIP][586] ([i915#6944] / [i915#9424]) -> [SKIP][587] ([i915#9433])
   [586]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-17/igt@kms_content_protection@mei-interface.html
   [587]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-12/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@srm:
    - shard-rkl:          [SKIP][588] ([i915#14544] / [i915#6944] / [i915#7118]) -> [SKIP][589] ([i915#6944] / [i915#7118])
   [588]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@kms_content_protection@srm.html
   [589]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@suspend-resume:
    - shard-dg2:          [SKIP][590] ([i915#6944]) -> [FAIL][591] ([i915#7173])
   [590]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-4/igt@kms_content_protection@suspend-resume.html
   [591]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_content_protection@suspend-resume.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-rkl:          [SKIP][592] ([i915#13049] / [i915#14544]) -> [SKIP][593] ([i915#13049])
   [592]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-512x512.html
   [593]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          [SKIP][594] ([i915#13049]) -> [SKIP][595] ([i915#13049] / [i915#14544])
   [594]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html
   [595]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-rkl:          [SKIP][596] ([i915#3555]) -> [SKIP][597] ([i915#14544] / [i915#3555]) +3 other tests skip
   [596]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
   [597]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-rkl:          [SKIP][598] ([i915#14544] / [i915#3555]) -> [SKIP][599] ([i915#3555])
   [598]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
   [599]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-rkl:          [SKIP][600] ([i915#4103]) -> [SKIP][601] ([i915#14544] / [i915#4103])
   [600]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [601]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-rkl:          [SKIP][602] -> [SKIP][603] ([i915#14544]) +10 other tests skip
   [602]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
   [603]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-rkl:          [SKIP][604] ([i915#14544] / [i915#9723]) -> [SKIP][605] ([i915#9723])
   [604]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
   [605]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-rkl:          [SKIP][606] ([i915#13691] / [i915#14544]) -> [SKIP][607] ([i915#13691])
   [606]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@kms_display_modes@extended-mode-basic.html
   [607]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-rkl:          [SKIP][608] ([i915#3555] / [i915#3804]) -> [SKIP][609] ([i915#14544] / [i915#3555] / [i915#3804])
   [608]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
   [609]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-rkl:          [SKIP][610] ([i915#14544] / [i915#3840]) -> [SKIP][611] ([i915#3840])
   [610]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html
   [611]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_feature_discovery@display-2x:
    - shard-rkl:          [SKIP][612] ([i915#14544] / [i915#1839]) -> [SKIP][613] ([i915#1839])
   [612]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@kms_feature_discovery@display-2x.html
   [613]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@display-3x:
    - shard-rkl:          [SKIP][614] ([i915#1839]) -> [SKIP][615] ([i915#14544] / [i915#1839])
   [614]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@kms_feature_discovery@display-3x.html
   [615]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_feature_discovery@display-3x.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-rkl:          [SKIP][616] ([i915#14544] / [i915#9934]) -> [SKIP][617] ([i915#9934]) +2 other tests skip
   [616]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html
   [617]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-rkl:          [SKIP][618] ([i915#9934]) -> [SKIP][619] ([i915#14544] / [i915#9934]) +9 other tests skip
   [618]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@kms_flip@2x-flip-vs-fences-interruptible.html
   [619]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
    - shard-dg1:          [SKIP][620] ([i915#9934]) -> [SKIP][621] ([i915#4423] / [i915#9934])
   [620]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-15/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html
   [621]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-15/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
    - shard-rkl:          [SKIP][622] ([i915#2672] / [i915#3555]) -> [SKIP][623] ([i915#14544] / [i915#2672] / [i915#3555]) +2 other tests skip
   [622]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html
   [623]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-rkl:          [SKIP][624] ([i915#2672]) -> [SKIP][625] ([i915#14544] / [i915#2672]) +2 other tests skip
   [624]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html
   [625]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][626] ([i915#1825]) -> [SKIP][627] ([i915#14544] / [i915#1825]) +26 other tests skip
   [626]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
   [627]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][628] ([i915#14544] / [i915#15102]) -> [SKIP][629] ([i915#15102]) +1 other test skip
   [628]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
   [629]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:
    - shard-dg2:          [SKIP][630] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][631] ([i915#15102] / [i915#3458]) +1 other test skip
   [630]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html
   [631]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
    - shard-rkl:          [SKIP][632] ([i915#15102] / [i915#3023]) -> [SKIP][633] ([i915#14544] / [i915#15102] / [i915#3023]) +12 other tests skip
   [632]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
   [633]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][634] ([i915#14544] / [i915#1825]) -> [SKIP][635] ([i915#1825]) +16 other tests skip
   [634]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
   [635]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-rkl:          [SKIP][636] ([i915#14544] / [i915#9766]) -> [SKIP][637] ([i915#9766])
   [636]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
   [637]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][638] ([i915#15102]) -> [SKIP][639] ([i915#14544] / [i915#15102]) +3 other tests skip
   [638]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc.html
   [639]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][640] ([i915#15102] / [i915#3458]) -> [SKIP][641] ([i915#10433] / [i915#15102] / [i915#3458]) +5 other tests skip
   [640]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [641]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render:
    - shard-dg1:          [SKIP][642] ([i915#15102] / [i915#3458] / [i915#4423]) -> [SKIP][643] ([i915#15102] / [i915#3458])
   [642]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render.html
   [643]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - shard-rkl:          [SKIP][644] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][645] ([i915#15102] / [i915#3023]) +11 other tests skip
   [644]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
   [645]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg1:          [SKIP][646] ([i915#8708]) -> [SKIP][647] ([i915#4423] / [i915#8708]) +1 other test skip
   [646]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
   [647]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg1:          [SKIP][648] ([i915#3555] / [i915#4423] / [i915#8228]) -> [SKIP][649] ([i915#3555] / [i915#8228])
   [648]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-12/igt@kms_hdr@static-toggle-suspend.html
   [649]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-16/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-rkl:          [SKIP][650] ([i915#12339]) -> [SKIP][651] ([i915#12339] / [i915#14544])
   [650]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-2/igt@kms_joiner@invalid-modeset-ultra-joiner.html
   [651]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          [SKIP][652] ([i915#6301]) -> [SKIP][653] ([i915#14544] / [i915#6301])
   [652]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-2/igt@kms_panel_fitting@atomic-fastset.html
   [653]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_plane_multiple@2x-tiling-4:
    - shard-rkl:          [SKIP][654] ([i915#13958]) -> [SKIP][655] ([i915#13958] / [i915#14544])
   [654]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@kms_plane_multiple@2x-tiling-4.html
   [655]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-4.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-rkl:          [SKIP][656] ([i915#14544] / [i915#15329] / [i915#3555]) -> [SKIP][657] ([i915#15329] / [i915#3555])
   [656]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
   [657]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
    - shard-rkl:          [SKIP][658] ([i915#14544] / [i915#15329]) -> [SKIP][659] ([i915#15329]) +2 other tests skip
   [658]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html
   [659]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html

  * igt@kms_pm_backlight@bad-brightness:
    - shard-rkl:          [SKIP][660] ([i915#5354]) -> [SKIP][661] ([i915#14544] / [i915#5354])
   [660]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-2/igt@kms_pm_backlight@bad-brightness.html
   [661]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_pm_backlight@bad-brightness.html

  * igt@kms_pm_backlight@fade:
    - shard-rkl:          [SKIP][662] ([i915#14544] / [i915#5354]) -> [SKIP][663] ([i915#5354])
   [662]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@kms_pm_backlight@fade.html
   [663]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_pm_backlight@fade.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-rkl:          [SKIP][664] ([i915#3828]) -> [SKIP][665] ([i915#14544] / [i915#3828])
   [664]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@kms_pm_dc@dc5-retention-flops.html
   [665]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg1:          [SKIP][666] ([i915#15073] / [i915#4423]) -> [SKIP][667] ([i915#15073])
   [666]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-13/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [667]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-16/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@package-g7:
    - shard-rkl:          [SKIP][668] ([i915#15403]) -> [SKIP][669] ([i915#14544] / [i915#15403])
   [668]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-2/igt@kms_pm_rpm@package-g7.html
   [669]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_pm_rpm@package-g7.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:
    - shard-rkl:          [SKIP][670] ([i915#11520]) -> [SKIP][671] ([i915#11520] / [i915#14544]) +5 other tests skip
   [670]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html
   [671]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-rkl:          [SKIP][672] ([i915#11520] / [i915#14544]) -> [SKIP][673] ([i915#11520]) +2 other tests skip
   [672]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf.html
   [673]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:
    - shard-dg1:          [SKIP][674] ([i915#11520] / [i915#4423]) -> [SKIP][675] ([i915#11520])
   [674]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-16/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html
   [675]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-18/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr@fbc-pr-no-drrs:
    - shard-rkl:          [SKIP][676] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][677] ([i915#1072] / [i915#9732]) +10 other tests skip
   [676]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@kms_psr@fbc-pr-no-drrs.html
   [677]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_psr@fbc-pr-no-drrs.html

  * igt@kms_psr@fbc-psr2-primary-blt:
    - shard-dg1:          [SKIP][678] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][679] ([i915#1072] / [i915#9732]) +1 other test skip
   [678]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-16/igt@kms_psr@fbc-psr2-primary-blt.html
   [679]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-18/igt@kms_psr@fbc-psr2-primary-blt.html

  * igt@kms_psr@psr2-suspend:
    - shard-rkl:          [SKIP][680] ([i915#1072] / [i915#9732]) -> [SKIP][681] ([i915#1072] / [i915#14544] / [i915#9732]) +16 other tests skip
   [680]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@kms_psr@psr2-suspend.html
   [681]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_psr@psr2-suspend.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-rkl:          [SKIP][682] ([i915#9685]) -> [SKIP][683] ([i915#14544] / [i915#9685])
   [682]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [683]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-rkl:          [SKIP][684] ([i915#14544] / [i915#8623]) -> [SKIP][685] ([i915#8623])
   [684]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
   [685]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@flipline:
    - shard-rkl:          [SKIP][686] ([i915#15243] / [i915#3555]) -> [SKIP][687] ([i915#14544] / [i915#15243] / [i915#3555])
   [686]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@kms_vrr@flipline.html
   [687]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_vrr@flipline.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          [SKIP][688] ([i915#14544] / [i915#3708]) -> [SKIP][689] ([i915#3708]) +1 other test skip
   [688]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@prime_vgem@coherency-gtt.html
   [689]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@prime_vgem@coherency-gtt.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-rkl:          [SKIP][690] ([i915#9917]) -> [SKIP][691] ([i915#14544] / [i915#9917])
   [690]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@sriov_basic@bind-unbind-vf.html
   [691]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@sriov_basic@bind-unbind-vf.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-rkl:          [SKIP][692] ([i915#14544]) -> [SKIP][693] +6 other tests skip
   [692]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@tools_test@sysfs_l3_parity.html
   [693]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@tools_test@sysfs_l3_parity.html

  
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826
  [i915#10959]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12169
  [i915#12177]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12177
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#12358]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358
  [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
  [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
  [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
  [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
  [i915#12761]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761
  [i915#12796]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
  [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13562
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
  [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
  [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
  [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
  [i915#13784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13784
  [i915#13820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152
  [i915#14242]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14242
  [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
  [i915#14419]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14600]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600
  [i915#14785]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14785
  [i915#14867]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14867
  [i915#14871]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14871
  [i915#14995]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14995
  [i915#15060]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15060
  [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
  [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
  [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
  [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
  [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
  [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
  [i915#15342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342
  [i915#15353]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15353
  [i915#15403]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15403
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#2065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
  [i915#2435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
  [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
  [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
  [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
  [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
  [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7882
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8289
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
  [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_17694 -> Patchwork_158761v5

  CI-20190529: 20190529
  CI_DRM_17694: 2eb2f8746a879f1c0e4c56b715c179424dafd8e0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8668: 906681747a312ef11ef9af8ab1fa6eff28b4cbd0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_158761v5: 2eb2f8746a879f1c0e4c56b715c179424dafd8e0 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/index.html

--===============2926774378677621431==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: use designated initializers for=
 intel_gt_debugfs_file (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/158761/">https://patchwork.freedesktop.org/series/158761/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_158761v5/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_158761v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17694_full -&gt; Patchwork_158761v=
5_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_158761v5_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_158761v5_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
158761v5_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg1-17/igt@gem_exec_parallel@engines.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/s=
hard-dg1-14/igt@gem_exec_parallel@engines.html">ABORT</a> +1 other test abo=
rt</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg2-3/igt@gem_mmap_offset@clear@lmem0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/=
shard-dg2-1/igt@gem_mmap_offset@clear@lmem0.html">INCOMPLETE</a> +1 other t=
est incomplete</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_17694_full and Patchwork_1=
58761v5_full:</p>
<h3>New IGT tests (40)</h3>
<ul>
<li>
<p>igt@kms_properties@addfb25-modifier-no-flag:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@bad-close:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@bad-flag:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@basic-busy-all:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@basic-normal:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@bo-copy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@cliprects_ptr-dirt:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@cursora-vs-flipa-atomic-transitions:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@cursora-vs-flipa-legacy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@display-on-read-all:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@engines-queued:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@fbc-1p-rte:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@fbc-2p-primscrn-cur-indfb-move:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@fbcpsr-2p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:<=
/p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@huc-copy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@independent:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@load:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@main:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@master-drop-set-user:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@master-vs-lease:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@multi-wait-all-for-submit-available-submitted-signale=
d:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@multi-wait-for-submit-unsubmitted-submitted-signaled:=
</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@non-system-wide-paranoid:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@nonpriv:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@object-noreloc-keep-cache-simple:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-upscale-20x20-with-pixel-format:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@psr-2p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@regular-baseline-src-copy-readible:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@reset-multiple-signaled:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@set-priority-range:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@shrink:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@system-suspend-modeset:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@x-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@y-tiled-ccs-to-x-tiled:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@y-tiled-ccs-to-y-tiled-ccs:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_properties@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_158761v5_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@gem_ccs@block-multicopy-c=
ompressed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@gem_ccs@ctrl-surf-copy-ne=
w-ctx.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@gem_ccs@suspend-resume.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@gem_close_race@multigpu-ba=
sic-threads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/7697">i915#7697</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@gem_close_race@multigpu-b=
asic-threads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@gem_ctx_sseu@invalid-args=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@gem_ctx_sseu@invalid-sseu.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@noheartbeat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@gem_exec_balancer@noheartb=
eat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@gem_exec_balancer@parallel=
-bb-first.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@gem_exec_capture@capture-=
recoverable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/6344">i915#6344</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit67:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@gem_exec_fence@submit67.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@gem_exec_flush@basic-batch=
-kernel-default-cmd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>) +1 other tes=
t skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@gem_exec_reloc@basic-write=
-gtt-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@gem_exec_reloc@basic-write=
-wc-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@gem_exec_schedule@preempt-=
queue-contexts.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-glk6/igt@gem_huc_copy@huc-copy.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-glk6/igt@gem_lmem_swapping@random.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@gem_lmem_swapping@smem-oo=
m.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@gem_lmem_swapping@verify.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@gem_lmem_swapping@verify-=
random-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@gem_media_fill@media-fill.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/8289">i915#8289</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@gem_mmap_gtt@hang.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
4077">i915#4077</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@gem_pwrite@basic-exhaustio=
n.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-random:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@gem_pwrite@basic-random.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@gem_pxp@hw-rejects-pxp-buf=
fer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/13717">i915#13717</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-4/igt@gem_pxp@verify-pxp-key-change-after-suspend-r=
esume.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_158761v5/shard-rkl-1/igt@gem_pxp@verify-pxp-key-change-after-=
suspend-resume.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/15131">i915#15131</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-execution:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@gem_pxp@verify-pxp-stale-b=
uf-execution.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@gem_render_copy@y-tiled-t=
o-vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +3 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@gem_set_tiling_vs_blt@tile=
d-to-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@gem_set_tiling_vs_blt@tile=
d-to-untiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@gem_softpin@evict-snoop.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/4885">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-glk6/igt@gem_userptr_blits@dmabuf-sy=
nc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@gem_userptr_blits@forbidde=
n-operations.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3282">i915#3282</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@gem_userptr_blits@readonly=
-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@gem_userptr_blits@readonl=
y-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@gem_userptr_blits@unsync-o=
verlap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@gem_userptr_blits@unsync-=
unmap-cycles.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@gen9_exec_parse@batch-inv=
alid-length.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</=
li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@gen9_exec_parse@bb-chained=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/2527">i915#2527</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@gen9_exec_parse@shadow-pe=
ek.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@gen9_exec_parse@unaligned=
-jump.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@busy-idle@vcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@i915_drm_fdinfo@busy-idle@=
vcs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14073">i915#14073</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-dg1:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17694/shard-dg1-12/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-15/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_17694/shard-dg1-18/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/=
shard-dg1-12/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-15/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17694/shard-dg1-18/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-17/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_17694/shard-dg1-13/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/=
shard-dg1-18/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-12/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17694/shard-dg1-14/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-14/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_17694/shard-dg1-15/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/=
shard-dg1-19/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-17/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17694/shard-dg1-15/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-13/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_17694/shard-dg1-19/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/=
shard-dg1-16/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-14/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17694/shard-dg1-13/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-16/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_17694/shard-dg1-16/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/=
shard-dg1-17/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg1-13/igt@i915_module_l=
oad@load.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_158761v5/shard-dg1-19/igt@i915_module_load@load.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876=
1v5/shard-dg1-15/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-19/igt@i91=
5_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_158761v5/shard-dg1-15/igt@i915_module_load@load.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15=
8761v5/shard-dg1-18/igt@i915_module_load@load.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-13/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_158761v5/shard-dg1-12/igt@i915_module_load@load.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_158761v5/shard-dg1-16/igt@i915_module_load@load.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-17/i=
gt@i915_module_load@load.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-13/igt@i915_module_load@load=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_158761v5/shard-dg1-14/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-1=
2/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-17/igt@i915_module_load@l=
oad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_158761v5/shard-dg1-16/igt@i915_module_load@load.html">SKIP</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg=
1-14/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-19/igt@i915_module_loa=
d@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_158761v5/shard-dg1-12/igt@i915_module_load@load.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard=
-dg1-12/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-14/igt@i915_module_=
load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_158761v5/shard-dg1-13/igt@i915_module_load@load.html">SKIP</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/sh=
ard-dg1-19/igt@i915_module_load@load.html">PASS</a>) (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/14785">i915#14785</a>)</li>
<li>shard-tglu:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17694/shard-tglu-6/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-6/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_17694/shard-tglu-2/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/=
shard-tglu-6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-8/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17694/shard-tglu-7/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-10/i=
gt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_17694/shard-tglu-5/igt@i915_module_load@load.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694=
/shard-tglu-2/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-5/igt@i915_module_=
load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/CI_DRM_17694/shard-tglu-8/igt@i915_module_load@load.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-10/=
igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_17694/shard-tglu-4/igt@i915_module_load@load.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1769=
4/shard-tglu-7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-2/igt@i915_module=
_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_17694/shard-tglu-9/igt@i915_module_load@load.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-4/=
igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_17694/shard-tglu-10/igt@i915_module_load@load.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_176=
94/shard-tglu-9/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-4/igt@i915_modul=
e_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_17694/shard-tglu-3/igt@i915_module_load@load.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-3=
/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_17694/shard-tglu-9/igt@i915_module_load@load.htm=
l">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_158761v5/shard-tglu-8/igt@i915_module_load@load.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tg=
lu-4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-10/igt@i915_module_lo=
ad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_158761v5/shard-tglu-8/igt@i915_module_load@load.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shar=
d-tglu-10/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-4/igt@i915_modul=
e_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_158761v5/shard-tglu-10/igt@i915_module_load@load.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5=
/shard-tglu-2/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-9/igt@i915_m=
odule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@i915_module_load@load.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876=
1v5/shard-tglu-7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-5/igt@i91=
5_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_158761v5/shard-tglu-3/igt@i915_module_load@load.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15=
8761v5/shard-tglu-9/igt@i915_module_load@load.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-5/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_158761v5/shard-tglu-3/igt@i915_module_load@load.ht=
ml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_158761v5/shard-tglu-2/igt@i915_module_load@load.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-5/i=
gt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@i915_module_load@load=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_158761v5/shard-tglu-4/igt@i915_module_load@load.html">SKIP</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-tglu-=
6/igt@i915_module_load@load.html">PASS</a>) (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/14785">i915#14785</a>)</li>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17694/shard-glk9/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-glk9/igt@i9=
15_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_17694/shard-glk6/igt@i915_module_load@load.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-=
glk6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-glk5/igt@i915_module_load@load.h=
tml">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_158761v5/shard-glk5/igt@i915_module_load@load.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-gl=
k6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_158761v5/shard-glk6/igt@i915_module_load@lo=
ad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_158761v5/shard-glk8/igt@i915_module_load@load.html">SKIP</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-glk9/=
igt@i915_module_load@load.html">PASS</a>)</li>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17694/shard-mtlp-4/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-2/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_17694/shard-mtlp-8/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/=
shard-mtlp-8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-6/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17694/shard-mtlp-4/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-7/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_17694/shard-mtlp-5/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/=
shard-mtlp-2/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-8/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17694/shard-mtlp-6/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-3/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_17694/shard-mtlp-8/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/=
shard-mtlp-7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-6/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17694/shard-mtlp-7/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-7/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_17694/shard-mtlp-3/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/=
shard-mtlp-2/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-4/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17694/shard-mtlp-5/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-3/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_17694/shard-mtlp-5/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/=
shard-mtlp-6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-mtlp-2/igt@i915_module_l=
oad@load.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_158761v5/shard-mtlp-3/igt@i915_module_load@load.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15876=
1v5/shard-mtlp-2/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-7/igt@i91=
5_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_158761v5/shard-mtlp-5/igt@i915_module_load@load.html"=
>SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15=
8761v5/shard-mtlp-7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-4/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_158761v5/shard-mtlp-6/igt@i915_module_load@load.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_158761v5/shard-mtlp-2/igt@i915_module_load@load.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-5/i=
gt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-8/igt@i915_module_load@load=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_158761v5/shard-mtlp-3/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-=
5/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-3/igt@i915_module_load@l=
oad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_158761v5/shard-mtlp-7/igt@i915_module_load@load.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mt=
lp-8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-2/igt@i915_module_loa=
d@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_158761v5/shard-mtlp-3/igt@i915_module_load@load.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard=
-mtlp-8/igt@i915_module_load@load.html">SKIP</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-4/igt@i915_module_=
load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_158761v5/shard-mtlp-6/igt@i915_module_load@load.html">SKIP</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/sh=
ard-mtlp-4/igt@i915_module_load@load.html">SKIP</a>) (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/14785">i915#14785</a>)</li>
<li>shard-glk10:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-glk10/igt@i915_module_load@load.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-=
glk10/igt@i915_module_load@load.html">SKIP</a></li>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17694/shard-dg2-6/igt@i915_module_load@load.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-6/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_17694/shard-dg2-6/igt@i915_module_load@load.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/sha=
rd-dg2-5/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-7/igt@i915_module_load@l=
oad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_17694/shard-dg2-5/igt@i915_module_load@load.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-4/igt@i915_=
module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_17694/shard-dg2-7/igt@i915_module_load@load.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg=
2-4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-7/igt@i915_module_load@load.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
7694/shard-dg2-3/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-3/igt@i915_modul=
e_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_17694/shard-dg2-7/igt@i915_module_load@load.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-3/i=
gt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_17694/shard-dg2-1/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/=
shard-dg2-8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-1/igt@i915_module_loa=
d@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_17694/shard-dg2-8/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-1/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_17694/shard-dg2-11/igt@i915_module_load@load.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/sha=
rd-dg2-11/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-8/igt@i915_module_load@=
load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_17694/shard-dg2-11/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-dg2-11/igt@=
i915_module_load@load.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@i915_module_load@l=
oad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_158761v5/shard-dg2-6/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2=
-4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@i915_module_load@l=
oad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_158761v5/shard-dg2-4/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2=
-3/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-8/igt@i915_module_load@l=
oad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_158761v5/shard-dg2-5/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2=
-4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-1/igt@i915_module_load@l=
oad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_158761v5/shard-dg2-11/igt@i915_module_load@load.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg=
2-6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-7/igt@i915_module_load@=
load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_158761v5/shard-dg2-3/igt@i915_module_load@load.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg=
2-1/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-4/igt@i915_module_load@=
load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_158761v5/shard-dg2-8/igt@i915_module_load@load.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg=
2-5/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-5/igt@i915_module_load@=
load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_158761v5/shard-dg2-8/igt@i915_module_load@load.html">SKIP</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg=
2-11/igt@i915_module_load@load.html">SKIP</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@i915_module_load=
@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_158761v5/shard-dg2-1/igt@i915_module_load@load.html">PASS</a>) (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14785">i91=
5#14785</a>)</li>
<li>shard-rkl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17694/shard-rkl-3/igt@i915_module_load@load.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-8/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_17694/shard-rkl-8/igt@i915_module_load@load.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/sha=
rd-rkl-3/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-3/igt@i915_module_load@l=
oad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_17694/shard-rkl-8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-4/igt@i915_=
module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_17694/shard-rkl-7/igt@i915_module_load@load.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rk=
l-7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-3/igt@i915_module_load@load.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
7694/shard-rkl-4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-7/igt@i915_modul=
e_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_17694/shard-rkl-1/igt@i915_module_load@load.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/i=
gt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_17694/shard-rkl-2/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/=
shard-rkl-4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-6/igt@i915_module_loa=
d@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_17694/shard-rkl-6/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@i915_module_load@load.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shar=
d-rkl-2/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-2/igt@i915_module_load@lo=
ad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_17694/shard-rkl-5/igt@i915_module_load@load.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17694/shard-rkl-5/igt@i915_m=
odule_load@load.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@i915_module_load@load.ht=
ml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_158761v5/shard-rkl-2/igt@i915_module_load@load.html">SKIP</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-3/igt=
@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@i915_module_load@load.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_158761v5/shard-rkl-2/igt@i915_module_load@load.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-1/igt=
@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_158761v5/shard-rkl-8/igt@i915_module_load@load.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_158761v5/shard-rkl-6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt=
@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_158761v5/shard-rkl-1/igt@i915_module_load@load.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_158761v5/shard-rkl-4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-3/igt=
@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_158761v5/shard-rkl-7/igt@i915_module_load@load.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_158761v5/shard-rkl-6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt=
@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_158761v5/shard-rkl-7/igt@i915_module_load@load.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_158761v5/shard-rkl-4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt=
@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_158761v5/shard-rkl-7/igt@i915_module_load@load.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_158761v5/shard-rkl-3/igt@i915_module_load@load.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-7/igt=
@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_158761v5/shard-rkl-3/igt@i915_module_load@load.ht=
ml">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14785">i915#14785</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-snb4/igt@i915_module_load@reload-with-fault-injection.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_158761v5/shard-snb5/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15342">i915#15342</a>)</li>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_158761v5/shard-dg2-4/igt@i915_module_load@reload-with-fault-inject=
ion.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/15342">i915#15342</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@i915_pm_freq_api@freq-sus=
pend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-accuracy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg2-6/igt@i915_pm_rc6_residency@rc6-accuracy.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15=
8761v5/shard-dg2-5/igt@i915_pm_rc6_residency@rc6-accuracy.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i9=
15#12964</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-7/igt@i915_pm_rpm@system-suspend-execbuf.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15=
8761v5/shard-rkl-1/igt@i915_pm_rpm@system-suspend-execbuf.html">ABORT</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15060">i=
915#15060</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@i915_pm_rps@min-max-confi=
g-loaded.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/11681">i915#11681</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@i915_pm_rps@thresholds-pa=
rk.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@i915_query@hwconfig_table=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@i915_query@test-query-geom=
etry-subslices.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/5723">i915#5723</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg2-6/igt@i915_selftest@live@workarounds.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761=
v5/shard-dg2-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915=
#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@i915_suspend@debugfs-reader.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/=
shard-rkl-3/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817=
</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@intel_hwmon@hwmon-write.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@clobberred-modifier:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_addfb_basic@clobberred=
-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-dpms:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg1-15/igt@kms_async_flips@async-flip-dpms.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1587=
61v5/shard-dg1-15/igt@kms_async_flips@async-flip-dpms.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i=
915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-glk5/igt@kms_async_flips@async-flip-=
suspend-resume.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/12761">i915#12761</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-glk5/igt@kms_async_flips@async-flip-=
suspend-resume@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/12761">i915#12761</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14995">i915#14=
995</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_atomic@plane-primary-=
overlay-mutable-zpos.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_atomic_transition@plan=
e-all-modeset-transition-internal-panels.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3=
555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@kms_big_fb@4-tiled-8bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/5286">i915#5286</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_big_fb@4-tiled-addfb.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other tes=
t skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_158761v5/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bp=
p-rotate-0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@kms_big_fb@linear-64bpp-ro=
tate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_big_fb@x-tiled-32bpp-r=
otate-270.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw=
-stride-32bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>=
) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_ccs@bad-aux-stride-4-t=
iled-mtl-rc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/609=
5">i915#6095</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_ccs@bad-rotation-90-4=
-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_ccs@crc-primary-basic=
-y-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/6095">i915#6095</a>) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_ccs@crc-primary-basic=
-yf-tiled-ccs@pipe-a-dp-3.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +98 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-=
1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-glk6/igt@kms_ccs@crc-primary-rotatio=
n-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> +182 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-3/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +73 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-glk10/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> +118 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-glk6/igt@kms_ccs@crc-primary-suspend=
-y-tiled-ccs@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/12796">i915#12796</a>) +1 other =
test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-=
ccs-cc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled=
-gen12-rc-ccs-cc.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/12796">i915#12796</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-2:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_ccs@crc-primary-suspen=
d-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796">i915#12796</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-c-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_ccs@crc-primary-suspe=
nd-yf-tiled-ccs@pipe-c-dp-3.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +67 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-1:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@kms_ccs@crc-sprite-planes=
-basic-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +39 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-7/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915=
#6095</a>) +46 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer=
-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095=
</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-4/igt@kms_ccs@missing-ccs-buffer=
-y-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">=
i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-7/igt@kms_ccs@random-ccs-data-4-=
tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_ccs@random-ccs-data-4=
-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg1-13/igt@kms_ccs@random-ccs-data-y=
f-tiled-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +155 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@kms_cdclk@mode-transition=
-all-outputs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3742">i915#3742</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_cdclk@mode-transition-=
all-outputs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13784">i915#13784</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_cdclk@plane-scaling.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@kms_cdclk@plane-scaling@pi=
pe-b-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/13783">i915#13783</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-mode-timings:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@kms_chamelium_edid@hdmi-m=
ode-timings.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@kms_chamelium_hpd@common-h=
pd-after-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@kms_chamelium_hpd@dp-hpd-s=
torm.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_chamelium_hpd@hdmi-hp=
d-enable-disable-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@kms_content_protection@at=
omic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_content_protection@at=
omic-dpms@pipe-a-dp-3.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/7173">i915#7173</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_content_protection@me=
i-interface.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@suspend-resume:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_content_protection@sus=
pend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_content_protection@ty=
pe1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@kms_cursor_crc@cursor-off=
screen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/13049">i915#13049</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_cursor_crc@cursor-offs=
creen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@kms_cursor_crc@cursor-ons=
creen-256x85.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-64x21:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_cursor_crc@cursor-onsc=
reen-64x21.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/13566">i915#13566</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_cursor_crc@cursor-sli=
ding-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_cursor_crc@cursor-slid=
ing-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-glk10/igt@kms_cursor_crc@cursor-susp=
end.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/12358">i915#12358</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/14152">i915#14152</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/7882">i915#7882</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-glk10/igt@kms_cursor_crc@cursor-susp=
end@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/12358">i915#12358</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152">i915#14152</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-=
vs-cursor-legacy.html">SKIP</a> +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_cursor_legacy@cursorb=
-vs-flipa-atomic-transitions-varying-size.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i91=
5#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_158761v5/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atom=
ic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4=
103</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/4213">i915#4213</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#41=
03</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@kms_dither@fb-8bpc-vs-pan=
el-6bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/1769">i915#1769</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158=
761v5/shard-dg2-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3=
555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@kms_dither@fb-8bpc-vs-pan=
el-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_dp_linktrain_fallback@=
dp-fallback.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13707">i915#13707</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@kms_dp_linktrain_fallback=
@dp-fallback.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13707">i915#13707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@kms_dsc@dsc-with-bpc.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_feature_discovery@cha=
melium.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/2065">i915#2065</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@kms_feature_discovery@dis=
play-3x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@kms_feature_discovery@dp-m=
st.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@kms_flip@2x-absolute-wf_vb=
lank-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_flip@2x-flip-vs-panni=
ng-vs-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@kms_flip@2x-plain-flip.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/9934">i915#9934</a>) +3 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_flip@2x-plain-flip.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-tglu-2/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a=
1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_158761v5/shard-tglu-3/igt@kms_flip@flip-vs-blocking-wf-vblank@a-h=
dmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14600">i915#14600</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-snb7/igt@kms_flip@flip-vs-suspend-interruptible.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_158761v5/shard-snb1/igt@kms_flip@flip-vs-suspend-interruptible.html">ABORT=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
871">i915#14871</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-4/igt@kms_flip@wf_vblank-ts-check-interruptible.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_158761v5/shard-rkl-5/igt@kms_flip@wf_vblank-ts-check-interruptible.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/10826">i915#10826</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@kms_flip@wf_vblank-ts-chec=
k-interruptible@a-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/10826">i915#10826</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@kms_flip_scaled_crc@flip-=
32bpp-yftileccs-to-64bpp-yftile-upscaling.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#=
3555</a>) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-upscaling.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3=
555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytileccs-upscaling.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#26=
72</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915=
#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3=
555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/5190">i915#5190</a>) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#=
2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i=
915#2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#26=
72</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2=
587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-mmap-gtt:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbc-1p-offscreen-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104">i915#15104</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-i=
ndfb-draw-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_158761v5/shard-snb7/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-cur-indfb-draw-blt.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +28 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-spr-indfb-draw-render.html">SKIP</a> +22 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> +32 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_frontbuffer_tracking@f=
bc-rgb565-draw-mmap-cpu.html">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-indfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +12 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +5 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@kms_frontbuffer_tracking@=
fbcpsr-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@kms_frontbuffer_tracking@p=
sr-1p-offscreen-pri-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +1 other =
test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt:</=
p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_frontbuffer_tracking@=
psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +10=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_frontbuffer_tracking@=
psr-1p-offscreen-pri-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>=
) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-spr-indfb-onoff.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)=
 +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +11 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@kms_hdr@bpc-switch.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/8228">i915#8228</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_hdr@bpc-switch.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@kms_hdr@static-swap.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@kms_hdr@static-toggle-dpms.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/s=
hard-rkl-2/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#=
8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_joiner@basic-force-bi=
g-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/12388">i915#12388</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_joiner@basic-force-ul=
tra-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_joiner@basic-ultra-jo=
iner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/12339">i915#12339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@kms_joiner@invalid-modeset=
-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-7/igt@kms_joiner@invalid-modeset=
-force-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/10656">i915#10656</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/12388">i915#12388</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_joiner@invalid-modese=
t-force-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/10656">i915#10656</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/12388">i915#12388</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@kms_joiner@invalid-modeset=
-force-ultra-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/12394">i915#12394</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/1839">i915#1839</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_panel_fitting@legacy.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/6301">i915#6301</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_panel_fitting@legacy.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-glk5/igt@kms_plane_alpha_blend@alpha=
-opaque-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/10647">i915#10647</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/12169">i915#12169</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-glk5/igt@kms_plane_alpha_blend@alpha=
-opaque-fb@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a>) +1 other test fai=
l</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-glk10/igt@kms_plane_alpha_blend@alph=
a-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/10647">i915#10647</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/12177">i915#12177</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-glk10/igt@kms_plane_alpha_blend@alph=
a-transparent-fb@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a>) +1 other te=
st fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@kms_plane_lowres@tiling-yf=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-4:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@kms_plane_multiple@2x-til=
ing-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-y:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@kms_plane_multiple@2x-tili=
ng-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@kms_plane_multiple@tiling=
-yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/14259">i915#14259</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_plane_multiple@tiling-=
yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-75-with-rotation@pipe-a.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +7 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@kms_pm_backlight@brightnes=
s-with-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/12343">i915#12343</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_pm_backlight@fade-with=
-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_pm_dc@dc3co-vpb-simul=
ation.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@kms_pm_dc@dc5-retention-f=
lops.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg2-4/igt@kms_pm_lpsp@kms-lpsp.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-d=
g2-11/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lps=
p.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
58761v5/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i=
915#15073</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@kms_pm_rpm@modeset-non-lp=
sp-stress.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_158761v5/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/15073">i915#15073</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_prime@d3hot.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6=
524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-atomic:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg1-16/igt@kms_properties@plane-properties-atomic.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_158761v5/shard-dg1-15/igt@kms_properties@plane-properties-atomic.html">A=
BORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/13562">i915#13562</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-atomic@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg1-16/igt@kms_properties@plane-properties-atomic@pipe-=
b-hdmi-a-4.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_158761v5/shard-dg1-15/igt@kms_properties@plane-propertie=
s-atomic@pipe-b-hdmi-a-4.html">DMESG-WARN</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/13562">i915#13562</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-8/igt@kms_psr2_sf@fbc-pr-cursor=
-plane-update-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@kms_psr2_sf@fbc-pr-overlay=
-primary-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +5 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_psr2_sf@pr-overlay-pl=
ane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-glk6/igt@kms_psr2_sf@pr-plane-move-s=
f-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/11520">i915#11520</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-glk10/igt@kms_psr2_sf@pr-primary-pla=
ne-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_psr2_sf@pr-primary-pla=
ne-update-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_psr2_su@frontbuffer-xr=
gb8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9683">i915#9683</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@kms_psr2_su@frontbuffer-x=
rgb8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_psr@fbc-psr-suspend.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-plane-onoff:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_psr@pr-cursor-plane-o=
noff.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9732">i915#9732</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-sprite-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_psr@pr-sprite-render.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9732">i915#9732</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-plane-onoff:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-2/igt@kms_psr@psr2-cursor-plane=
-onoff.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9732">i915#9732</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_psr_stress_test@flip-p=
rimary-invalidate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>) +1 other test skip</=
li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_psr_stress_test@flip-=
primary-invalidate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-6/igt@kms_rotation_crc@primary-y=
-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/12755">i915#12755</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-4/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@kms_rotation_crc@sprite-ro=
tation-90-pos-100-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/12755">i915#12755</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@kms_setmode@clone-exclusi=
ve-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@kms_setmode@clone-exclusiv=
e-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-glk1/igt@kms_tiled_display@basic-tes=
t-pattern.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/10959">i915#10959</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@kms_vrr@flip-basic-fastset=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@perf@gen8-unprivileged-sin=
gle-ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-5/igt@perf@per-context-mode-unpr=
ivileged.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/2435">i915#2435</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-1/igt@perf_pmu@rc6-all-gts.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-glk1/igt@perf_pmu@rc6-suspend.html">=
INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/13356">i915#13356</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/14242">i915#14242</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-tglu-4/igt@runner@aborted.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15=
353">i915#15353</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg2-4/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i=
915#13356</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_158761v5/shard-dg2-11/igt@gem_ccs@suspend-resume.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg2-4/igt@gem_ccs@suspend-resume@tile4-compressed-compf=
mt0-smem-lmem0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/12392">i915#12392</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard=
-dg2-11/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_big@single:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-mtlp-5/igt@gem_exec_big@single.html">DMESG-FAIL</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/s=
hard-mtlp-3/igt@gem_exec_big@single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-1/igt@gem_exec_suspend@basic-s3.html">ABORT</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131">i91=
5#15131</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_158761v5/shard-rkl-7/igt@gem_exec_suspend@basic-s3.html">PASS</a> +1 =
other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOM=
PLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/13356">i915#13356</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/13820">i915#13820</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-3/igt@i915_pm_freq_ap=
i@freq-suspend@gt0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg1-16/igt@i915_suspend@basic-s2idle-without-i915.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4391">i915#4391</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-18/igt@i915_suspend=
@basic-s2idle-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-180-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/5138">i915#5138</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-mtlp-5/igt@kms_big_fb@4-ti=
led-max-hw-stride-64bpp-rotate-180-hflip.html">PASS</a> +1 other test pass<=
/li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-2/igt@kms_color@deep-color.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#126=
55</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_color@deep-color.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-256x85.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/13566">i915#13566</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-25=
6x85.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-snb4/igt@kms_flip@2x-plain-flip-ts-check-interruptible@=
ab-vga1-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/10826">i915#10826</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-snb7/igt@kms_flip@2x=
-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html">PASS</a> +1 other =
test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-vs-vblank-race:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg1-12/igt@kms_flip@dpms-vs-vblank-race.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826">=
i915#10826</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_158761v5/shard-dg1-16/igt@kms_flip@dpms-vs-vblank-race.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@d-hdmi-a3:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg2-6/igt@kms_flip@flip-vs-expired-vblank-interruptible=
@d-hdmi-a3.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/13027">i915#13027</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-5/igt@kms_flip@flip-v=
s-expired-vblank-interruptible@d-hdmi-a3.html">PASS</a> +1 other test pass<=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">=
i915#6113</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_158761v5/shard-rkl-2/igt@kms_flip@flip-vs-suspend.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-=
pwrite.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-17/igt@kms_frontbuffe=
r_tracking@fbc-rgb101010-draw-pwrite.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-tglu-7/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14867">=
i915#14867</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_158761v5/shard-tglu-2/igt@kms_hdmi_inject@inject-audio.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073=
">i915#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_158761v5/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15=
073">i915#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_158761v5/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.h=
tml">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-idle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-3/igt@kms_pm_rpm@system-suspend-idle.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14419">i915#14419</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_158761v5/shard-rkl-4/igt@kms_pm_rpm@system-suspend-idle.htm=
l">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@api_intel_bb@object-reloc-purge-cache.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/8411">i915#8411</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@api_intel_bb@object=
-reloc-purge-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/8411">i915#8411</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9323">i915#9323</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@gem_ccs@block=
-copy-compressed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@gem_ccs@block-multicopy-compressed.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/93=
23">i915#9323</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_158761v5/shard-rkl-6/igt@gem_ccs@block-multicopy-compressed.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#2=
80</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_158761v5/shard-rkl-6/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@gem_exec_balancer@par=
allel-ordering.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-noreloc.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3281">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@gem_exec_reloc@basic-cpu=
-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-2/igt@gem_exec_reloc@basic-wc-read-noreloc.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
3281">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_158761v5/shard-rkl-6/igt@gem_exec_reloc@basic-wc-read-noreloc=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3281">i915#3281</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/4613">i915#4613</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_158761v5/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-m=
ulti-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@gem_lmem_swapping@h=
eavy-verify-random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@gem_partial_pwrite_pread@write.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3282">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@gem_partial_pwrite_pread@w=
rite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-2/igt@gem_tiled_partial_pwrite_pread@writes.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3282">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_158761v5/shard-rkl-6/igt@gem_tiled_partial_pwrite_pread@writ=
es.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-2/igt@gem_userptr_blits@unsync-unmap-after-close.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3297">i915#3297</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap=
-after-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test ski=
p</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/2527">i915#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@gen9_exec_parse@bb-oversize.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">=
i915#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_158761v5/shard-rkl-6/igt@gen9_exec_parse@bb-start-param.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/2527">i915#2527</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@i915_pm_freq_api@freq-reset.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/8399">i915#8399</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@i915_pm_freq_api@freq-reset.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@i915_query@hwconfig_table.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245">i915#=
6245</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_158761v5/shard-rkl-6/igt@i915_query@hwconfig_table.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#1=
4544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#77=
07</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_158761v5/shard-rkl-6/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/5286">i915#5286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_big_fb@4-tiled-8bpp-=
rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate=
-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_big_fb@4-tiled-=
max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286=
</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-90.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3638">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_big_fb@linear-64bpp=
-rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3638">i915#3638</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/12805">i915#12805</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_ccs@crc-primary-suspend=
-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/12805">i915#12805</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-c=
cs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/12313">i915#12313</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_ccs=
@crc-sprite-planes-basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +1 =
other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2=
/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#140=
98</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6095">i915#6095</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_ccs@missing-cc=
s-buffer-y-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#609=
5</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-2/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/12313">i915#12313</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled=
-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/12313">i915#12313</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@kms_chamelium_edid@dp-edid-stress-resolution-=
non-4k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard=
-rkl-2/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1115=
1">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@kms_chamelium_edid@hdmi-edid-read.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/111=
51">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_chamelium_edid@hdmi=
-edid-read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg2-11/igt@kms_content_protection@atomic.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">=
i915#7173</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_158761v5/shard-dg2-4/igt@kms_content_protection@atomic.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944=
">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@kms_content_protection@atomic.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i=
915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_content_pro=
tection@atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i9=
15#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg2-1/igt@kms_content_protection@atomic-dpms.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/69=
44">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_conte=
nt_protection@atomic-dpms.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@kms_content_protection@dp-mst-type-1.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
3116">i915#3116</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_158761v5/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@kms_content_protection@lic-type-1.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_conte=
nt_protection@lic-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg1-17/igt@kms_content_protection@mei-interface.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9424">i915#9424</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-12/igt@kms_content_protecti=
on@mei-interface.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9433">i915#9433</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@kms_content_protection@srm.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/7118">i915#7118</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_content_prot=
ection@srm.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg2-4/igt@kms_content_protection@suspend-resume.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6944">i915#6944</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_158761v5/shard-dg2-11/igt@kms_content_protection@suspend-res=
ume.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-512x512.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/13049">i915#13049</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_cursor_crc@c=
ursor-onscreen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
13049">i915#13049</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x1=
70.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/13049">i915#13049</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-32x10.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-mo=
vement-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x32.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_cursor_crc=
@cursor-rapid-movement-32x32.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-2/igt@kms_cursor_legacy@basic-busy-flip-before-curs=
or-atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_cursor_legacy@=
basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#410=
3</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.htm=
l">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_158761v5/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9723">i915#9723</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_dirtyfb@psr-dirtyfb-ioc=
tl.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@kms_display_modes@extended-mode-basic.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/13691">i915#13691</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_display_modes=
@extended-mode-basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/13691">i915#13691</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555=
">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3804">i915#3804</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3840">i915#3840</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_dsc@dsc-fractional-bpp.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@kms_feature_discovery@display-2x.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/1839">i915#1839</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_feature_discovery@di=
splay-2x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@kms_feature_discovery@display-3x.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839=
">i915#1839</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_158761v5/shard-rkl-6/igt@kms_feature_discovery@display-3x.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#=
14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/9934">i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_flip@2x-flip-vs-dpms.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@kms_flip@2x-flip-vs-fences-interruptible.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/9934">i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_flip@2x-flip-vs-fences-inter=
ruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +9 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg1-15/igt@kms_flip@2x-plain-flip-ts-check-interruptibl=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9934">i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158761v5/shard-dg1-15/igt@kms_flip@2x-plain-flip-ts=
-check-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:</=
p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bp=
p-yftile-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl=
-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/2672">i915#2672</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pi=
pe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bp=
p-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard=
-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscalin=
g@pipe-a-valid-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +2 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-=
indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_front=
buffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#=
14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/1825">i915#1825</a>) +26 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt=
:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-=
pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/sh=
ard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-m=
map-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/15102">i915#15102</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-s=
pr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
58761v5/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-ind=
fb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_frontbuffer_tr=
acking@fbcpsr-1p-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#302=
3</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-c=
ur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard=
-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-=
gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/1825">i915#1825</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9766">i915#9766</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_frontbuffer_tra=
cking@pipe-fbc-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9766">i915#9766</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri=
-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_fr=
ontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i=
915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/15102">i915#15102</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur=
-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg2-4/igt@=
kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915=
#10433</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3458">i915#3458</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri=
-shrfb-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1587=
61v5/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-dr=
aw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrf=
b-msflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5=
/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/3023">i915#3023</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri=
-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-15/igt@kms_fr=
ontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i9=
15#4423</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/8708">i915#8708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg1-12/igt@kms_hdr@static-toggle-suspend.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">=
i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4423">i915#4423</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-16/igt@kms_hdr@stati=
c-toggle-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-2/igt@kms_joiner@invalid-modeset-ultra-joiner.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/12339">i915#12339</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_joiner@invalid-modeset-ultr=
a-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/12339">i915#12339</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-2/igt@kms_panel_fitting@atomic-fastset.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301=
">i915#6301</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_158761v5/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@kms_plane_multiple@2x-tiling-4.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958"=
>i915#13958</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_158761v5/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-4.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
3958">i915#13958</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-=
clamping-rotation.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
58761v5/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clampi=
ng-rotation.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15329">i915#15329</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-=
clamping-rotation@pipe-b.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/s=
hard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotati=
on@pipe-b.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15329">i915#15329</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-2/igt@kms_pm_backlight@bad-brightness.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354"=
>i915#5354</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_158761v5/shard-rkl-6/igt@kms_pm_backlight@bad-brightness.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@kms_pm_backlight@fade.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/5354">i915#5354</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_pm_backlight@fade.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354"=
>i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@kms_pm_dc@dc5-retention-flops.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i=
915#3828</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_158761v5/shard-rkl-6/igt@kms_pm_dc@dc5-retention-flops.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg1-13/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/15073">i915#15073</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-16/igt@kms_pm_rpm@modes=
et-lpsp-stress-no-wait.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@package-g7:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-2/igt@kms_pm_rpm@package-g7.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15403">i915#154=
03</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_158761v5/shard-rkl-6/igt@kms_pm_rpm@package-g7.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/154=
03">i915#15403</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/11520">i915#11520</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor=
-plane-update-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +5 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-conti=
nuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shar=
d-rkl-2/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully=
-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg1-16/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg=
-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/11520">i915#11520</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-18/igt@kms_p=
sr2_sf@pr-overlay-primary-update-sf-dmg-area.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-no-drrs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@kms_psr@fbc-pr-no-drrs.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#107=
2</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_psr@fbc-pr-no-dr=
rs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9732">i915#9732</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-primary-blt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-dg1-16/igt@kms_psr@fbc-psr2-primary-blt.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i=
915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4423">i915#4423</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-dg1-18/igt@kms_psr@fbc-ps=
r2-primary-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +1 other test ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@kms_psr@psr2-suspend.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
732">i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_158761v5/shard-rkl-6/igt@kms_psr@psr2-suspend.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i9=
15#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/9732">i915#9732</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9685">i915#9685</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-6/igt@kms_psr_stress_test@i=
nvalidate-primary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern-with-cha=
melium.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/8623">i915#8623</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158761v5/shard-rkl-2/igt@kms_t=
iled_display@basic-test-pattern-with-chamelium.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@kms_vrr@flipline.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243">i915#15243</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555=
">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_158761v5/shard-rkl-6/igt@kms_vrr@flipline.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/15243">i915#15243</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#=
14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3708">i915#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_158761v5/shard-rkl-2/igt@prime_vgem@coherency-gtt.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3708">i915#3708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-5/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915=
#9917</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_158761v5/shard-rkl-6/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915=
#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17694/shard-rkl-6/igt@tools_test@sysfs_l3_parity.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_158761v5/shard-rkl-2/igt@tools_test@sysfs_l3_parity.html">SKIP</a> +6=
 other tests skip</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17694 -&gt; Patchwork_158761v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17694: 2eb2f8746a879f1c0e4c56b715c179424dafd8e0 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_8668: 906681747a312ef11ef9af8ab1fa6eff28b4cbd0 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_158761v5: 2eb2f8746a879f1c0e4c56b715c179424dafd8e0 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============2926774378677621431==--
