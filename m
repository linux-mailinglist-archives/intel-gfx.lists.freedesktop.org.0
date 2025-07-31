Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFC9B173EA
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 17:26:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A98A10E7B6;
	Thu, 31 Jul 2025 15:26:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6372C10E7B6;
 Thu, 31 Jul 2025 15:26:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0612820255527882615=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EFull=3A_success_for_drm/i915/display=3A_glob?=
 =?utf-8?q?al_state_cleanups?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Jul 2025 15:26:11 -0000
Message-ID: <175397557138.202796.6879777276444718703@1538d3639d33>
X-Patchwork-Hint: ignore
References: <cover.1753953530.git.jani.nikula@intel.com>
In-Reply-To: <cover.1753953530.git.jani.nikula@intel.com>
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

--===============0612820255527882615==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: global state cleanups
URL   : https://patchwork.freedesktop.org/series/152336/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_16943_full -> Patchwork_152336v1_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_152336v1_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_152336v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 12)
------------------------------

  Additional (1): shard-glk-0 
  Missing    (1): shard-dg2-set2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_152336v1_full:

### IGT changes ###

#### Warnings ####

  * igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:
    - shard-snb:          [TIMEOUT][1] ([i915#14033]) -> [TIMEOUT][2] +1 other test timeout
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-snb2/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-snb2/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html

  
Known issues
------------

  Here are the changes found in Patchwork_152336v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-dg2-9:        NOTRUN -> [SKIP][3] ([i915#8411])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@api_intel_bb@crc32:
    - shard-tglu-1:       NOTRUN -> [SKIP][4] ([i915#6230])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@api_intel_bb@crc32.html

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-mtlp:         NOTRUN -> [SKIP][5] ([i915#8411])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-dg2:          NOTRUN -> [SKIP][6] ([i915#8411])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-10/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@fbdev@read:
    - shard-rkl:          [PASS][7] -> [SKIP][8] ([i915#14544] / [i915#2582])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@fbdev@read.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@fbdev@read.html

  * igt@gem_busy@semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#3936])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@gem_busy@semaphore.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-mtlp:         NOTRUN -> [SKIP][10] ([i915#9323])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-rkl:          NOTRUN -> [SKIP][11] ([i915#9323])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-rkl:          NOTRUN -> [SKIP][12] ([i915#13008])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-4/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-tglu-1:       NOTRUN -> [SKIP][13] ([i915#7697])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_compute@compute-square:
    - shard-dg2-9:        NOTRUN -> [FAIL][14] ([i915#13665])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_compute@compute-square.html

  * igt@gem_ctx_isolation@preservation-s3:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][15] ([i915#12353]) +1 other test incomplete
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk10/igt@gem_ctx_isolation@preservation-s3.html

  * igt@gem_ctx_persistence@hang:
    - shard-mtlp:         NOTRUN -> [SKIP][16] ([i915#8555])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_persistence@heartbeat-stop:
    - shard-dg2-9:        NOTRUN -> [SKIP][17] ([i915#8555])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_ctx_persistence@heartbeat-stop.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-tglu:         NOTRUN -> [SKIP][18] ([i915#280])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-mtlp:         NOTRUN -> [SKIP][19] ([i915#280]) +1 other test skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-3/igt@gem_ctx_sseu@invalid-sseu.html
    - shard-dg2-9:        NOTRUN -> [SKIP][20] ([i915#280])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_eio@in-flight-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][21] ([i915#13390])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk9/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-tglu:         NOTRUN -> [SKIP][22] ([i915#4525])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_capture@capture-invisible:
    - shard-glk10:        NOTRUN -> [SKIP][23] ([i915#6334]) +1 other test skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk10/igt@gem_exec_capture@capture-invisible.html

  * igt@gem_exec_fence@concurrent:
    - shard-mtlp:         NOTRUN -> [SKIP][24] ([i915#4812])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@gem_exec_fence@concurrent.html

  * igt@gem_exec_fence@submit3:
    - shard-dg2-9:        NOTRUN -> [SKIP][25] ([i915#4812])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_exec_fence@submit3.html

  * igt@gem_exec_flush@basic-uc-set-default:
    - shard-dg2-9:        NOTRUN -> [SKIP][26] ([i915#3539])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_exec_flush@basic-uc-set-default.html

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#3539] / [i915#4852]) +1 other test skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@gem_exec_flush@basic-wb-rw-before-default.html

  * igt@gem_exec_params@secure-non-root:
    - shard-dg2-9:        NOTRUN -> [SKIP][28] +4 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_reloc@basic-cpu-wc-active:
    - shard-mtlp:         NOTRUN -> [SKIP][29] ([i915#3281]) +2 other tests skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@gem_exec_reloc@basic-cpu-wc-active.html

  * igt@gem_exec_reloc@basic-gtt-cpu-active:
    - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#3281]) +5 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@gem_exec_reloc@basic-gtt-cpu-active.html

  * igt@gem_exec_reloc@basic-range-active:
    - shard-dg2-9:        NOTRUN -> [SKIP][31] ([i915#3281]) +2 other tests skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_exec_reloc@basic-range-active.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#4537] / [i915#4812])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          [PASS][33] -> [INCOMPLETE][34] ([i915#11441] / [i915#13304]) +1 other test incomplete
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg2-7/igt@gem_exec_suspend@basic-s0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#4860])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_fence_thrash@bo-write-verify-threaded-none:
    - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#4860])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@gem_fence_thrash@bo-write-verify-threaded-none.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglu-1:       NOTRUN -> [SKIP][37] ([i915#2190])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-glk:          NOTRUN -> [SKIP][38] ([i915#4613]) +3 other tests skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk9/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][39] ([i915#4613])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-tglu:         NOTRUN -> [SKIP][40] ([i915#4613]) +2 other tests skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [PASS][41] -> [TIMEOUT][42] ([i915#5493]) +1 other test timeout
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][43] ([i915#4613]) +1 other test skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-3/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-rkl:          NOTRUN -> [SKIP][44] ([i915#4613]) +1 other test skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-4/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_media_vme:
    - shard-dg2-9:        NOTRUN -> [SKIP][45] ([i915#284])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@basic-write-read-distinct:
    - shard-dg2-9:        NOTRUN -> [SKIP][46] ([i915#4077]) +4 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_mmap_gtt@basic-write-read-distinct.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#4077]) +5 other tests skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_gtt@hang-busy:
    - shard-mtlp:         NOTRUN -> [SKIP][48] ([i915#4077]) +2 other tests skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@gem_mmap_gtt@hang-busy.html

  * igt@gem_mmap_wc@bad-size:
    - shard-dg2-9:        NOTRUN -> [SKIP][49] ([i915#4083]) +3 other tests skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_mmap_wc@bad-size.html

  * igt@gem_mmap_wc@write:
    - shard-mtlp:         NOTRUN -> [SKIP][50] ([i915#4083])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@gem_mmap_wc@write.html

  * igt@gem_mmap_wc@write-read-distinct:
    - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#4083]) +4 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@gem_mmap_wc@write-read-distinct.html

  * igt@gem_partial_pwrite_pread@write:
    - shard-dg2-9:        NOTRUN -> [SKIP][52] ([i915#3282]) +4 other tests skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_partial_pwrite_pread@write.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#3282]) +1 other test skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pread@exhaustion:
    - shard-tglu:         NOTRUN -> [WARN][54] ([i915#2658])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@gem_pread@exhaustion.html

  * igt@gem_pread@snoop:
    - shard-mtlp:         NOTRUN -> [SKIP][55] ([i915#3282])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-3/igt@gem_pread@snoop.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-glk:          NOTRUN -> [WARN][56] ([i915#14702] / [i915#2658])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk8/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pwrite@basic-random:
    - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#3282]) +3 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@gem_pwrite@basic-random.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-rkl:          [PASS][58] -> [TIMEOUT][59] ([i915#12917] / [i915#12964])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-8/igt@gem_pxp@create-regular-context-2.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-dg2-9:        NOTRUN -> [SKIP][60] ([i915#4270])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#4270])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][62] ([i915#8428]) +1 other test skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html

  * igt@gem_render_copy@yf-tiled-ccs-to-x-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#5190] / [i915#8428]) +1 other test skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@gem_render_copy@yf-tiled-ccs-to-x-tiled.html

  * igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled:
    - shard-dg2-9:        NOTRUN -> [SKIP][64] ([i915#5190] / [i915#8428]) +1 other test skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled.html

  * igt@gem_set_tiling_vs_gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][65] ([i915#4079])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@gem_set_tiling_vs_gtt.html

  * igt@gem_softpin@noreloc-s3:
    - shard-rkl:          [PASS][66] -> [INCOMPLETE][67] ([i915#13809])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-4/igt@gem_softpin@noreloc-s3.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-3/igt@gem_softpin@noreloc-s3.html

  * igt@gem_tiled_pread_basic:
    - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#4079])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@gem_tiled_pread_basic.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#3297]) +2 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-glk:          NOTRUN -> [SKIP][70] ([i915#3323])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk1/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#3282] / [i915#3297])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-dg2-9:        NOTRUN -> [SKIP][72] ([i915#3297])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-tglu:         NOTRUN -> [SKIP][73] ([i915#3297]) +1 other test skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-5/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_workarounds@suspend-resume:
    - shard-glk:          NOTRUN -> [INCOMPLETE][74] ([i915#13356] / [i915#14586])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk1/igt@gem_workarounds@suspend-resume.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#2856]) +1 other test skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#2856]) +2 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#2527])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@gen9_exec_parse@bb-start-far.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-tglu-1:       NOTRUN -> [SKIP][78] ([i915#2527] / [i915#2856])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-tglu:         NOTRUN -> [SKIP][79] ([i915#2527] / [i915#2856]) +2 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-dg2-9:        NOTRUN -> [SKIP][80] ([i915#2856]) +4 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_drm_fdinfo@busy-hang@vcs0:
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#14073]) +7 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@i915_drm_fdinfo@busy-hang@vcs0.html

  * igt@i915_drm_fdinfo@isolation@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][82] ([i915#14073]) +6 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@i915_drm_fdinfo@isolation@rcs0.html

  * igt@i915_fb_tiling@basic-x-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#13786])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@i915_fb_tiling@basic-x-tiling.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [PASS][84] -> [INCOMPLETE][85] ([i915#12455] / [i915#13820]) +1 other test incomplete
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg2-2/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-6/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-tglu-1:       NOTRUN -> [SKIP][86] ([i915#6590]) +1 other test skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-glk:          NOTRUN -> [INCOMPLETE][87] ([i915#12797])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk8/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_pm_rps@min-max-config-idle:
    - shard-mtlp:         NOTRUN -> [SKIP][88] ([i915#11681] / [i915#6621])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [PASS][89] -> [INCOMPLETE][90] ([i915#13821])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-snb5/igt@i915_pm_rps@reset.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-snb5/igt@i915_pm_rps@reset.html

  * igt@i915_pm_sseu@full-enable:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#4387])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-mtlp:         NOTRUN -> [SKIP][92] ([i915#6188])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][93] ([i915#4817] / [i915#7443])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@i915_suspend@basic-s3-without-i915.html
    - shard-glk:          [PASS][94] -> [INCOMPLETE][95] ([i915#4817])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-glk2/igt@i915_suspend@basic-s3-without-i915.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk8/igt@i915_suspend@basic-s3-without-i915.html

  * igt@i915_suspend@forcewake:
    - shard-glk:          NOTRUN -> [INCOMPLETE][96] ([i915#4817])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk8/igt@i915_suspend@forcewake.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#4212])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_addfb_basic@clobberred-modifier:
    - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#4212])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_addfb_basic@clobberred-modifier.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-dg2-9:        NOTRUN -> [SKIP][99] ([i915#4212]) +1 other test skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-tglu:         NOTRUN -> [SKIP][100] ([i915#12454] / [i915#12712])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-1:
    - shard-glk:          [PASS][101] -> [FAIL][102] ([i915#10991] / [i915#13335])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-1.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-1.html

  * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-1:
    - shard-glk:          [PASS][103] -> [FAIL][104] ([i915#10991])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-1.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-1.html

  * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-2:
    - shard-glk:          [PASS][105] -> [FAIL][106] ([i915#10991] / [i915#12518])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-2.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-2.html

  * igt@kms_async_flips@invalid-async-flip:
    - shard-dg2-9:        NOTRUN -> [SKIP][107] ([i915#12967] / [i915#6228])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#9531])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-tglu:         NOTRUN -> [SKIP][109] ([i915#9531])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-dg2-9:        NOTRUN -> [SKIP][110] ([i915#1769] / [i915#3555])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][111] ([i915#12964]) +4 other tests dmesg-warn
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-2.html

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind:
    - shard-rkl:          [PASS][112] -> [SKIP][113] ([i915#14544]) +31 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
    - shard-tglu-1:       NOTRUN -> [SKIP][114] ([i915#5286]) +3 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#5286])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#5286]) +3 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-glk:          NOTRUN -> [SKIP][117] +245 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk9/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][118] +8 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][119] +8 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-0:
    - shard-dg2-9:        NOTRUN -> [SKIP][120] ([i915#4538] / [i915#5190]) +4 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2-9:        NOTRUN -> [SKIP][121] ([i915#5190]) +1 other test skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#4538] / [i915#5190]) +8 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][123] +3 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - shard-glk10:        NOTRUN -> [SKIP][124] +387 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk10/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html

  * igt@kms_busy@basic:
    - shard-glk10:        NOTRUN -> [SKIP][125] ([i915#11190]) +1 other test skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk10/igt@kms_busy@basic.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#6095]) +103 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg1-17/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][127] ([i915#10307] / [i915#6095]) +34 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-2.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][128] ([i915#12313])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#12313])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-11/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
    - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#12313]) +1 other test skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-4/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:
    - shard-tglu:         NOTRUN -> [SKIP][131] ([i915#6095]) +49 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#10307] / [i915#6095]) +173 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][133] ([i915#6095]) +34 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs:
    - shard-dg1:          [PASS][134] -> [DMESG-WARN][135] ([i915#4423]) +2 other tests dmesg-warn
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg1-13/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg1-18/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#6095]) +19 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-2/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][137] ([i915#4423])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg1-18/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-4.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#6095]) +41 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#14098] / [i915#6095]) +38 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#10307] / [i915#10434] / [i915#6095]) +2 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][141] ([i915#6095]) +19 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc@pipe-a-edp-1.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg2-9:        NOTRUN -> [SKIP][142] ([i915#13784])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@plane-scaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][143] ([i915#3742])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_cdclk@plane-scaling.html

  * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#11151] / [i915#7828]) +2 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
    - shard-mtlp:         NOTRUN -> [SKIP][145] ([i915#11151] / [i915#7828])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - shard-tglu-1:       NOTRUN -> [SKIP][146] ([i915#11151] / [i915#7828]) +2 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:
    - shard-dg2-9:        NOTRUN -> [SKIP][147] ([i915#11151] / [i915#7828]) +2 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html

  * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
    - shard-tglu:         NOTRUN -> [SKIP][148] ([i915#11151] / [i915#7828]) +4 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html

  * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#11151] / [i915#7828]) +6 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html

  * igt@kms_color@ctm-negative:
    - shard-rkl:          [PASS][150] -> [SKIP][151] ([i915#12655] / [i915#14544])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_color@ctm-negative.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_color@ctm-negative.html

  * igt@kms_color@deep-color:
    - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#12655] / [i915#3555])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][153] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@content-type-change:
    - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#9424])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-dg2-9:        NOTRUN -> [SKIP][155] ([i915#3299])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@lic-type-1:
    - shard-tglu:         NOTRUN -> [SKIP][156] ([i915#6944] / [i915#9424])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#9424])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@uevent:
    - shard-tglu:         NOTRUN -> [SKIP][158] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_content_protection@uevent.html

  * igt@kms_content_protection@uevent@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][159] ([i915#1339] / [i915#7173])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-3.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-tglu:         NOTRUN -> [SKIP][160] ([i915#3555]) +1 other test skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-random-32x10:
    - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#3555]) +1 other test skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-10/igt@kms_cursor_crc@cursor-random-32x10.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-tglu-1:       NOTRUN -> [SKIP][162] ([i915#13049]) +1 other test skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-mtlp:         NOTRUN -> [SKIP][163] ([i915#3555] / [i915#8814])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#3555])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_crc@cursor-sliding-256x85:
    - shard-tglu-1:       NOTRUN -> [FAIL][165] ([i915#13566]) +1 other test fail
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-256x85.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][166] ([i915#13049])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][167] ([i915#13566])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-2.html

  * igt@kms_cursor_crc@cursor-sliding-max-size:
    - shard-tglu-1:       NOTRUN -> [SKIP][168] ([i915#3555]) +1 other test skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-max-size.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-mtlp:         NOTRUN -> [SKIP][169] ([i915#4213])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - shard-glk11:        NOTRUN -> [SKIP][170] ([i915#11190]) +1 other test skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk11/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][171] ([i915#9809]) +1 other test skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-3/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html
    - shard-dg2-9:        NOTRUN -> [SKIP][172] ([i915#13046] / [i915#5354]) +3 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#13046] / [i915#5354]) +4 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-10/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-glk:          [PASS][174] -> [SKIP][175] +1 other test skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-glk2/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk8/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-dg2-9:        NOTRUN -> [SKIP][176] ([i915#4103] / [i915#4213])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_dp_aux_dev:
    - shard-dg2-9:        NOTRUN -> [SKIP][177] ([i915#1257])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_dp_aux_dev.html

  * igt@kms_dp_link_training@non-uhbr-sst:
    - shard-tglu-1:       NOTRUN -> [SKIP][178] ([i915#13749])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_dp_link_training@non-uhbr-sst.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-dg2:          [PASS][179] -> [SKIP][180] ([i915#13707])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fallback.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-1/igt@kms_dp_linktrain_fallback@dp-fallback.html
    - shard-tglu:         NOTRUN -> [SKIP][181] ([i915#13707])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#8812])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-basic:
    - shard-mtlp:         NOTRUN -> [SKIP][183] ([i915#3555] / [i915#3840] / [i915#9159])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-tglu-1:       NOTRUN -> [SKIP][184] ([i915#3840])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-tglu:         NOTRUN -> [SKIP][185] ([i915#3840])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#3555] / [i915#3840])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-tglu-1:       NOTRUN -> [SKIP][187] ([i915#3555] / [i915#3840])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#3555] / [i915#3840])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-rkl:          [PASS][189] -> [SKIP][190] ([i915#14544] / [i915#14561])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_fbcon_fbt@fbc.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_feature_discovery@display-3x:
    - shard-dg2-9:        NOTRUN -> [SKIP][191] ([i915#1839])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@psr2:
    - shard-dg2-9:        NOTRUN -> [SKIP][192] ([i915#658])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_feature_discovery@psr2.html

  * igt@kms_fence_pin_leak:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#4881])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank:
    - shard-dg2-9:        NOTRUN -> [SKIP][194] ([i915#9934]) +3 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_flip@2x-blocking-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#9934]) +5 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-10/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][196] ([i915#3637] / [i915#9934]) +6 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-5/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][197] ([i915#9934])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#9934]) +1 other test skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][199] ([i915#3637] / [i915#9934]) +2 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-modeset:
    - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#3637] / [i915#9934]) +1 other test skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_flip@2x-flip-vs-modeset.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-snb:          [PASS][201] -> [TIMEOUT][202] ([i915#14033] / [i915#14350])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][203] -> [TIMEOUT][204] ([i915#14033])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@absolute-wf_vblank-interruptible:
    - shard-rkl:          [PASS][205] -> [SKIP][206] ([i915#14544] / [i915#3637]) +1 other test skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_flip@absolute-wf_vblank-interruptible.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_flip@absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-dg2:          NOTRUN -> [ABORT][207] ([i915#8213]) +1 other test abort
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-10/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][208] ([i915#2672] / [i915#3555])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][209] ([i915#2587] / [i915#2672])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling:
    - shard-rkl:          [PASS][210] -> [SKIP][211] ([i915#14544] / [i915#3555]) +3 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
    - shard-dg2-9:        NOTRUN -> [SKIP][212] ([i915#2672] / [i915#3555])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg2-9:        NOTRUN -> [SKIP][213] ([i915#2672])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][214] ([i915#2672] / [i915#3555]) +1 other test skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][215] ([i915#2587] / [i915#2672]) +1 other test skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][216] ([i915#2672] / [i915#3555] / [i915#8813]) +2 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#2672] / [i915#3555])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][218] ([i915#2672] / [i915#8813])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#2672]) +3 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#2672] / [i915#3555] / [i915#5190]) +3 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#2672]) +3 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:
    - shard-dg2:          [PASS][222] -> [FAIL][223] ([i915#6880]) +1 other test fail
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][224] ([i915#8708]) +4 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#1825]) +11 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][226] ([i915#1825]) +8 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2-9:        NOTRUN -> [SKIP][227] ([i915#8708]) +11 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-rkl:          [PASS][228] -> [SKIP][229] ([i915#14544] / [i915#1849] / [i915#5354]) +6 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-rkl:          [PASS][230] -> [INCOMPLETE][231] ([i915#10056])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#10055])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
    - shard-dg2-9:        NOTRUN -> [SKIP][233] ([i915#3458]) +6 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][234] ([i915#3458]) +11 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][235] ([i915#8708]) +8 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-move:
    - shard-dg2-9:        NOTRUN -> [SKIP][236] ([i915#5354]) +16 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
    - shard-tglu:         NOTRUN -> [SKIP][237] +47 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#3023]) +6 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
    - shard-glk11:        NOTRUN -> [SKIP][239] +166 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk11/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-tglu-1:       NOTRUN -> [SKIP][240] +43 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][241] ([i915#5354]) +22 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_hdr@invalid-hdr:
    - shard-dg2-9:        NOTRUN -> [SKIP][242] ([i915#3555] / [i915#8228])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@static-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#3555] / [i915#8228]) +1 other test skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@kms_hdr@static-toggle.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-tglu-1:       NOTRUN -> [SKIP][244] ([i915#3555] / [i915#8228])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_invalid_mode@uint-max-clock:
    - shard-rkl:          [PASS][245] -> [SKIP][246] ([i915#14544] / [i915#3555] / [i915#8826]) +2 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_invalid_mode@uint-max-clock.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_invalid_mode@uint-max-clock.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-mtlp:         NOTRUN -> [SKIP][247] ([i915#10656]) +1 other test skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][248] ([i915#12339])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#13522])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-10/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-tglu-1:       NOTRUN -> [SKIP][250] ([i915#1839])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:
    - shard-rkl:          [PASS][251] -> [SKIP][252] ([i915#11190] / [i915#14544]) +1 other test skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][253] ([i915#13476])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-4/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b:
    - shard-glk:          NOTRUN -> [INCOMPLETE][254] ([i915#13026]) +1 other test incomplete
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html

  * igt@kms_plane@plane-position-hole-dpms:
    - shard-rkl:          [PASS][255] -> [SKIP][256] ([i915#14544] / [i915#8825])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_plane@plane-position-hole-dpms.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_plane@plane-position-hole-dpms.html

  * igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant:
    - shard-rkl:          [PASS][257] -> [SKIP][258] ([i915#14544] / [i915#7294])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html

  * igt@kms_plane_lowres@tiling-none@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][259] ([i915#10226] / [i915#11614] / [i915#3582]) +2 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_plane_lowres@tiling-none@pipe-b-edp-1.html

  * igt@kms_plane_lowres@tiling-none@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][260] ([i915#11614] / [i915#3582]) +1 other test skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_plane_lowres@tiling-none@pipe-d-edp-1.html

  * igt@kms_plane_multiple@2x-tiling-4:
    - shard-tglu-1:       NOTRUN -> [SKIP][261] ([i915#13958]) +1 other test skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-4.html

  * igt@kms_plane_multiple@2x-tiling-y:
    - shard-dg2-9:        NOTRUN -> [SKIP][262] ([i915#13958])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_plane_multiple@2x-tiling-y.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2-9:        NOTRUN -> [SKIP][263] ([i915#6953] / [i915#9423])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
    - shard-rkl:          [PASS][264] -> [SKIP][265] ([i915#14544] / [i915#8152]) +1 other test skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5:
    - shard-mtlp:         NOTRUN -> [SKIP][266] ([i915#12247] / [i915#6953])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_plane_scaling@planes-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a:
    - shard-mtlp:         NOTRUN -> [SKIP][267] ([i915#12247]) +7 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:
    - shard-rkl:          [PASS][268] -> [SKIP][269] ([i915#14544] / [i915#6953] / [i915#8152])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a:
    - shard-rkl:          [PASS][270] -> [SKIP][271] ([i915#12247] / [i915#14544]) +3 other tests skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:
    - shard-rkl:          [PASS][272] -> [SKIP][273] ([i915#12247] / [i915#14544] / [i915#6953] / [i915#8152])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b:
    - shard-rkl:          [PASS][274] -> [SKIP][275] ([i915#12247] / [i915#14544] / [i915#8152]) +4 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:
    - shard-mtlp:         NOTRUN -> [SKIP][276] ([i915#12247] / [i915#3555] / [i915#6953])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html

  * igt@kms_pm_backlight@fade:
    - shard-tglu:         NOTRUN -> [SKIP][277] ([i915#9812]) +1 other test skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_pm_backlight@fade.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][278] ([i915#5354])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-tglu-1:       NOTRUN -> [SKIP][279] ([i915#9685])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc5-dpms-negative:
    - shard-mtlp:         NOTRUN -> [SKIP][280] ([i915#13441])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_pm_dc@dc5-dpms-negative.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][281] ([i915#9340])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-dg2:          NOTRUN -> [SKIP][282] ([i915#8430])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@kms_pm_lpsp@screens-disabled.html
    - shard-tglu:         NOTRUN -> [SKIP][283] ([i915#8430])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-5/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [PASS][284] -> [SKIP][285] ([i915#9519]) +1 other test skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#9519])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg2:          [PASS][287] -> [SKIP][288] ([i915#9519])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg2-9:        NOTRUN -> [SKIP][289] ([i915#9519])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-tglu-1:       NOTRUN -> [SKIP][290] ([i915#9519])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-tglu:         NOTRUN -> [SKIP][291] ([i915#6524]) +1 other test skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-dg2:          NOTRUN -> [SKIP][292] ([i915#6524] / [i915#6805]) +2 other tests skip
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-10/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-dg2:          NOTRUN -> [SKIP][293] ([i915#11520]) +3 other tests skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:
    - shard-glk10:        NOTRUN -> [SKIP][294] ([i915#11520]) +9 other tests skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk10/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html
    - shard-mtlp:         NOTRUN -> [SKIP][295] ([i915#12316])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:
    - shard-dg2-9:        NOTRUN -> [SKIP][296] ([i915#11520]) +3 other tests skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area:
    - shard-glk11:        NOTRUN -> [SKIP][297] ([i915#11520]) +3 other tests skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk11/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][298] ([i915#11520]) +8 other tests skip
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk1/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][299] ([i915#11520]) +3 other tests skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:
    - shard-rkl:          NOTRUN -> [SKIP][300] ([i915#11520]) +1 other test skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][301] ([i915#11520]) +4 other tests skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-tglu:         NOTRUN -> [SKIP][302] ([i915#9683])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@fbc-pr-basic:
    - shard-mtlp:         NOTRUN -> [SKIP][303] ([i915#9688]) +4 other tests skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_psr@fbc-pr-basic.html

  * igt@kms_psr@fbc-pr-cursor-render:
    - shard-dg2:          NOTRUN -> [SKIP][304] ([i915#1072] / [i915#9732]) +12 other tests skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@kms_psr@fbc-pr-cursor-render.html

  * igt@kms_psr@fbc-pr-sprite-render:
    - shard-tglu-1:       NOTRUN -> [SKIP][305] ([i915#9732]) +10 other tests skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_psr@fbc-pr-sprite-render.html

  * igt@kms_psr@fbc-psr-primary-page-flip:
    - shard-rkl:          NOTRUN -> [SKIP][306] ([i915#1072] / [i915#9732]) +5 other tests skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_psr@fbc-psr-primary-page-flip.html

  * igt@kms_psr@fbc-psr-sprite-mmap-cpu:
    - shard-dg2-9:        NOTRUN -> [SKIP][307] ([i915#1072] / [i915#9732]) +11 other tests skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_psr@fbc-psr-sprite-mmap-cpu.html

  * igt@kms_psr@pr-cursor-plane-onoff:
    - shard-tglu:         NOTRUN -> [SKIP][308] ([i915#9732]) +13 other tests skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_psr@pr-cursor-plane-onoff.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-dg2:          NOTRUN -> [SKIP][309] ([i915#9685])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@bad-pixel-format:
    - shard-dg2-9:        NOTRUN -> [SKIP][310] ([i915#12755])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_rotation_crc@bad-pixel-format.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
    - shard-dg2:          NOTRUN -> [SKIP][311] ([i915#5190])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][312] ([i915#5289]) +1 other test skip
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-mtlp:         NOTRUN -> [ABORT][313] ([i915#13179]) +1 other test abort
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-3/igt@kms_selftest@drm_framebuffer.html
    - shard-dg2-9:        NOTRUN -> [ABORT][314] ([i915#13179]) +1 other test abort
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_selftest@drm_framebuffer.html
    - shard-glk10:        NOTRUN -> [ABORT][315] ([i915#13179]) +1 other test abort
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk10/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_setmode@invalid-clone-single-crtc-stealing:
    - shard-dg2-9:        NOTRUN -> [SKIP][316] ([i915#3555]) +1 other test skip
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_setmode@invalid-clone-single-crtc-stealing.html

  * igt@kms_vrr@negative-basic:
    - shard-tglu-1:       NOTRUN -> [SKIP][317] ([i915#3555] / [i915#9906])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_vrr@negative-basic.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-tglu:         NOTRUN -> [SKIP][318] ([i915#9906])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@kms_writeback@writeback-check-output:
    - shard-rkl:          NOTRUN -> [SKIP][319] ([i915#2437])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-dg2-9:        NOTRUN -> [SKIP][320] ([i915#2437] / [i915#9412]) +1 other test skip
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-glk:          NOTRUN -> [SKIP][321] ([i915#2437])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk1/igt@kms_writeback@writeback-fb-id.html

  * igt@perf@global-sseu-config:
    - shard-dg2:          NOTRUN -> [SKIP][322] ([i915#7387])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@perf@global-sseu-config.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          NOTRUN -> [FAIL][323] ([i915#4349]) +4 other tests fail
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-10/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@module-unload:
    - shard-tglu:         NOTRUN -> [FAIL][324] ([i915#14433])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@most-busy-idle-check-all:
    - shard-rkl:          [PASS][325] -> [DMESG-WARN][326] ([i915#12964]) +13 other tests dmesg-warn
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@perf_pmu@most-busy-idle-check-all.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@perf_pmu@most-busy-idle-check-all.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg2:          NOTRUN -> [SKIP][327] ([i915#8516])
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@perf_pmu@rc6-all-gts.html
    - shard-tglu:         NOTRUN -> [SKIP][328] ([i915#8516])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-5/igt@perf_pmu@rc6-all-gts.html

  * igt@perf_pmu@rc6-suspend:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][329] ([i915#13356])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk11/igt@perf_pmu@rc6-suspend.html

  * igt@prime_vgem@coherency-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][330] ([i915#3708] / [i915#4077])
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-10/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-write-hang:
    - shard-dg2-9:        NOTRUN -> [SKIP][331] ([i915#3708]) +1 other test skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@prime_vgem@fence-write-hang.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-dg2:          NOTRUN -> [SKIP][332] ([i915#9917])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6:
    - shard-tglu:         NOTRUN -> [FAIL][333] ([i915#12910]) +9 other tests fail
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-5/igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-dg2-9:        NOTRUN -> [SKIP][334] ([i915#4818])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@tools_test@sysfs_l3_parity.html

  
#### Possible fixes ####

  * igt@fbdev@unaligned-write:
    - shard-rkl:          [SKIP][335] ([i915#14544] / [i915#2582]) -> [PASS][336]
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@fbdev@unaligned-write.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@fbdev@unaligned-write.html

  * igt@gem_eio@hibernate:
    - shard-dg1:          [DMESG-WARN][337] ([i915#4391] / [i915#4423]) -> [PASS][338]
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg1-16/igt@gem_eio@hibernate.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg1-14/igt@gem_eio@hibernate.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [FAIL][339] ([i915#5784]) -> [PASS][340]
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg1-13/igt@gem_eio@reset-stress.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg1-13/igt@gem_eio@reset-stress.html

  * igt@gem_exec_whisper@basic-fds:
    - shard-rkl:          [DMESG-WARN][341] ([i915#12964]) -> [PASS][342] +18 other tests pass
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@gem_exec_whisper@basic-fds.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@gem_exec_whisper@basic-fds.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-rkl:          [TIMEOUT][343] ([i915#12917] / [i915#12964]) -> [PASS][344] +1 other test pass
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-2/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@i915_pm_rc6_residency@rc6-accuracy:
    - shard-rkl:          [FAIL][345] ([i915#12942]) -> [PASS][346] +1 other test pass
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-2/igt@i915_pm_rc6_residency@rc6-accuracy.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@i915_pm_rc6_residency@rc6-accuracy.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-dg2:          [ABORT][347] ([i915#8213]) -> [PASS][348]
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg2-10/igt@i915_pm_rpm@system-suspend-execbuf.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-11/igt@i915_pm_rpm@system-suspend-execbuf.html
    - shard-rkl:          [INCOMPLETE][349] ([i915#12797]) -> [PASS][350]
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-3/igt@i915_pm_rpm@system-suspend-execbuf.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-4/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_suspend@forcewake:
    - shard-rkl:          [INCOMPLETE][351] ([i915#4817]) -> [PASS][352]
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-3/igt@i915_suspend@forcewake.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@i915_suspend@forcewake.html

  * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-2:
    - shard-glk:          [FAIL][353] ([i915#13335]) -> [PASS][354]
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-2.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-2.html

  * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-b-hdmi-a-1:
    - shard-glk:          [FAIL][355] ([i915#12518]) -> [PASS][356]
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-b-hdmi-a-1.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-b-hdmi-a-1.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - shard-rkl:          [SKIP][357] ([i915#14544]) -> [PASS][358] +39 other tests pass
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_color@gamma:
    - shard-rkl:          [SKIP][359] ([i915#12655] / [i915#14544]) -> [PASS][360] +2 other tests pass
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_color@gamma.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_color@gamma.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - shard-rkl:          [SKIP][361] ([i915#11190] / [i915#14544]) -> [PASS][362] +1 other test pass
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-rkl:          [SKIP][363] ([i915#14544] / [i915#3637]) -> [PASS][364] +5 other tests pass
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-rkl:          [SKIP][365] ([i915#14544] / [i915#3555]) -> [PASS][366] +2 other tests pass
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:
    - shard-rkl:          [SKIP][367] ([i915#14544] / [i915#1849] / [i915#5354]) -> [PASS][368] +8 other tests pass
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb:
    - shard-rkl:          [SKIP][369] ([i915#14544] / [i915#7294]) -> [PASS][370]
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-opaque-fb.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_plane_alpha_blend@alpha-opaque-fb.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:
    - shard-rkl:          [SKIP][371] ([i915#14544] / [i915#3555] / [i915#8152]) -> [PASS][372]
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b:
    - shard-rkl:          [SKIP][373] ([i915#12247] / [i915#14544] / [i915#8152]) -> [PASS][374] +5 other tests pass
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format:
    - shard-rkl:          [SKIP][375] ([i915#14544] / [i915#8152]) -> [PASS][376]
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5:
    - shard-rkl:          [SKIP][377] ([i915#12247] / [i915#14544] / [i915#6953] / [i915#8152]) -> [PASS][378]
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:
    - shard-dg1:          [DMESG-WARN][379] ([i915#4423]) -> [PASS][380] +4 other tests pass
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg1-14/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a:
    - shard-rkl:          [SKIP][381] ([i915#12247] / [i915#14544]) -> [PASS][382] +4 other tests pass
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:
    - shard-rkl:          [SKIP][383] ([i915#12247] / [i915#14544] / [i915#3555] / [i915#6953] / [i915#8152]) -> [PASS][384]
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html

  * igt@kms_pm_dc@dc5-dpms-negative:
    - shard-rkl:          [SKIP][385] ([i915#13441] / [i915#14544]) -> [PASS][386]
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_pm_dc@dc5-dpms-negative.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_pm_dc@dc5-dpms-negative.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-rkl:          [SKIP][387] ([i915#9519]) -> [PASS][388] +1 other test pass
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-2/igt@kms_pm_rpm@dpms-non-lpsp.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@fences:
    - shard-rkl:          [SKIP][389] ([i915#14544] / [i915#1849]) -> [PASS][390]
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_pm_rpm@fences.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_pm_rpm@fences.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [SKIP][391] ([i915#9519]) -> [PASS][392]
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][393] ([i915#14544] / [i915#9519]) -> [PASS][394] +1 other test pass
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_properties@crtc-properties-legacy:
    - shard-rkl:          [SKIP][395] ([i915#11521] / [i915#14544]) -> [PASS][396]
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_properties@crtc-properties-legacy.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_properties@crtc-properties-legacy.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
    - shard-mtlp:         [FAIL][397] ([i915#9196]) -> [PASS][398] +1 other test pass
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html

  
#### Warnings ####

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-rkl:          [SKIP][399] ([i915#14544] / [i915#8411]) -> [SKIP][400] ([i915#8411])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@api_intel_bb@object-reloc-keep-cache.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-rkl:          [SKIP][401] ([i915#11078]) -> [SKIP][402] ([i915#11078] / [i915#14544])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@device_reset@unbind-cold-reset-rebind.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          [SKIP][403] ([i915#14544] / [i915#9323]) -> [SKIP][404] ([i915#9323])
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@gem_ccs@block-multicopy-compressed.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [INCOMPLETE][405] ([i915#12392]) -> [INCOMPLETE][406] ([i915#12392] / [i915#13356])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg2-2/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-rkl:          [SKIP][407] ([i915#14544] / [i915#6335]) -> [SKIP][408] ([i915#6335])
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@gem_create@create-ext-cpu-access-big.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_sseu@engines:
    - shard-rkl:          [SKIP][409] ([i915#14544] / [i915#280]) -> [SKIP][410] ([i915#280])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@gem_ctx_sseu@engines.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@gem_ctx_sseu@engines.html

  * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
    - shard-rkl:          [SKIP][411] ([i915#14544] / [i915#4525]) -> [SKIP][412] ([i915#4525])
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-rkl:          [SKIP][413] ([i915#4525]) -> [SKIP][414] ([i915#14544] / [i915#4525]) +1 other test skip
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-rkl:          [SKIP][415] ([i915#14544] / [i915#6334]) -> [SKIP][416] ([i915#6334]) +1 other test skip
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@gem_exec_capture@capture-invisible@smem0.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_reloc@basic-cpu-gtt:
    - shard-rkl:          [SKIP][417] ([i915#14544] / [i915#3281]) -> [SKIP][418] ([i915#3281]) +10 other tests skip
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-gtt.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@gem_exec_reloc@basic-cpu-gtt.html

  * igt@gem_exec_reloc@basic-cpu-wc:
    - shard-rkl:          [SKIP][419] ([i915#3281]) -> [SKIP][420] ([i915#14544] / [i915#3281]) +3 other tests skip
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@gem_exec_reloc@basic-cpu-wc.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-wc.html

  * igt@gem_huc_copy@huc-copy:
    - shard-rkl:          [SKIP][421] ([i915#14544] / [i915#2190]) -> [SKIP][422] ([i915#2190])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@gem_huc_copy@huc-copy.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-rkl:          [SKIP][423] ([i915#4613]) -> [SKIP][424] ([i915#14544] / [i915#4613]) +2 other tests skip
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-rkl:          [SKIP][425] ([i915#14544] / [i915#4613]) -> [SKIP][426] ([i915#4613]) +1 other test skip
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@gem_lmem_swapping@parallel-random.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_partial_pwrite_pread@write-snoop:
    - shard-rkl:          [SKIP][427] ([i915#14544] / [i915#3282]) -> [SKIP][428] ([i915#3282]) +1 other test skip
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@gem_partial_pwrite_pread@write-snoop.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@gem_partial_pwrite_pread@write-snoop.html

  * igt@gem_pxp@display-protected-crc:
    - shard-rkl:          [TIMEOUT][429] ([i915#12917] / [i915#12964]) -> [SKIP][430] ([i915#14544] / [i915#4270]) +1 other test skip
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@gem_pxp@display-protected-crc.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@gem_pxp@display-protected-crc.html

  * igt@gem_tiled_partial_pwrite_pread@reads:
    - shard-rkl:          [SKIP][431] ([i915#3282]) -> [SKIP][432] ([i915#14544] / [i915#3282]) +2 other tests skip
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@gem_tiled_partial_pwrite_pread@reads.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@gem_tiled_partial_pwrite_pread@reads.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-rkl:          [SKIP][433] ([i915#3297]) -> [SKIP][434] ([i915#14544] / [i915#3297]) +2 other tests skip
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@gem_userptr_blits@dmabuf-unsync.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          [SKIP][435] ([i915#2527]) -> [SKIP][436] ([i915#14544] / [i915#2527]) +3 other tests skip
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@gen9_exec_parse@bb-oversize.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-rkl:          [SKIP][437] ([i915#14544] / [i915#2527]) -> [SKIP][438] ([i915#2527]) +2 other tests skip
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@gen9_exec_parse@bb-start-param.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-rkl:          [SKIP][439] ([i915#14544] / [i915#6590]) -> [SKIP][440] ([i915#6590]) +1 other test skip
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@i915_pm_freq_mult@media-freq@gt0.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rpm@sysfs-read:
    - shard-rkl:          [SKIP][441] ([i915#13328]) -> [SKIP][442] ([i915#13328] / [i915#14544])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@i915_pm_rpm@sysfs-read.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@i915_pm_rpm@sysfs-read.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          [SKIP][443] ([i915#14544] / [i915#5723]) -> [SKIP][444] ([i915#5723])
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@i915_query@test-query-geometry-subslices.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-rkl:          [SKIP][445] ([i915#12454] / [i915#12712]) -> [SKIP][446] ([i915#12454] / [i915#12712] / [i915#14544])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition:
    - shard-rkl:          [SKIP][447] ([i915#14544]) -> [DMESG-WARN][448] ([i915#12964])
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_atomic_transition@plane-toggle-modeset-transition.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][449] ([i915#5286]) -> [SKIP][450] ([i915#14544]) +4 other tests skip
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-rkl:          [SKIP][451] ([i915#14544]) -> [SKIP][452] ([i915#5286]) +3 other tests skip
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-rkl:          [SKIP][453] ([i915#14544]) -> [SKIP][454] ([i915#3638]) +2 other tests skip
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-270.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-rkl:          [DMESG-WARN][455] ([i915#12964]) -> [SKIP][456] ([i915#14544]) +2 other tests skip
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-rkl:          [SKIP][457] ([i915#3638]) -> [SKIP][458] ([i915#14544]) +1 other test skip
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-rkl:          [SKIP][459] -> [SKIP][460] ([i915#14544]) +9 other tests skip
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][461] ([i915#12313]) -> [SKIP][462] ([i915#14544]) +2 other tests skip
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
    - shard-rkl:          [SKIP][463] ([i915#14098] / [i915#6095]) -> [SKIP][464] ([i915#14544]) +10 other tests skip
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc:
    - shard-rkl:          [SKIP][465] ([i915#14544]) -> [SKIP][466] ([i915#14098] / [i915#6095]) +7 other tests skip
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc.html
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_chamelium_frames@dp-frame-dump:
    - shard-rkl:          [SKIP][467] ([i915#11151] / [i915#7828]) -> [SKIP][468] ([i915#11151] / [i915#14544] / [i915#7828]) +5 other tests skip
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_chamelium_frames@dp-frame-dump.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_chamelium_frames@dp-frame-dump.html

  * igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
    - shard-rkl:          [SKIP][469] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][470] ([i915#11151] / [i915#7828]) +4 other tests skip
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html

  * igt@kms_content_protection@atomic:
    - shard-rkl:          [SKIP][471] ([i915#7118] / [i915#9424]) -> [SKIP][472] ([i915#14544])
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_content_protection@atomic.html
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-rkl:          [SKIP][473] ([i915#3116]) -> [SKIP][474] ([i915#14544])
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-type-0.html
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@lic-type-1:
    - shard-rkl:          [SKIP][475] ([i915#9424]) -> [SKIP][476] ([i915#14544])
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_content_protection@lic-type-1.html
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@uevent:
    - shard-dg2:          [SKIP][477] ([i915#7118] / [i915#9424]) -> [FAIL][478] ([i915#1339] / [i915#7173])
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg2-3/igt@kms_content_protection@uevent.html
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-11/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-onscreen-128x42:
    - shard-rkl:          [FAIL][479] ([i915#13566]) -> [SKIP][480] ([i915#14544]) +1 other test skip
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-128x42.html
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-128x42.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-rkl:          [SKIP][481] ([i915#14544]) -> [SKIP][482] ([i915#3555]) +2 other tests skip
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-rkl:          [SKIP][483] ([i915#14544]) -> [SKIP][484] ([i915#13049])
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-rkl:          [SKIP][485] ([i915#13049]) -> [SKIP][486] ([i915#14544]) +1 other test skip
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-512x512.html
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          [SKIP][487] ([i915#14544]) -> [SKIP][488] ([i915#4103])
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
    - shard-rkl:          [SKIP][489] ([i915#14544]) -> [SKIP][490] +20 other tests skip
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-rkl:          [FAIL][491] ([i915#2346]) -> [SKIP][492] ([i915#14544])
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-rkl:          [SKIP][493] ([i915#14544]) -> [SKIP][494] ([i915#9723])
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-rkl:          [SKIP][495] ([i915#13707]) -> [SKIP][496] ([i915#14544])
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_dp_linktrain_fallback@dp-fallback.html
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          [SKIP][497] ([i915#11190] / [i915#14544]) -> [SKIP][498] ([i915#3555] / [i915#3840])
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_dsc@dsc-basic.html
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-rkl:          [SKIP][499] ([i915#14544]) -> [SKIP][500] ([i915#3840])
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-rkl:          [SKIP][501] ([i915#3555] / [i915#3840]) -> [SKIP][502] ([i915#14544])
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_dsc@dsc-with-bpc.html
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][503] ([i915#3955]) -> [SKIP][504] ([i915#14544] / [i915#3955])
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@chamelium:
    - shard-rkl:          [SKIP][505] ([i915#14544] / [i915#4854]) -> [SKIP][506] ([i915#4854])
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_feature_discovery@chamelium.html
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-4x:
    - shard-rkl:          [SKIP][507] ([i915#1839]) -> [SKIP][508] ([i915#14544] / [i915#1839])
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_feature_discovery@display-4x.html
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_feature_discovery@display-4x.html

  * igt@kms_flip@2x-flip-vs-modeset:
    - shard-rkl:          [SKIP][509] ([i915#14544] / [i915#9934]) -> [SKIP][510] ([i915#9934]) +5 other tests skip
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_flip@2x-flip-vs-modeset.html
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_flip@2x-flip-vs-modeset.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
    - shard-dg1:          [SKIP][511] ([i915#9934]) -> [SKIP][512] ([i915#4423] / [i915#9934])
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg1-13/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg1-18/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-rkl:          [SKIP][513] ([i915#9934]) -> [SKIP][514] ([i915#14544] / [i915#9934]) +7 other tests skip
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-glk:          [INCOMPLETE][515] ([i915#12745] / [i915#4839] / [i915#6113]) -> [INCOMPLETE][516] ([i915#12745] / [i915#4839])
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-glk3/igt@kms_flip@flip-vs-suspend.html
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk6/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend@a-hdmi-a1:
    - shard-glk:          [INCOMPLETE][517] ([i915#12745] / [i915#6113]) -> [INCOMPLETE][518] ([i915#12745])
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-glk3/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk6/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html

  * igt@kms_flip@plain-flip-interruptible:
    - shard-rkl:          [DMESG-WARN][519] ([i915#12964]) -> [SKIP][520] ([i915#14544] / [i915#3637]) +1 other test skip
   [519]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_flip@plain-flip-interruptible.html
   [520]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_flip@plain-flip-interruptible.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
    - shard-rkl:          [SKIP][521] ([i915#2672] / [i915#3555]) -> [SKIP][522] ([i915#14544] / [i915#3555]) +2 other tests skip
   [521]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html
   [522]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-rkl:          [SKIP][523] ([i915#14544] / [i915#3555]) -> [SKIP][524] ([i915#2672] / [i915#3555]) +2 other tests skip
   [523]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
   [524]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-dg1:          [SKIP][525] ([i915#8708]) -> [SKIP][526] ([i915#4423] / [i915#8708])
   [525]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html
   [526]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-rkl:          [SKIP][527] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][528] ([i915#3023]) +18 other tests skip
   [527]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [528]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-dg2:          [SKIP][529] ([i915#10433] / [i915#3458]) -> [SKIP][530] ([i915#3458]) +1 other test skip
   [529]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
   [530]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg1:          [SKIP][531] ([i915#4423] / [i915#8708]) -> [SKIP][532] ([i915#8708])
   [531]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html
   [532]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-onoff:
    - shard-dg1:          [SKIP][533] ([i915#4423]) -> [SKIP][534] +2 other tests skip
   [533]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-onoff.html
   [534]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
    - shard-rkl:          [SKIP][535] ([i915#1825]) -> [SKIP][536] ([i915#14544] / [i915#1849] / [i915#5354]) +30 other tests skip
   [535]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html
   [536]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-dg2:          [SKIP][537] ([i915#3458]) -> [SKIP][538] ([i915#10433] / [i915#3458]) +2 other tests skip
   [537]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
   [538]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-rkl:          [SKIP][539] ([i915#3023]) -> [SKIP][540] ([i915#14544] / [i915#1849] / [i915#5354]) +13 other tests skip
   [539]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
   [540]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          [SKIP][541] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][542] ([i915#1825]) +24 other tests skip
   [541]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
   [542]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-rkl:          [SKIP][543] ([i915#12713]) -> [SKIP][544] ([i915#1187] / [i915#12713])
   [543]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-2/igt@kms_hdr@brightness-with-hdr.html
   [544]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-3/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-rkl:          [SKIP][545] ([i915#14544]) -> [SKIP][546] ([i915#3555] / [i915#8228]) +1 other test skip
   [545]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_hdr@static-toggle-dpms.html
   [546]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-rkl:          [SKIP][547] ([i915#12394] / [i915#14544]) -> [SKIP][548] ([i915#12394])
   [547]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_joiner@basic-force-ultra-joiner.html
   [548]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-rkl:          [SKIP][549] ([i915#12339] / [i915#14544]) -> [SKIP][550] ([i915#12339])
   [549]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html
   [550]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-rkl:          [SKIP][551] ([i915#10656] / [i915#14544]) -> [SKIP][552] ([i915#10656])
   [551]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_joiner@invalid-modeset-big-joiner.html
   [552]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-rkl:          [SKIP][553] ([i915#12394]) -> [SKIP][554] ([i915#12394] / [i915#14544])
   [553]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
   [554]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][555] ([i915#4816]) -> [SKIP][556] ([i915#4070] / [i915#4816])
   [555]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [556]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - shard-rkl:          [INCOMPLETE][557] ([i915#12964] / [i915#13476]) -> [INCOMPLETE][558] ([i915#13476])
   [557]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [558]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-4/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-rkl:          [SKIP][559] ([i915#3555]) -> [SKIP][560] ([i915#14544]) +1 other test skip
   [559]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_plane_lowres@tiling-yf.html
   [560]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_multiple@2x-tiling-x:
    - shard-rkl:          [SKIP][561] ([i915#14544]) -> [SKIP][562] ([i915#13958])
   [561]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-x.html
   [562]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_plane_multiple@2x-tiling-x.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-rkl:          [SKIP][563] ([i915#14544]) -> [SKIP][564] ([i915#14259])
   [563]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html
   [564]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-rkl:          [SKIP][565] -> [SKIP][566] ([i915#14544] / [i915#8152])
   [565]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
   [566]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-rkl:          [SKIP][567] ([i915#14544] / [i915#5354]) -> [SKIP][568] ([i915#5354])
   [567]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_pm_backlight@basic-brightness.html
   [568]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
    - shard-rkl:          [SKIP][569] ([i915#11520]) -> [SKIP][570] ([i915#11520] / [i915#14544]) +5 other tests skip
   [569]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html
   [570]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
    - shard-rkl:          [SKIP][571] ([i915#11520] / [i915#14544]) -> [SKIP][572] ([i915#11520]) +5 other tests skip
   [571]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html
   [572]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-rkl:          [SKIP][573] ([i915#9683]) -> [SKIP][574] ([i915#14544] / [i915#9683]) +1 other test skip
   [573]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_psr2_su@page_flip-nv12.html
   [574]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@psr2-cursor-blt:
    - shard-rkl:          [SKIP][575] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][576] ([i915#1072] / [i915#9732]) +15 other tests skip
   [575]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_psr@psr2-cursor-blt.html
   [576]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_psr@psr2-cursor-blt.html

  * igt@kms_psr@psr2-sprite-mmap-cpu:
    - shard-rkl:          [SKIP][577] ([i915#1072] / [i915#9732]) -> [SKIP][578] ([i915#1072] / [i915#14544] / [i915#9732]) +13 other tests skip
   [577]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_psr@psr2-sprite-mmap-cpu.html
   [578]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_psr@psr2-sprite-mmap-cpu.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-rkl:          [SKIP][579] ([i915#14544]) -> [SKIP][580] ([i915#5289])
   [579]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
   [580]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-rkl:          [SKIP][581] ([i915#5289]) -> [SKIP][582] ([i915#14544])
   [581]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
   [582]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-rkl:          [SKIP][583] ([i915#8623]) -> [SKIP][584] ([i915#14544])
   [583]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
   [584]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@lobf:
    - shard-rkl:          [SKIP][585] ([i915#11920]) -> [SKIP][586] ([i915#14544])
   [585]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_vrr@lobf.html
   [586]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_vrr@lobf.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-rkl:          [SKIP][587] ([i915#9906]) -> [SKIP][588] ([i915#14544])
   [587]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_vrr@seamless-rr-switch-drrs.html
   [588]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-rkl:          [SKIP][589] ([i915#14544] / [i915#2437] / [i915#9412]) -> [SKIP][590] ([i915#2437] / [i915#9412])
   [589]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
   [590]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@perf@mi-rpc:
    - shard-rkl:          [SKIP][591] ([i915#14544] / [i915#2434]) -> [SKIP][592] ([i915#2434])
   [591]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@perf@mi-rpc.html
   [592]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@perf@mi-rpc.html

  * igt@prime_vgem@basic-fence-read:
    - shard-rkl:          [SKIP][593] ([i915#3291] / [i915#3708]) -> [SKIP][594] ([i915#14544] / [i915#3291] / [i915#3708])
   [593]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@prime_vgem@basic-fence-read.html
   [594]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-rkl:          [SKIP][595] ([i915#14544] / [i915#3708]) -> [SKIP][596] ([i915#3708])
   [595]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@prime_vgem@fence-flip-hang.html
   [596]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@prime_vgem@fence-flip-hang.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
  [i915#10056]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056
  [i915#10226]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10226
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10991]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10991
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
  [i915#11441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11521]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521
  [i915#11614]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11614
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
  [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
  [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
  [i915#12353]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12353
  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
  [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
  [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
  [i915#12455]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12455
  [i915#12518]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12518
  [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
  [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
  [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
  [i915#12797]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12797
  [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
  [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
  [i915#12942]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12942
  [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
  [i915#12967]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12967
  [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
  [i915#13026]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
  [i915#13304]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13304
  [i915#13328]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13328
  [i915#13335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13335
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#1339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339
  [i915#13390]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390
  [i915#13441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13441
  [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
  [i915#13522]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13665]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13665
  [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
  [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
  [i915#13784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13784
  [i915#13786]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13786
  [i915#13809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13809
  [i915#13820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820
  [i915#13821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
  [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
  [i915#14350]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14350
  [i915#14433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14561
  [i915#14586]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14586
  [i915#14702]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14702
  [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
  [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
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
  [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3582
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#3936]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3936
  [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
  [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4818]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4881]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
  [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
  [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
  [i915#6188]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6188
  [i915#6228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6228
  [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
  [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
  [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
  [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
  [i915#7387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387
  [i915#7443]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
  [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
  [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
  [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
  [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
  [i915#8826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826
  [i915#9159]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9159
  [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
  [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_16943 -> Patchwork_152336v1

  CI-20190529: 20190529
  CI_DRM_16943: 7f74ca5c75dd28bc57d5ea1be165919bc70609d8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8479: 5fea7ca6493415ce108231b0ff29f02d293f9aa6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_152336v1: 7f74ca5c75dd28bc57d5ea1be165919bc70609d8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/index.html

--===============0612820255527882615==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: global state cleanups</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/152336/">https://patchwork.freedesktop.org/series/152336/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16943_full -&gt; Patchwork_152336v1_full</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_152336v1_full need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_152336v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>Additional (1): shard-glk-0 <br />
  Missing    (1): shard-dg2-set2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_152336v1_full:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-snb2/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033">i915#14033</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-snb2/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html">TIMEOUT</a> +1 other test timeout</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_152336v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@api_intel_bb@blit-reloc-keep-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@api_intel_bb@crc32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230">i915#6230</a>)</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@api_intel_bb@object-reloc-keep-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-10/igt@api_intel_bb@object-reloc-purge-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@fbdev@read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@gem_busy@semaphore.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3936">i915#3936</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-4/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008">i915#13008</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_compute@compute-square:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_compute@compute-square.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13665">i915#13665</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk10/igt@gem_ctx_isolation@preservation-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12353">i915#12353</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@gem_ctx_persistence@hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-stop:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_ctx_persistence@heartbeat-stop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-3/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>) +1 other test skip</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk9/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390">i915#13390</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@gem_exec_balancer@parallel-keep-submit-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk10/igt@gem_exec_capture@capture-invisible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334">i915#6334</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@concurrent:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@gem_exec_fence@concurrent.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit3:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_exec_fence@submit3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_exec_flush@basic-uc-set-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@gem_exec_flush@basic-wb-rw-before-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_exec_params@secure-non-root.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-wc-active:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@gem_exec_reloc@basic-cpu-wc-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@gem_exec_reloc@basic-gtt-cpu-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-range-active:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_exec_reloc@basic-range-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@gem_exec_schedule@preempt-queue-contexts-chain.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537">i915#4537</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg2-7/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441">i915#11441</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13304">i915#13304</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@gem_fence_thrash@bo-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-threaded-none:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@gem_fence_thrash@bo-write-verify-threaded-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk9/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@gem_lmem_swapping@smem-oom.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493">i915#5493</a>) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-3/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-4/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_media_vme.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284">i915#284</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write-read-distinct:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_mmap_gtt@basic-write-read-distinct.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@gem_mmap_gtt@cpuset-big-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@hang-busy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@gem_mmap_gtt@hang-busy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-size:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_mmap_wc@bad-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@gem_mmap_wc@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-read-distinct:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@gem_mmap_wc@write-read-distinct.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_partial_pwrite_pread@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@gem_pread@exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-3/igt@gem_pread@snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk8/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14702">i915#14702</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-random:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@gem_pwrite@basic-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-8/igt@gem_pxp@create-regular-context-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@gem_pxp@create-regular-context-2.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_pxp@reject-modify-context-protection-off-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@gem_pxp@reject-modify-context-protection-on.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-x-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@gem_render_copy@yf-tiled-ccs-to-x-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@gem_set_tiling_vs_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-4/igt@gem_softpin@noreloc-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-3/igt@gem_softpin@noreloc-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13809">i915#13809</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk1/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-5/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk1/igt@gem_workarounds@suspend-resume.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14586">i915#14586</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@gen9_exec_parse@allowed-single.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@gen9_exec_parse@batch-zero-length.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@gen9_exec_parse@bb-start-far.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@gen9_exec_parse@unaligned-access.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@busy-hang@vcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@i915_drm_fdinfo@busy-hang@vcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073">i915#14073</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@isolation@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@i915_drm_fdinfo@isolation@rcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073">i915#14073</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling@basic-x-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@i915_fb_tiling@basic-x-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13786">i915#13786</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg2-2/igt@i915_pm_freq_api@freq-suspend@gt0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-6/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12455">i915#12455</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820">i915#13820</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590">i915#6590</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk8/igt@i915_pm_rpm@system-suspend-execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12797">i915#12797</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@i915_pm_rps@min-max-config-idle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-snb5/igt@i915_pm_rps@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-snb5/igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821">i915#13821</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@i915_query@query-topology-coherent-slice-mask.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6188">i915#6188</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443">i915#7443</a>)</li>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-glk2/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk8/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk8/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@clobberred-modifier:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_addfb_basic@clobberred-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454">i915#12454</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712">i915#12712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10991">i915#10991</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13335">i915#13335</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10991">i915#10991</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10991">i915#10991</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12518">i915#12518</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_async_flips@invalid-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12967">i915#12967</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6228">i915#6228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531">i915#9531</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +4 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +31 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk9/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> +245 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_big_fb@linear-64bpp-rotate-270.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk10/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html">SKIP</a> +387 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk10/igt@kms_busy@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg1-17/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +103 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-11/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-4/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +49 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +173 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg1-13/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg1-18/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-2/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg1-18/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-4.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +41 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +38 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc@pipe-a-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13784">i915#13784</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_cdclk@plane-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-negative:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_color@ctm-negative.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_color@ctm-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_content_protection@atomic-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_content_protection@content-type-change.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_content_protection@lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_content_protection@uevent.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339">i915#1339</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x10:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-10/igt@kms_cursor_crc@cursor-random-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x85:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-256x85.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-max-size:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk11/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-3/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809">i915#9809</a>) +1 other test skip</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-10/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-glk2/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk8/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_dp_aux_dev.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-sst:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_dp_link_training@non-uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749">i915#13749</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fallback.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-1/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707">i915#13707</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707">i915#13707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812">i915#8812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9159">i915#9159</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_dsc@dsc-with-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_fbcon_fbt@fbc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_fbcon_fbt@fbc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14561">i915#14561</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_feature_discovery@display-3x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@kms_fence_pin_leak.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881">i915#4881</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-absolute-wf_vblank:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_flip@2x-blocking-absolute-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-10/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-5/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-fences-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_flip@2x-flip-vs-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033">i915#14033</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14350">i915#14350</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033">i915#14033</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_flip@absolute-wf_vblank-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_flip@absolute-wf_vblank-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-10/igt@kms_flip@flip-vs-suspend.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213">i915#8213</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813">i915#8813</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813">i915#8813</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880">i915#6880</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056">i915#10056</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055">i915#10055</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a> +47 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk11/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> +166 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> +43 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_hdr@invalid-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_invalid_mode@uint-max-clock.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_invalid_mode@uint-max-clock.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826">i915#8826</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_joiner@basic-force-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339">i915#12339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-10/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522">i915#13522</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-4/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476">i915#13476</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_plane@plane-position-hole-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_plane@plane-position-hole-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825">i915#8825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-none@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_plane_lowres@tiling-none@pipe-b-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10226">i915#10226</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11614">i915#11614</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3582">i915#3582</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-none@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_plane_lowres@tiling-none@pipe-d-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11614">i915#11614</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3582">i915#3582</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-4:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-y:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_plane_multiple@2x-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_plane_scaling@planes-downscale-factor-0-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_pm_backlight@fade.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_pm_backlight@fade-with-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-dpms-negative:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_pm_dc@dc5-dpms-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13441">i915#13441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430">i915#8430</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-5/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-10/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805">i915#6805</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk10/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +9 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316">i915#12316</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk11/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk1/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-5/igt@kms_psr@fbc-pr-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-cursor-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@kms_psr@fbc-pr-cursor-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-sprite-render:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_psr@fbc-pr-sprite-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-page-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_psr@fbc-psr-primary-page-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-sprite-mmap-cpu:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_psr@fbc-psr-sprite-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-plane-onoff:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_psr@pr-cursor-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-pixel-format:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_rotation_crc@bad-pixel-format.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755">i915#12755</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-3/igt@kms_selftest@drm_framebuffer.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179">i915#13179</a>) +1 other test abort</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_selftest@drm_framebuffer.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179">i915#13179</a>) +1 other test abort</li>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk10/igt@kms_selftest@drm_framebuffer.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179">i915#13179</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc-stealing:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_setmode@invalid-clone-single-crtc-stealing.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-1/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_writeback@writeback-check-output.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@kms_writeback@writeback-check-output-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk1/igt@kms_writeback@writeback-fb-id.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@perf@global-sseu-config.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-10/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#4349</a>) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-7/igt@perf_pmu@module-unload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433">i915#14433</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-idle-check-all:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@perf_pmu@most-busy-idle-check-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@perf_pmu@most-busy-idle-check-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +13 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-5/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk11/igt@perf_pmu@rc6-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-10/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@prime_vgem@fence-write-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@sriov_basic@enable-vfs-autoprobe-off.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-tglu-5/igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910">i915#12910</a>) +9 other tests fail</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-9/igt@tools_test@sysfs_l3_parity.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818">i915#4818</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@fbdev@unaligned-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@fbdev@unaligned-write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg1-16/igt@gem_eio@hibernate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg1-14/igt@gem_eio@hibernate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg1-13/igt@gem_eio@reset-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784">i915#5784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg1-13/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@gem_exec_whisper@basic-fds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@gem_exec_whisper@basic-fds.html">PASS</a> +18 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-2/igt@gem_pxp@verify-pxp-stale-ctx-execution.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@gem_pxp@verify-pxp-stale-ctx-execution.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-accuracy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-2/igt@i915_pm_rc6_residency@rc6-accuracy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12942">i915#12942</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@i915_pm_rc6_residency@rc6-accuracy.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg2-10/igt@i915_pm_rpm@system-suspend-execbuf.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-11/igt@i915_pm_rpm@system-suspend-execbuf.html">PASS</a></li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-3/igt@i915_pm_rpm@system-suspend-execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12797">i915#12797</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-4/igt@i915_pm_rpm@system-suspend-execbuf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-3/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@i915_suspend@forcewake.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13335">i915#13335</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-b-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12518">i915#12518</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-b-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">PASS</a> +39 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_color@gamma:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_color@gamma.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_color@gamma.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-opaque-fb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_plane_alpha_blend@alpha-opaque-fb.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg1-14/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-dpms-negative:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_pm_dc@dc5-dpms-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13441">i915#13441</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_pm_dc@dc5-dpms-negative.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-2/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_pm_rpm@fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_pm_rpm@fences.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_properties@crtc-properties-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_properties@crtc-properties-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521">i915#11521</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_properties@crtc-properties-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196">i915#9196</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@api_intel_bb@object-reloc-keep-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">i915#11078</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">i915#11078</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg2-2/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-7/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@gem_exec_balancer@parallel-keep-submit-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334">i915#6334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334">i915#6334</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@gem_exec_reloc@basic-cpu-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@gem_exec_reloc@basic-cpu-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@gem_lmem_swapping@heavy-verify-random-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@gem_lmem_swapping@parallel-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@gem_lmem_swapping@parallel-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-snoop:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@gem_partial_pwrite_pread@write-snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@gem_partial_pwrite_pread@write-snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@gem_pxp@display-protected-crc.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@gem_pxp@display-protected-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@gem_tiled_partial_pwrite_pread@reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@gem_tiled_partial_pwrite_pread@reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@gem_userptr_blits@dmabuf-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@gem_userptr_blits@dmabuf-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590">i915#6590</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590">i915#6590</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@sysfs-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@i915_pm_rpm@sysfs-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13328">i915#13328</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@i915_pm_rpm@sysfs-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13328">i915#13328</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723">i915#5723</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723">i915#5723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454">i915#12454</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712">i915#12712</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454">i915#12454</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712">i915#12712</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_big_fb@linear-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-frame-dump:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_chamelium_frames@dp-frame-dump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_chamelium_frames@dp-frame-dump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_content_protection@atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_content_protection@atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_content_protection@lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_content_protection@lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg2-3/igt@kms_content_protection@uevent.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-11/igt@kms_content_protection@uevent.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339">i915#1339</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-128x42.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-128x42.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html">SKIP</a> +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707">i915#13707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_feature_discovery@chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854">i915#4854</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_feature_discovery@chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_feature_discovery@display-4x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_feature_discovery@display-4x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_flip@2x-flip-vs-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_flip@2x-flip-vs-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg1-13/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg1-18/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-glk3/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk6/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-glk3/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-glk6/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_flip@plain-flip-interruptible.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_flip@plain-flip-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-onoff.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-2/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-3/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187">i915#1187</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_joiner@basic-force-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394">i915#12394</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_joiner@basic-force-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394">i915#12394</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339">i915#12339</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339">i915#12339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394">i915#12394</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394">i915#12394</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_pipe_crc_basic@suspend-read-crc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476">i915#13476</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-4/igt@kms_pipe_crc_basic@suspend-read-crc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476">i915#13476</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-x:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@kms_plane_multiple@2x-tiling-x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_psr@psr2-cursor-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-5/igt@kms_psr@psr2-cursor-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_psr@psr2-sprite-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_psr@psr2-sprite-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@lobf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@kms_vrr@lobf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920">i915#11920</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_vrr@lobf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-5/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@kms_writeback@writeback-fb-id-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@kms_writeback@writeback-fb-id-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@perf@mi-rpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434">i915#2434</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-7/igt@perf@mi-rpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434">i915#2434</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-7/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-6/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16943/shard-rkl-6/igt@prime_vgem@fence-flip-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152336v1/shard-rkl-8/igt@prime_vgem@fence-flip-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16943 -&gt; Patchwork_152336v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16943: 7f74ca5c75dd28bc57d5ea1be165919bc70609d8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8479: 5fea7ca6493415ce108231b0ff29f02d293f9aa6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_152336v1: 7f74ca5c75dd28bc57d5ea1be165919bc70609d8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============0612820255527882615==--
