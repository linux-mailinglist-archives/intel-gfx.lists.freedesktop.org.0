Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F2F16A7AA
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 14:52:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD3256E4E6;
	Mon, 24 Feb 2020 13:52:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E2EAF6E4E6;
 Mon, 24 Feb 2020 13:52:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DBF33A8168;
 Mon, 24 Feb 2020 13:52:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Date: Mon, 24 Feb 2020 13:52:48 -0000
Message-ID: <158255236889.28361.6082070554488635395@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200219125910.89147-1-christian.koenig@amd.com>
In-Reply-To: <20200219125910.89147-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/7=5D_dma-buf=3A_add_dynamic_DMA-buf_hand?=
 =?utf-8?q?ling_v15_=28rev2=29?=
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

Series: series starting with [1/7] dma-buf: add dynamic DMA-buf handling v15 (rev2)
URL   : https://patchwork.freedesktop.org/series/73665/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7984_full -> Patchwork_16667_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16667_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +13 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#110841])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276]) +19 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb2/igt@gem_exec_schedule@out-order-bsd2.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-iclb7/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb8/igt@gem_exec_schedule@wide-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-iclb2/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +7 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl2/igt@gem_exec_suspend@basic-s3.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-kbl4/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-tglb2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-tglb6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl6/igt@gem_softpin@noreloc-s3.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-apl8/igt@gem_softpin@noreloc-s3.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#300])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#79])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
    - shard-snb:          [PASS][19] -> [SKIP][20] ([fdo#109271]) +4 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-snb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#49])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-slowdraw:
    - shard-tglb:         [PASS][23] -> [SKIP][24] ([i915#668]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-slowdraw.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-slowdraw.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145] / [i915#265])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-y:
    - shard-skl:          [PASS][27] -> [DMESG-WARN][28] ([IGT#6])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl8/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-skl10/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html

  * igt@kms_plane_scaling@pipe-c-plane-scaling:
    - shard-glk:          [PASS][29] -> [DMESG-WARN][30] ([i915#95])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk1/igt@kms_plane_scaling@pipe-c-plane-scaling.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-glk4/igt@kms_plane_scaling@pipe-c-plane-scaling.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#31])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl7/igt@kms_setmode@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-skl3/igt@kms_setmode@basic.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-tglb:         [PASS][35] -> [TIMEOUT][36] ([fdo#112271])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-tglb1/igt@sw_sync@sync_multi_producer_single_consumer.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-tglb5/igt@sw_sync@sync_multi_producer_single_consumer.html
    - shard-snb:          [PASS][37] -> [TIMEOUT][38] ([fdo#112271])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-snb2/igt@sw_sync@sync_multi_producer_single_consumer.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-snb6/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][39] ([fdo#112080]) -> [PASS][40] +11 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][41] ([i915#677]) -> [PASS][42] +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +6 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [FAIL][45] ([i915#644]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-skl2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_blits@interruptible:
    - shard-glk:          [TIMEOUT][47] ([fdo#112271]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk6/igt@gem_tiled_blits@interruptible.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-glk9/igt@gem_tiled_blits@interruptible.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-glk:          [FAIL][49] -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk4/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-glk2/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][51] ([i915#447]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-iclb6/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_selftest@mock_buddy:
    - shard-skl:          [INCOMPLETE][53] -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl3/igt@i915_selftest@mock_buddy.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-skl9/igt@i915_selftest@mock_buddy.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +5 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][57] ([i915#79]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk6/igt@kms_flip@flip-vs-expired-vblank.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-glk5/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-glk:          [FAIL][61] ([i915#34]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk5/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-glk8/igt@kms_flip@plain-flip-ts-check-interruptible.html
    - shard-kbl:          [INCOMPLETE][63] ([CI#80] / [fdo#103665]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl4/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-kbl3/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * {igt@kms_hdr@bpc-switch}:
    - shard-skl:          [FAIL][65] ([i915#1188]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl6/igt@kms_hdr@bpc-switch.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-skl10/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][67] ([i915#69]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-tglb:         [SKIP][69] ([i915#668]) -> [PASS][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-tglb5/igt@kms_psr@psr2_primary_mmap_gtt.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-tglb2/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][71] ([fdo#109441]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb8/igt@kms_psr@psr2_suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][73] ([fdo#109276]) -> [PASS][74] +16 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][75] ([fdo#112080]) -> [FAIL][76] ([IGT#28])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7984 -> Patchwork_16667

  CI-20190529: 20190529
  CI_DRM_7984: ab1d770e389d9407be633b5afbe6859e0072ca9d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5458: 5f7e4ae6a91ed2c104593b8abd5b71a6cc96fc10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16667: 2360e467ebfbd1863554ab3edecd5f5716404ad9 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16667/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
