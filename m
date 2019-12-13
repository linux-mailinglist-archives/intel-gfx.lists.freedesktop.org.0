Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A6C11E3B2
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 13:40:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6E3C6E5D3;
	Fri, 13 Dec 2019 12:40:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A98026E5D3;
 Fri, 13 Dec 2019 12:40:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A0F96A0BC6;
 Fri, 13 Dec 2019 12:40:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Fernando Pacheco" <fernando.pacheco@intel.com>
Date: Fri, 13 Dec 2019 12:40:45 -0000
Message-ID: <157624084563.23798.11907714347531062791@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191212184359.16280-1-fernando.pacheco@intel.com>
In-Reply-To: <20191212184359.16280-1-fernando.pacheco@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/guc=3A_Provide_mmio_list_t?=
 =?utf-8?q?o_be_saved/restored_on_engine_reset?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/2] drm/i915/guc: Provide mmio list to be saved/restored on engine reset
URL   : https://patchwork.freedesktop.org/series/70844/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7552_full -> Patchwork_15727_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15727_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15727_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15727_full:

### IGT changes ###

#### Possible regressions ####

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-hsw8/igt@prime_mmap_coherency@ioctl-errors.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-hsw6/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_mmap_offset@clear}:
    - shard-iclb:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-iclb1/igt@gem_mmap_offset@clear.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-iclb7/igt@gem_mmap_offset@clear.html

  
Known issues
------------

  Here are the changes found in Patchwork_15727_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vcs1-mixed:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-iclb5/igt@gem_ctx_persistence@vcs1-mixed.html

  * igt@gem_exec_balancer@bonded-slice:
    - shard-kbl:          [PASS][7] -> [FAIL][8] ([i915#800])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-kbl3/igt@gem_exec_balancer@bonded-slice.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-kbl6/igt@gem_exec_balancer@bonded-slice.html
    - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#800])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-iclb6/igt@gem_exec_balancer@bonded-slice.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-iclb2/igt@gem_exec_balancer@bonded-slice.html
    - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#800])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-tglb1/igt@gem_exec_balancer@bonded-slice.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-tglb4/igt@gem_exec_balancer@bonded-slice.html

  * igt@gem_exec_parse_blt@allowed-all:
    - shard-glk:          [PASS][13] -> [DMESG-WARN][14] ([i915#716])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-glk9/igt@gem_exec_parse_blt@allowed-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-glk3/igt@gem_exec_parse_blt@allowed-all.html
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#716])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-kbl4/igt@gem_exec_parse_blt@allowed-all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-kbl4/igt@gem_exec_parse_blt@allowed-all.html

  * igt@gem_exec_schedule@in-order-bsd2:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109276]) +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-iclb1/igt@gem_exec_schedule@in-order-bsd2.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-iclb8/igt@gem_exec_schedule@in-order-bsd2.html

  * igt@gem_exec_schedule@preempt-hang-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112146])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-iclb6/igt@gem_exec_schedule@preempt-hang-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-iclb2/igt@gem_exec_schedule@preempt-hang-bsd.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-iclb:         [PASS][21] -> [DMESG-WARN][22] ([fdo#111764])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-iclb5/igt@gem_exec_suspend@basic-s0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-iclb3/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-apl2/igt@gem_softpin@noreloc-s3.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-apl4/igt@gem_softpin@noreloc-s3.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [PASS][25] -> [FAIL][26] ([i915#818])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-hsw6/igt@gem_tiled_blits@normal.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-hsw5/igt@gem_tiled_blits@normal.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-snb:          [PASS][27] -> [DMESG-WARN][28] ([fdo#111870])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-snb2/igt@gem_userptr_blits@sync-unmap-after-close.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-snb7/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#69])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-skl6/igt@gem_workarounds@suspend-resume-context.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-skl3/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [PASS][31] -> [INCOMPLETE][32] ([i915#455])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-tglb4/igt@i915_selftest@live_gt_timelines.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-tglb8/igt@i915_selftest@live_gt_timelines.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#747])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-kbl6/igt@i915_selftest@mock_sanitycheck.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-kbl6/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_ccs@pipe-a-crc-primary-basic:
    - shard-kbl:          [PASS][35] -> [INCOMPLETE][36] ([fdo#103665] / [i915#667])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-kbl4/igt@kms_ccs@pipe-a-crc-primary-basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-kbl3/igt@kms_ccs@pipe-a-crc-primary-basic.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#54]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][39] -> [FAIL][40] ([i915#72])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#177] / [i915#52] / [i915#54])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-skl5/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-skl6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc:
    - shard-tglb:         [PASS][43] -> [INCOMPLETE][44] ([i915#474] / [i915#667])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][45] -> [FAIL][46] ([i915#49]) +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [PASS][47] -> [INCOMPLETE][48] ([fdo#112391] / [i915#648] / [i915#667])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-skl2/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-skl8/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][49] -> [DMESG-WARN][50] ([i915#180])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([fdo#108145])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([fdo#108145] / [i915#265])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-tglb:         [PASS][55] -> [INCOMPLETE][56] ([i915#456] / [i915#460]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-tglb2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-tglb7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@semaphore-busy-vcs1:
    - shard-iclb:         [PASS][57] -> [SKIP][58] ([fdo#112080])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-iclb1/igt@perf_pmu@semaphore-busy-vcs1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-iclb8/igt@perf_pmu@semaphore-busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-reset:
    - shard-iclb:         [SKIP][59] ([fdo#109276] / [fdo#112080]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-iclb6/igt@gem_ctx_isolation@vcs1-reset.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-iclb2/igt@gem_ctx_isolation@vcs1-reset.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-skl:          [FAIL][61] ([i915#679]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-skl5/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-skl7/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [INCOMPLETE][63] ([i915#435]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-tglb3/igt@gem_exec_nop@basic-series.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-tglb8/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_parallel@vcs1-contexts:
    - shard-kbl:          [INCOMPLETE][65] ([fdo#103665]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-kbl1/igt@gem_exec_parallel@vcs1-contexts.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-kbl6/igt@gem_exec_parallel@vcs1-contexts.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][67] ([fdo#112080]) -> [PASS][68] +7 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][69] ([fdo#112146]) -> [PASS][70] +4 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][71] ([fdo#109276]) -> [PASS][72] +8 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-snb:          [TIMEOUT][73] ([i915#530]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-snb7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-snb5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-tglb:         [FAIL][75] ([i915#520]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-tglb4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-tglb4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][77] ([i915#644]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-apl:          [FAIL][79] ([i915#644]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [FAIL][81] ([i915#644]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-kbl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-kbl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][83] ([i915#435] / [i915#472]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-tglb8/igt@gem_sync@basic-store-each.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-tglb2/igt@gem_sync@basic-store-each.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-snb:          [DMESG-WARN][85] ([fdo#111870]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-snb5/igt@gem_userptr_blits@dmabuf-unsync.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-snb2/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-skl:          [INCOMPLETE][87] ([i915#69]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-skl8/igt@gem_workarounds@suspend-resume-fd.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-skl8/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][89] ([i915#180]) -> [PASS][90] +11 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding:
    - shard-skl:          [FAIL][91] ([i915#54]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][93] ([i915#456] / [i915#460]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-tglb2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:
    - shard-skl:          [INCOMPLETE][95] ([i915#646] / [i915#667]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-skl6/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled:
    - shard-skl:          [FAIL][97] ([i915#52] / [i915#54]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
    - shard-skl:          [INCOMPLETE][99] ([i915#646]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-skl10/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled:
    - shard-skl:          [INCOMPLETE][101] -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-skl1/igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-skl8/igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [DMESG-WARN][103] ([i915#180]) -> [PASS][104] +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-apl1/igt@kms_flip@flip-vs-suspend.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-apl3/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [INCOMPLETE][105] ([fdo#103665] / [i915#600]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-tglb:         [INCOMPLETE][107] ([i915#474] / [i915#667]) -> [PASS][108] +2 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [FAIL][109] ([i915#49]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-iclb:         [INCOMPLETE][111] ([i915#123] / [i915#140]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-iclb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-iclb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-kbl:          [INCOMPLETE][113] ([fdo#103665] / [i915#648] / [i915#667]) -> [PASS][114] +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-kbl3/igt@kms_plane@pixel-format-pipe-a-planes.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-kbl1/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][115] ([i915#648]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-skl2/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-skl4/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][117] ([fdo#112391] / [i915#648] / [i915#667]) -> [PASS][118] +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-skl10/igt@kms_plane@pixel-format-pipe-b-planes.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-skl10/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane_lowres@pipe-c-tiling-none:
    - shard-kbl:          [DMESG-WARN][119] ([i915#56] / [i915#78]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-kbl2/igt@kms_plane_lowres@pipe-c-tiling-none.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-kbl2/igt@kms_plane_lowres@pipe-c-tiling-none.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][121] ([fdo#109441]) -> [PASS][122] +3 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-iclb6/igt@kms_psr@psr2_cursor_render.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][123] ([i915#454]) -> [SKIP][124] ([i915#468])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#600]: https://gitlab.freedesktop.org/drm/intel/issues/600
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#646]: https://gitlab.freedesktop.org/drm/intel/issues/646
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#800]: https://gitlab.freedesktop.org/drm/intel/issues/800
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7552 -> Patchwork_15727

  CI-20190529: 20190529
  CI_DRM_7552: 491a86a34502ffa5da51c110638b9cbc7dbd25c6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5346: 466b0e6cbcbaccff012b484d1fd7676364b37b93 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15727: 951d3ce94a6aa212e268083d6ea04cc90a0e23a3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15727/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
