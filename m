Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B51B24ADD
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Aug 2025 15:44:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2766E10E1DC;
	Wed, 13 Aug 2025 13:44:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B968210E1DC;
 Wed, 13 Aug 2025 13:44:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6047532217210394387=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EFull=3A_success_for_drm/i915/gt=3A_Relocate_?=
 =?utf-8?q?context-specific_workarounds_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sebastian Brzezinka" <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Aug 2025 13:44:31 -0000
Message-ID: <175509267174.233078.11095680438872147707@1538d3639d33>
X-Patchwork-Hint: ignore
References: <cover.1754902406.git.sebastian.brzezinka@intel.com>
In-Reply-To: <cover.1754902406.git.sebastian.brzezinka@intel.com>
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

--===============6047532217210394387==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Relocate context-specific workarounds (rev3)
URL   : https://patchwork.freedesktop.org/series/152399/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_16994_full -> Patchwork_152399v3_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (13 -> 12)
------------------------------

  Missing    (1): shard-snb-0 

New tests
---------

  New tests have been introduced between CI_DRM_16994_full and Patchwork_152399v3_full:

### New IGT tests (22) ###

  * igt@i915_pm_rps@basic-blt:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@basic-flip-vs-modeset:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@basic-gtt-cpu-active:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@blit-reloc-keep-cache:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@create-invalid-size:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@cursor-onscreen-256x85:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@etime-single-wait-submitted:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@fault-concurrent:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@fbc-1p-offscren-pri-shrfb-draw-render:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@fbc-2p-scndscrn-cur-indfb-move:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@getfb2-handle-closed:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@invalid-properties-legacy:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@linear-8bpp-rotate-90:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@multi-wait-all-for-submit-submitted:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@pixel-format-source-clamping:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@plane-scaler-unity-scaling-with-pixel-format:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@primary-yf-tiled-reflect-x-90:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@psr-2p-primscrn-indfb-plflip-blt:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@rel-constants-invalid-ring:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@u-independent:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_152399v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-dg2:          NOTRUN -> [SKIP][1] ([i915#8411])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][2] ([i915#12392] / [i915#13356])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-5/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          NOTRUN -> [SKIP][3] ([i915#8562])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-1/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_persistence@heartbeat-many:
    - shard-dg2:          NOTRUN -> [SKIP][4] ([i915#8555])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@gem_ctx_persistence@heartbeat-many.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process:
    - shard-snb:          NOTRUN -> [SKIP][5] ([i915#1099])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-snb5/igt@gem_ctx_persistence@legacy-engines-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline@rcs0:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][6] ([i915#12964]) +1 other test dmesg-warn
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_ctx_shared@exec-single-timeline@rcs0.html

  * igt@gem_eio@in-flight-suspend:
    - shard-dg1:          [PASS][7] -> [DMESG-WARN][8] ([i915#4391] / [i915#4423])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg1-13/igt@gem_eio@in-flight-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-19/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-tglu-1:       NOTRUN -> [SKIP][9] ([i915#4525])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fence@submit:
    - shard-dg2:          NOTRUN -> [SKIP][10] ([i915#4812])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@gem_exec_fence@submit.html

  * igt@gem_exec_flush@basic-batch-kernel-default-uc:
    - shard-dg2-9:        NOTRUN -> [SKIP][11] ([i915#3539] / [i915#4852]) +1 other test skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@gem_exec_flush@basic-batch-kernel-default-uc.html

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - shard-dg2:          NOTRUN -> [SKIP][12] ([i915#3539] / [i915#4852])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-1/igt@gem_exec_flush@basic-wb-rw-before-default.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-dg2-9:        NOTRUN -> [SKIP][13] ([i915#5107])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_reloc@basic-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][14] ([i915#14544] / [i915#3281])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_exec_reloc@basic-cpu.html

  * igt@gem_exec_reloc@basic-cpu-read:
    - shard-dg2-9:        NOTRUN -> [SKIP][15] ([i915#3281]) +5 other tests skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@gem_exec_reloc@basic-cpu-read.html

  * igt@gem_exec_reloc@basic-write-gtt-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#3281]) +8 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@gem_exec_reloc@basic-write-gtt-noreloc.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-rkl:          [PASS][17] -> [INCOMPLETE][18] ([i915#13304]) +1 other test incomplete
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-6/igt@gem_exec_suspend@basic-s3.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#4860]) +1 other test skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_fence_thrash@bo-write-verify-none:
    - shard-dg1:          NOTRUN -> [SKIP][20] ([i915#4860])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@gem_fence_thrash@bo-write-verify-none.html

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - shard-dg2-9:        NOTRUN -> [SKIP][21] ([i915#4860]) +2 other tests skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@gem_fenced_exec_thrash@2-spare-fences.html

  * igt@gem_huc_copy@huc-copy:
    - shard-glk:          NOTRUN -> [SKIP][22] ([i915#2190])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-tglu-1:       NOTRUN -> [SKIP][23] ([i915#4613]) +1 other test skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@massive:
    - shard-rkl:          NOTRUN -> [SKIP][24] ([i915#14544] / [i915#4613])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_lmem_swapping@massive.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-dg1:          [PASS][25] -> [ABORT][26] ([i915#14804]) +1 other test abort
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg1-16/igt@gem_lmem_swapping@parallel-random-verify.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-14/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@random:
    - shard-glk:          NOTRUN -> [SKIP][27] ([i915#4613])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk2/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@verify:
    - shard-rkl:          NOTRUN -> [SKIP][28] ([i915#4613])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@gem_lmem_swapping@verify.html
    - shard-tglu:         NOTRUN -> [SKIP][29] ([i915#4613])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@gem_lmem_swapping@verify.html

  * igt@gem_mmap@bad-size:
    - shard-dg2-9:        NOTRUN -> [SKIP][30] ([i915#4083]) +1 other test skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@gem_mmap@bad-size.html

  * igt@gem_mmap_gtt@basic-small-copy-odd:
    - shard-dg2-9:        NOTRUN -> [SKIP][31] ([i915#4077]) +2 other tests skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@gem_mmap_gtt@basic-small-copy-odd.html

  * igt@gem_mmap_gtt@zero-extend:
    - shard-dg1:          NOTRUN -> [SKIP][32] ([i915#4077])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@gem_mmap_gtt@zero-extend.html

  * igt@gem_mmap_offset@open-flood:
    - shard-rkl:          [PASS][33] -> [DMESG-WARN][34] ([i915#12964] / [i915#14602])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-6/igt@gem_mmap_offset@open-flood.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_mmap_offset@open-flood.html

  * igt@gem_mmap_wc@copy:
    - shard-dg1:          NOTRUN -> [SKIP][35] ([i915#4083])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@gem_mmap_wc@copy.html

  * igt@gem_mmap_wc@pf-nonblock:
    - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#4083]) +2 other tests skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@gem_mmap_wc@pf-nonblock.html

  * igt@gem_mmap_wc@set-cache-level:
    - shard-rkl:          NOTRUN -> [SKIP][37] ([i915#14544] / [i915#1850])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#3282]) +3 other tests skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_partial_pwrite_pread@write:
    - shard-dg2-9:        NOTRUN -> [SKIP][39] ([i915#3282]) +3 other tests skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@gem_partial_pwrite_pread@write.html

  * igt@gem_pread@snoop:
    - shard-rkl:          NOTRUN -> [SKIP][40] ([i915#14544] / [i915#3282]) +1 other test skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_pread@snoop.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-rkl:          NOTRUN -> [TIMEOUT][41] ([i915#12964])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - shard-rkl:          NOTRUN -> [TIMEOUT][42] ([i915#12917] / [i915#12964])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@gem_pxp@hw-rejects-pxp-buffer.html
    - shard-tglu:         NOTRUN -> [SKIP][43] ([i915#13398])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@gem_pxp@hw-rejects-pxp-buffer.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-rkl:          [PASS][44] -> [TIMEOUT][45] ([i915#12917] / [i915#12964]) +1 other test timeout
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-on.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#4270]) +2 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-dg2-9:        NOTRUN -> [SKIP][47] ([i915#4270]) +2 other tests skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-dg1:          NOTRUN -> [SKIP][48] ([i915#4270]) +1 other test skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#5190] / [i915#8428]) +3 other tests skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-glk11:        NOTRUN -> [SKIP][50] +108 other tests skip
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk11/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
    - shard-dg2-9:        NOTRUN -> [SKIP][51] ([i915#5190] / [i915#8428]) +2 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-dg2-9:        NOTRUN -> [SKIP][52] ([i915#4885])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@gem_softpin@evict-snoop.html

  * igt@gem_softpin@noreloc-s3:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][53] ([i915#13809])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk11/igt@gem_softpin@noreloc-s3.html

  * igt@gem_tiled_pread_basic:
    - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#4079]) +2 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@gem_tiled_pread_basic.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#3297]) +3 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#14544] / [i915#3282] / [i915#3297])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@map-fixed-invalidate:
    - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#3297] / [i915#4880]) +1 other test skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@gem_userptr_blits@map-fixed-invalidate.html

  * igt@gem_userptr_blits@relocations:
    - shard-dg2-9:        NOTRUN -> [SKIP][58] ([i915#3281] / [i915#3297])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@gem_userptr_blits@relocations.html

  * igt@gem_userptr_blits@sd-probe:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#3297] / [i915#4958])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@gem_userptr_blits@sd-probe.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-dg2-9:        NOTRUN -> [SKIP][60] ([i915#3297])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][61] ([i915#13356] / [i915#14586])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk10/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-rkl:          NOTRUN -> [SKIP][62] +1 other test skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@gen7_exec_parse@chained-batch.html

  * igt@gen9_exec_parse@basic-rejected:
    - shard-dg2-9:        NOTRUN -> [SKIP][63] ([i915#2856]) +1 other test skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@gen9_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@bb-large:
    - shard-glk:          NOTRUN -> [FAIL][64] ([i915#14806])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk2/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-tglu-1:       NOTRUN -> [SKIP][65] ([i915#2527] / [i915#2856]) +2 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#2856]) +1 other test skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#14544] / [i915#2527])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gen9_exec_parse@unaligned-access.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-tglu:         NOTRUN -> [SKIP][68] ([i915#2527] / [i915#2856])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@gen9_exec_parse@unaligned-jump.html
    - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#2527])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_drm_fdinfo@busy-idle-check-all@ccs0:
    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#11527]) +7 other tests skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@i915_drm_fdinfo@busy-idle-check-all@ccs0.html

  * igt@i915_drm_fdinfo@virtual-busy-idle:
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#14118])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-3/igt@i915_drm_fdinfo@virtual-busy-idle.html

  * igt@i915_fb_tiling@basic-x-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#13786])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@i915_fb_tiling@basic-x-tiling.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [PASS][73] -> [ABORT][74] ([i915#8213]) +1 other test abort
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg2-11/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-tglu:         NOTRUN -> [WARN][75] ([i915#13790] / [i915#2681]) +1 other test warn
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rps@basic-api:
    - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#11681] / [i915#6621])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [PASS][77] -> [INCOMPLETE][78] ([i915#13729] / [i915#13821])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-snb5/igt@i915_pm_rps@reset.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-snb7/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@thresholds-idle-park:
    - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#11681])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-3/igt@i915_pm_rps@thresholds-idle-park.html

  * igt@i915_pm_sseu@full-enable:
    - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#4387])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@i915_pm_sseu@full-enable.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][81] ([i915#4817] / [i915#7443])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-5/igt@i915_suspend@basic-s3-without-i915.html
    - shard-glk:          [PASS][82] -> [INCOMPLETE][83] ([i915#4817])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-glk2/igt@i915_suspend@basic-s3-without-i915.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk8/igt@i915_suspend@basic-s3-without-i915.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#4077]) +11 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#4212]) +1 other test skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#5190]) +2 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-1/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-tglu:         NOTRUN -> [SKIP][87] ([i915#9531])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#1769] / [i915#3555])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-glk:          NOTRUN -> [SKIP][89] ([i915#1769])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk8/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [ABORT][90] ([i915#14819]) +1 other test abort
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk6/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html

  * igt@kms_atomic_transition@plane-primary-toggle-with-vblank-wait:
    - shard-rkl:          [PASS][91] -> [SKIP][92] ([i915#14544]) +14 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_atomic_transition@plane-primary-toggle-with-vblank-wait.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_atomic_transition@plane-primary-toggle-with-vblank-wait.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition:
    - shard-glk:          NOTRUN -> [ABORT][93] ([i915#14804] / [i915#14814])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk8/igt@kms_atomic_transition@plane-toggle-modeset-transition.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-b-hdmi-a-2:
    - shard-glk:          NOTRUN -> [ABORT][94] ([i915#14804]) +6 other tests abort
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk8/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-b-hdmi-a-2.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-270:
    - shard-dg2-9:        NOTRUN -> [SKIP][95] +4 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglu-1:       NOTRUN -> [SKIP][96] ([i915#5286]) +3 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#5286])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html
    - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#5286])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][99] ([i915#4538] / [i915#5286]) +1 other test skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#4538] / [i915#5190]) +9 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][101] ([i915#3638]) +1 other test skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-dg2-9:        NOTRUN -> [SKIP][102] ([i915#4538] / [i915#5190]) +5 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][103] ([i915#4538])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - shard-glk10:        NOTRUN -> [SKIP][104] +117 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk10/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#14098] / [i915#6095]) +24 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#6095]) +25 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][107] ([i915#10307] / [i915#6095]) +39 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#10307] / [i915#10434] / [i915#6095])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-d-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][109] ([i915#6095]) +4 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-5/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#12805])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#6095]) +12 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][112] ([i915#12796]) +1 other test incomplete
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk9/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][113] ([i915#6095]) +39 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][114] ([i915#12313])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#10307] / [i915#6095]) +143 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-dg2-9:        NOTRUN -> [SKIP][116] ([i915#12313])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#12313]) +1 other test skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][118] ([i915#6095]) +146 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-12/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_cdclk@mode-transition:
    - shard-tglu-1:       NOTRUN -> [SKIP][119] ([i915#3742])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#3742])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@kms_cdclk@mode-transition-all-outputs.html
    - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#3742])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#13783]) +4 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-1/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html

  * igt@kms_chamelium_color@ctm-green-to-red:
    - shard-dg2:          NOTRUN -> [SKIP][123] +9 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@kms_chamelium_color@ctm-green-to-red.html

  * igt@kms_chamelium_edid@dp-edid-resolution-list:
    - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#11151] / [i915#14544] / [i915#7828]) +1 other test skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_chamelium_edid@dp-edid-resolution-list.html

  * igt@kms_chamelium_edid@dp-mode-timings:
    - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#11151] / [i915#7828]) +6 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_chamelium_edid@dp-mode-timings.html

  * igt@kms_chamelium_frames@hdmi-crc-multiple:
    - shard-dg2-9:        NOTRUN -> [SKIP][126] ([i915#11151] / [i915#7828]) +5 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_chamelium_frames@hdmi-crc-multiple.html

  * igt@kms_chamelium_hpd@hdmi-hpd-fast:
    - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#11151] / [i915#7828])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_chamelium_hpd@hdmi-hpd-fast.html

  * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
    - shard-tglu-1:       NOTRUN -> [SKIP][128] ([i915#11151] / [i915#7828]) +4 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html

  * igt@kms_color@ctm-green-to-red:
    - shard-rkl:          [PASS][129] -> [SKIP][130] ([i915#12655] / [i915#14544])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_color@ctm-green-to-red.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_color@ctm-green-to-red.html

  * igt@kms_concurrent@multi-plane-atomic-lowres:
    - shard-snb:          [PASS][131] -> [ABORT][132] ([i915#14804]) +1 other test abort
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-snb7/igt@kms_concurrent@multi-plane-atomic-lowres.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-snb7/igt@kms_concurrent@multi-plane-atomic-lowres.html

  * igt@kms_content_protection@legacy@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][133] ([i915#7173]) +1 other test fail
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-11/igt@kms_content_protection@legacy@pipe-a-dp-3.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#9424])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-3/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#7118] / [i915#9424])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-1/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-onscreen-32x10:
    - shard-dg1:          NOTRUN -> [SKIP][136] ([i915#3555]) +1 other test skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_cursor_crc@cursor-onscreen-32x10.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-tglu:         NOTRUN -> [SKIP][137] ([i915#3555])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-5/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-random-256x85:
    - shard-tglu-1:       NOTRUN -> [FAIL][138] ([i915#13566]) +1 other test fail
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_cursor_crc@cursor-random-256x85.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#13049])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_cursor_crc@cursor-random-512x170.html
    - shard-tglu:         NOTRUN -> [SKIP][140] ([i915#13049])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-tglu-1:       NOTRUN -> [SKIP][141] ([i915#3555]) +2 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-128x42:
    - shard-tglu:         [PASS][142] -> [FAIL][143] ([i915#13566]) +1 other test fail
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-tglu-7/igt@kms_cursor_crc@cursor-sliding-128x42.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-4/igt@kms_cursor_crc@cursor-sliding-128x42.html

  * igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1:
    - shard-rkl:          [PASS][144] -> [FAIL][145] ([i915#13566]) +1 other test fail
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#3555]) +3 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-tglu-1:       NOTRUN -> [SKIP][147] ([i915#13049]) +1 other test skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#11190] / [i915#14544])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - shard-tglu-1:       NOTRUN -> [SKIP][149] ([i915#4103])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#4103] / [i915#4213])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - shard-glk11:        NOTRUN -> [SKIP][151] ([i915#11190]) +2 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk11/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - shard-rkl:          [PASS][152] -> [SKIP][153] ([i915#11190] / [i915#14544])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#13046] / [i915#5354]) +3 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
    - shard-dg2-9:        NOTRUN -> [SKIP][155] ([i915#13046] / [i915#5354])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          NOTRUN -> [FAIL][156] ([i915#2346])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@forked-move:
    - shard-tglu-1:       NOTRUN -> [ABORT][157] ([i915#14804]) +1 other test abort
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_cursor_legacy@forked-move.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg1:          NOTRUN -> [SKIP][158] ([i915#4103] / [i915#4213])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@torture-move:
    - shard-glk11:        NOTRUN -> [ABORT][159] ([i915#14804]) +1 other test abort
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk11/igt@kms_cursor_legacy@torture-move.html

  * igt@kms_dp_link_training@non-uhbr-sst:
    - shard-dg2:          [PASS][160] -> [SKIP][161] ([i915#13749])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg2-10/igt@kms_dp_link_training@non-uhbr-sst.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-1/igt@kms_dp_link_training@non-uhbr-sst.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#3555] / [i915#3840])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-3/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#3840] / [i915#9688])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-tglu-1:       NOTRUN -> [SKIP][164] ([i915#3840])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-dg1:          NOTRUN -> [SKIP][165] ([i915#3555] / [i915#3840])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-tglu:         NOTRUN -> [SKIP][166] ([i915#3555] / [i915#3840])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-5/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-dg2-9:        NOTRUN -> [SKIP][167] ([i915#3555] / [i915#3840]) +1 other test skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#3840] / [i915#9053])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_feature_discovery@display-1x:
    - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#14544] / [i915#9738])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_feature_discovery@display-1x.html

  * igt@kms_feature_discovery@display-3x:
    - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#1839])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@display-4x:
    - shard-tglu-1:       NOTRUN -> [SKIP][171] ([i915#1839])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_feature_discovery@display-4x.html

  * igt@kms_feature_discovery@psr2:
    - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#658])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-3/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-dg2-9:        NOTRUN -> [SKIP][173] ([i915#9934]) +1 other test skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank:
    - shard-tglu:         NOTRUN -> [SKIP][174] ([i915#3637] / [i915#9934])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@kms_flip@2x-blocking-absolute-wf_vblank.html
    - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#9934])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_flip@2x-blocking-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-dg2-9:        NOTRUN -> [SKIP][176] ([i915#8381])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#14544] / [i915#9934])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_flip@2x-flip-vs-panning.html
    - shard-tglu-1:       NOTRUN -> [SKIP][178] ([i915#3637] / [i915#9934]) +3 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#9934]) +3 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-3/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-plain-flip:
    - shard-dg1:          NOTRUN -> [SKIP][180] ([i915#9934]) +2 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-glk:          [PASS][181] -> [SKIP][182] +1 other test skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-glk5/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk8/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@dpms-off-confusion-interruptible:
    - shard-rkl:          [PASS][183] -> [SKIP][184] ([i915#14544] / [i915#3637]) +1 other test skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_flip@dpms-off-confusion-interruptible.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_flip@dpms-off-confusion-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-snb:          [PASS][185] -> [INCOMPLETE][186] ([i915#12314] / [i915#12745] / [i915#4839])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-snb4/igt@kms_flip@flip-vs-suspend.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-snb6/igt@kms_flip@flip-vs-suspend.html
    - shard-glk:          NOTRUN -> [INCOMPLETE][187] ([i915#12745] / [i915#4839] / [i915#6113])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-rkl:          [PASS][188] -> [INCOMPLETE][189] ([i915#6113])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][190] ([i915#6113])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@a-hdmi-a1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][191] ([i915#12745] / [i915#6113])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk1/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@b-hdmi-a1:
    - shard-snb:          [PASS][192] -> [INCOMPLETE][193] ([i915#12314] / [i915#4839])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-snb4/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-snb6/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#14544] / [i915#3637]) +3 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][195] ([i915#2672] / [i915#3555])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][196] ([i915#2587] / [i915#2672])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#2672] / [i915#3555] / [i915#5190])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#2672]) +1 other test skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#14544] / [i915#3555]) +1 other test skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#2672] / [i915#3555])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
    - shard-tglu:         NOTRUN -> [SKIP][201] ([i915#2672] / [i915#3555])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][202] ([i915#2587] / [i915#2672])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html
    - shard-rkl:          NOTRUN -> [SKIP][203] ([i915#2672])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling:
    - shard-rkl:          [PASS][204] -> [SKIP][205] ([i915#14544] / [i915#3555])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#2672] / [i915#3555])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
    - shard-dg2-9:        NOTRUN -> [SKIP][207] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-valid-mode:
    - shard-dg2-9:        NOTRUN -> [SKIP][208] ([i915#2672]) +1 other test skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:
    - shard-dg2-9:        NOTRUN -> [FAIL][209] ([i915#6880])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-rkl:          [PASS][210] -> [SKIP][211] ([i915#14544] / [i915#1849] / [i915#5354]) +2 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite:
    - shard-dg2-9:        NOTRUN -> [SKIP][212] ([i915#5354]) +14 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-rte:
    - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#5354]) +19 other tests skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-2p-rte.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][214] ([i915#1825]) +4 other tests skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][215] ([i915#8708]) +3 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
    - shard-dg2-9:        NOTRUN -> [SKIP][216] ([i915#3458]) +7 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-move:
    - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#14544] / [i915#1849] / [i915#5354]) +15 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-cpu:
    - shard-dg1:          NOTRUN -> [SKIP][218] +6 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-glk:          NOTRUN -> [SKIP][219] +184 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc:
    - shard-tglu-1:       NOTRUN -> [SKIP][220] +50 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-tglu-1:       NOTRUN -> [SKIP][221] ([i915#5439])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][222] +13 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#3458]) +10 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#10433] / [i915#3458])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg2-9:        NOTRUN -> [SKIP][225] ([i915#8708]) +4 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
    - shard-dg1:          NOTRUN -> [SKIP][226] ([i915#3458]) +2 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#3023])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][228] ([i915#8708]) +16 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg2:          [PASS][229] -> [SKIP][230] ([i915#3555] / [i915#8228])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg2-11/igt@kms_hdr@bpc-switch-dpms.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-dg2-9:        NOTRUN -> [SKIP][231] ([i915#3555] / [i915#8228]) +1 other test skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#3555] / [i915#8228]) +1 other test skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-toggle:
    - shard-rkl:          NOTRUN -> [SKIP][233] ([i915#3555] / [i915#8228])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_hdr@static-toggle.html
    - shard-tglu:         NOTRUN -> [SKIP][234] ([i915#3555] / [i915#8228])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@kms_hdr@static-toggle.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][235] ([i915#3555] / [i915#8228])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_invalid_mode@bad-vsync-start:
    - shard-rkl:          NOTRUN -> [SKIP][236] ([i915#14544] / [i915#3555] / [i915#8826])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-start.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][237] ([i915#10656])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-dg2-9:        NOTRUN -> [SKIP][238] ([i915#10656])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-dg1:          NOTRUN -> [SKIP][239] ([i915#12339])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_lease@lease-invalid-plane:
    - shard-rkl:          NOTRUN -> [SKIP][240] ([i915#14544]) +28 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_lease@lease-invalid-plane.html

  * igt@kms_panel_fitting@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][241] ([i915#6301])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane_multiple@2x-tiling-x:
    - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#13958]) +1 other test skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@kms_plane_multiple@2x-tiling-x.html

  * igt@kms_plane_multiple@2x-tiling-y:
    - shard-tglu-1:       NOTRUN -> [SKIP][243] ([i915#13958])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-y.html

  * igt@kms_plane_multiple@tiling-4:
    - shard-dg1:          NOTRUN -> [SKIP][244] ([i915#14259])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_plane_multiple@tiling-4.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-dg2-9:        NOTRUN -> [SKIP][245] ([i915#14259])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:
    - shard-rkl:          NOTRUN -> [SKIP][246] ([i915#14544] / [i915#3555] / [i915#8152])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b:
    - shard-rkl:          NOTRUN -> [SKIP][247] ([i915#12247] / [i915#14544] / [i915#8152]) +2 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][248] ([i915#12247] / [i915#14544]) +1 other test skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
    - shard-tglu-1:       NOTRUN -> [SKIP][249] ([i915#12247]) +8 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:
    - shard-rkl:          NOTRUN -> [SKIP][250] ([i915#12247])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:
    - shard-dg1:          NOTRUN -> [SKIP][251] ([i915#12247]) +4 other tests skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:
    - shard-rkl:          [PASS][252] -> [SKIP][253] ([i915#14544] / [i915#6953] / [i915#8152])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a:
    - shard-rkl:          [PASS][254] -> [SKIP][255] ([i915#12247] / [i915#14544]) +1 other test skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-b:
    - shard-rkl:          [PASS][256] -> [SKIP][257] ([i915#12247] / [i915#14544] / [i915#8152]) +1 other test skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-b.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-b.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-rkl:          [PASS][258] -> [SKIP][259] ([i915#12247] / [i915#14544] / [i915#3555] / [i915#6953] / [i915#8152])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b:
    - shard-snb:          NOTRUN -> [SKIP][260] +70 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-snb5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b.html

  * igt@kms_pm_backlight@bad-brightness:
    - shard-tglu-1:       NOTRUN -> [SKIP][261] ([i915#9812])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_pm_backlight@bad-brightness.html

  * igt@kms_pm_backlight@fade:
    - shard-tglu:         NOTRUN -> [SKIP][262] ([i915#9812])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@kms_pm_backlight@fade.html
    - shard-rkl:          NOTRUN -> [SKIP][263] ([i915#5354])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_pm_backlight@fade.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][264] ([i915#4281])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg2-9:        NOTRUN -> [SKIP][265] ([i915#9340])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2-9:        NOTRUN -> [SKIP][266] ([i915#9519])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-tglu-1:       NOTRUN -> [SKIP][267] ([i915#9519])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][268] ([i915#9519])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp.html
    - shard-rkl:          [PASS][269] -> [SKIP][270] ([i915#14544] / [i915#9519])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          [PASS][271] -> [SKIP][272] ([i915#9519])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-tglu-1:       NOTRUN -> [SKIP][273] ([i915#6524])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-crc-vgem:
    - shard-dg2:          NOTRUN -> [SKIP][274] ([i915#6524] / [i915#6805])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-3/igt@kms_prime@basic-crc-vgem.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:
    - shard-glk10:        NOTRUN -> [SKIP][275] ([i915#11520]) +2 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk10/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][276] ([i915#11520])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf.html
    - shard-rkl:          NOTRUN -> [SKIP][277] ([i915#11520])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-glk:          NOTRUN -> [SKIP][278] ([i915#11520]) +7 other tests skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk9/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:
    - shard-dg1:          NOTRUN -> [SKIP][279] ([i915#11520]) +1 other test skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area:
    - shard-glk11:        NOTRUN -> [SKIP][280] ([i915#11520]) +3 other tests skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk11/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][281] ([i915#11520] / [i915#14544]) +1 other test skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-plane-move-sf-dmg-area:
    - shard-tglu-1:       NOTRUN -> [SKIP][282] ([i915#11520]) +3 other tests skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf:
    - shard-dg2-9:        NOTRUN -> [SKIP][283] ([i915#11520]) +3 other tests skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][284] ([i915#11520]) +6 other tests skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html
    - shard-snb:          NOTRUN -> [SKIP][285] ([i915#11520]) +1 other test skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-snb5/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#9683])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-tglu-1:       NOTRUN -> [SKIP][287] ([i915#9683])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-dg2-9:        NOTRUN -> [SKIP][288] ([i915#9683])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-psr-cursor-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][289] ([i915#9732])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-5/igt@kms_psr@fbc-psr-cursor-mmap-cpu.html

  * igt@kms_psr@fbc-psr-sprite-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][290] ([i915#1072] / [i915#9732]) +15 other tests skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@kms_psr@fbc-psr-sprite-mmap-gtt.html

  * igt@kms_psr@psr-cursor-mmap-cpu:
    - shard-dg2-9:        NOTRUN -> [SKIP][291] ([i915#1072] / [i915#9732]) +8 other tests skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_psr@psr-cursor-mmap-cpu.html

  * igt@kms_psr@psr2-cursor-blt:
    - shard-rkl:          NOTRUN -> [SKIP][292] ([i915#1072] / [i915#14544] / [i915#9732]) +4 other tests skip
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_psr@psr2-cursor-blt.html

  * igt@kms_psr@psr2-sprite-blt:
    - shard-tglu-1:       NOTRUN -> [SKIP][293] ([i915#9732]) +9 other tests skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_psr@psr2-sprite-blt.html

  * igt@kms_psr@psr2-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][294] ([i915#1072] / [i915#9732]) +4 other tests skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_psr@psr2-suspend.html

  * igt@kms_rmfb@rmfb-ioctl@pipe-a-hdmi-a-1:
    - shard-glk:          [PASS][295] -> [ABORT][296] ([i915#14804]) +1 other test abort
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-glk1/igt@kms_rmfb@rmfb-ioctl@pipe-a-hdmi-a-1.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk3/igt@kms_rmfb@rmfb-ioctl@pipe-a-hdmi-a-1.html

  * igt@kms_rotation_crc@exhaust-fences:
    - shard-dg2-9:        NOTRUN -> [SKIP][297] ([i915#4235])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_rotation_crc@exhaust-fences.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-dg2:          NOTRUN -> [SKIP][298] ([i915#12755])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-3/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-glk11:        NOTRUN -> [ABORT][299] ([i915#13179]) +1 other test abort
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk11/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_setmode@invalid-clone-single-crtc:
    - shard-dg2-9:        NOTRUN -> [SKIP][300] ([i915#3555]) +2 other tests skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_setmode@invalid-clone-single-crtc.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-tglu:         NOTRUN -> [SKIP][301] ([i915#9906])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@kms_vrr@flip-basic-fastset.html
    - shard-rkl:          NOTRUN -> [SKIP][302] ([i915#9906])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-tglu-1:       NOTRUN -> [SKIP][303] ([i915#9906])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-tglu-1:       NOTRUN -> [SKIP][304] ([i915#2437])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-dg2:          NOTRUN -> [SKIP][305] ([i915#2437] / [i915#9412]) +1 other test skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-glk:          NOTRUN -> [SKIP][306] ([i915#2437])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk2/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@non-zero-reason:
    - shard-dg2-9:        NOTRUN -> [FAIL][307] ([i915#9100]) +1 other test fail
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@perf@non-zero-reason.html

  * igt@perf_pmu@busy-double-start@vcs1:
    - shard-dg1:          [PASS][308] -> [FAIL][309] ([i915#4349]) +2 other tests fail
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg1-19/igt@perf_pmu@busy-double-start@vcs1.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@perf_pmu@busy-double-start@vcs1.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg2-9:        NOTRUN -> [FAIL][310] ([i915#12549] / [i915#6806]) +1 other test fail
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@perf_pmu@frequency@gt0.html

  * igt@perf_pmu@module-unload:
    - shard-dg1:          NOTRUN -> [FAIL][311] ([i915#14433])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg2:          NOTRUN -> [SKIP][312] ([i915#8516])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@perf_pmu@rc6-all-gts.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-tglu-1:       NOTRUN -> [SKIP][313] ([i915#8516])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@perf_pmu@semaphore-busy@vecs0:
    - shard-dg2:          NOTRUN -> [FAIL][314] ([i915#4349]) +5 other tests fail
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-1/igt@perf_pmu@semaphore-busy@vecs0.html

  * igt@prime_vgem@basic-fence-read:
    - shard-dg2:          NOTRUN -> [SKIP][315] ([i915#3291] / [i915#3708])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-dg2:          NOTRUN -> [SKIP][316] ([i915#3708])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-3/igt@prime_vgem@fence-flip-hang.html

  * igt@sriov_basic@bind-unbind-vf@vf-1:
    - shard-tglu-1:       NOTRUN -> [FAIL][317] ([i915#12910]) +9 other tests fail
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@sriov_basic@bind-unbind-vf@vf-1.html

  * igt@syncobj_timeline@multi-wait-submitted-signaled:
    - shard-mtlp:         [PASS][318] -> [ABORT][319] ([i915#14804])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-mtlp-4/igt@syncobj_timeline@multi-wait-submitted-signaled.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-mtlp-8/igt@syncobj_timeline@multi-wait-submitted-signaled.html

  * igt@sysfs_heartbeat_interval@nopreempt:
    - shard-rkl:          [PASS][320] -> [DMESG-WARN][321] ([i915#12964]) +11 other tests dmesg-warn
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-8/igt@sysfs_heartbeat_interval@nopreempt.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@sysfs_heartbeat_interval@nopreempt.html

  
#### Possible fixes ####

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [INCOMPLETE][322] ([i915#12392] / [i915#13356]) -> [PASS][323]
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          [INCOMPLETE][324] ([i915#11441] / [i915#13304]) -> [PASS][325]
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg2-1/igt@gem_exec_suspend@basic-s0.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-3/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - shard-dg2:          [INCOMPLETE][326] ([i915#11441]) -> [PASS][327]
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg2-1/igt@gem_exec_suspend@basic-s0@lmem0.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-3/igt@gem_exec_suspend@basic-s0@lmem0.html

  * igt@gem_lmem_swapping@heavy-random@lmem0:
    - shard-dg1:          [ABORT][328] ([i915#14804]) -> [PASS][329] +1 other test pass
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg1-17/igt@gem_lmem_swapping@heavy-random@lmem0.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@gem_lmem_swapping@heavy-random@lmem0.html

  * igt@gem_pxp@fail-invalid-protected-context:
    - shard-rkl:          [TIMEOUT][330] ([i915#12964]) -> [PASS][331]
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-4/igt@gem_pxp@fail-invalid-protected-context.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-8/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-rkl:          [TIMEOUT][332] ([i915#12917] / [i915#12964]) -> [PASS][333] +1 other test pass
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-4/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-8/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         [FAIL][334] ([i915#5138]) -> [PASS][335] +1 other test pass
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-270:
    - shard-rkl:          [SKIP][336] ([i915#14544]) -> [PASS][337] +2 other tests pass
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-6/igt@kms_big_fb@y-tiled-16bpp-rotate-270.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@kms_big_fb@y-tiled-16bpp-rotate-270.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-rkl:          [FAIL][338] ([i915#2346]) -> [PASS][339]
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-rkl:          [INCOMPLETE][340] ([i915#6113]) -> [PASS][341]
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-3/igt@kms_flip@flip-vs-suspend.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-dg1:          [DMESG-WARN][342] ([i915#4423]) -> [PASS][343] +1 other test pass
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg1-12/igt@kms_flip@flip-vs-suspend-interruptible.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-15/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-dg2:          [ABORT][344] ([i915#8213]) -> [PASS][345] +1 other test pass
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg2-10/igt@kms_flip@flip-vs-suspend-interruptible.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend@a-hdmi-a1:
    - shard-tglu:         [ABORT][346] ([i915#14804]) -> [PASS][347] +1 other test pass
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-tglu-2/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-rkl:          [DMESG-WARN][348] ([i915#12964]) -> [PASS][349] +10 other tests pass
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-dg2:          [SKIP][350] ([i915#12388]) -> [PASS][351]
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg2-6/igt@kms_joiner@invalid-modeset-force-big-joiner.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-11/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [SKIP][352] ([i915#9519]) -> [PASS][353]
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@perf_pmu@busy-double-start@vcs1:
    - shard-mtlp:         [FAIL][354] ([i915#4349]) -> [PASS][355]
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-mtlp-2/igt@perf_pmu@busy-double-start@vcs1.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-mtlp-5/igt@perf_pmu@busy-double-start@vcs1.html

  
#### Warnings ####

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-rkl:          [SKIP][356] ([i915#8411]) -> [SKIP][357] ([i915#14544] / [i915#8411])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@api_intel_bb@object-reloc-purge-cache.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-rkl:          [SKIP][358] ([i915#11078] / [i915#14544]) -> [SKIP][359] ([i915#11078])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-6/igt@device_reset@unbind-cold-reset-rebind.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-rkl:          [SKIP][360] ([i915#9323]) -> [SKIP][361] ([i915#14544] / [i915#9323])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_eio@kms:
    - shard-rkl:          [DMESG-WARN][362] ([i915#13363]) -> [DMESG-WARN][363] ([i915#12964])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-8/igt@gem_eio@kms.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-rkl:          [SKIP][364] ([i915#4525]) -> [SKIP][365] ([i915#14544] / [i915#4525])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_reloc@basic-gtt-noreloc:
    - shard-rkl:          [SKIP][366] ([i915#3281]) -> [SKIP][367] ([i915#14544] / [i915#3281])
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-noreloc.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-noreloc.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-rkl:          [SKIP][368] ([i915#4613]) -> [SKIP][369] ([i915#14544] / [i915#4613])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@gem_lmem_swapping@parallel-random-engines.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [TIMEOUT][370] ([i915#5493]) -> [ABORT][371] ([i915#14804]) +1 other test abort
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-rkl:          [SKIP][372] ([i915#3282]) -> [SKIP][373] ([i915#14544] / [i915#3282]) +2 other tests skip
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-rkl:          [TIMEOUT][374] ([i915#12917] / [i915#12964]) -> [SKIP][375] ([i915#14544] / [i915#4270])
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-rkl:          [SKIP][376] ([i915#3297]) -> [SKIP][377] ([i915#14544] / [i915#3297]) +1 other test skip
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen7_exec_parse@basic-rejected:
    - shard-rkl:          [SKIP][378] -> [SKIP][379] ([i915#14544]) +4 other tests skip
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@gen7_exec_parse@basic-rejected.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gen7_exec_parse@basic-rejected.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-dg1:          [SKIP][380] ([i915#1769] / [i915#3555]) -> [SKIP][381] ([i915#1769] / [i915#3555] / [i915#4423])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg1-13/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-19/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-rkl:          [SKIP][382] ([i915#5286]) -> [SKIP][383] ([i915#14544])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][384] ([i915#6095]) -> [SKIP][385] ([i915#14098] / [i915#6095]) +2 other tests skip
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-8/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs:
    - shard-rkl:          [SKIP][386] ([i915#14098] / [i915#6095]) -> [SKIP][387] ([i915#14544]) +2 other tests skip
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc:
    - shard-rkl:          [SKIP][388] ([i915#14544]) -> [SKIP][389] ([i915#14098] / [i915#6095]) +1 other test skip
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][390] ([i915#14098] / [i915#6095]) -> [SKIP][391] ([i915#6095]) +3 other tests skip
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_chamelium_edid@dp-mode-timings:
    - shard-rkl:          [SKIP][392] ([i915#11151] / [i915#7828]) -> [SKIP][393] ([i915#11151] / [i915#14544] / [i915#7828]) +1 other test skip
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_chamelium_edid@dp-mode-timings.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_chamelium_edid@dp-mode-timings.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
    - shard-rkl:          [SKIP][394] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][395] ([i915#11151] / [i915#7828]) +1 other test skip
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          [SKIP][396] ([i915#7118] / [i915#9424]) -> [FAIL][397] ([i915#7173])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg2-6/igt@kms_content_protection@legacy.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-11/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          [SKIP][398] ([i915#9433]) -> [SKIP][399] ([i915#9424])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg1-13/igt@kms_content_protection@mei-interface.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-19/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          [SKIP][400] ([i915#7118]) -> [FAIL][401] ([i915#7173])
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg2-6/igt@kms_content_protection@srm.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-11/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-offscreen-256x85:
    - shard-rkl:          [DMESG-WARN][402] ([i915#12964]) -> [SKIP][403] ([i915#14544])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-256x85.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-256x85.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-rkl:          [SKIP][404] ([i915#3555]) -> [SKIP][405] ([i915#14544])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          [SKIP][406] ([i915#4103]) -> [SKIP][407] ([i915#14544])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_feature_discovery@display-3x:
    - shard-rkl:          [SKIP][408] ([i915#1839]) -> [SKIP][409] ([i915#14544] / [i915#1839])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_feature_discovery@display-3x.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_feature_discovery@display-3x.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-glk:          [INCOMPLETE][410] ([i915#12745] / [i915#4839]) -> [SKIP][411]
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-glk5/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk8/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
    - shard-rkl:          [SKIP][412] ([i915#9934]) -> [SKIP][413] ([i915#14544] / [i915#9934])
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-rkl:          [SKIP][414] ([i915#2672] / [i915#3555]) -> [SKIP][415] ([i915#14544] / [i915#3555])
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render:
    - shard-rkl:          [DMESG-WARN][416] ([i915#12964]) -> [SKIP][417] ([i915#14544] / [i915#1849] / [i915#5354])
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg1:          [SKIP][418] -> [SKIP][419] ([i915#4423])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move:
    - shard-rkl:          [SKIP][420] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][421] ([i915#1825]) +1 other test skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-rkl:          [INCOMPLETE][422] ([i915#10056]) -> [SKIP][423] ([i915#14544] / [i915#1849] / [i915#5354])
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-rkl:          [SKIP][424] ([i915#5439]) -> [SKIP][425] ([i915#14544] / [i915#1849] / [i915#5354])
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:
    - shard-dg2:          [SKIP][426] ([i915#3458]) -> [SKIP][427] ([i915#10433] / [i915#3458])
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt:
    - shard-rkl:          [SKIP][428] ([i915#3023]) -> [SKIP][429] ([i915#14544] / [i915#1849] / [i915#5354]) +5 other tests skip
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-dg1:          [SKIP][430] ([i915#8708]) -> [SKIP][431] ([i915#4423] / [i915#8708])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
    - shard-dg2:          [SKIP][432] ([i915#10433] / [i915#3458]) -> [SKIP][433] ([i915#3458]) +4 other tests skip
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:
    - shard-rkl:          [SKIP][434] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][435] ([i915#3023]) +1 other test skip
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite:
    - shard-rkl:          [SKIP][436] ([i915#1825]) -> [SKIP][437] ([i915#14544] / [i915#1849] / [i915#5354]) +6 other tests skip
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-mtlp:         [SKIP][438] ([i915#1187] / [i915#12713]) -> [SKIP][439] ([i915#12713])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-mtlp-1/igt@kms_hdr@brightness-with-hdr.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-mtlp-8/igt@kms_hdr@brightness-with-hdr.html
    - shard-dg1:          [SKIP][440] ([i915#12713]) -> [SKIP][441] ([i915#1187] / [i915#12713])
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg1-15/igt@kms_hdr@brightness-with-hdr.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-rkl:          [SKIP][442] ([i915#3555] / [i915#8228]) -> [SKIP][443] ([i915#14544])
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_hdr@invalid-metadata-sizes.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_joiner@basic-max-non-joiner:
    - shard-rkl:          [SKIP][444] ([i915#13688] / [i915#14544]) -> [SKIP][445] ([i915#13688])
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-6/igt@kms_joiner@basic-max-non-joiner.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@kms_joiner@basic-max-non-joiner.html

  * igt@kms_panel_fitting@legacy:
    - shard-rkl:          [SKIP][446] ([i915#6301]) -> [SKIP][447] ([i915#14544])
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_panel_fitting@legacy.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_panel_fitting@legacy.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-rkl:          [FAIL][448] ([i915#9295]) -> [SKIP][449] ([i915#3361])
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-8/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          [SKIP][450] ([i915#4281]) -> [SKIP][451] ([i915#14544] / [i915#4281])
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-3/igt@kms_pm_dc@dc9-dpms.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-rkl:          [SKIP][452] ([i915#9519]) -> [SKIP][453] ([i915#14544] / [i915#9519])
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:
    - shard-rkl:          [SKIP][454] ([i915#11520]) -> [SKIP][455] ([i915#11520] / [i915#14544]) +1 other test skip
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-rkl:          [SKIP][456] ([i915#9683]) -> [SKIP][457] ([i915#14544] / [i915#9683])
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@fbc-psr-cursor-mmap-gtt:
    - shard-dg1:          [SKIP][458] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][459] ([i915#1072] / [i915#9732])
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg1-14/igt@kms_psr@fbc-psr-cursor-mmap-gtt.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-19/igt@kms_psr@fbc-psr-cursor-mmap-gtt.html

  * igt@kms_psr@pr-no-drrs:
    - shard-rkl:          [SKIP][460] ([i915#1072] / [i915#9732]) -> [SKIP][461] ([i915#1072] / [i915#14544] / [i915#9732]) +3 other tests skip
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_psr@pr-no-drrs.html
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_psr@pr-no-drrs.html

  * igt@kms_psr@psr2-primary-mmap-cpu:
    - shard-rkl:          [SKIP][462] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][463] ([i915#1072] / [i915#9732]) +1 other test skip
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-6/igt@kms_psr@psr2-primary-mmap-cpu.html
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@kms_psr@psr2-primary-mmap-cpu.html

  * igt@kms_vrr@flip-suspend:
    - shard-dg1:          [SKIP][464] ([i915#3555] / [i915#4423]) -> [SKIP][465] ([i915#3555])
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg1-14/igt@kms_vrr@flip-suspend.html
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-19/igt@kms_vrr@flip-suspend.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-rkl:          [SKIP][466] ([i915#2437] / [i915#9412]) -> [SKIP][467] ([i915#14544] / [i915#2437] / [i915#9412]) +1 other test skip
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-rkl:          [SKIP][468] ([i915#2433]) -> [SKIP][469] ([i915#14544] / [i915#2433])
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@perf@unprivileged-single-ctx-counters.html
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@perf@unprivileged-single-ctx-counters.html

  * igt@prime_vgem@basic-fence-read:
    - shard-rkl:          [SKIP][470] ([i915#3291] / [i915#3708]) -> [SKIP][471] ([i915#14544] / [i915#3291] / [i915#3708])
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@prime_vgem@basic-fence-read.html
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@prime_vgem@basic-fence-read.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10056]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
  [i915#11441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11527
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
  [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
  [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
  [i915#12549]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12549
  [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
  [i915#12796]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
  [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
  [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
  [i915#13304]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13304
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13363]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13363
  [i915#13398]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
  [i915#13729]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13729
  [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
  [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
  [i915#13786]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13786
  [i915#13790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790
  [i915#13809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13809
  [i915#13821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
  [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
  [i915#14433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14586]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14586
  [i915#14602]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14602
  [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
  [i915#14804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14804
  [i915#14806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14806
  [i915#14814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14814
  [i915#14819]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14819
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1850
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
  [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
  [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
  [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
  [i915#4958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4958
  [i915#5107]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5107
  [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
  [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
  [i915#6806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6806
  [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7443]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
  [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
  [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826
  [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
  [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100
  [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
  [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
  [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9738]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9738
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_16994 -> Patchwork_152399v3

  CI-20190529: 20190529
  CI_DRM_16994: 546fc742f08b8dbd3fa1486933c9b15085e11d13 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8493: 8493
  Patchwork_152399v3: 546fc742f08b8dbd3fa1486933c9b15085e11d13 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/index.html

--===============6047532217210394387==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Relocate context-specific workarounds (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/152399/">https://patchwork.freedesktop.org/series/152399/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16994_full -&gt; Patchwork_152399v3_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 12)</h2>
<p>Missing    (1): shard-snb-0 </p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_16994_full and Patchwork_152399v3_full:</p>
<h3>New IGT tests (22)</h3>
<ul>
<li>
<p>igt@i915_pm_rps@basic-blt:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-flip-vs-modeset:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-gtt-cpu-active:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@blit-reloc-keep-cache:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@create-invalid-size:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@cursor-onscreen-256x85:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@etime-single-wait-submitted:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@fault-concurrent:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@fbc-1p-offscren-pri-shrfb-draw-render:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@fbc-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@getfb2-handle-closed:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@invalid-properties-legacy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@linear-8bpp-rotate-90:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@multi-wait-all-for-submit-submitted:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@pixel-format-source-clamping:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@plane-scaler-unity-scaling-with-pixel-format:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@psr-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@rel-constants-invalid-ring:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@u-independent:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_152399v3_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@api_intel_bb@object-reloc-purge-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-5/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-1/igt@gem_create@create-ext-set-pat.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-many:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@gem_ctx_persistence@heartbeat-many.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-snb5/igt@gem_ctx_persistence@legacy-engines-mixed-process.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@exec-single-timeline@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_ctx_shared@exec-single-timeline@rcs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg1-13/igt@gem_eio@in-flight-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-19/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@gem_exec_balancer@parallel-out-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@gem_exec_fence@submit.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-uc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@gem_exec_flush@basic-batch-kernel-default-uc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-1/igt@gem_exec_flush@basic-wb-rw-before-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@gem_exec_params@rsvd2-dirt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5107">i915#5107</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_exec_reloc@basic-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@gem_exec_reloc@basic-cpu-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@gem_exec_reloc@basic-write-gtt-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-6/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13304">i915#13304</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@gem_fence_thrash@bo-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-none:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@gem_fence_thrash@bo-write-verify-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@2-spare-fences:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@gem_fenced_exec_thrash@2-spare-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk1/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@gem_lmem_swapping@heavy-verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_lmem_swapping@massive.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg1-16/igt@gem_lmem_swapping@parallel-random-verify.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-14/igt@gem_lmem_swapping@parallel-random-verify.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14804">i915#14804</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk2/igt@gem_lmem_swapping@random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@gem_lmem_swapping@verify.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@gem_lmem_swapping@verify.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-size:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@gem_mmap@bad-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-copy-odd:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@gem_mmap_gtt@basic-small-copy-odd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@zero-extend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@gem_mmap_gtt@zero-extend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@open-flood:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-6/igt@gem_mmap_offset@open-flood.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_mmap_offset@open-flood.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14602">i915#14602</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@gem_mmap_wc@copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@pf-nonblock:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@gem_mmap_wc@pf-nonblock.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1850">i915#1850</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@gem_partial_pwrite_pread@reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@gem_partial_pwrite_pread@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_pread@snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@gem_pxp@hw-rejects-pxp-buffer.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@gem_pxp@hw-rejects-pxp-buffer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398">i915#13398</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-on.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@gem_pxp@reject-modify-context-protection-on.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@gem_pxp@verify-pxp-stale-ctx-execution.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk11/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html">SKIP</a> +108 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@gem_softpin@evict-snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk11/igt@gem_softpin@noreloc-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13809">i915#13809</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@gem_userptr_blits@dmabuf-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@gem_userptr_blits@map-fixed-invalidate.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880">i915#4880</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@gem_userptr_blits@relocations.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sd-probe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@gem_userptr_blits@sd-probe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4958">i915#4958</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@gem_userptr_blits@unsync-unmap-after-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk10/igt@gem_workarounds@suspend-resume-fd.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14586">i915#14586</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@gen7_exec_parse@chained-batch.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@gen9_exec_parse@basic-rejected.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk2/igt@gen9_exec_parse@bb-large.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14806">i915#14806</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gen9_exec_parse@unaligned-access.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@gen9_exec_parse@unaligned-jump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@gen9_exec_parse@unaligned-jump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@busy-idle-check-all@ccs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@i915_drm_fdinfo@busy-idle-check-all@ccs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11527">i915#11527</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@virtual-busy-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-3/igt@i915_drm_fdinfo@virtual-busy-idle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118">i915#14118</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling@basic-x-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@i915_fb_tiling@basic-x-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13786">i915#13786</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg2-11/igt@i915_pm_freq_api@freq-suspend@gt0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213">i915#8213</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790">i915#13790</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681">i915#2681</a>) +1 other test warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-snb5/igt@i915_pm_rps@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-snb7/igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13729">i915#13729</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821">i915#13821</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-3/igt@i915_pm_rps@thresholds-idle-park.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-5/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443">i915#7443</a>)</li>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-glk2/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk8/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@i915_suspend@fence-restore-untiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-1/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk8/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk6/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14819">i915#14819</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-primary-toggle-with-vblank-wait:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_atomic_transition@plane-primary-toggle-with-vblank-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_atomic_transition@plane-primary-toggle-with-vblank-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk8/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14804">i915#14804</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14814">i915#14814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk8/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-b-hdmi-a-2.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14804">i915#14804</a>) +6 other tests abort</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk10/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html">SKIP</a> +117 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-5/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk9/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796">i915#12796</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +143 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-12/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +146 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_cdclk@mode-transition.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-1/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783">i915#13783</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-green-to-red:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@kms_chamelium_color@ctm-green-to-red.html">SKIP</a> +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-resolution-list:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_chamelium_edid@dp-edid-resolution-list.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-mode-timings:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_chamelium_edid@dp-mode-timings.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-multiple:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_chamelium_frames@hdmi-crc-multiple.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-fast:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_chamelium_hpd@hdmi-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_color@ctm-green-to-red.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_color@ctm-green-to-red.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_concurrent@multi-plane-atomic-lowres:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-snb7/igt@kms_concurrent@multi-plane-atomic-lowres.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-snb7/igt@kms_concurrent@multi-plane-atomic-lowres.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14804">i915#14804</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-11/igt@kms_content_protection@legacy@pipe-a-dp-3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-3/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-1/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x10:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_cursor_crc@cursor-onscreen-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-5/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x85:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_cursor_crc@cursor-random-256x85.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-128x42:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-tglu-7/igt@kms_cursor_crc@cursor-sliding-128x42.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-4/igt@kms_cursor_crc@cursor-sliding-128x42.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk11/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@forked-move:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_cursor_legacy@forked-move.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14804">i915#14804</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@torture-move:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk11/igt@kms_cursor_legacy@torture-move.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14804">i915#14804</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-sst:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg2-10/igt@kms_dp_link_training@non-uhbr-sst.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-1/igt@kms_dp_link_training@non-uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749">i915#13749</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-3/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-5/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@kms_dsc@dsc-with-output-formats-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053">i915#9053</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-1x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_feature_discovery@display-1x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9738">i915#9738</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_feature_discovery@display-3x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_feature_discovery@display-4x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-3/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@kms_flip@2x-blocking-absolute-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_flip@2x-blocking-absolute-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_flip@2x-flip-vs-fences-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_flip@2x-flip-vs-panning.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_flip@2x-flip-vs-panning.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-3/igt@kms_flip@2x-flip-vs-panning-vs-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_flip@2x-plain-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-glk5/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk8/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-off-confusion-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_flip@dpms-off-confusion-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_flip@dpms-off-confusion-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-snb4/igt@kms_flip@flip-vs-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-snb6/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk1/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-7/igt@kms_flip@flip-vs-suspend-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk1/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-snb4/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-snb6/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_flip@plain-flip-ts-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-2p-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> +184 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc.html">SKIP</a> +50 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render.html">SKIP</a> +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-modesetfrombusy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg2-11/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-6/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-start:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-start.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826">i915#8826</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_joiner@invalid-modeset-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339">i915#12339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-invalid-plane:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_lease@lease-invalid-plane.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +28 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@kms_plane_multiple@2x-tiling-x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-y:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_plane_multiple@tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-snb5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b.html">SKIP</a> +70 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_pm_backlight@bad-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@kms_pm_backlight@fade.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_pm_backlight@fade.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-vgem:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-3/igt@kms_prime@basic-crc-vgem.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805">i915#6805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk10/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk9/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk11/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +6 other tests skip</li>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-snb5/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-mmap-cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-5/igt@kms_psr@fbc-psr-cursor-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-sprite-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@kms_psr@fbc-psr-sprite-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-mmap-cpu:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_psr@psr-cursor-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_psr@psr2-cursor-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-blt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_psr@psr2-sprite-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_psr@psr2-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rmfb@rmfb-ioctl@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-glk1/igt@kms_rmfb@rmfb-ioctl@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk3/igt@kms_rmfb@rmfb-ioctl@pipe-a-hdmi-a-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14804">i915#14804</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@exhaust-fences:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_rotation_crc@exhaust-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-3/igt@kms_rotation_crc@primary-rotation-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755">i915#12755</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk11/igt@kms_selftest@drm_framebuffer.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179">i915#13179</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@kms_setmode@invalid-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@kms_writeback@writeback-fb-id.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_writeback@writeback-fb-id-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk2/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@perf@non-zero-reason.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100">i915#9100</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vcs1:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg1-19/igt@perf_pmu@busy-double-start@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@perf_pmu@busy-double-start@vcs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#4349</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-9/igt@perf_pmu@frequency@gt0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12549">i915#12549</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6806">i915#6806</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@perf_pmu@module-unload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433">i915#14433</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-8/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@perf_pmu@rc6@other-idle-gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@semaphore-busy@vecs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-1/igt@perf_pmu@semaphore-busy@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#4349</a>) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-3/igt@prime_vgem@fence-flip-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf@vf-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-1/igt@sriov_basic@bind-unbind-vf@vf-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910">i915#12910</a>) +9 other tests fail</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-submitted-signaled:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-mtlp-4/igt@syncobj_timeline@multi-wait-submitted-signaled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-mtlp-8/igt@syncobj_timeline@multi-wait-submitted-signaled.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14804">i915#14804</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@nopreempt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-8/igt@sysfs_heartbeat_interval@nopreempt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@sysfs_heartbeat_interval@nopreempt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +11 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg2-1/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441">i915#11441</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13304">i915#13304</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-3/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg2-1/igt@gem_exec_suspend@basic-s0@lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441">i915#11441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-3/igt@gem_exec_suspend@basic-s0@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random@lmem0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg1-17/igt@gem_lmem_swapping@heavy-random@lmem0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14804">i915#14804</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@gem_lmem_swapping@heavy-random@lmem0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-4/igt@gem_pxp@fail-invalid-protected-context.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-8/igt@gem_pxp@fail-invalid-protected-context.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-4/igt@gem_pxp@verify-pxp-stale-ctx-execution.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-8/igt@gem_pxp@verify-pxp-stale-ctx-execution.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-6/igt@kms_big_fb@y-tiled-16bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@kms_big_fb@y-tiled-16bpp-rotate-270.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-3/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_flip@flip-vs-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg1-12/igt@kms_flip@flip-vs-suspend-interruptible.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-15/igt@kms_flip@flip-vs-suspend-interruptible.html">PASS</a> +1 other test pass</li>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg2-10/igt@kms_flip@flip-vs-suspend-interruptible.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_flip@flip-vs-suspend-interruptible.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-tglu-2/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14804">i915#14804</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-tglu-3/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html">PASS</a> +10 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg2-6/igt@kms_joiner@invalid-modeset-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388">i915#12388</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-11/igt@kms_joiner@invalid-modeset-force-big-joiner.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vcs1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-mtlp-2/igt@perf_pmu@busy-double-start@vcs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#4349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-mtlp-5/igt@perf_pmu@busy-double-start@vcs1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@api_intel_bb@object-reloc-purge-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@api_intel_bb@object-reloc-purge-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-6/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">i915#11078</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-8/igt@gem_eio@kms.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13363">i915#13363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@gem_eio@kms.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@gem_exec_balancer@parallel-keep-submit-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-noreloc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493">i915#5493</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14804">i915#14804</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_partial_pwrite_pread@reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-rejected:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@gen7_exec_parse@basic-rejected.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@gen7_exec_parse@basic-rejected.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg1-13/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-19/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-8/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-mode-timings:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_chamelium_edid@dp-mode-timings.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_chamelium_edid@dp-mode-timings.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg2-6/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-11/igt@kms_content_protection@legacy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg1-13/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433">i915#9433</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-19/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg2-6/igt@kms_content_protection@srm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-11/igt@kms_content_protection@srm.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-256x85:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-256x85.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-256x85.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_feature_discovery@display-3x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_feature_discovery@display-3x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-glk5/igt@kms_flip@2x-flip-vs-suspend-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-glk8/igt@kms_flip@2x-flip-vs-suspend-interruptible.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056">i915#10056</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-mtlp-1/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187">i915#1187</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-mtlp-8/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>)</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg1-15/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187">i915#1187</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-max-non-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-6/igt@kms_joiner@basic-max-non-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688">i915#13688</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@kms_joiner@basic-max-non-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688">i915#13688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295">i915#9295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-8/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361">i915#3361</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-3/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-mmap-gtt:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg1-14/igt@kms_psr@fbc-psr-cursor-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-19/igt@kms_psr@fbc-psr-cursor-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-no-drrs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_psr@pr-no-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_psr@pr-no-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-primary-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-6/igt@kms_psr@psr2-primary-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-3/igt@kms_psr@psr2-primary-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-dg1-14/igt@kms_vrr@flip-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-dg1-19/igt@kms_vrr@flip-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@kms_writeback@writeback-fb-id-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@kms_writeback@writeback-fb-id-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@perf@unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433">i915#2433</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@perf@unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433">i915#2433</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16994/shard-rkl-5/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152399v3/shard-rkl-6/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16994 -&gt; Patchwork_152399v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16994: 546fc742f08b8dbd3fa1486933c9b15085e11d13 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8493: 8493<br />
  Patchwork_152399v3: 546fc742f08b8dbd3fa1486933c9b15085e11d13 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============6047532217210394387==--
