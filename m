Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C48B3C715
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Aug 2025 03:23:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D2E610E2A1;
	Sat, 30 Aug 2025 01:23:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B693E10E227;
 Sat, 30 Aug 2025 01:23:23 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8404611401863385085=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/display=3A_Make?=
 =?utf-8?q?_intel=5Fcrtc=5Fget=5Fvblank=5Fcounter_safe_on_PREEMPT=5FRT?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <dev@lankhorst.se>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 30 Aug 2025 01:23:23 -0000
Message-ID: <175651700372.286857.12250203932712580561@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250829131701.15607-2-dev@lankhorst.se>
In-Reply-To: <20250829131701.15607-2-dev@lankhorst.se>
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

--===============8404611401863385085==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Make intel_crtc_get_vblank_counter safe on PREEMPT_RT
URL   : https://patchwork.freedesktop.org/series/153715/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17090_full -> Patchwork_153715v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_153715v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_153715v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 12)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_153715v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_pxp@create-regular-context-1:
    - shard-mtlp:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-mtlp-6/igt@gem_pxp@create-regular-context-1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-mtlp-8/igt@gem_pxp@create-regular-context-1.html

  
Known issues
------------

  Here are the changes found in Patchwork_153715v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-tglu-1:       NOTRUN -> [SKIP][3] ([i915#9323])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@suspend-resume:
    - shard-rkl:          NOTRUN -> [SKIP][4] ([i915#14544] / [i915#9323])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gem_ccs@suspend-resume.html
    - shard-dg2-9:        NOTRUN -> [INCOMPLETE][5] ([i915#13356])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
    - shard-dg2-9:        NOTRUN -> [INCOMPLETE][6] ([i915#12392] / [i915#13356])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-tglu-1:       NOTRUN -> [SKIP][7] ([i915#6335])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2-9:        NOTRUN -> [SKIP][8] ([i915#8562])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#8555])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-5/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-dg2:          NOTRUN -> [SKIP][10] ([i915#280])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-5/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_eio@in-flight-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][11] ([i915#13390])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk6/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg2-9:        NOTRUN -> [SKIP][12] ([i915#4812])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          NOTRUN -> [SKIP][13] ([i915#4771])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-tglu:         NOTRUN -> [SKIP][14] ([i915#4525])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-7/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_big@single:
    - shard-tglu-1:       NOTRUN -> [ABORT][15] ([i915#11713] / [i915#14756])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@gem_exec_big@single.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-glk:          NOTRUN -> [SKIP][16] ([i915#6334]) +1 other test skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk5/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_fence@concurrent:
    - shard-dg2:          NOTRUN -> [SKIP][17] ([i915#4812])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-4/igt@gem_exec_fence@concurrent.html

  * igt@gem_exec_flush@basic-batch-kernel-default-uc:
    - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#3539] / [i915#4852])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@gem_exec_flush@basic-batch-kernel-default-uc.html

  * igt@gem_exec_flush@basic-uc-set-default:
    - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#3539])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@gem_exec_flush@basic-uc-set-default.html

  * igt@gem_exec_flush@basic-wb-ro-default:
    - shard-dg2-9:        NOTRUN -> [SKIP][20] ([i915#3539] / [i915#4852]) +2 other tests skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_exec_flush@basic-wb-ro-default.html

  * igt@gem_exec_reloc@basic-cpu-active:
    - shard-dg1:          NOTRUN -> [SKIP][21] ([i915#3281])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-19/igt@gem_exec_reloc@basic-cpu-active.html

  * igt@gem_exec_reloc@basic-gtt-active:
    - shard-dg2-9:        NOTRUN -> [SKIP][22] ([i915#3281]) +6 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_exec_reloc@basic-gtt-active.html

  * igt@gem_exec_reloc@basic-gtt-read:
    - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#3281]) +10 other tests skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@gem_exec_reloc@basic-gtt-read.html

  * igt@gem_exec_schedule@fairslice:
    - shard-rkl:          [PASS][24] -> [DMESG-WARN][25] ([i915#12964]) +13 other tests dmesg-warn
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@gem_exec_schedule@fairslice.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@gem_exec_schedule@fairslice.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#4537] / [i915#4812])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-5/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-dg2-9:        NOTRUN -> [SKIP][27] ([i915#4537] / [i915#4812])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          [PASS][28] -> [INCOMPLETE][29] ([i915#11441] / [i915#13356])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg2-8/igt@gem_exec_suspend@basic-s0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-3/igt@gem_exec_suspend@basic-s0.html
    - shard-rkl:          [PASS][30] -> [INCOMPLETE][31] ([i915#13356]) +2 other tests incomplete
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-5/igt@gem_exec_suspend@basic-s0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - shard-dg2:          [PASS][32] -> [INCOMPLETE][33] ([i915#11441])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg2-8/igt@gem_exec_suspend@basic-s0@lmem0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-3/igt@gem_exec_suspend@basic-s0@lmem0.html

  * igt@gem_fence_thrash@bo-write-verify-y:
    - shard-dg2-9:        NOTRUN -> [SKIP][34] ([i915#4860]) +2 other tests skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_fence_thrash@bo-write-verify-y.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#4860])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglu:         NOTRUN -> [SKIP][36] ([i915#2190])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - shard-tglu:         NOTRUN -> [SKIP][37] ([i915#4613]) +1 other test skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-tglu-1:       NOTRUN -> [SKIP][38] ([i915#4613])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@verify:
    - shard-glk:          NOTRUN -> [SKIP][39] ([i915#4613]) +2 other tests skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk6/igt@gem_lmem_swapping@verify.html

  * igt@gem_media_fill@media-fill:
    - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#8289])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@gem_media_fill@media-fill.html

  * igt@gem_mmap_gtt@big-bo-tiledy:
    - shard-dg2-9:        NOTRUN -> [SKIP][41] ([i915#4077]) +5 other tests skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_mmap_gtt@big-bo-tiledy.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4077]) +11 other tests skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_mmap_wc@copy:
    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#4083]) +4 other tests skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@gem_mmap_wc@copy.html

  * igt@gem_mmap_wc@invalid-flags:
    - shard-dg2-9:        NOTRUN -> [SKIP][44] ([i915#4083]) +1 other test skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_mmap_wc@invalid-flags.html

  * igt@gem_pread@exhaustion:
    - shard-glk:          NOTRUN -> [WARN][45] ([i915#2658])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk6/igt@gem_pread@exhaustion.html

  * igt@gem_pread@self:
    - shard-dg2-9:        NOTRUN -> [SKIP][46] ([i915#3282]) +3 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_pread@self.html

  * igt@gem_pwrite@basic-random:
    - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#3282]) +2 other tests skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@gem_pwrite@basic-random.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-rkl:          [PASS][48] -> [SKIP][49] ([i915#14544] / [i915#4270])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@gem_pxp@create-protected-buffer.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][50] ([i915#4270])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_pxp@create-valid-protected-context:
    - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#4270]) +1 other test skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@gem_pxp@create-valid-protected-context.html

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - shard-tglu:         NOTRUN -> [SKIP][52] ([i915#13398])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-7/igt@gem_pxp@hw-rejects-pxp-buffer.html

  * igt@gem_pxp@reject-modify-context-protection-off-3:
    - shard-rkl:          [PASS][53] -> [TIMEOUT][54] ([i915#12917] / [i915#12964])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-off-3.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-7/igt@gem_pxp@reject-modify-context-protection-off-3.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#14544] / [i915#4270])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
    - shard-glk:          NOTRUN -> [SKIP][56] +177 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk6/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html

  * igt@gem_render_copy@y-tiled-to-vebox-linear:
    - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#5190] / [i915#8428]) +6 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-5/igt@gem_render_copy@y-tiled-to-vebox-linear.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-dg2-9:        NOTRUN -> [SKIP][58] ([i915#5190] / [i915#8428]) +3 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#4079])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-5/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_set_tiling_vs_gtt:
    - shard-dg2-9:        NOTRUN -> [SKIP][60] ([i915#4079])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_set_tiling_vs_gtt.html

  * igt@gem_softpin@evict-snoop:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#4885])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-5/igt@gem_softpin@evict-snoop.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2-9:        NOTRUN -> [SKIP][62] ([i915#4885])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#3297] / [i915#4880])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-dg2-9:        NOTRUN -> [SKIP][64] ([i915#3297])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gen9_exec_parse@basic-rejected:
    - shard-tglu:         NOTRUN -> [SKIP][65] ([i915#2527] / [i915#2856]) +1 other test skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@gen9_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@bb-large:
    - shard-glk:          NOTRUN -> [FAIL][66] ([i915#14806])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk5/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-tglu-1:       NOTRUN -> [SKIP][67] ([i915#2527] / [i915#2856]) +1 other test skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-dg2-9:        NOTRUN -> [SKIP][68] ([i915#2856]) +1 other test skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gen9_exec_parse@bb-start-far.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#2856]) +2 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-4/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_drm_fdinfo@all-busy-idle-check-all:
    - shard-dg2-9:        NOTRUN -> [SKIP][70] ([i915#14123])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@i915_drm_fdinfo@all-busy-idle-check-all.html

  * igt@i915_drm_fdinfo@busy:
    - shard-dg2-9:        NOTRUN -> [SKIP][71] ([i915#14073]) +7 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@i915_drm_fdinfo@busy.html

  * igt@i915_drm_fdinfo@virtual-busy-idle:
    - shard-dg2-9:        NOTRUN -> [SKIP][72] ([i915#14118])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@i915_drm_fdinfo@virtual-busy-idle.html

  * igt@i915_drm_fdinfo@virtual-busy-idle-all:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#14118])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@i915_drm_fdinfo@virtual-busy-idle-all.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][74] ([i915#13356] / [i915#13820]) +1 other test incomplete
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-tglu-1:       NOTRUN -> [WARN][75] ([i915#13790] / [i915#2681]) +1 other test warn
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][76] ([i915#13356])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk5/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-dg2-9:        NOTRUN -> [SKIP][77] ([i915#11681] / [i915#6621])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_pm_rps@thresholds-idle:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#11681])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@i915_pm_rps@thresholds-idle.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#4215] / [i915#5190])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - shard-dg2-9:        NOTRUN -> [SKIP][80] ([i915#4212])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-tglu:         NOTRUN -> [SKIP][81] ([i915#12454] / [i915#12712])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-7/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_async_flips@test-cursor-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#14544]) +7 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_async_flips@test-cursor-atomic.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-tglu-1:       NOTRUN -> [SKIP][83] ([i915#5286])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][84] ([i915#5286])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-270:
    - shard-dg2-9:        NOTRUN -> [SKIP][85] +9 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][86] +6 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-270:
    - shard-dg2-9:        NOTRUN -> [SKIP][87] ([i915#4538] / [i915#5190]) +6 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2-9:        NOTRUN -> [SKIP][88] ([i915#5190]) +1 other test skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#4538] / [i915#5190]) +8 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#6095]) +4 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-mtlp-3/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-b-edp-1.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][91] ([i915#10307] / [i915#6095]) +49 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-dg2-9:        NOTRUN -> [SKIP][92] ([i915#12313])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:
    - shard-tglu:         NOTRUN -> [SKIP][93] ([i915#6095]) +39 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-c-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#10307] / [i915#6095]) +117 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-11/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-c-dp-3.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][95] ([i915#12805])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-7/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][96] ([i915#12796]) +1 other test incomplete
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk9/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#6095]) +7 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][98] ([i915#6095]) +29 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#6095]) +25 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#14098] / [i915#6095]) +30 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][101] ([i915#6095]) +117 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-13/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition:
    - shard-tglu:         NOTRUN -> [SKIP][103] ([i915#3742])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#13783]) +4 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html

  * igt@kms_chamelium_frames@dp-crc-single:
    - shard-tglu-1:       NOTRUN -> [SKIP][105] ([i915#11151] / [i915#7828]) +4 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_chamelium_frames@dp-crc-single.html
    - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#11151] / [i915#7828])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-mtlp-3/igt@kms_chamelium_frames@dp-crc-single.html

  * igt@kms_chamelium_frames@hdmi-aspect-ratio:
    - shard-tglu:         NOTRUN -> [SKIP][107] ([i915#11151] / [i915#7828]) +1 other test skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@kms_chamelium_frames@hdmi-aspect-ratio.html

  * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#11151] / [i915#7828]) +9 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html

  * igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:
    - shard-dg2-9:        NOTRUN -> [SKIP][109] ([i915#11151] / [i915#7828]) +5 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html

  * igt@kms_color@ctm-0-25:
    - shard-rkl:          [PASS][110] -> [SKIP][111] ([i915#12655] / [i915#14544]) +1 other test skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_color@ctm-0-25.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_color@ctm-0-25.html

  * igt@kms_color@deep-color:
    - shard-dg2-9:        NOTRUN -> [SKIP][112] ([i915#12655] / [i915#3555])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][113] ([i915#7173])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-11/igt@kms_content_protection@atomic@pipe-a-dp-3.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][114] ([i915#3116] / [i915#3299])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-dg2-9:        NOTRUN -> [SKIP][115] ([i915#3299])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg2-9:        NOTRUN -> [SKIP][117] ([i915#9424])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_content_protection@mei-interface.html

  * igt@kms_cursor_crc@cursor-onscreen-32x10:
    - shard-dg2-9:        NOTRUN -> [SKIP][118] ([i915#3555]) +2 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_cursor_crc@cursor-onscreen-32x10.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-dg2-9:        NOTRUN -> [SKIP][119] ([i915#13049])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-128x42:
    - shard-rkl:          [PASS][120] -> [FAIL][121] ([i915#13566]) +1 other test fail
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-4/igt@kms_cursor_crc@cursor-random-128x42.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-8/igt@kms_cursor_crc@cursor-random-128x42.html

  * igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1:
    - shard-tglu:         [PASS][122] -> [FAIL][123] ([i915#13566]) +3 other tests fail
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-tglu-7/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-3/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-tglu:         NOTRUN -> [SKIP][124] ([i915#13049])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-7/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-tglu-1:       NOTRUN -> [SKIP][125] ([i915#3555]) +1 other test skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#13049])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [FAIL][127] ([i915#13566]) +2 other tests fail
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-dg2-9:        NOTRUN -> [SKIP][128] ([i915#13046] / [i915#5354])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-dg2-9:        NOTRUN -> [SKIP][129] ([i915#4103] / [i915#4213]) +1 other test skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - shard-rkl:          [PASS][130] -> [SKIP][131] ([i915#11190] / [i915#14544]) +3 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#13046] / [i915#5354]) +2 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-rkl:          [PASS][133] -> [SKIP][134] ([i915#14544]) +38 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-tglu:         NOTRUN -> [SKIP][135] ([i915#4103])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-dg2-9:        NOTRUN -> [SKIP][136] ([i915#9833])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#9833])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-dg2-9:        NOTRUN -> [SKIP][138] ([i915#13691])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#3804])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dp_link_training@uhbr-mst:
    - shard-tglu:         NOTRUN -> [SKIP][140] ([i915#13748])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@kms_dp_link_training@uhbr-mst.html

  * igt@kms_dp_linktrain_fallback@dsc-fallback:
    - shard-tglu-1:       NOTRUN -> [SKIP][141] ([i915#13707])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_dp_linktrain_fallback@dsc-fallback.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#3840] / [i915#9688])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-dg2-9:        NOTRUN -> [SKIP][143] ([i915#3840] / [i915#9053])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-rkl:          [PASS][144] -> [SKIP][145] ([i915#14544] / [i915#14561])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_fbcon_fbt@fbc-suspend.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_feature_discovery@chamelium:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#4854])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-5/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-2x:
    - shard-tglu:         NOTRUN -> [SKIP][147] ([i915#1839])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-7/igt@kms_feature_discovery@display-2x.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
    - shard-dg2-9:        NOTRUN -> [SKIP][148] ([i915#9934]) +6 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-tglu:         NOTRUN -> [SKIP][149] ([i915#3637] / [i915#9934]) +1 other test skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-7/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-tglu-1:       NOTRUN -> [SKIP][150] ([i915#3637] / [i915#9934]) +3 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#9934]) +3 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-dpms-on-nop:
    - shard-rkl:          [PASS][152] -> [SKIP][153] ([i915#14544] / [i915#14553])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_flip@flip-vs-dpms-on-nop.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_flip@flip-vs-dpms-on-nop.html

  * igt@kms_flip@flip-vs-dpms-on-nop-interruptible:
    - shard-rkl:          [PASS][154] -> [SKIP][155] ([i915#14544] / [i915#3637]) +5 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_flip@flip-vs-dpms-on-nop-interruptible.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_flip@flip-vs-dpms-on-nop-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#2672]) +3 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][157] ([i915#2587] / [i915#2672] / [i915#3555])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][158] ([i915#2587] / [i915#2672])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-rkl:          [PASS][159] -> [SKIP][160] ([i915#14544] / [i915#3555]) +3 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#2672]) +1 other test skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-dg2-9:        NOTRUN -> [SKIP][162] ([i915#2672] / [i915#3555] / [i915#5190])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
    - shard-dg2-9:        NOTRUN -> [SKIP][163] ([i915#2672])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][164] ([i915#2672] / [i915#3555]) +2 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][165] ([i915#2587] / [i915#2672]) +2 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#14544] / [i915#3555])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#2672] / [i915#3555]) +1 other test skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:
    - shard-rkl:          [PASS][169] -> [SKIP][170] ([i915#14544] / [i915#1849] / [i915#5354]) +9 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#14544] / [i915#1849] / [i915#5354]) +1 other test skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#8708]) +2 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#8708]) +14 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#3458]) +13 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:
    - shard-dg2-9:        NOTRUN -> [SKIP][175] ([i915#3458]) +11 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt:
    - shard-dg1:          NOTRUN -> [SKIP][176]
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt:
    - shard-dg2-9:        NOTRUN -> [SKIP][177] ([i915#5354]) +19 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2-9:        NOTRUN -> [SKIP][178] ([i915#8708]) +13 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:
    - shard-tglu-1:       NOTRUN -> [SKIP][179] +30 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:
    - shard-tglu:         NOTRUN -> [SKIP][180] +44 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#5354]) +25 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg1:          NOTRUN -> [SKIP][182] ([i915#3458]) +2 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-dg2-9:        NOTRUN -> [SKIP][183] ([i915#3555] / [i915#8228]) +1 other test skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][184] ([i915#3555] / [i915#8228])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-7/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_invalid_mode@int-max-clock:
    - shard-rkl:          [PASS][185] -> [SKIP][186] ([i915#14544] / [i915#3555] / [i915#8826])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_invalid_mode@int-max-clock.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_invalid_mode@int-max-clock.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#10656])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-8/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-dg2-9:        NOTRUN -> [SKIP][188] ([i915#10656])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][189] ([i915#12339])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#12388])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-5/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][191] ([i915#12339])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:
    - shard-glk10:        NOTRUN -> [SKIP][192] ([i915#11190]) +2 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk10/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html

  * igt@kms_plane@plane-panning-top-left:
    - shard-rkl:          [PASS][193] -> [SKIP][194] ([i915#14544] / [i915#8825])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_plane@plane-panning-top-left.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_plane@plane-panning-top-left.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb:
    - shard-glk10:        NOTRUN -> [SKIP][195] +501 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk10/igt@kms_plane_alpha_blend@alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@constant-alpha-max:
    - shard-rkl:          [PASS][196] -> [SKIP][197] ([i915#14544] / [i915#7294])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_plane_alpha_blend@constant-alpha-max.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_plane_alpha_blend@constant-alpha-max.html

  * igt@kms_plane_multiple@2x-tiling-x:
    - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#13958]) +1 other test skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_plane_multiple@2x-tiling-x.html

  * igt@kms_plane_multiple@2x-tiling-yf:
    - shard-dg1:          NOTRUN -> [SKIP][199] ([i915#13958])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-19/igt@kms_plane_multiple@2x-tiling-yf.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-dg2-9:        NOTRUN -> [SKIP][200] ([i915#14259])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-dg2-9:        NOTRUN -> [SKIP][201] ([i915#13046] / [i915#5354] / [i915#9423])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-b:
    - shard-rkl:          [PASS][202] -> [SKIP][203] ([i915#12247] / [i915#14544] / [i915#8152])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-b.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-b.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
    - shard-tglu-1:       NOTRUN -> [SKIP][204] ([i915#12247]) +4 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c:
    - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#12247])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#14544] / [i915#3555] / [i915#8152])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b:
    - shard-rkl:          NOTRUN -> [SKIP][207] ([i915#12247] / [i915#14544] / [i915#8152]) +2 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#12247] / [i915#14544]) +1 other test skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#12343])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][210] ([i915#9812])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#9685])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_rpm@cursor-dpms:
    - shard-rkl:          [PASS][212] -> [SKIP][213] ([i915#14544] / [i915#1849])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_pm_rpm@cursor-dpms.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_pm_rpm@cursor-dpms.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-rkl:          [PASS][214] -> [SKIP][215] ([i915#9519])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@i2c:
    - shard-dg1:          [PASS][216] -> [DMESG-WARN][217] ([i915#4423]) +1 other test dmesg-warn
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg1-16/igt@kms_pm_rpm@i2c.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-19/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][218] ([i915#9519])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg2:          [PASS][219] -> [SKIP][220] ([i915#9519])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [PASS][221] -> [SKIP][222] ([i915#14544] / [i915#9519])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
    - shard-tglu:         NOTRUN -> [SKIP][223] ([i915#9519])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_prime@d3hot:
    - shard-dg2-9:        NOTRUN -> [SKIP][224] ([i915#6524] / [i915#6805])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
    - shard-dg2-9:        NOTRUN -> [SKIP][225] ([i915#11520]) +5 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
    - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#11520]) +4 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@pr-cursor-plane-update-sf:
    - shard-tglu:         NOTRUN -> [SKIP][227] ([i915#11520]) +3 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-7/igt@kms_psr2_sf@pr-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:
    - shard-glk10:        NOTRUN -> [SKIP][228] ([i915#11520]) +12 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk10/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][229] ([i915#11520]) +5 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk5/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][230] ([i915#11520]) +1 other test skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#9683])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@fbc-psr-no-drrs:
    - shard-tglu:         NOTRUN -> [SKIP][232] ([i915#9732]) +9 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-7/igt@kms_psr@fbc-psr-no-drrs.html

  * igt@kms_psr@fbc-psr2-sprite-mmap-cpu:
    - shard-dg2-9:        NOTRUN -> [SKIP][233] ([i915#1072] / [i915#9732]) +13 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_psr@fbc-psr2-sprite-mmap-cpu.html

  * igt@kms_psr@pr-sprite-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][234] ([i915#1072] / [i915#14544] / [i915#9732])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_psr@pr-sprite-mmap-cpu.html

  * igt@kms_psr@psr-cursor-plane-onoff:
    - shard-tglu-1:       NOTRUN -> [SKIP][235] ([i915#9732]) +9 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_psr@psr-cursor-plane-onoff.html

  * igt@kms_psr@psr2-cursor-blt:
    - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#1072] / [i915#9732]) +17 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-8/igt@kms_psr@psr2-cursor-blt.html
    - shard-dg1:          NOTRUN -> [SKIP][237] ([i915#1072] / [i915#9732])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-19/igt@kms_psr@psr2-cursor-blt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-dg2-9:        NOTRUN -> [SKIP][238] ([i915#9685])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][239] ([i915#5289])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-tglu:         NOTRUN -> [SKIP][240] ([i915#5289])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_scaling_modes@scaling-mode-full:
    - shard-tglu:         NOTRUN -> [SKIP][241] ([i915#3555]) +2 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@kms_scaling_modes@scaling-mode-full.html

  * igt@kms_scaling_modes@scaling-mode-none:
    - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#3555]) +6 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_scaling_modes@scaling-mode-none.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-glk10:        NOTRUN -> [ABORT][243] ([i915#13179]) +1 other test abort
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk10/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-glk:          NOTRUN -> [FAIL][244] ([i915#10959])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk6/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vblank@wait-forked-hang@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][245] ([i915#12964]) +4 other tests dmesg-warn
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_vblank@wait-forked-hang@pipe-b-hdmi-a-1.html

  * igt@kms_vrr@max-min:
    - shard-dg1:          NOTRUN -> [SKIP][246] ([i915#9906])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-19/igt@kms_vrr@max-min.html

  * igt@kms_vrr@negative-basic:
    - shard-dg2:          NOTRUN -> [SKIP][247] ([i915#3555] / [i915#9906])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-3/igt@kms_vrr@negative-basic.html
    - shard-mtlp:         [PASS][248] -> [FAIL][249] ([i915#10393]) +1 other test fail
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-mtlp-7/igt@kms_vrr@negative-basic.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-mtlp-2/igt@kms_vrr@negative-basic.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-dg2-9:        NOTRUN -> [SKIP][250] ([i915#9906])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-tglu-1:       NOTRUN -> [SKIP][251] ([i915#2437])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-glk:          NOTRUN -> [SKIP][252] ([i915#2437])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk6/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-dg2-9:        NOTRUN -> [SKIP][253] ([i915#2437] / [i915#9412])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@global-sseu-config:
    - shard-dg2-9:        NOTRUN -> [SKIP][254] ([i915#7387])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@perf@global-sseu-config.html

  * igt@perf@global-sseu-config-invalid:
    - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#7387])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-8/igt@perf@global-sseu-config-invalid.html

  * igt@perf_pmu@module-unload:
    - shard-glk:          NOTRUN -> [FAIL][256] ([i915#14433])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk6/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-dg2:          NOTRUN -> [SKIP][257] ([i915#8516])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-rkl:          [PASS][258] -> [SKIP][259] ([i915#14544] / [i915#3708])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@prime_vgem@basic-fence-flip.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-read:
    - shard-dg2:          NOTRUN -> [SKIP][260] ([i915#3291] / [i915#3708])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-5/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@fence-read-hang:
    - shard-dg2:          NOTRUN -> [SKIP][261] ([i915#3708])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-5/igt@prime_vgem@fence-read-hang.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-dg2:          NOTRUN -> [SKIP][262] ([i915#9917])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-5/igt@sriov_basic@enable-vfs-autoprobe-on.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-tglu:         NOTRUN -> [FAIL][263] ([i915#12910])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-7/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  
#### Possible fixes ####

  * igt@fbdev@write:
    - shard-rkl:          [SKIP][264] ([i915#14544] / [i915#2582]) -> [PASS][265]
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@fbdev@write.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@fbdev@write.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [FAIL][266] ([i915#5784]) -> [PASS][267]
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg1-12/igt@gem_eio@reset-stress.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-15/igt@gem_eio@reset-stress.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [TIMEOUT][268] ([i915#5493]) -> [PASS][269] +1 other test pass
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-rkl:          [TIMEOUT][270] ([i915#12917] / [i915#12964]) -> [PASS][271] +1 other test pass
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-5/igt@gem_pxp@protected-raw-src-copy-not-readible.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-8/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-rkl:          [TIMEOUT][272] ([i915#12964]) -> [PASS][273]
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-5/igt@gem_pxp@regular-baseline-src-copy-readible.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-8/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@i915_pm_rc6_residency@rc6-accuracy:
    - shard-rkl:          [FAIL][274] ([i915#12942]) -> [PASS][275] +1 other test pass
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-accuracy.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-8/igt@i915_pm_rc6_residency@rc6-accuracy.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [DMESG-FAIL][276] ([i915#12061]) -> [PASS][277] +1 other test pass
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-mtlp-5/igt@i915_selftest@live@workarounds.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-mtlp-7/igt@i915_selftest@live@workarounds.html

  * igt@kms_async_flips@async-flip-suspend-resume:
    - shard-snb:          [DMESG-WARN][278] ([i915#13899]) -> [PASS][279] +1 other test pass
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-snb4/igt@kms_async_flips@async-flip-suspend-resume.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-snb7/igt@kms_async_flips@async-flip-suspend-resume.html

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind:
    - shard-rkl:          [SKIP][280] ([i915#14544]) -> [PASS][281] +57 other tests pass
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-dg1:          [DMESG-WARN][282] ([i915#4423]) -> [PASS][283] +1 other test pass
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg1-18/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-16/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-3:
    - shard-dg2:          [INCOMPLETE][284] ([i915#12796]) -> [PASS][285] +1 other test pass
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-3.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-3.html

  * igt@kms_color@ctm-max:
    - shard-rkl:          [SKIP][286] ([i915#12655] / [i915#14544]) -> [PASS][287] +2 other tests pass
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_color@ctm-max.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_color@ctm-max.html

  * igt@kms_cursor_crc@cursor-onscreen-128x42:
    - shard-tglu:         [FAIL][288] ([i915#13566]) -> [PASS][289] +1 other test pass
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-tglu-9/igt@kms_cursor_crc@cursor-onscreen-128x42.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-5/igt@kms_cursor_crc@cursor-onscreen-128x42.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - shard-rkl:          [SKIP][290] ([i915#11190] / [i915#14544]) -> [PASS][291]
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_dp_aux_dev:
    - shard-dg2:          [SKIP][292] ([i915#1257]) -> [PASS][293]
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg2-4/igt@kms_dp_aux_dev.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-11/igt@kms_dp_aux_dev.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-rkl:          [SKIP][294] ([i915#14544] / [i915#14561]) -> [PASS][295]
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_fbcon_fbt@fbc.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-snb:          [TIMEOUT][296] ([i915#14033] / [i915#14350]) -> [PASS][297]
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-snb5/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [TIMEOUT][298] ([i915#14033]) -> [PASS][299]
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-snb5/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - shard-rkl:          [SKIP][300] ([i915#14544] / [i915#3637]) -> [PASS][301] +5 other tests pass
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_flip@blocking-wf_vblank@a-hdmi-a1:
    - shard-tglu:         [FAIL][302] ([i915#14600]) -> [PASS][303] +1 other test pass
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-tglu-9/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-5/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:
    - shard-rkl:          [SKIP][304] ([i915#14544] / [i915#3555]) -> [PASS][305] +3 other tests pass
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-rkl:          [SKIP][306] ([i915#14544] / [i915#1849] / [i915#5354]) -> [PASS][307] +3 other tests pass
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_hdmi_inject@inject-audio:
    - shard-snb:          [SKIP][308] -> [PASS][309]
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-snb4/igt@kms_hdmi_inject@inject-audio.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-snb1/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_invalid_mode@bad-htotal:
    - shard-rkl:          [SKIP][310] ([i915#14544] / [i915#3555] / [i915#8826]) -> [PASS][311]
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_invalid_mode@bad-htotal.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@kms_invalid_mode@bad-htotal.html

  * igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant:
    - shard-rkl:          [SKIP][312] ([i915#14544] / [i915#7294]) -> [PASS][313] +2 other tests pass
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
    - shard-rkl:          [SKIP][314] ([i915#14544] / [i915#8152]) -> [PASS][315] +2 other tests pass
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b:
    - shard-rkl:          [SKIP][316] ([i915#12247] / [i915#14544] / [i915#8152]) -> [PASS][317] +8 other tests pass
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75:
    - shard-rkl:          [SKIP][318] ([i915#12247] / [i915#14544] / [i915#3555] / [i915#6953] / [i915#8152]) -> [PASS][319]
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_plane_scaling@planes-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling:
    - shard-rkl:          [SKIP][320] ([i915#14544] / [i915#3555] / [i915#8152]) -> [PASS][321]
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_plane_scaling@planes-scaler-unity-scaling.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_plane_scaling@planes-scaler-unity-scaling.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a:
    - shard-rkl:          [SKIP][322] ([i915#12247] / [i915#14544]) -> [PASS][323] +7 other tests pass
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a.html

  * igt@kms_plane_scaling@planes-upscale-20x20:
    - shard-rkl:          [SKIP][324] ([i915#14544] / [i915#6953] / [i915#8152]) -> [PASS][325]
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-20x20.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25:
    - shard-rkl:          [SKIP][326] ([i915#14544] / [i915#3555] / [i915#6953] / [i915#8152]) -> [PASS][327]
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-factor-0-25.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg2:          [SKIP][328] ([i915#9340]) -> [PASS][329]
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg2-3/igt@kms_pm_lpsp@kms-lpsp.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-4/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-dg2:          [SKIP][330] ([i915#9519]) -> [PASS][331]
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-rkl:          [SKIP][332] ([i915#9519]) -> [PASS][333]
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          [SKIP][334] ([i915#14544] / [i915#9519]) -> [PASS][335] +1 other test pass
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_properties@crtc-properties-legacy:
    - shard-rkl:          [SKIP][336] ([i915#11521] / [i915#14544]) -> [PASS][337]
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_properties@crtc-properties-legacy.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_properties@crtc-properties-legacy.html

  * igt@syncobj_timeline@wait-all-for-submit-delayed-submit:
    - shard-rkl:          [DMESG-WARN][338] ([i915#12964]) -> [PASS][339] +20 other tests pass
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html

  
#### Warnings ####

  * igt@api_intel_bb@crc32:
    - shard-rkl:          [SKIP][340] ([i915#6230]) -> [SKIP][341] ([i915#14544] / [i915#6230])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@api_intel_bb@crc32.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@api_intel_bb@crc32.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-rkl:          [SKIP][342] ([i915#3281]) -> [SKIP][343] ([i915#14544] / [i915#3281]) +8 other tests skip
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@gem_bad_reloc@negative-reloc-lut.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          [SKIP][344] ([i915#14544] / [i915#3555] / [i915#9323]) -> [SKIP][345] ([i915#3555] / [i915#9323])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-rkl:          [SKIP][346] ([i915#9323]) -> [SKIP][347] ([i915#14544] / [i915#9323])
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-rkl:          [SKIP][348] ([i915#13008] / [i915#14544]) -> [SKIP][349] ([i915#13008])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@gem_ccs@large-ctrl-surf-copy.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-rkl:          [SKIP][350] ([i915#14544] / [i915#280]) -> [SKIP][351] ([i915#280]) +2 other tests skip
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@gem_ctx_sseu@invalid-sseu.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
    - shard-rkl:          [SKIP][352] ([i915#4525]) -> [SKIP][353] ([i915#14544] / [i915#4525])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-rkl:          [SKIP][354] ([i915#14544] / [i915#4525]) -> [SKIP][355] ([i915#4525]) +2 other tests skip
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-rkl:          [SKIP][356] ([i915#6334]) -> [SKIP][357] ([i915#14544] / [i915#6334]) +1 other test skip
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@gem_exec_capture@capture-invisible@smem0.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_reloc@basic-gtt-cpu-active:
    - shard-rkl:          [SKIP][358] ([i915#14544] / [i915#3281]) -> [SKIP][359] ([i915#3281]) +10 other tests skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu-active.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-cpu-active.html

  * igt@gem_huc_copy@huc-copy:
    - shard-rkl:          [SKIP][360] ([i915#2190]) -> [SKIP][361] ([i915#14544] / [i915#2190])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@gem_huc_copy@huc-copy.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-rkl:          [SKIP][362] ([i915#4613]) -> [SKIP][363] ([i915#14544] / [i915#4613]) +2 other tests skip
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@random:
    - shard-rkl:          [SKIP][364] ([i915#14544] / [i915#4613]) -> [SKIP][365] ([i915#4613]) +1 other test skip
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@gem_lmem_swapping@random.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [TIMEOUT][366] ([i915#5493]) -> [DMESG-WARN][367] ([i915#5493]) +1 other test dmesg-warn
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg2-3/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-8/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_media_vme:
    - shard-rkl:          [SKIP][368] ([i915#14544] / [i915#284]) -> [SKIP][369] ([i915#284])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@gem_media_vme.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@gem_media_vme.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-rkl:          [SKIP][370] ([i915#3282]) -> [SKIP][371] ([i915#14544] / [i915#3282]) +4 other tests skip
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@gem_partial_pwrite_pread@reads.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          [SKIP][372] ([i915#14544] / [i915#3282]) -> [SKIP][373] ([i915#3282]) +5 other tests skip
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pxp@display-protected-crc:
    - shard-rkl:          [SKIP][374] ([i915#14544] / [i915#4270]) -> [TIMEOUT][375] ([i915#12917] / [i915#12964])
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@gem_pxp@display-protected-crc.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - shard-rkl:          [SKIP][376] ([i915#13717]) -> [TIMEOUT][377] ([i915#12917] / [i915#12964])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-buffer.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@gem_pxp@hw-rejects-pxp-buffer.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-rkl:          [SKIP][378] ([i915#14544] / [i915#8411]) -> [SKIP][379] ([i915#8411]) +1 other test skip
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-rkl:          [SKIP][380] ([i915#3297]) -> [SKIP][381] ([i915#14544] / [i915#3297]) +2 other tests skip
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@gem_userptr_blits@create-destroy-unsync.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-rkl:          [SKIP][382] ([i915#3282] / [i915#3297]) -> [SKIP][383] ([i915#14544] / [i915#3282] / [i915#3297])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@gem_userptr_blits@forbidden-operations.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-rkl:          [SKIP][384] ([i915#14544] / [i915#3297]) -> [SKIP][385] ([i915#3297])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@gem_userptr_blits@readonly-pwrite-unsync.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gem_userptr_blits@relocations:
    - shard-rkl:          [SKIP][386] ([i915#3281] / [i915#3297]) -> [SKIP][387] ([i915#14544] / [i915#3281] / [i915#3297])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@gem_userptr_blits@relocations.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gem_userptr_blits@relocations.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-rkl:          [SKIP][388] ([i915#14544] / [i915#2527]) -> [SKIP][389] ([i915#2527]) +2 other tests skip
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@gen9_exec_parse@bb-start-param.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-rkl:          [SKIP][390] ([i915#2527]) -> [SKIP][391] ([i915#14544] / [i915#2527]) +3 other tests skip
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@gen9_exec_parse@valid-registers.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_module_load@resize-bar:
    - shard-rkl:          [SKIP][392] ([i915#14544] / [i915#6412]) -> [SKIP][393] ([i915#6412])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@i915_module_load@resize-bar.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-rkl:          [SKIP][394] ([i915#8399]) -> [SKIP][395] ([i915#14544] / [i915#8399])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@i915_pm_freq_api@freq-reset-multiple.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-rkl:          [SKIP][396] ([i915#14544] / [i915#8399]) -> [SKIP][397] ([i915#8399])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@i915_pm_freq_api@freq-suspend.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_query@hwconfig_table:
    - shard-rkl:          [SKIP][398] ([i915#14544] / [i915#6245]) -> [SKIP][399] ([i915#6245])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@i915_query@hwconfig_table.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@i915_query@hwconfig_table.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          [SKIP][400] ([i915#14544] / [i915#5723]) -> [SKIP][401] ([i915#5723])
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@i915_query@test-query-geometry-subslices.html

  * igt@intel_hwmon@hwmon-write:
    - shard-rkl:          [SKIP][402] ([i915#14544] / [i915#7707]) -> [SKIP][403] ([i915#7707])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@intel_hwmon@hwmon-write.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@intel_hwmon@hwmon-write.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
    - shard-rkl:          [SKIP][404] ([i915#14544]) -> [SKIP][405] ([i915#5286]) +6 other tests skip
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-rkl:          [SKIP][406] ([i915#5286]) -> [SKIP][407] ([i915#14544]) +4 other tests skip
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-rkl:          [SKIP][408] ([i915#3638]) -> [SKIP][409] ([i915#14544]) +2 other tests skip
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_big_fb@linear-32bpp-rotate-90.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-rkl:          [SKIP][410] ([i915#14544]) -> [SKIP][411] ([i915#3638]) +2 other tests skip
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc:
    - shard-rkl:          [SKIP][412] ([i915#14544]) -> [SKIP][413] ([i915#14098] / [i915#6095]) +8 other tests skip
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][414] ([i915#14544]) -> [SKIP][415] ([i915#12313]) +2 other tests skip
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][416] ([i915#6095]) -> [SKIP][417] ([i915#14098] / [i915#6095]) +2 other tests skip
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][418] ([i915#14098] / [i915#6095]) -> [SKIP][419] ([i915#6095]) +6 other tests skip
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-2.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-8/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][420] ([i915#12805]) -> [SKIP][421] ([i915#14544])
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs:
    - shard-rkl:          [SKIP][422] ([i915#14098] / [i915#6095]) -> [SKIP][423] ([i915#14544]) +12 other tests skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-rkl:          [SKIP][424] ([i915#3742]) -> [SKIP][425] ([i915#14544] / [i915#3742])
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_cdclk@mode-transition.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - shard-rkl:          [SKIP][426] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][427] ([i915#11151] / [i915#7828]) +7 other tests skip
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-read.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_chamelium_frames@dp-frame-dump:
    - shard-rkl:          [SKIP][428] ([i915#11151] / [i915#7828]) -> [SKIP][429] ([i915#11151] / [i915#14544] / [i915#7828]) +9 other tests skip
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_chamelium_frames@dp-frame-dump.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_chamelium_frames@dp-frame-dump.html

  * igt@kms_content_protection@atomic:
    - shard-dg2:          [SKIP][430] ([i915#7118] / [i915#9424]) -> [FAIL][431] ([i915#7173])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg2-4/igt@kms_content_protection@atomic.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-11/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@legacy:
    - shard-rkl:          [SKIP][432] ([i915#7118] / [i915#9424]) -> [SKIP][433] ([i915#14544])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_content_protection@legacy.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic-type-0:
    - shard-rkl:          [SKIP][434] ([i915#14544]) -> [SKIP][435] ([i915#9424])
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_content_protection@lic-type-0.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@mei-interface:
    - shard-rkl:          [SKIP][436] ([i915#9424]) -> [SKIP][437] ([i915#14544])
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_content_protection@mei-interface.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@type1:
    - shard-rkl:          [SKIP][438] ([i915#14544]) -> [SKIP][439] ([i915#7118] / [i915#9424]) +1 other test skip
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_content_protection@type1.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-rkl:          [SKIP][440] ([i915#14544]) -> [SKIP][441] ([i915#13049])
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-128x42:
    - shard-rkl:          [SKIP][442] ([i915#14544]) -> [FAIL][443] ([i915#13566])
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-128x42.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-128x42.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-rkl:          [SKIP][444] ([i915#3555]) -> [SKIP][445] ([i915#14544]) +3 other tests skip
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-32x32.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-rkl:          [SKIP][446] ([i915#14544]) -> [SKIP][447] ([i915#3555]) +2 other tests skip
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-max-size.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-rkl:          [SKIP][448] ([i915#13049]) -> [SKIP][449] ([i915#14544]) +1 other test skip
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_cursor_crc@cursor-sliding-512x512.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-rkl:          [SKIP][450] -> [SKIP][451] ([i915#14544]) +19 other tests skip
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
    - shard-rkl:          [SKIP][452] ([i915#14544]) -> [DMESG-WARN][453] ([i915#12964]) +1 other test dmesg-warn
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-rkl:          [SKIP][454] ([i915#14544]) -> [SKIP][455] +17 other tests skip
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
    - shard-dg1:          [SKIP][456] -> [SKIP][457] ([i915#4423]) +1 other test skip
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg1-13/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-12/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-rkl:          [FAIL][458] ([i915#2346]) -> [SKIP][459] ([i915#14544])
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-rkl:          [SKIP][460] ([i915#14544]) -> [SKIP][461] ([i915#9067])
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-rkl:          [SKIP][462] ([i915#9723]) -> [SKIP][463] ([i915#14544])
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-rkl:          [SKIP][464] ([i915#14544]) -> [SKIP][465] ([i915#3555] / [i915#3804])
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dp_aux_dev:
    - shard-rkl:          [SKIP][466] ([i915#1257] / [i915#14544]) -> [SKIP][467] ([i915#1257])
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_dp_aux_dev.html
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_dp_aux_dev.html

  * igt@kms_dp_link_training@uhbr-mst:
    - shard-rkl:          [SKIP][468] ([i915#13748]) -> [SKIP][469] ([i915#14544])
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_dp_link_training@uhbr-mst.html
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_dp_link_training@uhbr-mst.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-rkl:          [SKIP][470] ([i915#14544]) -> [SKIP][471] ([i915#3555] / [i915#3840]) +1 other test skip
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_dsc@dsc-with-bpc-formats.html
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-rkl:          [SKIP][472] ([i915#3840] / [i915#9053]) -> [SKIP][473] ([i915#14544])
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][474] ([i915#14544] / [i915#3955]) -> [SKIP][475] ([i915#3955])
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@chamelium:
    - shard-rkl:          [SKIP][476] ([i915#14544] / [i915#4854]) -> [SKIP][477] ([i915#4854])
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_feature_discovery@chamelium.html
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@psr2:
    - shard-rkl:          [SKIP][478] ([i915#658]) -> [SKIP][479] ([i915#14544] / [i915#658])
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_feature_discovery@psr2.html
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-rkl:          [SKIP][480] ([i915#9934]) -> [SKIP][481] ([i915#14544] / [i915#9934]) +4 other tests skip
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_flip@2x-flip-vs-dpms.html
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
    - shard-rkl:          [SKIP][482] ([i915#14544] / [i915#9934]) -> [SKIP][483] ([i915#9934]) +6 other tests skip
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-rkl:          [SKIP][484] ([i915#14544] / [i915#3555]) -> [SKIP][485] ([i915#2672] / [i915#3555]) +3 other tests skip
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-rkl:          [SKIP][486] ([i915#2672] / [i915#3555]) -> [SKIP][487] ([i915#14544] / [i915#3555]) +2 other tests skip
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-rkl:          [DMESG-WARN][488] ([i915#12964]) -> [SKIP][489] ([i915#14544] / [i915#1849] / [i915#5354]) +1 other test skip
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
    - shard-rkl:          [SKIP][490] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][491] ([i915#1825]) +37 other tests skip
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-rkl:          [INCOMPLETE][492] ([i915#10056]) -> [SKIP][493] ([i915#14544] / [i915#1849] / [i915#5354])
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-rkl:          [SKIP][494] ([i915#3023]) -> [SKIP][495] ([i915#14544] / [i915#1849] / [i915#5354]) +20 other tests skip
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][496] ([i915#1825]) -> [SKIP][497] ([i915#14544] / [i915#1849] / [i915#5354]) +32 other tests skip
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:
    - shard-dg2:          [SKIP][498] ([i915#3458]) -> [SKIP][499] ([i915#10433] / [i915#3458]) +2 other tests skip
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][500] ([i915#10433] / [i915#3458]) -> [SKIP][501] ([i915#3458])
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - shard-rkl:          [SKIP][502] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][503] ([i915#3023]) +19 other tests skip
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-dg2:          [SKIP][504] ([i915#12713]) -> [SKIP][505] ([i915#13331])
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg2-4/igt@kms_hdr@brightness-with-hdr.html
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-11/igt@kms_hdr@brightness-with-hdr.html
    - shard-rkl:          [SKIP][506] ([i915#14544]) -> [SKIP][507] ([i915#12713])
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_hdr@brightness-with-hdr.html
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_hdr@brightness-with-hdr.html
    - shard-dg1:          [SKIP][508] ([i915#12713]) -> [SKIP][509] ([i915#1187] / [i915#12713])
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg1-15/igt@kms_hdr@brightness-with-hdr.html
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_hdr@static-toggle:
    - shard-rkl:          [SKIP][510] ([i915#14544]) -> [SKIP][511] ([i915#3555] / [i915#8228])
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_hdr@static-toggle.html
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_hdr@static-toggle.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-rkl:          [SKIP][512] ([i915#3555] / [i915#8228]) -> [SKIP][513] ([i915#14544]) +1 other test skip
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_hdr@static-toggle-dpms.html
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-rkl:          [SKIP][514] ([i915#12388]) -> [SKIP][515] ([i915#12388] / [i915#14544])
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_joiner@basic-force-big-joiner.html
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_joiner@basic-max-non-joiner:
    - shard-rkl:          [SKIP][516] ([i915#13688] / [i915#14544]) -> [SKIP][517] ([i915#13688])
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_joiner@basic-max-non-joiner.html
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_joiner@basic-max-non-joiner.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-rkl:          [SKIP][518] ([i915#12339]) -> [SKIP][519] ([i915#12339] / [i915#14544])
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_joiner@basic-ultra-joiner.html
   [519]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-rkl:          [SKIP][520] ([i915#12388] / [i915#14544]) -> [SKIP][521] ([i915#12388])
   [520]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-big-joiner.html
   [521]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
    - shard-rkl:          [SKIP][522] ([i915#13522] / [i915#14544]) -> [SKIP][523] ([i915#13522])
   [522]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
   [523]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          [SKIP][524] ([i915#14544]) -> [SKIP][525] ([i915#6301])
   [524]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html
   [525]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_panel_fitting@legacy:
    - shard-rkl:          [SKIP][526] ([i915#6301]) -> [SKIP][527] ([i915#14544])
   [526]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_panel_fitting@legacy.html
   [527]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane_multiple@2x-tiling-x:
    - shard-rkl:          [SKIP][528] ([i915#13958]) -> [SKIP][529] ([i915#14544])
   [528]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_plane_multiple@2x-tiling-x.html
   [529]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-x.html

  * igt@kms_plane_multiple@2x-tiling-y:
    - shard-rkl:          [SKIP][530] ([i915#14544]) -> [SKIP][531] ([i915#13958])
   [530]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-y.html
   [531]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_plane_multiple@2x-tiling-y.html

  * igt@kms_plane_multiple@tiling-4:
    - shard-rkl:          [SKIP][532] ([i915#14544]) -> [SKIP][533] ([i915#14259])
   [532]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_plane_multiple@tiling-4.html
   [533]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_plane_multiple@tiling-4.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-rkl:          [SKIP][534] ([i915#14259]) -> [SKIP][535] ([i915#14544])
   [534]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_plane_multiple@tiling-yf.html
   [535]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-rkl:          [SKIP][536] -> [SKIP][537] ([i915#14544] / [i915#8152])
   [536]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
   [537]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-rkl:          [SKIP][538] ([i915#6953]) -> [SKIP][539] ([i915#14544] / [i915#6953] / [i915#8152])
   [538]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size.html
   [539]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:
    - shard-rkl:          [DMESG-WARN][540] ([i915#12964]) -> [SKIP][541] ([i915#14544] / [i915#8152])
   [540]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html
   [541]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a:
    - shard-rkl:          [DMESG-WARN][542] ([i915#12964]) -> [SKIP][543] ([i915#12247] / [i915#14544])
   [542]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a.html
   [543]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-rkl:          [SKIP][544] ([i915#12343]) -> [SKIP][545] ([i915#12343] / [i915#14544])
   [544]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_pm_backlight@brightness-with-dpms.html
   [545]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-rkl:          [SKIP][546] ([i915#5354]) -> [SKIP][547] ([i915#14544] / [i915#5354]) +1 other test skip
   [546]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_pm_backlight@fade-with-suspend.html
   [547]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_dc@dc5-psr:
    - shard-rkl:          [SKIP][548] ([i915#14544] / [i915#9685]) -> [SKIP][549] ([i915#9685])
   [548]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_pm_dc@dc5-psr.html
   [549]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@kms_pm_dc@dc5-psr.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          [SKIP][550] ([i915#14544] / [i915#4281]) -> [SKIP][551] ([i915#4281])
   [550]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html
   [551]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@fences:
    - shard-rkl:          [SKIP][552] ([i915#14544] / [i915#1849]) -> [DMESG-WARN][553] ([i915#12964])
   [552]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_pm_rpm@fences.html
   [553]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_pm_rpm@fences.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [SKIP][554] ([i915#9519]) -> [SKIP][555] ([i915#14544] / [i915#9519])
   [554]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp.html
   [555]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-rkl:          [SKIP][556] ([i915#6524]) -> [SKIP][557] ([i915#14544] / [i915#6524]) +1 other test skip
   [556]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_prime@basic-crc-hybrid.html
   [557]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
    - shard-rkl:          [SKIP][558] ([i915#11520] / [i915#14544]) -> [SKIP][559] ([i915#11520]) +7 other tests skip
   [558]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html
   [559]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
    - shard-rkl:          [SKIP][560] ([i915#11520]) -> [SKIP][561] ([i915#11520] / [i915#14544]) +7 other tests skip
   [560]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
   [561]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-rkl:          [SKIP][562] ([i915#9683]) -> [SKIP][563] ([i915#14544] / [i915#9683])
   [562]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_psr2_su@page_flip-xrgb8888.html
   [563]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-psr2-suspend:
    - shard-dg1:          [SKIP][564] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][565] ([i915#1072] / [i915#9732])
   [564]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg1-18/igt@kms_psr@fbc-psr2-suspend.html
   [565]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-16/igt@kms_psr@fbc-psr2-suspend.html

  * igt@kms_psr@pr-cursor-mmap-cpu:
    - shard-rkl:          [SKIP][566] ([i915#1072] / [i915#9732]) -> [SKIP][567] ([i915#1072] / [i915#14544] / [i915#9732]) +17 other tests skip
   [566]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_psr@pr-cursor-mmap-cpu.html
   [567]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_psr@pr-cursor-mmap-cpu.html

  * igt@kms_psr@psr-sprite-plane-move:
    - shard-rkl:          [SKIP][568] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][569] ([i915#1072] / [i915#9732]) +21 other tests skip
   [568]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_psr@psr-sprite-plane-move.html
   [569]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_psr@psr-sprite-plane-move.html
    - shard-dg1:          [SKIP][570] ([i915#1072] / [i915#9732]) -> [SKIP][571] ([i915#1072] / [i915#4423] / [i915#9732])
   [570]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg1-13/igt@kms_psr@psr-sprite-plane-move.html
   [571]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-12/igt@kms_psr@psr-sprite-plane-move.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-rkl:          [SKIP][572] ([i915#5289]) -> [SKIP][573] ([i915#14544])
   [572]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
   [573]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_sequence@queue-busy:
    - shard-rkl:          [DMESG-WARN][574] ([i915#12964]) -> [SKIP][575] ([i915#14544])
   [574]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_sequence@queue-busy.html
   [575]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_sequence@queue-busy.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-rkl:          [SKIP][576] ([i915#3555]) -> [SKIP][577] ([i915#14544] / [i915#3555])
   [576]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_setmode@basic-clone-single-crtc.html
   [577]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-rkl:          [SKIP][578] ([i915#9906]) -> [SKIP][579] ([i915#14544])
   [578]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_vrr@flip-basic-fastset.html
   [579]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_vrr@flip-basic-fastset.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-rkl:          [SKIP][580] ([i915#14544] / [i915#8516]) -> [SKIP][581] ([i915#8516])
   [580]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@perf_pmu@rc6-all-gts.html
   [581]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_vgem@basic-fence-read:
    - shard-rkl:          [SKIP][582] ([i915#3291] / [i915#3708]) -> [SKIP][583] ([i915#14544] / [i915#3291] / [i915#3708])
   [582]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@prime_vgem@basic-fence-read.html
   [583]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - shard-rkl:          [SKIP][584] ([i915#14544] / [i915#3291] / [i915#3708]) -> [SKIP][585] ([i915#3291] / [i915#3708])
   [584]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@prime_vgem@basic-read.html
   [585]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@fence-read-hang:
    - shard-rkl:          [SKIP][586] ([i915#14544] / [i915#3708]) -> [SKIP][587] ([i915#3708]) +1 other test skip
   [586]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@prime_vgem@fence-read-hang.html
   [587]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@prime_vgem@fence-read-hang.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-rkl:          [SKIP][588] ([i915#14544] / [i915#9917]) -> [SKIP][589] ([i915#9917])
   [588]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-on.html
   [589]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@sriov_basic@enable-vfs-autoprobe-on.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10056]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10393]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10393
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10959]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
  [i915#11441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11521]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#11713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713
  [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
  [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
  [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
  [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
  [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#12796]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
  [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
  [i915#12942]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12942
  [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
  [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
  [i915#13331]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13390]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390
  [i915#13398]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
  [i915#13522]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
  [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
  [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
  [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
  [i915#13790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790
  [i915#13820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820
  [i915#13899]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13899
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
  [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
  [i915#14123]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14123
  [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
  [i915#14350]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14350
  [i915#14433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14553]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14553
  [i915#14561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14561
  [i915#14600]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600
  [i915#14756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14756
  [i915#14806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14806
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
  [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
  [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
  [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
  [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
  [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
  [i915#7387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8289
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
  [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
  [i915#8826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826
  [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
  [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9833]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_17090 -> Patchwork_153715v1

  CI-20190529: 20190529
  CI_DRM_17090: 9c9bbfa81276408b7702ec6ea6332bd8a86cc0b6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8516: 8516
  Patchwork_153715v1: 9c9bbfa81276408b7702ec6ea6332bd8a86cc0b6 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/index.html

--===============8404611401863385085==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Make intel_crtc_get_vblank_counter safe on PREEMPT_RT</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/153715/">https://patchwork.freedesktop.org/series/153715/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17090_full -&gt; Patchwork_153715v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_153715v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_153715v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_153715v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_pxp@create-regular-context-1:<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-mtlp-6/igt@gem_pxp@create-regular-context-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-mtlp-8/igt@gem_pxp@create-regular-context-1.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_153715v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@gem_create@create-ext-cpu-access-sanity-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_create@create-ext-set-pat.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-5/igt@gem_ctx_persistence@heartbeat-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-5/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk6/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390">i915#13390</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_exec_balancer@bonded-false-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@gem_exec_balancer@bonded-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-7/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_big@single:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@gem_exec_big@single.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713">i915#11713</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14756">i915#14756</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk5/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334">i915#6334</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@concurrent:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-4/igt@gem_exec_fence@concurrent.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-uc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@gem_exec_flush@basic-batch-kernel-default-uc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@gem_exec_flush@basic-uc-set-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-default:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_exec_flush@basic-wb-ro-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-19/igt@gem_exec_reloc@basic-cpu-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-active:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_exec_reloc@basic-gtt-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@gem_exec_reloc@basic-gtt-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@fairslice:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@gem_exec_schedule@fairslice.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@gem_exec_schedule@fairslice.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +13 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-5/igt@gem_exec_schedule@preempt-queue-chain.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537">i915#4537</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_exec_schedule@semaphore-power.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537">i915#4537</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg2-8/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-3/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441">i915#11441</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-5/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) +2 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg2-8/igt@gem_exec_suspend@basic-s0@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-3/igt@gem_exec_suspend@basic-s0@lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441">i915#11441</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_fence_thrash@bo-write-verify-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk6/igt@gem_lmem_swapping@verify.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@gem_media_fill@media-fill.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8289">i915#8289</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-bo-tiledy:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_mmap_gtt@big-bo-tiledy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@gem_mmap_wc@copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@invalid-flags:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_mmap_wc@invalid-flags.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk6/igt@gem_pread@exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@self:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_pread@self.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-random:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@gem_pwrite@basic-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@gem_pxp@create-protected-buffer.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gem_pxp@create-protected-buffer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_pxp@create-regular-context-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-valid-protected-context:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@gem_pxp@create-valid-protected-context.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-7/igt@gem_pxp@hw-rejects-pxp-buffer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398">i915#13398</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-3:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-off-3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-7/igt@gem_pxp@reject-modify-context-protection-off-3.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk6/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html">SKIP</a> +177 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-linear:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-5/igt@gem_render_copy@y-tiled-to-vebox-linear.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-5/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_gtt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_set_tiling_vs_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-5/igt@gem_softpin@evict-snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_softpin@evict-snoop-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate-busy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gem_userptr_blits@unsync-unmap-after-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@gen9_exec_parse@basic-rejected.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk5/igt@gen9_exec_parse@bb-large.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14806">i915#14806</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@gen9_exec_parse@bb-start-far.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-4/igt@gen9_exec_parse@secure-batches.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@all-busy-idle-check-all:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@i915_drm_fdinfo@all-busy-idle-check-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14123">i915#14123</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@busy:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@i915_drm_fdinfo@busy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073">i915#14073</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@virtual-busy-idle:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@i915_drm_fdinfo@virtual-busy-idle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118">i915#14118</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@virtual-busy-idle-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@i915_drm_fdinfo@virtual-busy-idle-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118">i915#14118</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820">i915#13820</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790">i915#13790</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681">i915#2681</a>) +1 other test warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk5/igt@i915_pm_rpm@system-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@i915_pm_rps@min-max-config-loaded.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@i915_pm_rps@thresholds-idle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215">i915#4215</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-7/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454">i915#12454</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712">i915#12712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-cursor-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_async_flips@test-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html">SKIP</a> +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKIP</a> +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-mtlp-3/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-b-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +49 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-c-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-11/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-c-dp-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +117 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-7/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk9/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796">i915#12796</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-13/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +117 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@kms_cdclk@mode-transition.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783">i915#13783</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-single:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_chamelium_frames@dp-crc-single.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-mtlp-3/igt@kms_chamelium_frames@dp-crc-single.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-aspect-ratio:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@kms_chamelium_frames@hdmi-aspect-ratio.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-cmp-planar-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_color@ctm-0-25.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_color@ctm-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-11/igt@kms_content_protection@atomic@pipe-a-dp-3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x10:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_cursor_crc@cursor-onscreen-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-128x42:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-4/igt@kms_cursor_crc@cursor-random-128x42.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-8/igt@kms_cursor_crc@cursor-random-128x42.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-tglu-7/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-3/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-7/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +38 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833">i915#9833</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833">i915#9833</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_display_modes@extended-mode-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691">i915#13691</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-mst:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@kms_dp_link_training@uhbr-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">i915#13748</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dsc-fallback:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_dp_linktrain_fallback@dsc-fallback.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707">i915#13707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_dsc@dsc-with-output-formats-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053">i915#9053</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_fbcon_fbt@fbc-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14561">i915#14561</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-5/igt@kms_feature_discovery@chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-7/igt@kms_feature_discovery@display-2x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-7/igt@kms_flip@2x-flip-vs-panning.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_flip@2x-wf_vblank-ts-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-on-nop:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_flip@flip-vs-dpms-on-nop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_flip@flip-vs-dpms-on-nop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14553">i915#14553</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-on-nop-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_flip@flip-vs-dpms-on-nop-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_flip@flip-vs-dpms-on-nop-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html">SKIP</a> +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html">SKIP</a> +44 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-7/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_invalid_mode@int-max-clock.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_invalid_mode@int-max-clock.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826">i915#8826</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-8/igt@kms_joiner@basic-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_joiner@basic-force-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339">i915#12339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-5/igt@kms_joiner@invalid-modeset-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388">i915#12388</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_joiner@invalid-modeset-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339">i915#12339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk10/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-top-left:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_plane@plane-panning-top-left.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_plane@plane-panning-top-left.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825">i915#8825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk10/igt@kms_plane_alpha_blend@alpha-opaque-fb.html">SKIP</a> +501 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_plane_alpha_blend@constant-alpha-max.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_plane_alpha_blend@constant-alpha-max.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_plane_multiple@2x-tiling-x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-yf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-19/igt@kms_plane_multiple@2x-tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_plane_multiple@tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@kms_pm_backlight@fade-with-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@cursor-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_pm_rpm@cursor-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_pm_rpm@cursor-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg1-16/igt@kms_pm_rpm@i2c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-19/igt@kms_pm_rpm@i2c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_prime@d3hot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805">i915#6805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-update-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-7/igt@kms_psr2_sf@pr-cursor-plane-update-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk10/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk5/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-no-drrs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-7/igt@kms_psr@fbc-psr-no-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-mmap-cpu:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_psr@fbc-psr2-sprite-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-sprite-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_psr@pr-sprite-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-plane-onoff:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_psr@psr-cursor-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-8/igt@kms_psr@psr2-cursor-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +17 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-19/igt@kms_psr@psr2-cursor-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-8/igt@kms_scaling_modes@scaling-mode-full.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_scaling_modes@scaling-mode-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk10/igt@kms_selftest@drm_framebuffer.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179">i915#13179</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk6/igt@kms_tiled_display@basic-test-pattern.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959">i915#10959</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@wait-forked-hang@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_vblank@wait-forked-hang@pipe-b-hdmi-a-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +4 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-19/igt@kms_vrr@max-min.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-3/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-mtlp-7/igt@kms_vrr@negative-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-mtlp-2/igt@kms_vrr@negative-basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10393">i915#10393</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-1/igt@kms_writeback@writeback-fb-id.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk6/igt@kms_writeback@writeback-fb-id-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-9/igt@perf@global-sseu-config.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config-invalid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-8/igt@perf@global-sseu-config-invalid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-glk6/igt@perf_pmu@module-unload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433">i915#14433</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-7/igt@perf_pmu@rc6@other-idle-gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-5/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-5/igt@prime_vgem@fence-read-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-5/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-7/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910">i915#12910</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@fbdev@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@fbdev@write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg1-12/igt@gem_eio@reset-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784">i915#5784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-15/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493">i915#5493</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-5/igt@gem_pxp@protected-raw-src-copy-not-readible.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-8/igt@gem_pxp@protected-raw-src-copy-not-readible.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-5/igt@gem_pxp@regular-baseline-src-copy-readible.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-8/igt@gem_pxp@regular-baseline-src-copy-readible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-accuracy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-accuracy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12942">i915#12942</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-8/igt@i915_pm_rc6_residency@rc6-accuracy.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-mtlp-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-mtlp-7/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-snb4/igt@kms_async_flips@async-flip-suspend-resume.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13899">i915#13899</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-snb7/igt@kms_async_flips@async-flip-suspend-resume.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html">PASS</a> +57 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg1-18/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-16/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796">i915#12796</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-3.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_color@ctm-max.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_color@ctm-max.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-tglu-9/igt@kms_cursor_crc@cursor-onscreen-128x42.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-5/igt@kms_cursor_crc@cursor-onscreen-128x42.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg2-4/igt@kms_dp_aux_dev.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#1257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-11/igt@kms_dp_aux_dev.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_fbcon_fbt@fbc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14561">i915#14561</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_fbcon_fbt@fbc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-snb5/igt@kms_flip@2x-flip-vs-suspend-interruptible.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033">i915#14033</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14350">i915#14350</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-snb5/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033">i915#14033</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_flip@basic-flip-vs-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@a-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-tglu-9/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600">i915#14600</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-tglu-5/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-snb4/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-snb1/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-htotal:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_invalid_mode@bad-htotal.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826">i915#8826</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@kms_invalid_mode@bad-htotal.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b.html">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_plane_scaling@planes-downscale-factor-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_plane_scaling@planes-scaler-unity-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_plane_scaling@planes-scaler-unity-scaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-20x20.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-factor-0-25.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg2-3/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-4/igt@kms_pm_lpsp@kms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_properties@crtc-properties-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_properties@crtc-properties-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521">i915#11521</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_properties@crtc-properties-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-for-submit-delayed-submit:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html">PASS</a> +20 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@api_intel_bb@crc32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230">i915#6230</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@api_intel_bb@crc32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230">i915#6230</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@gem_bad_reloc@negative-reloc-lut.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gem_bad_reloc@negative-reloc-lut.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@gem_ccs@block-copy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008">i915#13008</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008">i915#13008</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@gem_exec_balancer@parallel-keep-submit-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334">i915#6334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334">i915#6334</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-active:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-cpu-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@gem_lmem_swapping@random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@gem_lmem_swapping@random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg2-3/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493">i915#5493</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-8/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493">i915#5493</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@gem_media_vme.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284">i915#284</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@gem_media_vme.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284">i915#284</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@gem_partial_pwrite_pread@reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gem_partial_pwrite_pread@reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@gem_pxp@display-protected-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@gem_pxp@display-protected-crc.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-buffer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717">i915#13717</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@gem_pxp@hw-rejects-pxp-buffer.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@gem_userptr_blits@relocations.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gem_userptr_blits@relocations.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@gen9_exec_parse@valid-registers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@gen9_exec_parse@valid-registers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@i915_module_load@resize-bar.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412">i915#6412</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@i915_module_load@resize-bar.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412">i915#6412</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@i915_pm_freq_api@freq-reset-multiple.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@i915_pm_freq_api@freq-reset-multiple.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@i915_query@hwconfig_table.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245">i915#6245</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@i915_query@hwconfig_table.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723">i915#5723</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723">i915#5723</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-8/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805">i915#12805</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_cdclk@mode-transition.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_cdclk@mode-transition.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_chamelium_edid@hdmi-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-frame-dump:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_chamelium_frames@dp-frame-dump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_chamelium_frames@dp-frame-dump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg2-4/igt@kms_content_protection@atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-11/igt@kms_content_protection@atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_content_protection@lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_content_protection@lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-128x42.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-128x42.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> +17 other tests skip</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg1-13/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-12/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_dp_aux_dev.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#1257</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_dp_aux_dev.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-mst:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_dp_link_training@uhbr-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">i915#13748</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_dp_link_training@uhbr-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_dsc@dsc-with-output-formats-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053">i915#9053</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_feature_discovery@chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854">i915#4854</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_feature_discovery@chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +37 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056">i915#10056</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +32 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg2-4/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg2-11/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331">i915#13331</a>)</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>)</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg1-15/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187">i915#1187</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_joiner@basic-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388">i915#12388</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_joiner@basic-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388">i915#12388</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-max-non-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_joiner@basic-max-non-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688">i915#13688</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_joiner@basic-max-non-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688">i915#13688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339">i915#12339</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339">i915#12339</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388">i915#12388</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_joiner@invalid-modeset-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388">i915#12388</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522">i915#13522</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522">i915#13522</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-x:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_plane_multiple@2x-tiling-x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-y:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_plane_multiple@2x-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-4:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_plane_multiple@tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_plane_multiple@tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_pm_backlight@fade-with-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_pm_backlight@fade-with-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-psr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_pm_dc@dc5-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@kms_pm_dc@dc5-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_pm_rpm@fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-5/igt@kms_pm_rpm@fences.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-2/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-suspend:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg1-18/igt@kms_psr@fbc-psr2-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-16/igt@kms_psr@fbc-psr2-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_psr@pr-cursor-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_psr@pr-cursor-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-move:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@kms_psr@psr-sprite-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@kms_psr@psr-sprite-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +21 other tests skip</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-dg1-13/igt@kms_psr@psr-sprite-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-dg1-12/igt@kms_psr@psr-sprite-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@queue-busy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-3/igt@kms_sequence@queue-busy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_sequence@queue-busy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-7/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-4/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-8/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-6/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@prime_vgem@fence-read-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@prime_vgem@fence-read-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17090/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153715v1/shard-rkl-3/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17090 -&gt; Patchwork_153715v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17090: 9c9bbfa81276408b7702ec6ea6332bd8a86cc0b6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8516: 8516<br />
  Patchwork_153715v1: 9c9bbfa81276408b7702ec6ea6332bd8a86cc0b6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============8404611401863385085==--
