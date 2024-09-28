Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B2398914C
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Sep 2024 22:15:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48AD810E255;
	Sat, 28 Sep 2024 20:15:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9975710E255;
 Sat, 28 Sep 2024 20:15:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7040047246491314734=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915=3A_Remove_unused_u?=
 =?utf-8?q?nderrun_interrupt_bits_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 28 Sep 2024 20:15:02 -0000
Message-ID: <172755450260.1131657.17565344009372128278@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240925111802.2227604-1-sai.teja.pottumuttu@intel.com>
In-Reply-To: <20240925111802.2227604-1-sai.teja.pottumuttu@intel.com>
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

--===============7040047246491314734==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove unused underrun interrupt bits (rev2)
URL   : https://patchwork.freedesktop.org/series/139090/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15453_full -> Patchwork_139090v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_139090v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_139090v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 8)
------------------------------

  Missing    (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_139090v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][1] +15 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][2] +3 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][3] +2 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - shard-dg2:          [PASS][4] -> [INCOMPLETE][5] +4 other tests incomplete
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:
    - shard-tglu:         NOTRUN -> [SKIP][6] +8 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-7/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html

  
#### Warnings ####

  * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
    - shard-dg2:          [SKIP][7] ([i915#9197]) -> [SKIP][8] +2 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-4/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:
    - shard-dg2:          [FAIL][9] ([i915#6880]) -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-dg1:          [SKIP][11] ([i915#4423]) -> [SKIP][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          [SKIP][13] ([i915#5354]) -> [SKIP][14] +11 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          [FAIL][15] ([i915#7484]) -> [FAIL][16] +1 other test fail
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@perf@non-zero-reason@0-rcs0.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@device_reset@cold-reset-bound:
    - {shard-tglu-1}:     NOTRUN -> [SKIP][17] +5 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-1/igt@device_reset@cold-reset-bound.html

  
Known issues
------------

  Here are the changes found in Patchwork_139090v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf_sync_file@import-multiple-read-write:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][18] ([i915#2295])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-14/igt@dmabuf_sync_file@import-multiple-read-write.html

  * igt@drm_fdinfo@virtual-busy-hang:
    - shard-dg1:          NOTRUN -> [SKIP][19] ([i915#8414])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-16/igt@drm_fdinfo@virtual-busy-hang.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          NOTRUN -> [SKIP][20] ([i915#3555] / [i915#9323])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html
    - shard-tglu:         NOTRUN -> [SKIP][21] ([i915#3555] / [i915#9323])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@gem_ccs@block-copy-compressed.html
    - shard-mtlp:         NOTRUN -> [SKIP][22] ([i915#3555] / [i915#9323])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-2/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          NOTRUN -> [SKIP][23] ([i915#9323])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-2/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [PASS][24] -> [INCOMPLETE][25] ([i915#7297])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-4/igt@gem_ccs@suspend-resume.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-6/igt@gem_ccs@suspend-resume.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-rkl:          NOTRUN -> [SKIP][26] ([i915#6335])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_persistence@hostile:
    - shard-rkl:          NOTRUN -> [FAIL][27] ([i915#11980])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@gem_ctx_persistence@hostile.html
    - shard-snb:          NOTRUN -> [SKIP][28] ([i915#1099])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-snb1/igt@gem_ctx_persistence@hostile.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-tglu:         NOTRUN -> [SKIP][29] ([i915#280]) +1 other test skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-7/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@hibernate:
    - shard-rkl:          NOTRUN -> [ABORT][30] ([i915#7975] / [i915#8213])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-4/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-rkl:          NOTRUN -> [SKIP][31] ([i915#4525])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-tglu:         NOTRUN -> [SKIP][32] ([i915#6334]) +1 other test skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-7/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][33] ([i915#2842]) +1 other test fail
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-2/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-throttle:
    - shard-rkl:          [PASS][34] -> [FAIL][35] ([i915#2842]) +2 other tests fail
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-2/igt@gem_exec_fair@basic-throttle.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-2/igt@gem_exec_fair@basic-throttle.html

  * igt@gem_exec_fence@submit3:
    - shard-mtlp:         NOTRUN -> [SKIP][36] ([i915#4812])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-8/igt@gem_exec_fence@submit3.html

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - shard-dg1:          NOTRUN -> [SKIP][37] ([i915#3539] / [i915#4852]) +1 other test skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-14/igt@gem_exec_flush@basic-wb-rw-before-default.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][38] ([i915#3281]) +13 other tests skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_suspend@basic-s3-devices:
    - shard-dg1:          [PASS][39] -> [DMESG-WARN][40] ([i915#4423]) +3 other tests dmesg-warn
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-15/igt@gem_exec_suspend@basic-s3-devices.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-16/igt@gem_exec_suspend@basic-s3-devices.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-rkl:          NOTRUN -> [SKIP][41] ([i915#4613]) +4 other tests skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][42] ([i915#4613]) +4 other tests skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-7/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][43] ([i915#12193])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-17/igt@gem_lmem_swapping@verify-ccs.html
    - shard-mtlp:         NOTRUN -> [SKIP][44] ([i915#4613])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-4/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_lmem_swapping@verify-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][45] ([i915#4565])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-17/igt@gem_lmem_swapping@verify-ccs@lmem0.html

  * igt@gem_media_vme:
    - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#284])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@basic-read-write:
    - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#4077])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-4/igt@gem_mmap_gtt@basic-read-write.html

  * igt@gem_mmap_wc@bad-offset:
    - shard-mtlp:         NOTRUN -> [SKIP][48] ([i915#4083])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-4/igt@gem_mmap_wc@bad-offset.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          NOTRUN -> [SKIP][49] ([i915#3282]) +5 other tests skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-tglu:         NOTRUN -> [SKIP][50] ([i915#4270]) +1 other test skip
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-rkl:          NOTRUN -> [SKIP][51] ([i915#4270]) +7 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-2/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][52] ([i915#3297]) +2 other tests skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-6/igt@gem_userptr_blits@create-destroy-unsync.html
    - shard-tglu:         NOTRUN -> [SKIP][53] ([i915#3297]) +1 other test skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-glk:          NOTRUN -> [SKIP][54]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-glk7/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gen9_exec_parse@bb-large:
    - shard-dg1:          NOTRUN -> [SKIP][55] ([i915#2527]) +1 other test skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-16/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#2527]) +4 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-6/igt@gen9_exec_parse@bb-oversize.html
    - shard-tglu:         NOTRUN -> [SKIP][57] ([i915#2527] / [i915#2856]) +3 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#2856])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@gen9_exec_parse@secure-batches.html
    - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#2856])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-4/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          ([PASS][60], [PASS][61]) -> [ABORT][62] ([i915#9820])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk3/igt@i915_module_load@reload-with-fault-injection.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk5/igt@i915_module_load@reload-with-fault-injection.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-glk7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#8399]) +1 other test skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@i915_pm_freq_api@freq-suspend.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][64] ([i915#4212])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#8709]) +3 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#8709]) +11 other tests skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-snb:          [PASS][67] -> [FAIL][68] ([i915#5956]) +1 other test fail
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-snb7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-snb7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#1769] / [i915#3555])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#5286]) +7 other tests skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
    - shard-tglu:         NOTRUN -> [SKIP][71] ([i915#5286]) +4 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][72] ([i915#3638]) +1 other test skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-16/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#3638]) +1 other test skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-7/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-mtlp:         NOTRUN -> [SKIP][74] +1 other test skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#4538])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-16/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#10307] / [i915#6095]) +107 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-4/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][78] ([i915#6095]) +96 other tests skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-10/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][79] ([i915#6095]) +95 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#6095]) +65 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-2/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#7213]) +3 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_cdclk@plane-scaling@pipe-c-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#4087]) +3 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-10/igt@kms_cdclk@plane-scaling@pipe-c-dp-3.html

  * igt@kms_chamelium_audio@dp-audio:
    - shard-tglu:         NOTRUN -> [SKIP][83] ([i915#7828]) +7 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-4/igt@kms_chamelium_audio@dp-audio.html
    - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#7828]) +1 other test skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-4/igt@kms_chamelium_audio@dp-audio.html
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#7828])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_chamelium_audio@dp-audio.html

  * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][86] ([i915#7828]) +1 other test skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-16/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#7828]) +11 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][88] ([i915#3116] / [i915#3299]) +1 other test skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-4/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#3116]) +1 other test skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@legacy@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [TIMEOUT][90] ([i915#7173]) +1 other test timeout
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-10/igt@kms_content_protection@legacy@pipe-a-dp-3.html

  * igt@kms_content_protection@mei-interface:
    - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#9424]) +1 other test skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-4/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@type1:
    - shard-tglu:         NOTRUN -> [SKIP][92] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-7/igt@kms_content_protection@type1.html

  * igt@kms_content_protection@uevent:
    - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#7118] / [i915#9424])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#11453]) +1 other test skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-tglu:         NOTRUN -> [SKIP][95] ([i915#3555]) +2 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-4/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg1:          NOTRUN -> [SKIP][96] ([i915#11453])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-12/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][97] ([i915#11453]) +1 other test skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-7/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#4103]) +1 other test skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
    - shard-mtlp:         NOTRUN -> [SKIP][99] ([i915#9809]) +1 other test skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][100] +33 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
    - shard-dg1:          NOTRUN -> [SKIP][101] +5 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-14/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#9067])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-tglu:         NOTRUN -> [SKIP][103] ([i915#1769] / [i915#3555] / [i915#3804])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#3804])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dp_aux_dev:
    - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#1257])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@kms_dp_aux_dev.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#3840])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#3555] / [i915#3840])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-6/igt@kms_dsc@dsc-with-bpc.html
    - shard-mtlp:         NOTRUN -> [SKIP][108] ([i915#3555] / [i915#3840])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-2/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-tglu:         NOTRUN -> [SKIP][109] ([i915#3555] / [i915#3840]) +1 other test skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-4/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_feature_discovery@chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#4854])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-7/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-2x:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#1839])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@psr2:
    - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#658])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-7/igt@kms_feature_discovery@psr2.html
    - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#658])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-7/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][114]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-7/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html
    - shard-mtlp:         NOTRUN -> [SKIP][115] ([i915#3637])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@2x-flip-vs-modeset:
    - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#3637] / [i915#3966])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_flip@2x-flip-vs-modeset.html

  * igt@kms_flip@2x-plain-flip:
    - shard-tglu:         NOTRUN -> [SKIP][117] ([i915#3637]) +4 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-7/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-rkl:          [PASS][118] -> [FAIL][119] ([i915#2122])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-4/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-1/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
    - shard-tglu:         [PASS][120] -> [FAIL][121] ([i915#2122]) +2 other tests fail
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-4/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a2:
    - shard-rkl:          NOTRUN -> [FAIL][122] ([i915#11961])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-1/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a2.html

  * igt@kms_flip@plain-flip-ts-check@c-hdmi-a3:
    - shard-dg2:          NOTRUN -> [FAIL][123] ([i915#2122]) +2 other tests fail
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@kms_flip@plain-flip-ts-check@c-hdmi-a3.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#2672] / [i915#3555]) +4 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][125] ([i915#2672] / [i915#3555]) +1 other test skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#2672]) +4 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#2587] / [i915#2672] / [i915#3555])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-16/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][128] ([i915#2587] / [i915#2672])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-16/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-dg2:          [PASS][129] -> [SKIP][130] ([i915#3555]) +1 other test skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#2672]) +3 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html
    - shard-tglu:         NOTRUN -> [SKIP][132] ([i915#2587] / [i915#2672]) +5 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#2672] / [i915#3555])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [PASS][134] -> [SKIP][135] ([i915#5354]) +11 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#1825]) +44 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
    - shard-mtlp:         NOTRUN -> [SKIP][137] ([i915#1825]) +3 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-snb:          [PASS][138] -> [SKIP][139] +1 other test skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#3023]) +33 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen:
    - shard-dg1:          NOTRUN -> [SKIP][141] ([i915#3458]) +1 other test skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
    - shard-tglu:         NOTRUN -> [SKIP][142] +61 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#3458])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#5354])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-move.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][145] ([i915#3555] / [i915#8228]) +1 other test skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@invalid-hdr:
    - shard-dg1:          NOTRUN -> [SKIP][146] ([i915#3555] / [i915#8228])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-16/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#3555] / [i915#8228]) +3 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_invalid_mode@zero-clock:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#3555])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_invalid_mode@zero-clock.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-tglu:         NOTRUN -> [SKIP][149] ([i915#6301])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-4/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_plane@plane-position-covered:
    - shard-dg2:          [PASS][150] -> [SKIP][151] ([i915#8825])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_plane@plane-position-covered.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_plane@plane-position-covered.html

  * igt@kms_plane_alpha_blend@coverage-7efc:
    - shard-dg2:          [PASS][152] -> [SKIP][153] ([i915#7294])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_plane_alpha_blend@coverage-7efc.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_plane_alpha_blend@coverage-7efc.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#3555]) +6 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-glk:          ([PASS][155], [PASS][156]) -> [SKIP][157]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk7/igt@kms_plane_scaling@intel-max-src-size.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk5/igt@kms_plane_scaling@intel-max-src-size.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-glk1/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#12247]) +13 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:
    - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#12247]) +4 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-14/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation:
    - shard-dg2:          [PASS][160] -> [SKIP][161] ([i915#12247] / [i915#8152] / [i915#9423])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-d:
    - shard-dg2:          [PASS][162] -> [SKIP][163] ([i915#12247] / [i915#8152])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-d.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
    - shard-dg2:          [PASS][164] -> [SKIP][165] ([i915#8152] / [i915#9423]) +1 other test skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c:
    - shard-dg2:          [PASS][166] -> [SKIP][167] ([i915#12247]) +8 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d:
    - shard-dg2:          [PASS][168] -> [SKIP][169] ([i915#8152]) +1 other test skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
    - shard-tglu:         NOTRUN -> [SKIP][170] ([i915#12247] / [i915#6953])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d:
    - shard-tglu:         NOTRUN -> [SKIP][171] ([i915#12247]) +18 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html

  * igt@kms_pm_backlight@fade:
    - shard-tglu:         NOTRUN -> [SKIP][172] ([i915#9812])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_pm_backlight@fade.html
    - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#5354])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-6/igt@kms_pm_backlight@fade.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#9519])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-mtlp:         NOTRUN -> [SKIP][175] ([i915#6524])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-8/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#6524])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-2/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_properties@crtc-properties-atomic:
    - shard-dg2:          [PASS][177] -> [SKIP][178] ([i915#11521])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_properties@crtc-properties-atomic.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_properties@crtc-properties-atomic.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#9683])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-7/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-pr-sprite-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][180] ([i915#9688]) +2 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-2/igt@kms_psr@fbc-pr-sprite-blt.html

  * igt@kms_psr@fbc-psr-no-drrs:
    - shard-tglu:         NOTRUN -> [SKIP][181] ([i915#9732]) +14 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-4/igt@kms_psr@fbc-psr-no-drrs.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#1072] / [i915#9732]) +27 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-7/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_psr@psr-cursor-render:
    - shard-dg1:          NOTRUN -> [SKIP][183] ([i915#1072] / [i915#9732])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-17/igt@kms_psr@psr-cursor-render.html

  * igt@kms_psr@psr2-sprite-mmap-gtt:
    - shard-snb:          NOTRUN -> [SKIP][184] +76 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-snb1/igt@kms_psr@psr2-sprite-mmap-gtt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#9685]) +3 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#5289]) +1 other test skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
    - shard-tglu:         NOTRUN -> [SKIP][187] ([i915#5289]) +1 other test skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_setmode@basic:
    - shard-snb:          NOTRUN -> [FAIL][188] ([i915#5465]) +2 other tests fail
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-snb1/igt@kms_setmode@basic.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglu:         NOTRUN -> [SKIP][189] ([i915#8623])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-7/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_universal_plane@universal-plane-sanity:
    - shard-dg2:          [PASS][190] -> [SKIP][191] ([i915#9197]) +19 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_universal_plane@universal-plane-sanity.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_universal_plane@universal-plane-sanity.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#9906]) +1 other test skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@lobf:
    - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#11920])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-6/igt@kms_vrr@lobf.html
    - shard-tglu:         NOTRUN -> [SKIP][194] ([i915#11920])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_vrr@lobf.html

  * igt@kms_writeback@writeback-check-output:
    - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#2437])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-2/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-tglu:         NOTRUN -> [SKIP][196] ([i915#2437] / [i915#9412])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-4/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#8516])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-7/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-fence-read:
    - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#3291] / [i915#3708])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@prime_vgem@basic-fence-read.html

  * igt@syncobj_wait@invalid-wait-zero-handles:
    - shard-tglu:         NOTRUN -> [FAIL][199] ([i915#9781])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-4/igt@syncobj_wait@invalid-wait-zero-handles.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-idle-check-all:
    - shard-rkl:          [FAIL][200] ([i915#12179]) -> [PASS][201]
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [FAIL][202] ([i915#7742]) -> [PASS][203]
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@fbdev@unaligned-read:
    - shard-tglu:         [SKIP][204] ([i915#2582]) -> [PASS][205]
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@fbdev@unaligned-read.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@fbdev@unaligned-read.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [TIMEOUT][206] ([i915#5493]) -> [PASS][207] +1 other test pass
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_mmap_wc@set-cache-level:
    - shard-tglu:         [SKIP][208] ([i915#1850]) -> [PASS][209]
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@gem_mmap_wc@set-cache-level.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@gem_mmap_wc@set-cache-level.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          ([PASS][210], [ABORT][211]) ([i915#5566]) -> [PASS][212]
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk7/igt@gen9_exec_parse@allowed-single.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk4/igt@gen9_exec_parse@allowed-single.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-glk5/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [ABORT][213] ([i915#9820]) -> [PASS][214]
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-tglu:         [SKIP][215] -> [PASS][216] +40 other tests pass
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_joiner@invalid-modeset-force-joiner:
    - shard-dg2:          [SKIP][217] -> [PASS][218]
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-8/igt@kms_big_joiner@invalid-modeset-force-joiner.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-10/igt@kms_big_joiner@invalid-modeset-force-joiner.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          ([PASS][219], [FAIL][220]) ([i915#2346]) -> [PASS][221]
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_dirtyfb@default-dirtyfb-ioctl:
    - shard-dg1:          [DMESG-WARN][222] ([i915#4423]) -> [PASS][223] +1 other test pass
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-19/igt@kms_dirtyfb@default-dirtyfb-ioctl.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-15/igt@kms_dirtyfb@default-dirtyfb-ioctl.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-dg2:          [SKIP][224] ([i915#1849]) -> [PASS][225]
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_fbcon_fbt@fbc-suspend.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-plain-flip-fb-recreate:
    - shard-glk:          ([PASS][226], [FAIL][227]) ([i915#2122]) -> [PASS][228] +6 other tests pass
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-glk7/igt@kms_flip@2x-plain-flip-fb-recreate.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          ([FAIL][229], [FAIL][230]) ([i915#2122]) -> [PASS][231] +1 other test pass
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@dpms-off-confusion-interruptible:
    - shard-dg2:          [SKIP][232] ([i915#5354]) -> [PASS][233] +19 other tests pass
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_flip@dpms-off-confusion-interruptible.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-3/igt@kms_flip@dpms-off-confusion-interruptible.html

  * igt@kms_flip@flip-vs-dpms-off-vs-modeset:
    - shard-tglu:         [SKIP][234] ([i915#3637]) -> [PASS][235] +6 other tests pass
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_flip@flip-vs-dpms-off-vs-modeset.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-2/igt@kms_flip@flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@plain-flip-ts-check@b-vga1:
    - shard-snb:          [FAIL][236] ([i915#2122]) -> [PASS][237] +4 other tests pass
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-snb6/igt@kms_flip@plain-flip-ts-check@b-vga1.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-snb1/igt@kms_flip@plain-flip-ts-check@b-vga1.html

  * igt@kms_flip@plain-flip-ts-check@c-edp1:
    - shard-mtlp:         [FAIL][238] ([i915#2122]) -> [PASS][239]
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-mtlp-7/igt@kms_flip@plain-flip-ts-check@c-edp1.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-3/igt@kms_flip@plain-flip-ts-check@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check@c-hdmi-a4:
    - shard-dg1:          [FAIL][240] ([i915#2122]) -> [PASS][241]
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-14/igt@kms_flip@plain-flip-ts-check@c-hdmi-a4.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-18/igt@kms_flip@plain-flip-ts-check@c-hdmi-a4.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
    - shard-dg2:          [FAIL][242] ([i915#6880]) -> [PASS][243]
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_hdr@static-swap:
    - shard-dg2:          [SKIP][244] ([i915#3555] / [i915#8228]) -> [PASS][245]
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-8/igt@kms_hdr@static-swap.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-10/igt@kms_hdr@static-swap.html

  * igt@kms_invalid_mode@bad-hsync-end:
    - shard-dg2:          [SKIP][246] ([i915#3555]) -> [PASS][247] +5 other tests pass
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_invalid_mode@bad-hsync-end.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-3/igt@kms_invalid_mode@bad-hsync-end.html
    - shard-tglu:         [SKIP][248] ([i915#3555]) -> [PASS][249] +2 other tests pass
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_invalid_mode@bad-hsync-end.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-2/igt@kms_invalid_mode@bad-hsync-end.html

  * igt@kms_plane@plane-panning-bottom-right-suspend:
    - shard-dg2:          [SKIP][250] ([i915#8825]) -> [PASS][251]
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane@plane-panning-bottom-right-suspend.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@kms_plane@plane-panning-bottom-right-suspend.html

  * igt@kms_plane_alpha_blend@alpha-basic:
    - shard-dg2:          [SKIP][252] ([i915#7294]) -> [PASS][253] +1 other test pass
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-basic.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-4/igt@kms_plane_alpha_blend@alpha-basic.html

  * igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant:
    - shard-tglu:         [SKIP][254] ([i915#7294]) -> [PASS][255]
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers:
    - shard-dg2:          [SKIP][256] ([i915#12247] / [i915#8152] / [i915#9423]) -> [PASS][257] +2 other tests pass
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-1/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-d:
    - shard-dg2:          [SKIP][258] ([i915#12247] / [i915#8152]) -> [PASS][259] +5 other tests pass
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-d.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-1/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75:
    - shard-dg2:          [SKIP][260] ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][261]
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:
    - shard-tglu:         [SKIP][262] ([i915#12247] / [i915#3558] / [i915#8152]) -> [PASS][263]
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-b:
    - shard-tglu:         [SKIP][264] ([i915#12247]) -> [PASS][265] +2 other tests pass
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-b.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-b.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d:
    - shard-tglu:         [SKIP][266] ([i915#12247] / [i915#8152]) -> [PASS][267]
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
    - shard-dg2:          [SKIP][268] ([i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][269]
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
    - shard-dg2:          [SKIP][270] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][271]
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a:
    - shard-dg2:          [SKIP][272] ([i915#12247]) -> [PASS][273] +17 other tests pass
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu:         [FAIL][274] ([i915#9295]) -> [PASS][275]
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          [SKIP][276] ([i915#9340]) -> [PASS][277]
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@cursor-dpms:
    - shard-tglu:         [SKIP][278] ([i915#1849]) -> [PASS][279] +9 other tests pass
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_pm_rpm@cursor-dpms.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-2/igt@kms_pm_rpm@cursor-dpms.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg2:          [SKIP][280] ([i915#9519]) -> [PASS][281] +1 other test pass
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_pm_rpm@modeset-lpsp.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          [FAIL][282] ([IGT#2]) -> [PASS][283]
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_sysfs_edid_timing.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@ts-continuation-modeset:
    - shard-dg2:          [SKIP][284] ([i915#9197]) -> [PASS][285] +45 other tests pass
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_vblank@ts-continuation-modeset.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@kms_vblank@ts-continuation-modeset.html

  
#### Warnings ####

  * igt@i915_selftest@mock:
    - shard-dg1:          [DMESG-WARN][286] ([i915#1982] / [i915#9311]) -> [DMESG-WARN][287] ([i915#9311])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-19/igt@i915_selftest@mock.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-19/igt@i915_selftest@mock.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-dg2:          [SKIP][288] ([i915#9197]) -> [SKIP][289] ([i915#9531])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-4/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
    - shard-dg1:          [SKIP][290] ([i915#4423] / [i915#4538] / [i915#5286]) -> [SKIP][291] ([i915#4538] / [i915#5286])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-19/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-15/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [SKIP][292] -> [SKIP][293] ([i915#5286]) +2 other tests skip
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
    - shard-dg2:          [SKIP][294] ([i915#9197]) -> [SKIP][295] +2 other tests skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-4/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-dg2:          [SKIP][296] ([i915#5190] / [i915#9197]) -> [SKIP][297] ([i915#4538] / [i915#5190]) +8 other tests skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-4/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-dg2:          [SKIP][298] ([i915#5190] / [i915#9197]) -> [SKIP][299] ([i915#5190])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-3/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-dg2:          [SKIP][300] ([i915#4538] / [i915#5190]) -> [SKIP][301] ([i915#5190] / [i915#9197]) +4 other tests skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs:
    - shard-dg2:          [SKIP][302] ([i915#9197]) -> [SKIP][303] ([i915#10307] / [i915#6095]) +7 other tests skip
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc:
    - shard-dg2:          [SKIP][304] ([i915#10307] / [i915#6095]) -> [SKIP][305] ([i915#9197]) +5 other tests skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs:
    - shard-tglu:         [SKIP][306] -> [SKIP][307] ([i915#6095]) +12 other tests skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-2/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs.html

  * igt@kms_content_protection@content-type-change:
    - shard-tglu:         [SKIP][308] -> [SKIP][309] ([i915#6944] / [i915#9424])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_content_protection@content-type-change.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg2:          [SKIP][310] ([i915#3299]) -> [SKIP][311] ([i915#9197])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_content_protection@dp-mst-lic-type-0.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          [SKIP][312] ([i915#7118] / [i915#9424]) -> [TIMEOUT][313] ([i915#7173]) +1 other test timeout
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-4/igt@kms_content_protection@legacy.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-10/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic-type-1:
    - shard-dg2:          [SKIP][314] ([i915#9197]) -> [SKIP][315] ([i915#9424])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_content_protection@lic-type-1.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-4/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          [SKIP][316] ([i915#9433]) -> [SKIP][317] ([i915#9424])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-13/igt@kms_content_protection@mei-interface.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-19/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][318] ([i915#9197]) -> [SKIP][319] ([i915#7118] / [i915#9424])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_content_protection@type1.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-1/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-dg2:          [SKIP][320] ([i915#11453]) -> [SKIP][321] ([i915#11453] / [i915#3359])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-8/igt@kms_cursor_crc@cursor-offscreen-512x512.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-10/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          [SKIP][322] ([i915#11453] / [i915#3359]) -> [SKIP][323] ([i915#11453])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-10/igt@kms_cursor_crc@cursor-random-512x170.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-6/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-dg2:          [SKIP][324] ([i915#9197]) -> [SKIP][325] ([i915#11453]) +1 other test skip
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-1/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-tglu:         [SKIP][326] -> [SKIP][327] ([i915#3555]) +3 other tests skip
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_cursor_crc@cursor-sliding-32x10.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-dg2:          [SKIP][328] ([i915#11453]) -> [SKIP][329] ([i915#9197])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_cursor_crc@cursor-sliding-512x170.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-tglu:         [SKIP][330] -> [SKIP][331] ([i915#11453])
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_cursor_crc@cursor-sliding-512x512.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-10/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-dg2:          [SKIP][332] ([i915#4103] / [i915#4213]) -> [SKIP][333] ([i915#9197])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
    - shard-dg2:          [SKIP][334] ([i915#5354]) -> [SKIP][335] ([i915#9197])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-dg2:          [SKIP][336] ([i915#9197]) -> [SKIP][337] ([i915#5354]) +1 other test skip
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          ([FAIL][338], [PASS][339]) ([i915#2346]) -> [FAIL][340] ([i915#2346])
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg2:          [SKIP][341] ([i915#9197]) -> [SKIP][342] ([i915#4103] / [i915#4213])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-tglu:         [SKIP][343] -> [SKIP][344] ([i915#4103])
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-tglu:         [SKIP][345] -> [SKIP][346] ([i915#9723])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-10/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-dg2:          [SKIP][347] ([i915#9197]) -> [SKIP][348] ([i915#3555]) +3 other tests skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          [SKIP][349] ([i915#3555]) -> [SKIP][350] ([i915#9197]) +3 other tests skip
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-dg2:          [SKIP][351] ([i915#9197]) -> [SKIP][352] ([i915#8812])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg2:          [SKIP][353] ([i915#9197]) -> [SKIP][354] ([i915#3555] / [i915#3840])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_dsc@dsc-basic.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-3/igt@kms_dsc@dsc-basic.html
    - shard-tglu:         [SKIP][355] -> [SKIP][356] ([i915#3555] / [i915#3840]) +1 other test skip
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_dsc@dsc-basic.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-2/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-tglu:         [SKIP][357] -> [SKIP][358] ([i915#3840])
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_dsc@dsc-fractional-bpp.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-10/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-dg2:          [SKIP][359] ([i915#3555] / [i915#3840]) -> [SKIP][360] ([i915#9197])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_dsc@dsc-with-formats.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-glk:          ([FAIL][361], [PASS][362]) ([i915#2122]) -> [FAIL][363] ([i915#2122]) +1 other test fail
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk5/igt@kms_flip@plain-flip-ts-check.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk7/igt@kms_flip@plain-flip-ts-check.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-glk9/igt@kms_flip@plain-flip-ts-check.html
    - shard-dg2:          [SKIP][364] ([i915#5354]) -> [FAIL][365] ([i915#2122])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_flip@plain-flip-ts-check.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-tglu:         [SKIP][366] ([i915#3555]) -> [SKIP][367] ([i915#2672] / [i915#3555]) +2 other tests skip
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-dg2:          [SKIP][368] ([i915#3555] / [i915#5190]) -> [SKIP][369] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
    - shard-tglu:         [SKIP][370] ([i915#3555]) -> [SKIP][371] ([i915#2587] / [i915#2672] / [i915#3555])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:
    - shard-dg2:          [SKIP][372] ([i915#3555]) -> [SKIP][373] ([i915#2672] / [i915#3555]) +2 other tests skip
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
    - shard-dg2:          [SKIP][374] ([i915#3458]) -> [SKIP][375] ([i915#5354]) +6 other tests skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-dg1:          [SKIP][376] ([i915#3458]) -> [SKIP][377] ([i915#3458] / [i915#4423]) +1 other test skip
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt:
    - shard-dg2:          [SKIP][378] -> [SKIP][379] ([i915#5354]) +7 other tests skip
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:
    - shard-dg2:          [SKIP][380] ([i915#3458]) -> [SKIP][381] ([i915#10433] / [i915#3458]) +1 other test skip
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-tglu:         [SKIP][382] ([i915#1849]) -> [SKIP][383] ([i915#9766])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-10/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][384] ([i915#10433] / [i915#3458]) -> [SKIP][385] ([i915#3458])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:
    - shard-tglu:         [SKIP][386] ([i915#1849]) -> [SKIP][387] +42 other tests skip
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-dg2:          [SKIP][388] ([i915#5354]) -> [SKIP][389] ([i915#3458]) +16 other tests skip
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-rte.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          [SKIP][390] ([i915#5354]) -> [SKIP][391] ([i915#10433] / [i915#3458]) +1 other test skip
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-tglu:         [SKIP][392] -> [SKIP][393] ([i915#3555] / [i915#8228])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_hdr@bpc-switch-dpms.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-dg2:          [SKIP][394] ([i915#9197]) -> [SKIP][395] ([i915#3555] / [i915#8228])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_hdr@invalid-metadata-sizes.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-1/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-dg2:          [SKIP][396] ([i915#6301]) -> [SKIP][397] ([i915#9197])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_panel_fitting@atomic-fastset.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_panel_fitting@legacy:
    - shard-tglu:         [SKIP][398] -> [SKIP][399] ([i915#6301])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_panel_fitting@legacy.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20:
    - shard-dg2:          [SKIP][400] ([i915#12247] / [i915#8152] / [i915#9423]) -> [SKIP][401] ([i915#12247] / [i915#9423])
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d:
    - shard-dg2:          [SKIP][402] ([i915#12247] / [i915#8152]) -> [SKIP][403] ([i915#12247])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
    - shard-tglu:         [SKIP][404] ([i915#12247] / [i915#6953] / [i915#8152]) -> [SKIP][405] ([i915#12247] / [i915#6953])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-10/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d:
    - shard-tglu:         [SKIP][406] ([i915#12247] / [i915#8152]) -> [SKIP][407] ([i915#12247]) +6 other tests skip
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-10/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-dg2:          [SKIP][408] ([i915#11131] / [i915#4235]) -> [SKIP][409] ([i915#11131])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-10/igt@kms_rotation_crc@primary-rotation-270.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-6/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          [SKIP][410] ([i915#5190] / [i915#9197]) -> [SKIP][411] ([i915#11131] / [i915#5190])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-dg2:          [SKIP][412] ([i915#9197]) -> [SKIP][413] ([i915#8623]) +1 other test skip
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_tiled_display@basic-test-pattern.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vrr@negative-basic:
    - shard-tglu:         [SKIP][414] -> [SKIP][415] ([i915#3555] / [i915#9906])
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_vrr@negative-basic.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-10/igt@kms_vrr@negative-basic.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-dg2:          [SKIP][416] ([i915#9197]) -> [SKIP][417] ([i915#9906]) +1 other test skip
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_vrr@seamless-rr-switch-vrr.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@kms_vrr@seamless-rr-switch-vrr.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10887]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
  [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
  [i915#11131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131
  [i915#11453]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
  [i915#11521]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521
  [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
  [i915#11961]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11961
  [i915#11980]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11980
  [i915#12179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12179
  [i915#12193]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12193
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1850
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#3966]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3966
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4565]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4565
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5465]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465
  [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
  [i915#5566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
  [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
  [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
  [i915#7297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297
  [i915#7484]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7484
  [i915#7742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742
  [i915#7828]: https://gitlab.freede

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/index.html

--===============7040047246491314734==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remove unused underrun interrupt bits (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/139090/">https://patchwork.freedesktop.org/series/139090/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15453_full -&gt; Patchwork_139090v2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_139090v2_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_139090v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (9 -&gt; 8)</h2>
<p>Missing    (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_139090v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html">SKIP</a> +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc.html">INCOMPLETE</a> +4 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-7/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-4/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880">i915#6880</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7484">i915#7484</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@device_reset@cold-reset-bound:<ul>
<li>{shard-tglu-1}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-1/igt@device_reset@cold-reset-bound.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139090v2_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf_sync_file@import-multiple-read-write:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-14/igt@dmabuf_sync_file@import-multiple-read-write.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2295">i915#2295</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-16/igt@drm_fdinfo@virtual-busy-hang.html">SKIP</a> ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / [i915#9323])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@gem_ccs@block-copy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / [i915#9323])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-2/igt@gem_ccs@block-copy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-2/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-4/igt@gem_ccs@suspend-resume.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-6/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297">i915#7297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@gem_ctx_persistence@hostile.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11980">i915#11980</a>)</li>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-snb1/igt@gem_ctx_persistence@hostile.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-7/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-4/igt@gem_eio@hibernate.html">ABORT</a> ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-7/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334">i915#6334</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-2/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-2/igt@gem_exec_fair@basic-throttle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-2/igt@gem_exec_fair@basic-throttle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit3:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-8/igt@gem_exec_fence@submit3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-14/igt@gem_exec_flush@basic-wb-rw-before-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3-devices:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-15/igt@gem_exec_suspend@basic-s3-devices.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-16/igt@gem_exec_suspend@basic-s3-devices.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) +3 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-7/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-17/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12193">i915#12193</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-4/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-17/igt@gem_lmem_swapping@verify-ccs@lmem0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4565">i915#4565</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@gem_media_vme.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284">i915#284</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-read-write:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-4/igt@gem_mmap_gtt@basic-read-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-offset:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-4/igt@gem_mmap_wc@bad-offset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@gem_pxp@create-protected-buffer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-2/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-6/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +2 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-glk7/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-16/igt@gen9_exec_parse@bb-large.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-6/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +4 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@gen9_exec_parse@secure-batches.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-4/igt@gen9_exec_parse@secure-batches.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk3/igt@i915_module_load@reload-with-fault-injection.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk5/igt@i915_module_load@reload-with-fault-injection.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-glk7/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a> ([i915#8399]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a> ([i915#8709]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs.html">SKIP</a> ([i915#8709]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-snb7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-snb7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +7 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-16/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-7/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-16/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-4/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +107 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-10/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +96 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +95 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-2/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +65 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213">i915#7213</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-10/igt@kms_cdclk@plane-scaling@pipe-c-dp-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@dp-audio:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-4/igt@kms_chamelium_audio@dp-audio.html">SKIP</a> (<a href="https://gitlab.freede">i915#7828</a>) +7 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-4/igt@kms_chamelium_audio@dp-audio.html">SKIP</a> (<a href="https://gitlab.freede">i915#7828</a>) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_chamelium_audio@dp-audio.html">SKIP</a> (<a href="https://gitlab.freede">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-16/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html">SKIP</a> (<a href="https://gitlab.freede">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html">SKIP</a> (<a href="https://gitlab.freede">i915#7828</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-4/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-10/igt@kms_content_protection@legacy@pipe-a-dp-3.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-4/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#9424]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-7/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@kms_content_protection@uevent.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-4/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-12/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-7/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html">SKIP</a> ([i915#9809]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> +33 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-14/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@kms_dp_aux_dev.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-6/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-2/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-4/igt@kms_dsc@dsc-with-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-7/igt@kms_feature_discovery@chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@kms_feature_discovery@display-2x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-7/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-7/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-7/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html">SKIP</a></li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_flip@2x-flip-vs-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3966">i915#3966</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-7/igt@kms_flip@2x-plain-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-4/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-1/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>)</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-4/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-1/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11961">i915#11961</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@kms_flip@plain-flip-ts-check@c-hdmi-a3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-16/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-16/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +3 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +44 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +33 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a> +61 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-16/igt@kms_hdr@invalid-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / [i915#8228]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_invalid_mode@zero-clock.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-4/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_plane@plane-position-covered.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_plane@plane-position-covered.html">SKIP</a> ([i915#8825])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@coverage-7efc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_plane_alpha_blend@coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_plane_alpha_blend@coverage-7efc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk7/igt@kms_plane_scaling@intel-max-src-size.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk5/igt@kms_plane_scaling@intel-max-src-size.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-glk1/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-14/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">SKIP</a> ([i915#8152] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html">SKIP</a> ([i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_pm_backlight@fade.html">SKIP</a> ([i915#9812])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-6/igt@kms_pm_backlight@fade.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-8/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-2/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_properties@crtc-properties-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_properties@crtc-properties-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_properties@crtc-properties-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521">i915#11521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-7/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-sprite-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-2/igt@kms_psr@fbc-pr-sprite-blt.html">SKIP</a> ([i915#9688]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-no-drrs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-4/igt@kms_psr@fbc-psr-no-drrs.html">SKIP</a> ([i915#9732]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-7/igt@kms_psr@fbc-psr2-sprite-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / [i915#9732]) +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-17/igt@kms_psr@psr-cursor-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / [i915#9732])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-snb1/igt@kms_psr@psr2-sprite-mmap-gtt.html">SKIP</a> +76 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> ([i915#9685]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-snb1/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465">i915#5465</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-7/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-sanity:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_universal_plane@universal-plane-sanity.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_universal_plane@universal-plane-sanity.html">SKIP</a> ([i915#9197]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> ([i915#9906]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@lobf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-6/igt@kms_vrr@lobf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920">i915#11920</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_vrr@lobf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920">i915#11920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-2/igt@kms_writeback@writeback-check-output.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-4/igt@kms_writeback@writeback-check-output-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-7/igt@perf_pmu@rc6@other-idle-gt0.html">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-5/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-4/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a> ([i915#9781])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12179">i915#12179</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742">i915#7742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@fbdev@unaligned-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@fbdev@unaligned-read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493">i915#5493</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@gem_mmap_wc@set-cache-level.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1850">i915#1850</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@gem_mmap_wc@set-cache-level.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk7/igt@gen9_exec_parse@allowed-single.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk4/igt@gen9_exec_parse@allowed-single.html">ABORT</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566">i915#5566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-glk5/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">PASS</a> +40 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset-force-joiner:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-8/igt@kms_big_joiner@invalid-modeset-force-joiner.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-10/igt@kms_big_joiner@invalid-modeset-force-joiner.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@default-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-19/igt@kms_dirtyfb@default-dirtyfb-ioctl.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-15/igt@kms_dirtyfb@default-dirtyfb-ioctl.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_fbcon_fbt@fbc-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-glk7/igt@kms_flip@2x-plain-flip-fb-recreate.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-off-confusion-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_flip@dpms-off-confusion-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-3/igt@kms_flip@dpms-off-confusion-interruptible.html">PASS</a> +19 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_flip@flip-vs-dpms-off-vs-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-2/igt@kms_flip@flip-vs-dpms-off-vs-modeset.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@b-vga1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-snb6/igt@kms_flip@plain-flip-ts-check@b-vga1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-snb1/igt@kms_flip@plain-flip-ts-check@b-vga1.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-mtlp-7/igt@kms_flip@plain-flip-ts-check@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-mtlp-3/igt@kms_flip@plain-flip-ts-check@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-14/igt@kms_flip@plain-flip-ts-check@c-hdmi-a4.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-18/igt@kms_flip@plain-flip-ts-check@c-hdmi-a4.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880">i915#6880</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-8/igt@kms_hdr@static-swap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / [i915#8228]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-10/igt@kms_hdr@static-swap.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_invalid_mode@bad-hsync-end.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-3/igt@kms_invalid_mode@bad-hsync-end.html">PASS</a> +5 other tests pass</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_invalid_mode@bad-hsync-end.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-2/igt@kms_invalid_mode@bad-hsync-end.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane@plane-panning-bottom-right-suspend.html">SKIP</a> ([i915#8825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@kms_plane@plane-panning-bottom-right-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-4/igt@kms_plane_alpha_blend@alpha-basic.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-1/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-1/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-d.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3558">i915#3558</a> / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-b:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-b.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html">PASS</a> +17 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> ([i915#9295]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> ([i915#9340]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@cursor-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_pm_rpm@cursor-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-2/igt@kms_pm_rpm@cursor-dpms.html">PASS</a> +9 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_sysfs_edid_timing.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2">IGT#2</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_sysfs_edid_timing.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-modeset:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_vblank@ts-continuation-modeset.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@kms_vblank@ts-continuation-modeset.html">PASS</a> +45 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-19/igt@i915_selftest@mock.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a> / [i915#9311]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-19/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915#9311])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-4/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-19/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-15/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-4/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-4/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-3/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / [i915#9197]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> ([i915#9197]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-2/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_content_protection@content-type-change.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_content_protection@content-type-change.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-4/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / [i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-10/igt@kms_content_protection@legacy.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_content_protection@lic-type-1.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-4/igt@kms_content_protection@lic-type-1.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-13/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#9433]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-19/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_content_protection@type1.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-1/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-8/igt@kms_cursor_crc@cursor-offscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-10/igt@kms_cursor_crc@cursor-offscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-10/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359">i915#3359</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-6/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-1/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-10/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-10/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> ([i915#9723])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a> ([i915#9197]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-3/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_dsc@dsc-basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-2/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-10/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_dsc@dsc-with-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk5/igt@kms_flip@plain-flip-ts-check.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk7/igt@kms_flip@plain-flip-ts-check.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-glk9/igt@kms_flip@plain-flip-ts-check.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) +1 other test fail</li>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_flip@plain-flip-ts-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@kms_flip@plain-flip-ts-check.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-10/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> ([i915#9766])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html">SKIP</a> +42 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-rte:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-10/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-1/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-2/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_panel_fitting@legacy.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-6/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-10/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-10/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-10/igt@kms_rotation_crc@primary-rotation-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131">i915#11131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235">i915#4235</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-6/igt@kms_rotation_crc@primary-rotation-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131">i915#11131</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131">i915#11131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_tiled_display@basic-test-pattern.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@kms_tiled_display@basic-test-pattern.html">SKIP</a> ([i915#8623]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_vrr@negative-basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-tglu-10/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / [i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139090v2/shard-dg2-5/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> ([i915#9906]) +1 other test skip</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============7040047246491314734==--
