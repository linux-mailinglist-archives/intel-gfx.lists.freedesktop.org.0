Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69ACC16A798
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 14:50:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F1F96E4DD;
	Mon, 24 Feb 2020 13:50:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AED3E6E4DE;
 Mon, 24 Feb 2020 13:50:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A774DA0087;
 Mon, 24 Feb 2020 13:50:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 24 Feb 2020 13:50:31 -0000
Message-ID: <158255223165.28363.14975985038861615194@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200221154310.14858-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200221154310.14858-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Correctly_terminate_connector_iteration?=
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

Series: drm/i915: Correctly terminate connector iteration
URL   : https://patchwork.freedesktop.org/series/73779/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7984_full -> Patchwork_16666_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16666_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][1] -> [FAIL][2] ([i915#1277])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-tglb6/igt@gem_exec_balancer@hang.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-tglb3/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276]) +21 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb2/igt@gem_exec_schedule@out-order-bsd2.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-iclb6/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb3/igt@gem_exec_schedule@reorder-wide-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl7/igt@gem_workarounds@suspend-resume-context.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-apl4/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:
    - shard-hsw:          [PASS][9] -> [FAIL][10] ([i915#54])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw2/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-hsw7/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-hsw:          [PASS][11] -> [FAIL][12] ([i915#46])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw7/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-hsw2/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#79]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#221])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#49])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [i915#265])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#899])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +9 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#112080]) +11 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb4/igt@perf_pmu@busy-vcs1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-iclb7/igt@perf_pmu@busy-vcs1.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-snb:          [PASS][29] -> [TIMEOUT][30] ([fdo#112271])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-snb2/igt@sw_sync@sync_multi_producer_single_consumer.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-snb5/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Possible fixes ####

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][31] ([i915#677]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][33] ([fdo#112146]) -> [PASS][34] +8 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [FAIL][35] ([i915#644]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-skl5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_blits@interruptible:
    - shard-glk:          [TIMEOUT][37] ([fdo#112271]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk6/igt@gem_tiled_blits@interruptible.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-glk5/igt@gem_tiled_blits@interruptible.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-glk:          [FAIL][39] -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk4/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-glk7/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-hsw:          [FAIL][41] ([i915#694]) -> [PASS][42] +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw4/igt@gen7_exec_parse@basic-offset.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-hsw5/igt@gen7_exec_parse@basic-offset.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][43] ([i915#447]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-iclb5/igt@i915_pm_dc@dc5-dpms.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-random:
    - shard-skl:          [FAIL][45] ([i915#54]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][47] ([i915#79]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk6/igt@kms_flip@flip-vs-expired-vblank.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-glk5/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-glk:          [FAIL][51] ([i915#34]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk5/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-glk2/igt@kms_flip@plain-flip-ts-check-interruptible.html
    - shard-kbl:          [INCOMPLETE][53] ([CI#80] / [fdo#103665]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl4/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-kbl3/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * {igt@kms_hdr@bpc-switch}:
    - shard-skl:          [FAIL][55] ([i915#1188]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl6/igt@kms_hdr@bpc-switch.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-skl5/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][59] ([i915#69]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][61] ([fdo#108145]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-tglb:         [SKIP][63] ([i915#668]) -> [PASS][64] +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-tglb5/igt@kms_psr@psr2_primary_mmap_gtt.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-tglb2/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][67] ([i915#31]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl3/igt@kms_setmode@basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-apl1/igt@kms_setmode@basic.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][69] ([fdo#112080]) -> [PASS][70] +9 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb6/igt@perf_pmu@init-busy-vcs1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-iclb4/igt@perf_pmu@init-busy-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][71] ([fdo#109276]) -> [PASS][72] +17 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-hsw:          [TIMEOUT][73] ([fdo#112271]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw2/igt@sw_sync@sync_multi_producer_single_consumer.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-hsw2/igt@sw_sync@sync_multi_producer_single_consumer.html
    - shard-apl:          [TIMEOUT][75] ([fdo#112271]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl4/igt@sw_sync@sync_multi_producer_single_consumer.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-apl8/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Warnings ####

  * igt@gem_exec_reuse@baggage:
    - shard-skl:          [TIMEOUT][77] ([fdo#112271]) -> [TIMEOUT][78] ([fdo#112271] / [i915#1084])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl5/igt@gem_exec_reuse@baggage.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-skl10/igt@gem_exec_reuse@baggage.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][79] ([i915#694]) -> [FAIL][80] ([i915#818])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw2/igt@gem_tiled_blits@normal.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-hsw2/igt@gem_tiled_blits@normal.html

  * igt@kms_content_protection@lic:
    - shard-kbl:          [TIMEOUT][81] ([fdo#112271]) -> [TIMEOUT][82] ([fdo#112271] / [i915#727])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl1/igt@kms_content_protection@lic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-kbl7/igt@kms_content_protection@lic.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:
    - shard-hsw:          [INCOMPLETE][83] ([CI#80] / [i915#61]) -> [INCOMPLETE][84] ([i915#61])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw7/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/shard-hsw7/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#727]: https://gitlab.freedesktop.org/drm/intel/issues/727
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7984 -> Patchwork_16666

  CI-20190529: 20190529
  CI_DRM_7984: ab1d770e389d9407be633b5afbe6859e0072ca9d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5458: 5f7e4ae6a91ed2c104593b8abd5b71a6cc96fc10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16666: 8b3ecb1c50c0d1fb615622b246093f202f0d1b08 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16666/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
