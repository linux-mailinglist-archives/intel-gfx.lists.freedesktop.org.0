Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8344D129856
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 16:36:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BE5D89F19;
	Mon, 23 Dec 2019 15:36:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F08B089F08;
 Mon, 23 Dec 2019 15:36:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E8A24A363D;
 Mon, 23 Dec 2019 15:36:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 23 Dec 2019 15:36:35 -0000
Message-ID: <157711539592.16936.9009239180890045394@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191222144046.1674865-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191222144046.1674865-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915/gt=3A_Pull_intel=5Fgt?=
 =?utf-8?b?X2luaXRfaHcoKSBpbnRvIGludGVsX2d0X3Jlc3VtZSgp?=
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

Series: series starting with [CI,1/3] drm/i915/gt: Pull intel_gt_init_hw() into intel_gt_resume()
URL   : https://patchwork.freedesktop.org/series/71265/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7622_full -> Patchwork_15881_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15881_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@in-flight-suspend:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([i915#456] / [i915#460] / [i915#534])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-tglb7/igt@gem_eio@in-flight-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-tglb4/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@suspend:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([i915#460])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-tglb5/igt@gem_eio@suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-tglb4/igt@gem_eio@suspend.html

  * igt@gem_exec_await@wide-contexts:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([fdo#111736])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-tglb3/igt@gem_exec_await@wide-contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-tglb6/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_nop@basic-parallel:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#435])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-tglb2/igt@gem_exec_nop@basic-parallel.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-tglb3/igt@gem_exec_nop@basic-parallel.html

  * igt@gem_exec_schedule@preempt-queue-chain-render:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#111606] / [fdo#111677])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-tglb1/igt@gem_exec_schedule@preempt-queue-chain-render.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-render.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#463])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-tglb1/igt@gem_exec_schedule@smoketest-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#69])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-skl3/igt@gem_softpin@noreloc-s3.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-skl7/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-tglb2/igt@gem_sync@basic-store-all.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-tglb5/igt@gem_sync@basic-store-all.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-kbl4/igt@i915_suspend@forcewake.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-kbl6/igt@i915_suspend@forcewake.html

  * igt@kms_color@pipe-b-ctm-green-to-red:
    - shard-skl:          [PASS][21] -> [DMESG-WARN][22] ([i915#109])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-skl6/igt@kms_color@pipe-b-ctm-green-to-red.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-skl7/igt@kms_color@pipe-b-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-c-cursor-size-change:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#54])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-size-change.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-size-change.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#72])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-untiled:
    - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#646] / [i915#667])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-skl4/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#667])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-skl5/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#52] / [i915#54])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-skl4/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-skl5/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-kbl:          [PASS][33] -> [FAIL][34] ([i915#34])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-kbl7/igt@kms_flip@plain-flip-fb-recreate.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-kbl2/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-tglb:         [PASS][35] -> [INCOMPLETE][36] ([i915#474] / [i915#667])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180]) +4 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-tglb:         [INCOMPLETE][39] ([i915#456]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-tglb1/igt@gem_ctx_isolation@vcs0-s3.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-tglb2/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][41] ([fdo#111735]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-tglb6/igt@gem_ctx_shared@q-smoketest-vebox.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-tglb7/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [INCOMPLETE][43] ([i915#435]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-tglb4/igt@gem_exec_nop@basic-sequential.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-tglb2/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [INCOMPLETE][45] ([i915#470]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-tglb6/igt@gem_exec_parallel@fds.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-tglb3/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_schedule@preempt-queue-vebox:
    - shard-tglb:         [INCOMPLETE][47] ([fdo#111677]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-tglb6/igt@gem_exec_schedule@preempt-queue-vebox.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-tglb7/igt@gem_exec_schedule@preempt-queue-vebox.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [INCOMPLETE][49] ([i915#463]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-tglb3/igt@gem_exec_schedule@smoketest-all.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-tglb2/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-hsw:          [FAIL][51] ([i915#874]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-hsw7/igt@gem_pipe_control_store_loop@reused-buffer.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-hsw8/igt@gem_pipe_control_store_loop@reused-buffer.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-apl:          [DMESG-WARN][53] ([i915#716]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-apl7/igt@gen9_exec_parse@allowed-single.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-apl2/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [DMESG-WARN][55] ([i915#109]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-skl6/igt@kms_color@pipe-b-ctm-negative.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-skl4/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-skl:          [FAIL][57] ([i915#54]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +8 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:
    - shard-kbl:          [INCOMPLETE][61] ([fdo#103665] / [i915#667]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-kbl3/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-kbl4/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled:
    - shard-skl:          [INCOMPLETE][63] ([i915#435] / [i915#667]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-skl10/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][65] ([i915#34]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][67] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-tglb:         [INCOMPLETE][69] ([i915#435] / [i915#474] / [i915#667]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
    - shard-skl:          [FAIL][71] ([i915#49]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - shard-skl:          [FAIL][73] ([i915#53]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-skl5/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-skl1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][75] ([i915#69]) -> [PASS][76] +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][77] ([fdo#108145]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][79] ([fdo#108145] / [i915#265]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-tglb:         [INCOMPLETE][81] ([i915#456] / [i915#460]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/shard-tglb5/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/shard-tglb2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#534]: https://gitlab.freedesktop.org/drm/intel/issues/534
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#646]: https://gitlab.freedesktop.org/drm/intel/issues/646
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#874]: https://gitlab.freedesktop.org/drm/intel/issues/874


Participating hosts (9 -> 9)
------------------------------

  Additional (1): pig-skl-6260u 
  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7622 -> Patchwork_15881

  CI-20190529: 20190529
  CI_DRM_7622: f50651450e00d069b30c25508d0a3c47f7b6db35 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15881: 0b9f22e52d1499f8781ab562df8b277373ae6adc @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
