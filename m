Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F52121BB4
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 22:28:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 186E26E8AE;
	Mon, 16 Dec 2019 21:28:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BDE736E8AC;
 Mon, 16 Dec 2019 21:28:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B2C89A0BC6;
 Mon, 16 Dec 2019 21:28:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Mon, 16 Dec 2019 21:28:45 -0000
Message-ID: <157653172570.5612.16965439847181640583@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191216115158.862404-1-hdegoede@redhat.com>
In-Reply-To: <20191216115158.862404-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/connector=3A_Add_support_for_specifying_panel=5Forientation_on?=
 =?utf-8?q?_the_kernel_cmdline?=
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

Series: drm/connector: Add support for specifying panel_orientation on the kernel cmdline
URL   : https://patchwork.freedesktop.org/series/70975/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7574_full -> Patchwork_15787_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15787_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-reset:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb2/igt@gem_ctx_isolation@vcs1-reset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-iclb3/igt@gem_ctx_isolation@vcs1-reset.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-kbl2/igt@gem_eio@in-flight-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-kbl7/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110854])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb2/igt@gem_exec_balancer@smoke.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-iclb3/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs0:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111593])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb5/igt@gem_exec_parallel@vcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-tglb4/igt@gem_exec_parallel@vcs0.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb1/igt@gem_exec_schedule@fifo-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-iclb8/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#520])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-apl2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#198] / [i915#796])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl6/igt@gem_pipe_control_store_loop@reused-buffer.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-skl4/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#644])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-tglb:         [PASS][19] -> [FAIL][20] ([i915#644])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-tglb4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup:
    - shard-snb:          [PASS][21] -> [DMESG-WARN][22] ([fdo#111870]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-snb2/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-snb5/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#455])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb5/igt@i915_selftest@live_gt_timelines.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-tglb3/igt@i915_selftest@live_gt_timelines.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-hsw:          [PASS][25] -> [DMESG-WARN][26] ([i915#747])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-hsw7/igt@i915_selftest@mock_sanitycheck.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-hsw5/igt@i915_selftest@mock_sanitycheck.html
    - shard-skl:          [PASS][27] -> [DMESG-WARN][28] ([i915#747])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl4/igt@i915_selftest@mock_sanitycheck.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-skl7/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#54]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [PASS][33] -> [INCOMPLETE][34] ([i915#435] / [i915#456] / [i915#460])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb6/igt@kms_fbcon_fbt@fbc-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-tglb7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-hsw:          [PASS][35] -> [INCOMPLETE][36] ([i915#61])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-hsw5/igt@kms_flip@flip-vs-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-hsw4/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt:
    - shard-tglb:         [PASS][37] -> [FAIL][38] ([i915#49]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#49])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [PASS][41] -> [INCOMPLETE][42] ([i915#648] / [i915#667])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl9/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-skl5/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-tglb:         [PASS][43] -> [INCOMPLETE][44] ([i915#456] / [i915#460])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-tglb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([fdo#108145]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([fdo#108145] / [i915#265])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#109441])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-iclb3/igt@kms_psr@psr2_dpms.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#112080]) +6 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb2/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-iclb3/igt@perf_pmu@busy-accuracy-98-vcs1.html

  
#### Possible fixes ####

  * igt@gem_eio@hibernate:
    - shard-tglb:         [INCOMPLETE][53] ([i915#456]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb8/igt@gem_eio@hibernate.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-tglb6/igt@gem_eio@hibernate.html

  * {igt@gem_exec_schedule@pi-userfault-bsd}:
    - shard-iclb:         [SKIP][55] ([i915#677]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-iclb3/igt@gem_exec_schedule@pi-userfault-bsd.html

  * {igt@gem_exec_schedule@pi-userfault-bsd2}:
    - shard-iclb:         [SKIP][57] ([fdo#109276]) -> [PASS][58] +7 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb3/igt@gem_exec_schedule@pi-userfault-bsd2.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd2.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][59] ([fdo#112146]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-iclb3/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox:
    - shard-tglb:         [INCOMPLETE][61] ([fdo#111606] / [fdo#111677]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-glk:          [TIMEOUT][63] ([i915#530]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-glk7/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-glk2/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][65] ([i915#180]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-apl8/igt@gem_softpin@noreloc-s3.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-apl3/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@sync-unmap:
    - shard-snb:          [DMESG-WARN][67] ([fdo#111870]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-snb6/igt@gem_userptr_blits@sync-unmap.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-snb7/igt@gem_userptr_blits@sync-unmap.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:
    - shard-hsw:          [DMESG-WARN][69] ([IGT#6]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-hsw6/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-hsw1/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-apl:          [DMESG-WARN][71] ([IGT#6]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_flip@2x-dpms-vs-vblank-race:
    - shard-hsw:          [DMESG-FAIL][73] ([i915#407] / [i915#44]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-hsw5/igt@kms_flip@2x-dpms-vs-vblank-race.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-hsw8/igt@kms_flip@2x-dpms-vs-vblank-race.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-hsw:          [DMESG-FAIL][75] ([i915#44]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-hsw5/igt@kms_flip@plain-flip-fb-recreate.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-hsw4/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][77] ([i915#180]) -> [PASS][78] +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-tglb:         [INCOMPLETE][79] ([i915#474] / [i915#667]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
    - shard-tglb:         [FAIL][81] ([i915#49]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [INCOMPLETE][83] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:
    - shard-iclb:         [INCOMPLETE][85] ([i915#123] / [i915#140]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-iclb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][87] ([fdo#109441]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb3/igt@kms_psr@psr2_suspend.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@perf@create-destroy-userspace-config:
    - shard-hsw:          [INCOMPLETE][89] ([i915#61]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-hsw6/igt@perf@create-destroy-userspace-config.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-hsw1/igt@perf@create-destroy-userspace-config.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][91] ([fdo#112080]) -> [PASS][92] +3 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb3/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-iclb2/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Warnings ####

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][93] ([i915#832]) -> [FAIL][94] ([i915#818])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-hsw6/igt@gem_tiled_blits@interruptible.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-hsw1/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [FAIL][95] ([i915#39]) -> [FAIL][96] ([i915#413])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb5/igt@i915_pm_rps@waitboost.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-tglb4/igt@i915_pm_rps@waitboost.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking:
    - shard-tglb:         [SKIP][97] ([fdo#112016] / [fdo#112021]) -> [SKIP][98] ([fdo#112021])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb3/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][99] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][100] ([fdo#112347] / [i915#648] / [i915#667])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl9/igt@kms_plane@pixel-format-pipe-a-planes.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/shard-skl10/igt@kms_plane@pixel-format-pipe-a-planes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7574 -> Patchwork_15787

  CI-20190529: 20190529
  CI_DRM_7574: 950244ca586c6f0efe243bf8c505c01ea5e579fa @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15787: 874c08fe92f2f8f25178d40f120502ec393057af @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15787/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
