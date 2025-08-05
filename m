Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 784AFB1B7A4
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 17:38:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A837810E6BC;
	Tue,  5 Aug 2025 15:38:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D33D10E042;
 Tue,  5 Aug 2025 15:38:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6126236963682099076=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/gt=3A_Protect_a?=
 =?utf-8?q?gainst_overflow_in_active=5Fengine=28=29_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Krzysztof Karas" <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 05 Aug 2025 15:38:33 -0000
Message-ID: <175440831336.214089.6229074726896585695@1538d3639d33>
X-Patchwork-Hint: ignore
References: <pogr74jktdqehrfap4tjky23ees4x7erh5dwgg5jb2n522cfkw@kpnxe4qzx4pj>
In-Reply-To: <pogr74jktdqehrfap4tjky23ees4x7erh5dwgg5jb2n522cfkw@kpnxe4qzx4pj>
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

--===============6126236963682099076==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Protect against overflow in active_engine() (rev3)
URL   : https://patchwork.freedesktop.org/series/152476/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16960_full -> Patchwork_152476v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_152476v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_152476v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 12)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_152476v3_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_drm_fdinfo@context-close-stress:
    - shard-dg1:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg1-13/igt@i915_drm_fdinfo@context-close-stress.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg1-12/igt@i915_drm_fdinfo@context-close-stress.html

  
Known issues
------------

  Here are the changes found in Patchwork_152476v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@crc32:
    - shard-tglu:         NOTRUN -> [SKIP][3] ([i915#6230])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@api_intel_bb@crc32.html

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-dg2:          NOTRUN -> [SKIP][4] ([i915#8411])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@device_reset@cold-reset-bound:
    - shard-dg2:          NOTRUN -> [SKIP][5] ([i915#11078])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@device_reset@cold-reset-bound.html

  * igt@fbdev@info:
    - shard-glk11:        NOTRUN -> [SKIP][6] ([i915#1849])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk11/igt@fbdev@info.html

  * igt@gem_caching@reads:
    - shard-mtlp:         NOTRUN -> [SKIP][7] ([i915#4873])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@gem_caching@reads.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [PASS][8] -> [INCOMPLETE][9] ([i915#13356])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-1/igt@gem_ccs@suspend-resume.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_ccs@suspend-resume.html
    - shard-tglu-1:       NOTRUN -> [SKIP][10] ([i915#9323])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [PASS][11] -> [INCOMPLETE][12] ([i915#12392] / [i915#13356])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_compute@compute-square:
    - shard-dg2:          NOTRUN -> [FAIL][13] ([i915#13665])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_compute@compute-square.html

  * igt@gem_ctx_isolation@preservation-s3:
    - shard-dg1:          [PASS][14] -> [DMESG-WARN][15] ([i915#4423]) +2 other tests dmesg-warn
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg1-16/igt@gem_ctx_isolation@preservation-s3.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg1-19/igt@gem_ctx_isolation@preservation-s3.html

  * igt@gem_ctx_persistence@heartbeat-close:
    - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#8555])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_ctx_persistence@heartbeat-close.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-tglu-1:       NOTRUN -> [SKIP][17] ([i915#280])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [PASS][18] -> [FAIL][19] ([i915#5784])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg1-19/igt@gem_eio@reset-stress.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg1-14/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@bonded-true-hang:
    - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#4812])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@gem_exec_balancer@bonded-true-hang.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-tglu-1:       NOTRUN -> [SKIP][21] ([i915#4525])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_capture@capture-invisible@lmem0:
    - shard-dg2:          NOTRUN -> [SKIP][22] ([i915#6334]) +2 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_exec_capture@capture-invisible@lmem0.html

  * igt@gem_exec_flush@basic-uc-set-default:
    - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#3539])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_exec_flush@basic-uc-set-default.html

  * igt@gem_exec_flush@basic-wb-pro-default:
    - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#3539] / [i915#4852])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@gem_exec_flush@basic-wb-pro-default.html

  * igt@gem_exec_flush@basic-wb-ro-before-default:
    - shard-dg2-9:        NOTRUN -> [SKIP][25] ([i915#3539] / [i915#4852])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@gem_exec_flush@basic-wb-ro-before-default.html

  * igt@gem_exec_reloc@basic-cpu-active:
    - shard-dg2-9:        NOTRUN -> [SKIP][26] ([i915#3281]) +2 other tests skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@gem_exec_reloc@basic-cpu-active.html

  * igt@gem_exec_reloc@basic-wc:
    - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#3281]) +4 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_exec_reloc@basic-wc.html

  * igt@gem_exec_reloc@basic-write-cpu-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][28] ([i915#3281]) +1 other test skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@gem_exec_reloc@basic-write-cpu-noreloc.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-dg2-9:        NOTRUN -> [SKIP][29] ([i915#4537] / [i915#4812])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          [PASS][30] -> [INCOMPLETE][31] ([i915#11441] / [i915#13304]) +1 other test incomplete
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-11/igt@gem_exec_suspend@basic-s0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_fence_thrash@bo-write-verify-none:
    - shard-rkl:          [PASS][32] -> [DMESG-WARN][33] ([i915#12964]) +18 other tests dmesg-warn
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@gem_fence_thrash@bo-write-verify-none.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@gem_fence_thrash@bo-write-verify-none.html
    - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#4860])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_fence_thrash@bo-write-verify-none.html

  * igt@gem_fence_thrash@bo-write-verify-y:
    - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#4860]) +1 other test skip
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@gem_fence_thrash@bo-write-verify-y.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-mtlp:         NOTRUN -> [SKIP][36] ([i915#4613])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@massive-random:
    - shard-tglu:         NOTRUN -> [SKIP][37] ([i915#4613]) +1 other test skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@gem_lmem_swapping@massive-random.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-tglu-1:       NOTRUN -> [SKIP][38] ([i915#4613]) +2 other tests skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-glk:          NOTRUN -> [SKIP][39] ([i915#4613]) +1 other test skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk1/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [PASS][40] -> [DMESG-WARN][41] ([i915#5493]) +1 other test dmesg-warn
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-3/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_media_fill@media-fill:
    - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#8289])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_media_fill@media-fill.html

  * igt@gem_mmap@big-bo:
    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#4083]) +5 other tests skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_mmap@big-bo.html

  * igt@gem_mmap_gtt@basic-small-bo-tiledx:
    - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#4077]) +10 other tests skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_mmap_gtt@basic-small-bo-tiledx.html

  * igt@gem_mmap_gtt@basic-write-read-distinct:
    - shard-mtlp:         NOTRUN -> [SKIP][45] ([i915#4077]) +2 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@gem_mmap_gtt@basic-write-read-distinct.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-dg2-9:        NOTRUN -> [SKIP][46] ([i915#4077]) +2 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#3282]) +1 other test skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@gem_pread@exhaustion:
    - shard-glk10:        NOTRUN -> [WARN][48] ([i915#2658])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk10/igt@gem_pread@exhaustion.html

  * igt@gem_pread@uncached:
    - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#3282]) +1 other test skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@gem_pread@uncached.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-rkl:          [PASS][50] -> [TIMEOUT][51] ([i915#12917] / [i915#12964])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-8/igt@gem_pxp@create-regular-context-1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#4270]) +3 other tests skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_readwrite@new-obj:
    - shard-dg2-9:        NOTRUN -> [SKIP][53] ([i915#3282])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@gem_readwrite@new-obj.html

  * igt@gem_render_copy@y-tiled-ccs-to-linear:
    - shard-mtlp:         NOTRUN -> [SKIP][54] ([i915#8428])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@gem_render_copy@y-tiled-ccs-to-linear.html

  * igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs:
    - shard-dg2-9:        NOTRUN -> [SKIP][55] ([i915#5190] / [i915#8428])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs.html

  * igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#5190] / [i915#8428]) +4 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#4079]) +1 other test skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-dg2-9:        NOTRUN -> [SKIP][58] ([i915#4079])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#3297]) +2 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#3297])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-tglu-1:       NOTRUN -> [SKIP][61] ([i915#3297]) +1 other test skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gem_userptr_blits@relocations:
    - shard-dg2-9:        NOTRUN -> [SKIP][62] ([i915#3281] / [i915#3297])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@gem_userptr_blits@relocations.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#2856]) +3 other tests skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-tglu:         NOTRUN -> [SKIP][64] ([i915#2527] / [i915#2856])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-dg2-9:        NOTRUN -> [SKIP][65] ([i915#2856])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@gen9_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-tglu-1:       NOTRUN -> [SKIP][66] ([i915#2527] / [i915#2856]) +1 other test skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@gen9_exec_parse@bb-start-far.html

  * igt@i915_drm_fdinfo@all-busy-check-all:
    - shard-mtlp:         NOTRUN -> [SKIP][67] ([i915#14123])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@i915_drm_fdinfo@all-busy-check-all.html

  * igt@i915_drm_fdinfo@busy-idle@vecs0:
    - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#14073]) +7 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@i915_drm_fdinfo@busy-idle@vecs0.html

  * igt@i915_drm_fdinfo@virtual-busy-idle:
    - shard-mtlp:         NOTRUN -> [SKIP][69] ([i915#14118])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@i915_drm_fdinfo@virtual-busy-idle.html

  * igt@i915_pm_rps@thresholds-idle-park:
    - shard-dg2-9:        NOTRUN -> [SKIP][70] ([i915#11681])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@i915_pm_rps@thresholds-idle-park.html

  * igt@i915_pm_rps@thresholds-park:
    - shard-mtlp:         NOTRUN -> [SKIP][71] ([i915#11681])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@i915_pm_rps@thresholds-park.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][72] ([i915#4817])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk11/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][73] ([i915#4817])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk10/igt@i915_suspend@fence-restore-untiled.html

  * igt@intel_hwmon@hwmon-read:
    - shard-snb:          NOTRUN -> [SKIP][74] +7 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-snb2/igt@intel_hwmon@hwmon-read.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][75] ([i915#4212])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-1:
    - shard-glk:          [PASS][76] -> [FAIL][77] ([i915#10991])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-1.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-1.html

  * igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][78] ([i915#12761]) +1 other test incomplete
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk1/igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2.html
    - shard-rkl:          NOTRUN -> [INCOMPLETE][79] ([i915#12761])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-5/igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-tglu:         NOTRUN -> [SKIP][80] ([i915#1769] / [i915#3555])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-tglu:         NOTRUN -> [SKIP][81] ([i915#5286]) +2 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglu-1:       NOTRUN -> [SKIP][82] ([i915#5286]) +4 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         [PASS][83] -> [FAIL][84] ([i915#5138])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#4538] / [i915#5190]) +7 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#5190])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-mtlp:         NOTRUN -> [SKIP][87] +5 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-dg2-9:        NOTRUN -> [SKIP][88] ([i915#5190])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-dg2-9:        NOTRUN -> [SKIP][89] ([i915#4538] / [i915#5190]) +1 other test skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#6095]) +59 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg1-19/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html

  * igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][91] ([i915#6095]) +14 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-c-edp-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-dg2-9:        NOTRUN -> [SKIP][92] ([i915#12313])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][93] ([i915#10307] / [i915#6095]) +9 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-2.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
    - shard-glk:          NOTRUN -> [SKIP][94] +159 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk3/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:
    - shard-tglu:         NOTRUN -> [SKIP][95] ([i915#6095]) +39 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#10307] / [i915#6095]) +126 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#10307] / [i915#10434] / [i915#6095])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#14098] / [i915#6095]) +41 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][99] ([i915#6095]) +44 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:
    - shard-rkl:          [PASS][100] -> [INCOMPLETE][101] ([i915#12796]) +1 other test incomplete
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#6095]) +8 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][103] ([i915#12313])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#6095]) +45 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#13781]) +4 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#13783]) +4 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2.html

  * igt@kms_chamelium_color@ctm-max:
    - shard-dg2:          NOTRUN -> [SKIP][107] +8 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@kms_chamelium_color@ctm-max.html

  * igt@kms_chamelium_edid@dp-edid-resolution-list:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#11151] / [i915#7828]) +3 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@kms_chamelium_edid@dp-edid-resolution-list.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
    - shard-dg2-9:        NOTRUN -> [SKIP][109] ([i915#11151] / [i915#7828]) +1 other test skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k:
    - shard-tglu:         NOTRUN -> [SKIP][110] ([i915#11151] / [i915#7828]) +4 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k.html

  * igt@kms_chamelium_hpd@dp-hpd-storm:
    - shard-tglu-1:       NOTRUN -> [SKIP][111] ([i915#11151] / [i915#7828]) +5 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-storm.html

  * igt@kms_chamelium_hpd@hdmi-hpd:
    - shard-mtlp:         NOTRUN -> [SKIP][112] ([i915#11151] / [i915#7828])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_chamelium_hpd@hdmi-hpd.html

  * igt@kms_color@gamma:
    - shard-rkl:          [PASS][113] -> [SKIP][114] ([i915#12655] / [i915#14544]) +1 other test skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_color@gamma.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_color@gamma.html

  * igt@kms_content_protection@atomic:
    - shard-tglu:         NOTRUN -> [SKIP][115] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_content_protection@atomic.html
    - shard-mtlp:         NOTRUN -> [SKIP][116] ([i915#6944] / [i915#9424])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#3299])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@lic-type-0@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][118] ([i915#7173])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-11/igt@kms_content_protection@lic-type-0@pipe-a-dp-3.html

  * igt@kms_content_protection@lic-type-1:
    - shard-tglu:         NOTRUN -> [SKIP][119] ([i915#6944] / [i915#9424])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@uevent:
    - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#7118] / [i915#9424])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-32x32:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#3555]) +1 other test skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@kms_cursor_crc@cursor-offscreen-32x32.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-tglu-1:       NOTRUN -> [SKIP][122] ([i915#3555]) +2 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [FAIL][123] ([i915#13566])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html
    - shard-tglu:         NOTRUN -> [FAIL][124] ([i915#13566]) +1 other test fail
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][125] ([i915#13049]) +1 other test skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#13049]) +1 other test skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1:
    - shard-tglu:         [PASS][127] -> [FAIL][128] ([i915#13566]) +1 other test fail
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-tglu-2/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-9/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][129] ([i915#9809])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
    - shard-dg2-9:        NOTRUN -> [SKIP][130] ([i915#13046] / [i915#5354]) +1 other test skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-tglu:         NOTRUN -> [SKIP][131] ([i915#4103])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - shard-mtlp:         NOTRUN -> [SKIP][132] ([i915#4213])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-dg2-9:        NOTRUN -> [SKIP][133] ([i915#4103] / [i915#4213])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#13046] / [i915#5354])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-rkl:          [PASS][135] -> [SKIP][136] ([i915#14544]) +43 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-tglu:         [PASS][137] -> [FAIL][138] ([i915#2346])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-tglu-10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-tglu:         NOTRUN -> [SKIP][139] ([i915#9067])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
    - shard-mtlp:         NOTRUN -> [SKIP][140] ([i915#9067])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#4103] / [i915#4213])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-tglu:         NOTRUN -> [SKIP][142] ([i915#9723])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#3804])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dp_aux_dev:
    - shard-tglu:         NOTRUN -> [SKIP][144] ([i915#1257])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_dp_aux_dev.html

  * igt@kms_dp_link_training@uhbr-sst:
    - shard-tglu-1:       NOTRUN -> [SKIP][145] ([i915#13748]) +1 other test skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_dp_link_training@uhbr-sst.html

  * igt@kms_dp_linktrain_fallback@dsc-fallback:
    - shard-dg2-9:        NOTRUN -> [SKIP][146] ([i915#13707])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_dp_linktrain_fallback@dsc-fallback.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#3840])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#3555] / [i915#3840])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-tglu-1:       NOTRUN -> [SKIP][149] ([i915#3840] / [i915#9053])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-rkl:          [PASS][150] -> [SKIP][151] ([i915#14544] / [i915#14561])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_fbcon_fbt@fbc.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_feature_discovery@display-3x:
    - shard-tglu-1:       NOTRUN -> [SKIP][152] ([i915#1839])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg2-9:        NOTRUN -> [SKIP][153] ([i915#9337])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_fence_pin_leak:
    - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#4881])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-tglu:         NOTRUN -> [SKIP][155] ([i915#3637] / [i915#9934]) +4 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][156] ([i915#3637] / [i915#9934]) +2 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-dg2-9:        NOTRUN -> [SKIP][157] ([i915#9934])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#9934]) +4 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@2x-plain-flip:
    - shard-tglu-1:       NOTRUN -> [SKIP][159] ([i915#3637] / [i915#9934]) +3 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-rkl:          [PASS][160] -> [SKIP][161] ([i915#14544] / [i915#3637]) +5 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-fences:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#8381])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][163] ([i915#12745] / [i915#4839] / [i915#6113])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-glk:          NOTRUN -> [INCOMPLETE][164] ([i915#12745] / [i915#4839])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][165] ([i915#12745])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk6/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@a-hdmi-a1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][166] ([i915#12745] / [i915#6113])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk1/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#2672]) +3 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling:
    - shard-rkl:          [PASS][168] -> [SKIP][169] ([i915#14544] / [i915#3555]) +1 other test skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#2672] / [i915#3555]) +2 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][171] ([i915#2587] / [i915#2672] / [i915#3555])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
    - shard-mtlp:         NOTRUN -> [SKIP][172] ([i915#2672] / [i915#3555] / [i915#8813])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][173] ([i915#2672] / [i915#8813])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][174] ([i915#2587] / [i915#2672])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][175] ([i915#2587] / [i915#2672] / [i915#3555])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][176] ([i915#2672] / [i915#3555])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][177] ([i915#2587] / [i915#2672]) +1 other test skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#2672] / [i915#3555] / [i915#5190])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#2672]) +3 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-rkl:          [PASS][180] -> [SKIP][181] ([i915#14544] / [i915#1849] / [i915#5354]) +10 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:
    - shard-dg2:          [PASS][182] -> [FAIL][183] ([i915#6880]) +1 other test fail
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
    - shard-glk10:        NOTRUN -> [SKIP][184] +344 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk10/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-dg2-9:        NOTRUN -> [SKIP][185] ([i915#8708]) +3 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#3458]) +9 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:
    - shard-dg2-9:        NOTRUN -> [SKIP][187] ([i915#3458]) +4 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#5354]) +19 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-pwrite:
    - shard-dg2-9:        NOTRUN -> [SKIP][189] ([i915#5354]) +3 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
    - shard-tglu-1:       NOTRUN -> [SKIP][190] +65 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#10055])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:
    - shard-tglu:         NOTRUN -> [SKIP][192] +37 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][193] ([i915#8708])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render:
    - shard-mtlp:         NOTRUN -> [SKIP][194] ([i915#1825]) +6 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#8708]) +5 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch:
    - shard-tglu:         NOTRUN -> [SKIP][196] ([i915#3555] / [i915#8228]) +1 other test skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][197] ([i915#3555] / [i915#8228])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@invalid-hdr:
    - shard-dg2-9:        NOTRUN -> [SKIP][198] ([i915#3555] / [i915#8228])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#3555] / [i915#8228])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#12713] / [i915#3555] / [i915#8228])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_invalid_mode@clock-too-high:
    - shard-rkl:          [PASS][201] -> [SKIP][202] ([i915#14544] / [i915#3555] / [i915#8826])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_invalid_mode@clock-too-high.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_invalid_mode@clock-too-high.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#10656])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#6301])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
    - shard-dg2-9:        NOTRUN -> [SKIP][205] +1 other test skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - shard-glk11:        NOTRUN -> [SKIP][206] ([i915#11190]) +1 other test skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk11/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_pipe_crc_basic@read-crc:
    - shard-rkl:          [PASS][207] -> [SKIP][208] ([i915#11190] / [i915#14544]) +1 other test skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_pipe_crc_basic@read-crc.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_pipe_crc_basic@read-crc.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - shard-glk10:        NOTRUN -> [SKIP][209] ([i915#11190]) +4 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk10/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b:
    - shard-glk:          NOTRUN -> [INCOMPLETE][210] ([i915#13026]) +1 other test incomplete
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html

  * igt@kms_plane@plane-position-covered:
    - shard-rkl:          [PASS][211] -> [SKIP][212] ([i915#14544] / [i915#8825]) +1 other test skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_plane@plane-position-covered.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_plane@plane-position-covered.html

  * igt@kms_plane_multiple@2x-tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#13958])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@kms_plane_multiple@2x-tiling-y.html

  * igt@kms_plane_multiple@2x-tiling-yf:
    - shard-tglu-1:       NOTRUN -> [SKIP][214] ([i915#13958])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-yf.html

  * igt@kms_plane_multiple@tiling-4:
    - shard-tglu:         NOTRUN -> [SKIP][215] ([i915#14259])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_plane_multiple@tiling-4.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#6953] / [i915#9423])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
    - shard-tglu:         NOTRUN -> [SKIP][217] ([i915#12247]) +4 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
    - shard-tglu-1:       NOTRUN -> [SKIP][218] ([i915#12247]) +4 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
    - shard-rkl:          [PASS][219] -> [SKIP][220] ([i915#14544] / [i915#8152])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
    - shard-rkl:          [PASS][221] -> [SKIP][222] ([i915#14544] / [i915#6953] / [i915#8152])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:
    - shard-rkl:          [PASS][223] -> [SKIP][224] ([i915#12247] / [i915#14544] / [i915#6953] / [i915#8152])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a:
    - shard-rkl:          [PASS][225] -> [SKIP][226] ([i915#12247] / [i915#14544]) +3 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b:
    - shard-rkl:          [PASS][227] -> [SKIP][228] ([i915#12247] / [i915#14544] / [i915#8152]) +4 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-dg2-9:        NOTRUN -> [SKIP][229] ([i915#12343])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][230] ([i915#9812]) +1 other test skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][231] ([i915#9812])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#9685])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc5-dpms-negative:
    - shard-rkl:          [PASS][233] -> [SKIP][234] ([i915#13441] / [i915#14544])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_pm_dc@dc5-dpms-negative.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_pm_dc@dc5-dpms-negative.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-tglu:         NOTRUN -> [SKIP][235] ([i915#9685])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_rpm@i2c:
    - shard-dg2:          [PASS][236] -> [FAIL][237] ([i915#8717])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-1/igt@kms_pm_rpm@i2c.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#9519])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
    - shard-rkl:          [PASS][239] -> [SKIP][240] ([i915#9519]) +1 other test skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-tglu:         NOTRUN -> [SKIP][241] ([i915#9519])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
    - shard-mtlp:         NOTRUN -> [SKIP][242] ([i915#9519])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#6524] / [i915#6805])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_properties@crtc-properties-atomic:
    - shard-rkl:          [PASS][244] -> [SKIP][245] ([i915#11521] / [i915#14544])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_properties@crtc-properties-atomic.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_properties@crtc-properties-atomic.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:
    - shard-snb:          NOTRUN -> [SKIP][246] ([i915#11520])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-snb2/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:
    - shard-glk:          NOTRUN -> [SKIP][247] ([i915#11520]) +2 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk3/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area:
    - shard-glk11:        NOTRUN -> [SKIP][248] ([i915#11520]) +5 other tests skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk11/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html
    - shard-tglu:         NOTRUN -> [SKIP][249] ([i915#11520]) +3 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][250] ([i915#9808])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area@pipe-a-edp-1.html

  * igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][251] ([i915#12316]) +1 other test skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area@pipe-b-edp-1.html

  * igt@kms_psr2_sf@psr2-cursor-plane-update-sf:
    - shard-glk10:        NOTRUN -> [SKIP][252] ([i915#11520]) +8 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk10/igt@kms_psr2_sf@psr2-cursor-plane-update-sf.html
    - shard-dg2-9:        NOTRUN -> [SKIP][253] ([i915#11520]) +1 other test skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_psr2_sf@psr2-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][254] ([i915#11520]) +5 other tests skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#11520]) +3 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][256] ([i915#9683])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-tglu-1:       NOTRUN -> [SKIP][257] ([i915#9683])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@fbc-pr-basic:
    - shard-mtlp:         NOTRUN -> [SKIP][258] ([i915#9688]) +5 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_psr@fbc-pr-basic.html

  * igt@kms_psr@fbc-psr2-basic:
    - shard-tglu-1:       NOTRUN -> [SKIP][259] ([i915#9732]) +14 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_psr@fbc-psr2-basic.html

  * igt@kms_psr@fbc-psr2-primary-page-flip:
    - shard-dg2-9:        NOTRUN -> [SKIP][260] ([i915#1072] / [i915#9732]) +4 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_psr@fbc-psr2-primary-page-flip.html

  * igt@kms_psr@pr-primary-page-flip:
    - shard-tglu:         NOTRUN -> [SKIP][261] ([i915#9732]) +10 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_psr@pr-primary-page-flip.html

  * igt@kms_psr@psr2-primary-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][262] ([i915#1072] / [i915#9732]) +12 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@kms_psr@psr2-primary-mmap-gtt.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][263] ([i915#12755] / [i915#5190])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-tglu:         NOTRUN -> [SKIP][264] ([i915#5289])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_scaling_modes@scaling-mode-center:
    - shard-dg2-9:        NOTRUN -> [SKIP][265] ([i915#3555])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_scaling_modes@scaling-mode-center.html

  * igt@kms_setmode@basic:
    - shard-tglu-1:       NOTRUN -> [FAIL][266] ([i915#5465]) +2 other tests fail
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_setmode@basic.html

  * igt@kms_setmode@invalid-clone-single-crtc-stealing:
    - shard-tglu:         NOTRUN -> [SKIP][267] ([i915#3555])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_setmode@invalid-clone-single-crtc-stealing.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-dg2:          NOTRUN -> [SKIP][268] ([i915#8623])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vblank@query-forked-busy@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][269] ([i915#12964]) +1 other test dmesg-warn
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-5/igt@kms_vblank@query-forked-busy@pipe-b-hdmi-a-2.html

  * igt@kms_vblank@ts-continuation-suspend@pipe-d-dp-3:
    - shard-dg2:          [PASS][270] -> [ABORT][271] ([i915#8213]) +1 other test abort
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-11/igt@kms_vblank@ts-continuation-suspend@pipe-d-dp-3.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-10/igt@kms_vblank@ts-continuation-suspend@pipe-d-dp-3.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-tglu:         NOTRUN -> [SKIP][272] ([i915#9906])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_vrr@flip-basic-fastset.html
    - shard-mtlp:         NOTRUN -> [SKIP][273] ([i915#8808] / [i915#9906])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-dg2-9:        NOTRUN -> [SKIP][274] ([i915#9906])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-glk:          NOTRUN -> [SKIP][275] ([i915#2437]) +1 other test skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk6/igt@kms_writeback@writeback-fb-id.html
    - shard-tglu:         NOTRUN -> [SKIP][276] ([i915#2437])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_writeback@writeback-fb-id.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-dg2:          NOTRUN -> [SKIP][277] ([i915#2436])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          NOTRUN -> [FAIL][278] ([i915#4349]) +4 other tests fail
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@module-unload:
    - shard-glk10:        NOTRUN -> [FAIL][279] ([i915#14433])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk10/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-glk11:        NOTRUN -> [SKIP][280] +201 other tests skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk11/igt@perf_pmu@rc6-all-gts.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-tglu-1:       NOTRUN -> [SKIP][281] ([i915#8516])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-read:
    - shard-mtlp:         NOTRUN -> [SKIP][282] ([i915#3708]) +1 other test skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@prime_vgem@basic-read.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-tglu-1:       NOTRUN -> [FAIL][283] ([i915#12910])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  
#### Possible fixes ####

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-rkl:          [TIMEOUT][284] ([i915#12917] / [i915#12964]) -> [PASS][285] +1 other test pass
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-7/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-8/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:
    - shard-rkl:          [DMESG-WARN][286] ([i915#12964]) -> [PASS][287] +10 other tests pass
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-7/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-7/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html

  * igt@i915_module_load@reload-no-display:
    - shard-snb:          [DMESG-WARN][288] ([i915#14545]) -> [PASS][289]
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-snb4/igt@i915_module_load@reload-no-display.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-snb1/igt@i915_module_load@reload-no-display.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [INCOMPLETE][290] ([i915#12455] / [i915#13820]) -> [PASS][291] +1 other test pass
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-1/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-dg2:          [FAIL][292] ([i915#14505]) -> [PASS][293]
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-3/igt@i915_pm_rpm@system-suspend-execbuf.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-1/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_power@sanity:
    - shard-mtlp:         [SKIP][294] ([i915#7984]) -> [PASS][295]
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-mtlp-2/igt@i915_power@sanity.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@i915_power@sanity.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - shard-dg2:          [ABORT][296] ([i915#8213]) -> [PASS][297] +1 other test pass
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-10/igt@i915_suspend@basic-s2idle-without-i915.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-11/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind:
    - shard-rkl:          [SKIP][298] ([i915#14544]) -> [PASS][299] +33 other tests pass
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html

  * igt@kms_busy@basic:
    - shard-rkl:          [SKIP][300] ([i915#11190] / [i915#14544]) -> [PASS][301] +2 other tests pass
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_busy@basic.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_busy@basic.html

  * igt@kms_color@deep-color:
    - shard-dg2:          [SKIP][302] ([i915#12655] / [i915#3555]) -> [PASS][303]
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-6/igt@kms_color@deep-color.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-11/igt@kms_color@deep-color.html

  * igt@kms_color@degamma:
    - shard-rkl:          [SKIP][304] ([i915#12655] / [i915#14544]) -> [PASS][305] +1 other test pass
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_color@degamma.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_color@degamma.html

  * igt@kms_flip@flip-vs-dpms-on-nop:
    - shard-rkl:          [SKIP][306] ([i915#14544] / [i915#14553]) -> [PASS][307]
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_flip@flip-vs-dpms-on-nop.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_flip@flip-vs-dpms-on-nop.html

  * igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-rkl:          [SKIP][308] ([i915#14544] / [i915#3637]) -> [PASS][309] +4 other tests pass
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling:
    - shard-rkl:          [SKIP][310] ([i915#14544] / [i915#3555]) -> [PASS][311] +1 other test pass
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt:
    - shard-rkl:          [SKIP][312] ([i915#14544] / [i915#1849] / [i915#5354]) -> [PASS][313] +7 other tests pass
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html

  * igt@kms_invalid_mode@uint-max-clock:
    - shard-rkl:          [SKIP][314] ([i915#14544] / [i915#3555] / [i915#8826]) -> [PASS][315] +2 other tests pass
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_invalid_mode@uint-max-clock.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_invalid_mode@uint-max-clock.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-dg2:          [SKIP][316] ([i915#12388]) -> [PASS][317]
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-6/igt@kms_joiner@invalid-modeset-force-big-joiner.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-11/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * {igt@kms_pipe_stress@stress-xrgb8888-xtiled}:
    - shard-dg1:          [DMESG-WARN][318] ([i915#4423]) -> [PASS][319] +1 other test pass
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg1-18/igt@kms_pipe_stress@stress-xrgb8888-xtiled.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg1-17/igt@kms_pipe_stress@stress-xrgb8888-xtiled.html

  * igt@kms_plane@pixel-format-source-clamping:
    - shard-rkl:          [SKIP][320] ([i915#14544] / [i915#8825]) -> [PASS][321]
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_plane@pixel-format-source-clamping.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_plane@pixel-format-source-clamping.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb:
    - shard-rkl:          [SKIP][322] ([i915#14544] / [i915#7294]) -> [PASS][323] +1 other test pass
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_plane_alpha_blend@alpha-transparent-fb.html

  * igt@kms_plane_scaling@invalid-num-scalers:
    - shard-rkl:          [SKIP][324] ([i915#14544] / [i915#3555] / [i915#6953] / [i915#8152]) -> [PASS][325]
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_plane_scaling@invalid-num-scalers.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_plane_scaling@invalid-num-scalers.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers:
    - shard-rkl:          [SKIP][326] ([i915#14544] / [i915#8152]) -> [PASS][327] +1 other test pass
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-b:
    - shard-rkl:          [SKIP][328] ([i915#12247] / [i915#14544] / [i915#8152]) -> [PASS][329] +3 other tests pass
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-b.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-b.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-rkl:          [SKIP][330] ([i915#12247] / [i915#14544] / [i915#3555] / [i915#6953] / [i915#8152]) -> [PASS][331]
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
    - shard-rkl:          [SKIP][332] ([i915#12247] / [i915#14544] / [i915#6953] / [i915#8152]) -> [PASS][333]
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a:
    - shard-rkl:          [SKIP][334] ([i915#12247] / [i915#14544]) -> [PASS][335] +3 other tests pass
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg2:          [SKIP][336] ([i915#9340]) -> [PASS][337]
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-11/igt@kms_pm_lpsp@kms-lpsp.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-4/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [SKIP][338] ([i915#9519]) -> [PASS][339]
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@fences-dpms:
    - shard-rkl:          [SKIP][340] ([i915#14544] / [i915#1849]) -> [PASS][341]
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_pm_rpm@fences-dpms.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_pm_rpm@fences-dpms.html

  * igt@kms_vblank@query-forked-hang:
    - shard-rkl:          [DMESG-WARN][342] ([i915#12917] / [i915#12964]) -> [PASS][343]
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-7/igt@kms_vblank@query-forked-hang.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-8/igt@kms_vblank@query-forked-hang.html

  * igt@kms_vrr@negative-basic:
    - shard-dg2:          [SKIP][344] ([i915#3555] / [i915#9906]) -> [PASS][345]
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-6/igt@kms_vrr@negative-basic.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-11/igt@kms_vrr@negative-basic.html
    - shard-mtlp:         [FAIL][346] ([i915#10393]) -> [PASS][347] +1 other test pass
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-mtlp-7/igt@kms_vrr@negative-basic.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-1/igt@kms_vrr@negative-basic.html

  
#### Warnings ####

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-rkl:          [SKIP][348] ([i915#11078]) -> [SKIP][349] ([i915#11078] / [i915#14544])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@device_reset@unbind-cold-reset-rebind.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-rkl:          [SKIP][350] ([i915#3555] / [i915#9323]) -> [SKIP][351] ([i915#14544] / [i915#3555] / [i915#9323])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@gem_ccs@ctrl-surf-copy.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-rkl:          [SKIP][352] ([i915#14544] / [i915#6335]) -> [SKIP][353] ([i915#6335])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@gem_create@create-ext-cpu-access-big.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_exec_balancer@parallel:
    - shard-rkl:          [SKIP][354] ([i915#14544] / [i915#4525]) -> [SKIP][355] ([i915#4525])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@gem_exec_balancer@parallel.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-rkl:          [SKIP][356] ([i915#14544] / [i915#6334]) -> [SKIP][357] ([i915#6334]) +1 other test skip
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@gem_exec_capture@capture-invisible@smem0.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_reloc@basic-gtt-cpu:
    - shard-rkl:          [SKIP][358] ([i915#14544] / [i915#3281]) -> [SKIP][359] ([i915#3281]) +6 other tests skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-cpu.html

  * igt@gem_exec_reloc@basic-gtt-cpu-active:
    - shard-rkl:          [SKIP][360] ([i915#3281]) -> [SKIP][361] ([i915#14544] / [i915#3281]) +5 other tests skip
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-cpu-active.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu-active.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-rkl:          [SKIP][362] ([i915#14544] / [i915#4613]) -> [SKIP][363] ([i915#4613]) +1 other test skip
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@gem_lmem_swapping@parallel-multi.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-rkl:          [SKIP][364] ([i915#4613]) -> [SKIP][365] ([i915#14544] / [i915#4613]) +2 other tests skip
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_pwrite_snooped:
    - shard-rkl:          [SKIP][366] ([i915#3282]) -> [SKIP][367] ([i915#14544] / [i915#3282]) +2 other tests skip
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@gem_pwrite_snooped.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@gem_pwrite_snooped.html

  * igt@gem_pxp@reject-modify-context-protection-off-3:
    - shard-rkl:          [TIMEOUT][368] ([i915#12917] / [i915#12964]) -> [SKIP][369] ([i915#14544] / [i915#4270])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@gem_pxp@reject-modify-context-protection-off-3.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-off-3.html

  * igt@gem_readwrite@write-bad-handle:
    - shard-rkl:          [SKIP][370] ([i915#14544] / [i915#3282]) -> [SKIP][371] ([i915#3282]) +2 other tests skip
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@gem_readwrite@write-bad-handle.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@gem_readwrite@write-bad-handle.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-rkl:          [SKIP][372] ([i915#14544] / [i915#8411]) -> [SKIP][373] ([i915#8411]) +1 other test skip
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-rkl:          [SKIP][374] ([i915#14544] / [i915#3297]) -> [SKIP][375] ([i915#3297]) +1 other test skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@gem_userptr_blits@coherency-sync.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-rkl:          [SKIP][376] ([i915#14544] / [i915#3297] / [i915#3323]) -> [SKIP][377] ([i915#3297] / [i915#3323])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@gem_userptr_blits@dmabuf-sync.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-rkl:          [SKIP][378] ([i915#2527]) -> [SKIP][379] ([i915#14544] / [i915#2527]) +1 other test skip
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@gen9_exec_parse@bb-start-param.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          [SKIP][380] ([i915#14544] / [i915#2527]) -> [SKIP][381] ([i915#2527]) +3 other tests skip
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@gen9_exec_parse@shadow-peek.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_pm_freq_api@freq-reset:
    - shard-rkl:          [SKIP][382] ([i915#8399]) -> [SKIP][383] ([i915#14544] / [i915#8399])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@i915_pm_freq_api@freq-reset.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@i915_pm_freq_api@freq-reset.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          [SKIP][384] ([i915#4387]) -> [SKIP][385] ([i915#14544] / [i915#4387])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@i915_pm_sseu@full-enable.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@i915_pm_sseu@full-enable.html

  * igt@i915_power@sanity:
    - shard-rkl:          [SKIP][386] ([i915#14544] / [i915#7984]) -> [SKIP][387] ([i915#7984])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@i915_power@sanity.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@i915_power@sanity.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          [SKIP][388] ([i915#5723]) -> [SKIP][389] ([i915#14544] / [i915#5723])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@i915_query@test-query-geometry-subslices.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html

  * igt@intel_hwmon@hwmon-write:
    - shard-rkl:          [SKIP][390] ([i915#14544] / [i915#7707]) -> [SKIP][391] ([i915#7707])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@intel_hwmon@hwmon-write.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@intel_hwmon@hwmon-write.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-rkl:          [SKIP][392] ([i915#5286]) -> [SKIP][393] ([i915#14544]) +5 other tests skip
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-rkl:          [SKIP][394] ([i915#14544]) -> [SKIP][395] ([i915#5286]) +3 other tests skip
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-rkl:          [SKIP][396] ([i915#3638]) -> [SKIP][397] ([i915#14544])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_big_fb@linear-64bpp-rotate-270.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-270.html
    - shard-dg1:          [SKIP][398] ([i915#3638]) -> [SKIP][399] ([i915#3638] / [i915#4423])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg1-17/igt@kms_big_fb@linear-64bpp-rotate-270.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg1-15/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - shard-rkl:          [SKIP][400] ([i915#14544]) -> [SKIP][401] ([i915#3638]) +2 other tests skip
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-rkl:          [SKIP][402] -> [SKIP][403] ([i915#14544]) +12 other tests skip
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][404] ([i915#12313]) -> [SKIP][405] ([i915#14544])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][406] ([i915#14544]) -> [SKIP][407] ([i915#12313])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][408] ([i915#12805]) -> [SKIP][409] ([i915#14544])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
    - shard-rkl:          [SKIP][410] ([i915#14098] / [i915#6095]) -> [SKIP][411] ([i915#14544]) +7 other tests skip
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs:
    - shard-rkl:          [SKIP][412] ([i915#14544]) -> [SKIP][413] ([i915#14098] / [i915#6095]) +9 other tests skip
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs:
    - shard-dg1:          [SKIP][414] ([i915#6095]) -> [SKIP][415] ([i915#4423] / [i915#6095]) +1 other test skip
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg1-17/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg1-15/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-rkl:          [SKIP][416] ([i915#3742]) -> [SKIP][417] ([i915#14544] / [i915#3742])
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_cdclk@mode-transition-all-outputs.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@plane-scaling:
    - shard-rkl:          [SKIP][418] ([i915#14544] / [i915#3742]) -> [SKIP][419] ([i915#3742])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_cdclk@plane-scaling.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_cdclk@plane-scaling.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - shard-rkl:          [SKIP][420] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][421] ([i915#11151] / [i915#7828]) +7 other tests skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-read.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
    - shard-rkl:          [SKIP][422] ([i915#11151] / [i915#7828]) -> [SKIP][423] ([i915#11151] / [i915#14544] / [i915#7828]) +4 other tests skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html

  * igt@kms_content_protection@lic-type-0:
    - shard-dg2:          [SKIP][424] ([i915#9424]) -> [FAIL][425] ([i915#7173])
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-6/igt@kms_content_protection@lic-type-0.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-11/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@type1:
    - shard-rkl:          [SKIP][426] ([i915#14544]) -> [SKIP][427] ([i915#7118] / [i915#9424]) +1 other test skip
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_content_protection@type1.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-rkl:          [SKIP][428] ([i915#13049]) -> [SKIP][429] ([i915#14544]) +1 other test skip
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x512.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-rkl:          [SKIP][430] ([i915#14544]) -> [SKIP][431] ([i915#13049])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x512.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-256x85:
    - shard-rkl:          [FAIL][432] ([i915#13566]) -> [SKIP][433] ([i915#14544])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-256x85.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-256x85.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-rkl:          [SKIP][434] ([i915#3555]) -> [SKIP][435] ([i915#14544]) +2 other tests skip
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-32x10.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
    - shard-rkl:          [SKIP][436] ([i915#14544]) -> [SKIP][437] +14 other tests skip
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-rkl:          [SKIP][438] ([i915#14544]) -> [SKIP][439] ([i915#4103])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-rkl:          [SKIP][440] ([i915#13707]) -> [SKIP][441] ([i915#14544])
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_dp_linktrain_fallback@dp-fallback.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          [SKIP][442] ([i915#11190] / [i915#14544]) -> [SKIP][443] ([i915#3555] / [i915#3840])
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_dsc@dsc-basic.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-rkl:          [SKIP][444] ([i915#14544]) -> [SKIP][445] ([i915#3840])
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-rkl:          [SKIP][446] ([i915#3555] / [i915#3840]) -> [SKIP][447] ([i915#14544])
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_dsc@dsc-with-output-formats.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][448] ([i915#3955]) -> [SKIP][449] ([i915#14544] / [i915#3955])
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@chamelium:
    - shard-rkl:          [SKIP][450] ([i915#4854]) -> [SKIP][451] ([i915#14544] / [i915#4854])
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_feature_discovery@chamelium.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@psr1:
    - shard-rkl:          [SKIP][452] ([i915#14544] / [i915#658]) -> [SKIP][453] ([i915#658])
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_feature_discovery@psr1.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_feature_discovery@psr1.html

  * igt@kms_fence_pin_leak:
    - shard-rkl:          [SKIP][454] ([i915#14544]) -> [DMESG-WARN][455] ([i915#12964]) +1 other test dmesg-warn
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_fence_pin_leak.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-rkl:          [SKIP][456] ([i915#9934]) -> [SKIP][457] ([i915#14544] / [i915#9934]) +3 other tests skip
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_flip@2x-flip-vs-dpms.html
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-rkl:          [SKIP][458] ([i915#14544] / [i915#9934]) -> [SKIP][459] ([i915#9934]) +7 other tests skip
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-rkl:          [SKIP][460] ([i915#14544] / [i915#3555]) -> [SKIP][461] ([i915#2672] / [i915#3555]) +3 other tests skip
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
    - shard-rkl:          [SKIP][462] ([i915#2672] / [i915#3555]) -> [SKIP][463] ([i915#14544] / [i915#3555]) +3 other tests skip
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render:
    - shard-dg1:          [SKIP][464] -> [SKIP][465] ([i915#4423])
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render.html
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-rkl:          [SKIP][466] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][467] ([i915#1825]) +22 other tests skip
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
    - shard-rkl:          [SKIP][468] ([i915#1825]) -> [SKIP][469] ([i915#14544] / [i915#1849] / [i915#5354]) +25 other tests skip
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
    - shard-dg2:          [SKIP][470] ([i915#3458]) -> [SKIP][471] ([i915#10433] / [i915#3458]) +5 other tests skip
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-rkl:          [SKIP][472] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][473] ([i915#5439])
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-rkl:          [SKIP][474] ([i915#9766]) -> [SKIP][475] ([i915#14544] / [i915#1849] / [i915#5354])
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-rkl:          [SKIP][476] ([i915#3023]) -> [SKIP][477] ([i915#14544] / [i915#1849] / [i915#5354]) +16 other tests skip
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][478] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][479] ([i915#3023]) +14 other tests skip
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:
    - shard-dg1:          [SKIP][480] ([i915#3458] / [i915#4423]) -> [SKIP][481] ([i915#3458])
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-dg1:          [SKIP][482] ([i915#12713]) -> [SKIP][483] ([i915#1187] / [i915#12713])
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg1-16/igt@kms_hdr@brightness-with-hdr.html
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html
    - shard-tglu:         [SKIP][484] ([i915#12713]) -> [SKIP][485] ([i915#1187] / [i915#12713])
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-tglu-4/igt@kms_hdr@brightness-with-hdr.html
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_hdr@static-toggle:
    - shard-rkl:          [SKIP][486] ([i915#3555] / [i915#8228]) -> [SKIP][487] ([i915#14544])
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_hdr@static-toggle.html
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_hdr@static-toggle.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-rkl:          [SKIP][488] ([i915#12339]) -> [SKIP][489] ([i915#12339] / [i915#14544]) +1 other test skip
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_joiner@basic-ultra-joiner.html
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
    - shard-rkl:          [SKIP][490] ([i915#13522] / [i915#14544]) -> [SKIP][491] ([i915#13522])
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html

  * igt@kms_plane_multiple@2x-tiling-y:
    - shard-rkl:          [SKIP][492] ([i915#14544]) -> [SKIP][493] ([i915#13958]) +1 other test skip
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-y.html
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-y.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-rkl:          [SKIP][494] ([i915#14544] / [i915#3555] / [i915#8152]) -> [SKIP][495] ([i915#3555])
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a:
    - shard-rkl:          [SKIP][496] ([i915#12247] / [i915#14544]) -> [SKIP][497] ([i915#12247])
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
    - shard-rkl:          [SKIP][498] ([i915#12247] / [i915#14544] / [i915#8152]) -> [SKIP][499] ([i915#12247])
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          [SKIP][500] ([i915#4281]) -> [SKIP][501] ([i915#3361])
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-7/igt@kms_pm_dc@dc9-dpms.html
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-8/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          [SKIP][502] ([i915#14544] / [i915#9340]) -> [SKIP][503] ([i915#3828])
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-rkl:          [SKIP][504] ([i915#8430]) -> [SKIP][505] ([i915#14544] / [i915#8430])
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_pm_lpsp@screens-disabled.html
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - shard-rkl:          [DMESG-WARN][506] ([i915#12964]) -> [SKIP][507] ([i915#12916])
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_pm_rpm@basic-pci-d3-state.html
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [SKIP][508] ([i915#9519]) -> [SKIP][509] ([i915#14544] / [i915#9519])
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-rkl:          [SKIP][510] ([i915#14544] / [i915#6524]) -> [SKIP][511] ([i915#6524]) +1 other test skip
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_prime@basic-crc-hybrid.html
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
    - shard-rkl:          [SKIP][512] ([i915#11520] / [i915#14544]) -> [SKIP][513] ([i915#11520]) +5 other tests skip
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
    - shard-dg1:          [SKIP][514] ([i915#11520] / [i915#4423]) -> [SKIP][515] ([i915#11520])
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg1-19/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg1-15/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
    - shard-rkl:          [SKIP][516] ([i915#11520]) -> [SKIP][517] ([i915#11520] / [i915#14544]) +5 other tests skip
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-rkl:          [SKIP][518] ([i915#9683]) -> [SKIP][519] ([i915#14544] / [i915#9683])
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_psr2_su@page_flip-nv12.html
   [519]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@fbc-psr-cursor-plane-move:
    - shard-rkl:          [SKIP][520] ([i915#1072] / [i915#9732]) -> [SKIP][521] ([i915#1072] / [i915#14544] / [i915#9732]) +13 other tests skip
   [520]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_psr@fbc-psr-cursor-plane-move.html
   [521]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_psr@fbc-psr-cursor-plane-move.html

  * igt@kms_psr@psr-sprite-plane-move:
    - shard-rkl:          [SKIP][522] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][523] ([i915#1072] / [i915#9732]) +15 other tests skip
   [522]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_psr@psr-sprite-plane-move.html
   [523]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_psr@psr-sprite-plane-move.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          [SKIP][524] ([i915#9685]) -> [SKIP][525] ([i915#14544] / [i915#9685])
   [524]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [525]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_setmode@invalid-clone-single-crtc:
    - shard-rkl:          [SKIP][526] ([i915#3555]) -> [SKIP][527] ([i915#14544] / [i915#3555])
   [526]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_setmode@invalid-clone-single-crtc.html
   [527]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_setmode@invalid-clone-single-crtc.html

  * igt@kms_vblank@wait-forked-busy-hang:
    - shard-rkl:          [DMESG-WARN][528] ([i915#12964]) -> [SKIP][529] ([i915#14544]) +4 other tests skip
   [528]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_vblank@wait-forked-busy-hang.html
   [529]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_vblank@wait-forked-busy-hang.html

  * igt@kms_vrr@flip-dpms:
    - shard-rkl:          [SKIP][530] ([i915#14544]) -> [SKIP][531] ([i915#3555]) +2 other tests skip
   [530]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_vrr@flip-dpms.html
   [531]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_vrr@flip-dpms.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-rkl:          [SKIP][532] ([i915#2437]) -> [SKIP][533] ([i915#14544] / [i915#2437])
   [532]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_writeback@writeback-invalid-parameters.html
   [533]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@prime_vgem@basic-fence-read:
    - shard-rkl:          [SKIP][534] ([i915#14544] / [i915#3291] / [i915#3708]) -> [SKIP][535] ([i915#3291] / [i915#3708])
   [534]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@prime_vgem@basic-fence-read.html
   [535]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@fence-read-hang:
    - shard-rkl:          [SKIP][536] ([i915#3708]) -> [SKIP][537] ([i915#14544] / [i915#3708])
   [536]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@prime_vgem@fence-read-hang.html
   [537]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@prime_vgem@fence-read-hang.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-rkl:          [SKIP][538] ([i915#9917]) -> [SKIP][539] ([i915#14544] / [i915#9917]) +1 other test skip
   [538]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@sriov_basic@bind-unbind-vf.html
   [539]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@sriov_basic@bind-unbind-vf.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-rkl:          [SKIP][540] ([i915#14544] / [i915#9917]) -> [SKIP][541] ([i915#9917])
   [540]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-on.html
   [541]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@sriov_basic@enable-vfs-autoprobe-on.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10393]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10393
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
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
  [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
  [i915#12455]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12455
  [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
  [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
  [i915#12761]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761
  [i915#12796]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
  [i915#12916]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916
  [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
  [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
  [i915#13026]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13304]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13304
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13441
  [i915#13522]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13665]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13665
  [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
  [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
  [i915#13820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
  [i915#14123]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14123
  [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
  [i915#14433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433
  [i915#14505]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14505
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
  [i915#14553]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14553
  [i915#14561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14561
  [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
  [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
  [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
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
  [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
  [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4873]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4873
  [i915#4881]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881
  [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5465]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465
  [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
  [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
  [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
  [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
  [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
  [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
  [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8289
  [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8717
  [i915#8808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8808
  [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
  [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
  [i915#8826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826
  [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
  [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
  [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
  [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_16960 -> Patchwork_152476v3

  CI-20190529: 20190529
  CI_DRM_16960: 22cf8ca94d0cf9e5ed0dd5a4e8fed96f6cdab2bb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8487: 8487
  Patchwork_152476v3: 22cf8ca94d0cf9e5ed0dd5a4e8fed96f6cdab2bb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/index.html

--===============6126236963682099076==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Protect against overflow in active_engine() (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/152476/">https://patchwork.freedesktop.org/series/152476/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16960_full -&gt; Patchwork_152476v3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_152476v3_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_152476v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_152476v3_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_drm_fdinfo@context-close-stress:<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg1-13/igt@i915_drm_fdinfo@context-close-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg1-12/igt@i915_drm_fdinfo@context-close-stress.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_152476v3_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@api_intel_bb@crc32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230">i915#6230</a>)</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@api_intel_bb@object-reloc-purge-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@device_reset@cold-reset-bound.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk11/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_caching@reads:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@gem_caching@reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4873">i915#4873</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-1/igt@gem_ccs@suspend-resume.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_compute@compute-square:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_compute@compute-square.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13665">i915#13665</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg1-16/igt@gem_ctx_isolation@preservation-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg1-19/igt@gem_ctx_isolation@preservation-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_ctx_persistence@heartbeat-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg1-19/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg1-14/igt@gem_eio@reset-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-true-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@gem_exec_balancer@bonded-true-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@gem_exec_balancer@parallel-out-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_exec_capture@capture-invisible@lmem0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334">i915#6334</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_exec_flush@basic-uc-set-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-pro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@gem_exec_flush@basic-wb-pro-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-before-default:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@gem_exec_flush@basic-wb-ro-before-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-active:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@gem_exec_reloc@basic-cpu-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_exec_reloc@basic-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@gem_exec_reloc@basic-write-cpu-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@gem_exec_schedule@preempt-queue-contexts-chain.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537">i915#4537</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-11/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441">i915#11441</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13304">i915#13304</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-none:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@gem_fence_thrash@bo-write-verify-none.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@gem_fence_thrash@bo-write-verify-none.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +18 other tests dmesg-warn</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_fence_thrash@bo-write-verify-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@gem_fence_thrash@bo-write-verify-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@gem_lmem_swapping@heavy-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive-random:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@gem_lmem_swapping@massive-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk1/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-3/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493">i915#5493</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_media_fill@media-fill.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8289">i915#8289</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@big-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_mmap@big-bo.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo-tiledx:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_mmap_gtt@basic-small-bo-tiledx.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write-read-distinct:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@gem_mmap_gtt@basic-write-read-distinct.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-snoop:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk10/igt@gem_pread@exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@uncached:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@gem_pread@uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-8/igt@gem_pxp@create-regular-context-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@gem_pxp@create-regular-context-1.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@new-obj:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@gem_readwrite@new-obj.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-linear:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@gem_render_copy@y-tiled-ccs-to-linear.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@gem_userptr_blits@map-fixed-invalidate-busy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@gem_userptr_blits@relocations.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@gen9_exec_parse@allowed-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@gen9_exec_parse@batch-without-end.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@gen9_exec_parse@bb-start-far.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@all-busy-check-all:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@i915_drm_fdinfo@all-busy-check-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14123">i915#14123</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@busy-idle@vecs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@i915_drm_fdinfo@busy-idle@vecs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073">i915#14073</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@virtual-busy-idle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@i915_drm_fdinfo@virtual-busy-idle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118">i915#14118</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@i915_pm_rps@thresholds-idle-park.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@i915_pm_rps@thresholds-park.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk11/igt@i915_suspend@fence-restore-tiled2untiled.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk10/igt@i915_suspend@fence-restore-untiled.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-snb2/igt@intel_hwmon@hwmon-read.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10991">i915#10991</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk1/igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761">i915#12761</a>) +1 other test incomplete</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-5/igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761">i915#12761</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg1-19/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +59 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-c-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk3/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> +159 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +126 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +41 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +44 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796">i915#12796</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +45 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781">i915#13781</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783">i915#13783</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-max:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@kms_chamelium_color@ctm-max.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-resolution-list:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@kms_chamelium_edid@dp-edid-resolution-list.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-storm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_chamelium_hpd@hdmi-hpd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@gamma:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_color@gamma.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_color@gamma.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_content_protection@atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_content_protection@atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-11/igt@kms_content_protection@lic-type-0@pipe-a-dp-3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_content_protection@lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@kms_content_protection@uevent.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x32:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@kms_cursor_crc@cursor-offscreen-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-tglu-2/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-9/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809">i915#9809</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +43 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-tglu-10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_dp_aux_dev.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-sst:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_dp_link_training@uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">i915#13748</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dsc-fallback:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_dp_linktrain_fallback@dsc-fallback.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707">i915#13707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@kms_dsc@dsc-with-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_dsc@dsc-with-output-formats-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053">i915#9053</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_fbcon_fbt@fbc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_fbcon_fbt@fbc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14561">i915#14561</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_feature_discovery@display-3x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_feature_discovery@dp-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@kms_fence_pin_leak.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881">i915#4881</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_flip@2x-flip-vs-panning.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_flip@2x-plain-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@kms_flip@flip-vs-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk1/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk6/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk6/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk1/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813">i915#8813</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813">i915#8813</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880">i915#6880</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk10/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html">SKIP</a> +344 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html">SKIP</a> +65 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055">i915#10055</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html">SKIP</a> +37 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_hdr@invalid-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_invalid_mode@clock-too-high.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_invalid_mode@clock-too-high.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826">i915#8826</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@kms_joiner@basic-force-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk11/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_pipe_crc_basic@read-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk10/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_plane@plane-position-covered.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_plane@plane-position-covered.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825">i915#8825</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@kms_plane_multiple@2x-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-yf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-4:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_plane_multiple@tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_pm_backlight@fade-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_pm_backlight@fade-with-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-dpms-negative:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_pm_dc@dc5-dpms-negative.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_pm_dc@dc5-dpms-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13441">i915#13441</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_pm_dc@dc6-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-1/igt@kms_pm_rpm@i2c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@kms_pm_rpm@i2c.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8717">i915#8717</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805">i915#6805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_properties@crtc-properties-atomic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_properties@crtc-properties-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_properties@crtc-properties-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521">i915#11521</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-snb2/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk3/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk11/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +5 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area@pipe-a-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808">i915#9808</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area@pipe-b-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316">i915#12316</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-update-sf:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk10/igt@kms_psr2_sf@psr2-cursor-plane-update-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +8 other tests skip</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_psr2_sf@psr2-cursor-plane-update-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_psr@fbc-pr-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-basic:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_psr@fbc-psr2-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-primary-page-flip:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_psr@fbc-psr2-primary-page-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-primary-page-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_psr@pr-primary-page-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-primary-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@kms_psr@psr2-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755">i915#12755</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-center:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_scaling_modes@scaling-mode-center.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465">i915#5465</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc-stealing:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_setmode@invalid-clone-single-crtc-stealing.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@kms_tiled_display@basic-test-pattern.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@query-forked-busy@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-5/igt@kms_vblank@query-forked-busy@pipe-b-hdmi-a-2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-suspend@pipe-d-dp-3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-11/igt@kms_vblank@ts-continuation-suspend@pipe-d-dp-3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-10/igt@kms_vblank@ts-continuation-suspend@pipe-d-dp-3.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213">i915#8213</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8808">i915#8808</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-9/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk6/igt@kms_writeback@writeback-fb-id.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-4/igt@kms_writeback@writeback-fb-id.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-8/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-2/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#4349</a>) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk10/igt@perf_pmu@module-unload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433">i915#14433</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-glk11/igt@perf_pmu@rc6-all-gts.html">SKIP</a> +201 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@perf_pmu@rc6@other-idle-gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910">i915#12910</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-7/igt@gem_pxp@verify-pxp-stale-ctx-execution.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-8/igt@gem_pxp@verify-pxp-stale-ctx-execution.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-7/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-7/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html">PASS</a> +10 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-snb4/igt@i915_module_load@reload-no-display.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545">i915#14545</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-snb1/igt@i915_module_load@reload-no-display.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-1/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12455">i915#12455</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820">i915#13820</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-3/igt@i915_pm_rpm@system-suspend-execbuf.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14505">i915#14505</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-1/igt@i915_pm_rpm@system-suspend-execbuf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-mtlp-2/igt@i915_power@sanity.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984">i915#7984</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-2/igt@i915_power@sanity.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-10/igt@i915_suspend@basic-s2idle-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-11/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html">PASS</a> +33 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_busy@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_busy@basic.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-6/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-11/igt@kms_color@deep-color.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@degamma:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_color@degamma.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_color@degamma.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-on-nop:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_flip@flip-vs-dpms-on-nop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14553">i915#14553</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_flip@flip-vs-dpms-on-nop.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_invalid_mode@uint-max-clock.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826">i915#8826</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_invalid_mode@uint-max-clock.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-6/igt@kms_joiner@invalid-modeset-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388">i915#12388</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-11/igt@kms_joiner@invalid-modeset-force-big-joiner.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pipe_stress@stress-xrgb8888-xtiled}:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg1-18/igt@kms_pipe_stress@stress-xrgb8888-xtiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg1-17/igt@kms_pipe_stress@stress-xrgb8888-xtiled.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_plane@pixel-format-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825">i915#8825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_plane@pixel-format-source-clamping.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-transparent-fb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_plane_alpha_blend@alpha-transparent-fb.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-num-scalers:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_plane_scaling@invalid-num-scalers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_plane_scaling@invalid-num-scalers.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-b.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-11/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-4/igt@kms_pm_lpsp@kms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_pm_rpm@fences-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_pm_rpm@fences-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@query-forked-hang:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-7/igt@kms_vblank@query-forked-hang.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-8/igt@kms_vblank@query-forked-hang.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-6/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-11/igt@kms_vrr@negative-basic.html">PASS</a></li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-mtlp-7/igt@kms_vrr@negative-basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10393">i915#10393</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-mtlp-1/igt@kms_vrr@negative-basic.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">i915#11078</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">i915#11078</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334">i915#6334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334">i915#6334</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-active:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-cpu-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite_snooped:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@gem_pwrite_snooped.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@gem_pwrite_snooped.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-3:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@gem_pxp@reject-modify-context-protection-off-3.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-off-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@write-bad-handle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@gem_readwrite@write-bad-handle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@gem_readwrite@write-bad-handle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323">i915#3323</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@i915_pm_freq_api@freq-reset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@i915_pm_freq_api@freq-reset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@i915_power@sanity.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984">i915#7984</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@i915_power@sanity.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984">i915#7984</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723">i915#5723</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723">i915#5723</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_big_fb@linear-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg1-17/igt@kms_big_fb@linear-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg1-15/igt@kms_big_fb@linear-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805">i915#12805</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg1-17/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg1-15/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_cdclk@plane-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_cdclk@plane-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_chamelium_edid@hdmi-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-6/igt@kms_content_protection@lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-11/igt@kms_content_protection@lic-type-0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x85:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-256x85.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-256x85.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html">SKIP</a> +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707">i915#13707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_feature_discovery@chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854">i915#4854</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_feature_discovery@chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_feature_discovery@psr1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_feature_discovery@psr1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_fence_pin_leak.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_fence_pin_leak.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766">i915#9766</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg1-16/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187">i915#1187</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>)</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-tglu-4/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187">i915#1187</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339">i915#12339</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339">i915#12339</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522">i915#13522</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522">i915#13522</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-y:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-7/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-8/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361">i915#3361</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430">i915#8430</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916">i915#12916</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-dg1-19/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-dg1-15/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-plane-move:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_psr@fbc-psr-cursor-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_psr@fbc-psr-cursor-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-move:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_psr@psr-sprite-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_psr@psr-sprite-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_setmode@invalid-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_setmode@invalid-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@wait-forked-busy-hang:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@kms_vblank@wait-forked-busy-hang.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_vblank@wait-forked-busy-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@kms_vrr@flip-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@kms_vrr@flip-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-4/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-2/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@prime_vgem@fence-read-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@prime_vgem@fence-read-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-3/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-6/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16960/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152476v3/shard-rkl-4/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16960 -&gt; Patchwork_152476v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16960: 22cf8ca94d0cf9e5ed0dd5a4e8fed96f6cdab2bb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8487: 8487<br />
  Patchwork_152476v3: 22cf8ca94d0cf9e5ed0dd5a4e8fed96f6cdab2bb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============6126236963682099076==--
