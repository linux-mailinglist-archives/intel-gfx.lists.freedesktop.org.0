Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E537111EF6B
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Dec 2019 02:02:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06F436E0A8;
	Sat, 14 Dec 2019 01:02:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 33F836E0A8;
 Sat, 14 Dec 2019 01:02:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2C5E4A0096;
 Sat, 14 Dec 2019 01:02:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Sat, 14 Dec 2019 01:02:49 -0000
Message-ID: <157628536915.13805.12436898523752850437@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191211110844.2996-1-jani.nikula@intel.com>
In-Reply-To: <20191211110844.2996-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_fix_pipe_D_readout_for_DSI_transcoders_=28rev2=29?=
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

Series: drm/i915/dsi: fix pipe D readout for DSI transcoders (rev2)
URL   : https://patchwork.freedesktop.org/series/70752/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7545_full -> Patchwork_15696_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15696_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb2/igt@gem_busy@extended-parallel-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-iclb3/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_persistence@vcs1-hostile-preempt:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb1/igt@gem_ctx_persistence@vcs1-hostile-preempt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-iclb6/igt@gem_ctx_persistence@vcs1-hostile-preempt.html

  * igt@gem_ctx_shared@q-smoketest-blt:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([fdo#111735])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb6/igt@gem_ctx_shared@q-smoketest-blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-tglb6/igt@gem_ctx_shared@q-smoketest-blt.html

  * igt@gem_eio@suspend:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#460])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb1/igt@gem_eio@suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-tglb3/igt@gem_eio@suspend.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +8 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-iclb4/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([fdo#111677])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#644])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-skl8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [PASS][17] -> [FAIL][18] ([i915#413])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb3/igt@i915_pm_rps@waitboost.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-tglb5/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([i915#747])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl2/igt@i915_selftest@mock_sanitycheck.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-skl4/igt@i915_selftest@mock_sanitycheck.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#456] / [i915#460])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-tglb3/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_color@pipe-a-ctm-max:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#109]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl7/igt@kms_color@pipe-a-ctm-max.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-skl8/igt@kms_color@pipe-a-ctm-max.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +8 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#54]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][29] -> [FAIL][30] ([i915#72])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
    - shard-skl:          [PASS][31] -> [INCOMPLETE][32] ([i915#435] / [i915#667])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl5/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-skl10/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-untiled:
    - shard-tglb:         [PASS][33] -> [INCOMPLETE][34] ([i915#435] / [i915#667])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb3/igt@kms_draw_crc@draw-method-xrgb8888-render-untiled.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-tglb9/igt@kms_draw_crc@draw-method-xrgb8888-render-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#79])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][37] -> [INCOMPLETE][38] ([i915#221])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl1/igt@kms_flip@flip-vs-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-skl10/igt@kms_flip@flip-vs-suspend.html
    - shard-kbl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180] / [i915#391])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-kbl1/igt@kms_flip@flip-vs-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-kbl7/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt:
    - shard-tglb:         [PASS][41] -> [INCOMPLETE][42] ([i915#474] / [i915#667]) +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [PASS][43] -> [INCOMPLETE][44] ([i915#456] / [i915#460] / [i915#474])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][45] -> [FAIL][46] ([i915#49]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
    - shard-tglb:         [PASS][47] -> [INCOMPLETE][48] ([i915#435] / [i915#474] / [i915#667])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-kbl:          [PASS][49] -> [INCOMPLETE][50] ([fdo#103665] / [i915#648] / [i915#667])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-kbl1/igt@kms_plane@pixel-format-pipe-b-planes.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-kbl2/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [PASS][51] -> [INCOMPLETE][52] ([fdo#112391] / [i915#648] / [i915#667])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl7/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-skl8/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
    - shard-kbl:          [PASS][53] -> [INCOMPLETE][54] ([fdo#103665] / [i915#435] / [i915#648] / [i915#667])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-kbl6/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-kbl6/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][55] -> [DMESG-WARN][56] ([i915#180]) +3 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][57] -> [SKIP][58] ([fdo#109441]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-iclb3/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][59] -> [FAIL][60] ([i915#31])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-hsw4/igt@kms_setmode@basic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-hsw8/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][61] ([fdo#109276] / [fdo#112080]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb7/igt@gem_ctx_persistence@vcs1-queued.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          [FAIL][63] ([i915#232]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-snb6/igt@gem_eio@unwedge-stress.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-snb7/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][65] ([fdo#112080]) -> [PASS][66] +4 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * {igt@gem_exec_schedule@pi-userfault-bsd2}:
    - shard-iclb:         [SKIP][67] ([fdo#109276]) -> [PASS][68] +5 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd2.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-blt:
    - shard-tglb:         [INCOMPLETE][69] ([fdo#111606] / [fdo#111677]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-blt.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-tglb4/igt@gem_exec_schedule@preempt-queue-contexts-blt.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][71] ([fdo#112146]) -> [PASS][72] +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-iclb:         [DMESG-WARN][73] ([fdo#111764]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb1/igt@gem_exec_suspend@basic-s0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-iclb6/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][75] ([i915#644]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][77] ([i915#472] / [i915#707]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb3/igt@gem_sync@basic-each.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-tglb5/igt@gem_sync@basic-each.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][79] ([i915#435] / [i915#472]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb7/igt@gem_sync@basic-store-each.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-tglb2/igt@gem_sync@basic-store-each.html

  * igt@gem_workarounds@suspend-resume:
    - shard-tglb:         [INCOMPLETE][81] ([i915#456] / [i915#460]) -> [PASS][82] +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb1/igt@gem_workarounds@suspend-resume.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-tglb1/igt@gem_workarounds@suspend-resume.html

  * igt@i915_selftest@live_requests:
    - shard-tglb:         [INCOMPLETE][83] ([fdo#112057]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb7/igt@i915_selftest@live_requests.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-tglb3/igt@i915_selftest@live_requests.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][85] ([i915#180]) -> [PASS][86] +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-skl:          [FAIL][87] ([i915#54]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-offscreen:
    - shard-hsw:          [DMESG-WARN][89] ([IGT#6]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-hsw6/igt@kms_cursor_crc@pipe-c-cursor-256x256-offscreen.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-hsw7/igt@kms_cursor_crc@pipe-c-cursor-256x256-offscreen.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [FAIL][91] ([i915#96]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-hsw2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][93] ([i915#79]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-snb:          [INCOMPLETE][95] ([i915#82]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-snb1/igt@kms_flip@flip-vs-suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-snb2/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-interruptible:
    - shard-hsw:          [INCOMPLETE][97] ([i915#61]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-hsw2/igt@kms_flip@plain-flip-interruptible.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-hsw5/igt@kms_flip@plain-flip-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100] +5 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
    - shard-tglb:         [FAIL][101] ([i915#49]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][103] ([i915#648] / [i915#667]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl7/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-skl3/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][105] ([fdo#108145]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_sequence@get-forked-busy:
    - shard-snb:          [SKIP][107] ([fdo#109271]) -> [PASS][108] +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-snb2/igt@kms_sequence@get-forked-busy.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-snb5/igt@kms_sequence@get-forked-busy.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][109] ([i915#31]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-apl1/igt@kms_setmode@basic.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-apl7/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-nonpriv-switch:
    - shard-tglb:         [SKIP][111] ([fdo#111912] / [fdo#112080]) -> [SKIP][112] ([fdo#112080]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb8/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html

  * igt@gem_eio@kms:
    - shard-snb:          [DMESG-WARN][113] ([i915#444]) -> [INCOMPLETE][114] ([i915#82])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-snb6/igt@gem_eio@kms.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-snb6/igt@gem_eio@kms.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][115] ([fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][116] ([fdo#112347] / [i915#648] / [i915#667])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl10/igt@kms_plane@pixel-format-pipe-b-planes.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/shard-skl5/igt@kms_plane@pixel-format-pipe-b-planes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112057]: https://bugs.freedesktop.org/show_bug.cgi?id=112057
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#391]: https://gitlab.freedesktop.org/drm/intel/issues/391
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7545 -> Patchwork_15696

  CI-20190529: 20190529
  CI_DRM_7545: b1b808dff985c3c2050b20771050453589a60ca3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5346: 466b0e6cbcbaccff012b484d1fd7676364b37b93 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15696: c5f9030e65609f3eca86017e488ae5dd46a79a78 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15696/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
