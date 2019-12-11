Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D07211A603
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 09:41:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 013106E1B7;
	Wed, 11 Dec 2019 08:41:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 315D26E1B7;
 Wed, 11 Dec 2019 08:40:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07432A0073;
 Wed, 11 Dec 2019 08:40:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gaurav K Singh" <gaurav.k.singh@intel.com>
Date: Wed, 11 Dec 2019 08:40:59 -0000
Message-ID: <157605365902.30694.16075225180739447230@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1575994399-15799-1-git-send-email-gaurav.k.singh@intel.com>
In-Reply-To: <1575994399-15799-1-git-send-email-gaurav.k.singh@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_DPCD_quirk_for_AUO_PSR2_panel?=
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

Series: drm/i915: Add DPCD quirk for AUO PSR2 panel
URL   : https://patchwork.freedesktop.org/series/70702/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7534_full -> Patchwork_15676_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15676_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2] ([i915#69])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl6/igt@gem_ctx_isolation@bcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-skl10/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-apl8/igt@gem_ctx_isolation@rcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-apl6/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#679])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl1/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-skl4/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#679])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-glk2/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-glk2/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_eio@hibernate:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#456])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb2/igt@gem_eio@hibernate.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-tglb4/igt@gem_eio@hibernate.html

  * igt@gem_eio@suspend:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#460]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb2/igt@gem_eio@suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-tglb8/igt@gem_eio@suspend.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#108838] / [i915#435])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb3/igt@gem_exec_create@forked.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-tglb8/igt@gem_exec_create@forked.html

  * igt@gem_exec_parallel@vecs0-contexts:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb3/igt@gem_exec_parallel@vecs0-contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-tglb4/igt@gem_exec_parallel@vecs0-contexts.html

  * igt@gem_exec_schedule@pi-ringfull-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112146]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb7/igt@gem_exec_schedule@pi-ringfull-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-iclb2/igt@gem_exec_schedule@pi-ringfull-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109276]) +14 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +5 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-kbl6/igt@gem_exec_suspend@basic-s3.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-kbl2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#644])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-snb:          [PASS][27] -> [DMESG-WARN][28] ([fdo#111870])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-snb1/igt@gem_userptr_blits@sync-unmap-cycles.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-snb7/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-snb:          [PASS][29] -> [DMESG-WARN][30] ([i915#747])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-snb4/igt@i915_selftest@mock_sanitycheck.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-snb1/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#54]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#79])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [PASS][35] -> [INCOMPLETE][36] ([i915#61])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-hsw7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-hsw2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
    - shard-tglb:         [PASS][37] -> [FAIL][38] ([i915#49])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-onoff:
    - shard-iclb:         [PASS][39] -> [INCOMPLETE][40] ([i915#123] / [i915#140])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-onoff.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-kbl:          [PASS][41] -> [INCOMPLETE][42] ([fdo#103665])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-kbl7/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-kbl6/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-kbl:          [PASS][43] -> [INCOMPLETE][44] ([fdo#103665] / [i915#435])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-kbl3/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-kbl4/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([fdo#108145])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#112080]) +5 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb4/igt@perf_pmu@busy-check-all-vcs1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-iclb8/igt@perf_pmu@busy-check-all-vcs1.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-glk:          [PASS][49] -> [TIMEOUT][50] ([i915#449])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-glk4/igt@perf_pmu@cpu-hotplug.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-glk1/igt@perf_pmu@cpu-hotplug.html

  * igt@prime_vgem@busy-render:
    - shard-glk:          [PASS][51] -> [INCOMPLETE][52] ([i915#58] / [k.org#198133])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-glk4/igt@prime_vgem@busy-render.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-glk1/igt@prime_vgem@busy-render.html

  
#### Possible fixes ####

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][53] ([fdo#110841]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [INCOMPLETE][55] ([i915#69]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl10/igt@gem_eio@in-flight-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-skl5/igt@gem_eio@in-flight-suspend.html

  * {igt@gem_exec_schedule@pi-shared-iova-bsd2}:
    - shard-iclb:         [SKIP][57] ([fdo#109276]) -> [PASS][58] +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb7/igt@gem_exec_schedule@pi-shared-iova-bsd2.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd2.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][59] ([fdo#112146]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-iclb3/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [FAIL][61] ([i915#644]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-skl10/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-snb:          [DMESG-WARN][63] ([fdo#111870]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-snb7/igt@gem_userptr_blits@dmabuf-unsync.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-snb6/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [DMESG-WARN][65] ([i915#747]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl2/igt@i915_selftest@mock_sanitycheck.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-skl3/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - shard-skl:          [DMESG-WARN][67] ([i915#109]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl7/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-skl10/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen:
    - shard-skl:          [FAIL][69] ([i915#54]) -> [PASS][70] +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-apl:          [DMESG-WARN][71] ([IGT#6]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][73] ([i915#79]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-glk9/igt@kms_flip@flip-vs-expired-vblank.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-glk9/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-tglb:         [INCOMPLETE][75] ([i915#456] / [i915#460]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-tglb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][77] ([i915#180]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][79] ([fdo#108145]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [SKIP][81] ([fdo#109441]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb1/igt@kms_psr@psr2_sprite_plane_onoff.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][83] ([i915#180]) -> [PASS][84] +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][85] ([fdo#112080]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb7/igt@perf_pmu@busy-vcs1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-iclb2/igt@perf_pmu@busy-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-clean:
    - shard-tglb:         [SKIP][87] ([fdo#112080]) -> [SKIP][88] ([fdo#111912] / [fdo#112080])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb9/igt@gem_ctx_isolation@vcs2-clean.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-tglb5/igt@gem_ctx_isolation@vcs2-clean.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][89] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][90] ([i915#648])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl8/igt@kms_plane@pixel-format-pipe-a-planes.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-skl9/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][91] ([i915#648]) -> [INCOMPLETE][92] ([fdo#112391] / [i915#648] / [i915#667])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl6/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-skl3/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@runner@aborted:
    - shard-skl:          [FAIL][93] ([i915#69] / [k.org#204565]) -> [FAIL][94] ([i915#69])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl2/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/shard-skl5/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#449]: https://gitlab.freedesktop.org/drm/intel/issues/449
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7534 -> Patchwork_15676

  CI-20190529: 20190529
  CI_DRM_7534: 66a6222c16abb82d6a4480b0a7ff8e375cc6a3a6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5342: 3e43fb3fa97ce25819444d63848439acf6e397b5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15676: 522ace08afcc593bf0937cfb57a5cbedd284db2b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15676/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
