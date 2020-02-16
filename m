Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE1A160439
	for <lists+intel-gfx@lfdr.de>; Sun, 16 Feb 2020 15:03:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCFDD6E356;
	Sun, 16 Feb 2020 14:03:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6510E6E31D;
 Sun, 16 Feb 2020 14:03:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5C542A0094;
 Sun, 16 Feb 2020 14:03:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Sun, 16 Feb 2020 14:03:28 -0000
Message-ID: <158186180834.23348.8244912911982983954@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200212152525.23108-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200212152525.23108-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Ensure_no_conflicts_with_BIOS_when_updating_Dbuf?=
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

Series: drm/i915: Ensure no conflicts with BIOS when updating Dbuf
URL   : https://patchwork.freedesktop.org/series/73369/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7926_full -> Patchwork_16545_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16545_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +10 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-iclb7/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276]) +15 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb4/igt@gem_exec_schedule@out-order-bsd2.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-iclb5/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb7/igt@gem_exec_schedule@reorder-wide-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#644])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-apl:          [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#183])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-kbl1/igt@gem_tiled_swapping@non-threaded.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-kbl7/igt@gem_tiled_swapping@non-threaded.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +6 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-apl7/igt@gem_workarounds@suspend-resume-context.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-apl4/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-kbl6/igt@i915_suspend@sysfs-reader.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-kbl2/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-random:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#54])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([IGT#5])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_frontbuffer_tracking@basic:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#49])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl2/igt@kms_frontbuffer_tracking@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-skl4/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145] / [i915#265])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109642] / [fdo#111068])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-iclb1/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@perf@short-reads:
    - shard-glk:          [PASS][33] -> [TIMEOUT][34] ([fdo#112271] / [i915#51])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-glk4/igt@perf@short-reads.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-glk7/igt@perf@short-reads.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-hsw:          [PASS][35] -> [INCOMPLETE][36] ([i915#1176] / [i915#61])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw7/igt@perf_pmu@cpu-hotplug.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-hsw5/igt@perf_pmu@cpu-hotplug.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [PASS][37] -> [FAIL][38] ([i915#831])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw1/igt@prime_mmap_coherency@ioctl-errors.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-hsw6/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Possible fixes ####

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][39] ([fdo#110841]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][41] ([i915#677]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-iclb7/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +6 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb4/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-iclb7/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [FAIL][45] ([i915#644]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-kbl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [INCOMPLETE][47] ([i915#716]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl9/igt@gen9_exec_parse@allowed-single.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-skl1/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [INCOMPLETE][49] ([fdo#103665] / [fdo#112219]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-kbl4/igt@i915_suspend@forcewake.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-kbl7/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-tglb:         [FAIL][51] ([fdo#111703]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +3 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-a-128x128-left-edge:
    - shard-tglb:         [FAIL][55] ([i915#70]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-tglb1/igt@kms_cursor_edge_walk@pipe-a-128x128-left-edge.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-tglb5/igt@kms_cursor_edge_walk@pipe-a-128x128-left-edge.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-tglb:         [DMESG-FAIL][57] ([i915#402]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-tglb2/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-tglb7/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:
    - shard-tglb:         [FAIL][59] ([i915#559]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-tglb3/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-tglb3/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][61] ([i915#34]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
    - shard-skl:          [FAIL][63] ([i915#49]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html

  * {igt@kms_hdr@bpc-switch-dpms}:
    - shard-skl:          [FAIL][65] ([i915#1188]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-skl:          [FAIL][67] ([i915#53]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-skl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][69] ([i915#180]) -> [PASS][70] +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][71] ([fdo#108145]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][73] ([fdo#108145] / [i915#265]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-256:
    - shard-tglb:         [FAIL][75] ([i915#1139]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-tglb7/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-tglb8/igt@kms_plane_cursor@pipe-a-overlay-size-256.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][77] ([fdo#109441]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb1/igt@kms_psr@psr2_no_drrs.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][79] ([i915#31]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-apl7/igt@kms_setmode@basic.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-apl7/igt@kms_setmode@basic.html
    - shard-hsw:          [FAIL][81] ([i915#31]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw1/igt@kms_setmode@basic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-hsw5/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][83] ([fdo#112080]) -> [PASS][84] +14 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb8/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][85] ([fdo#109276]) -> [PASS][86] +18 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb7/igt@prime_busy@hang-bsd2.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-iclb1/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][87] ([fdo#112080]) -> [FAIL][88] ([IGT#28])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][89] ([i915#818]) -> [FAIL][90] ([i915#694])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw2/igt@gem_tiled_blits@interruptible.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-hsw5/igt@gem_tiled_blits@interruptible.html

  * igt@runner@aborted:
    - shard-hsw:          [FAIL][91] ([i915#974]) -> ([FAIL][92], [FAIL][93]) ([i915#1176] / [i915#974])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw2/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-hsw6/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/shard-hsw5/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111703]: https://bugs.freedesktop.org/show_bug.cgi?id=111703
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112219]: https://bugs.freedesktop.org/show_bug.cgi?id=112219
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1139]: https://gitlab.freedesktop.org/drm/intel/issues/1139
  [i915#1176]: https://gitlab.freedesktop.org/drm/intel/issues/1176
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#183]: https://gitlab.freedesktop.org/drm/intel/issues/183
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#559]: https://gitlab.freedesktop.org/drm/intel/issues/559
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [i915#974]: https://gitlab.freedesktop.org/drm/intel/issues/974


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7926 -> Patchwork_16545

  CI-20190529: 20190529
  CI_DRM_7926: 6b2fe829d300abf285e9db8b252ffacd216df3ed @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5437: ae42fedfd0c536c560e8e17b06d9c7b94a4e8f0c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16545: d4cfa34dac5fb3d3a2d8464e952923aa5c734cca @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16545/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
