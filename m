Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F65F11E1F9
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 11:33:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3278C6E36F;
	Fri, 13 Dec 2019 10:32:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 847C06E36F;
 Fri, 13 Dec 2019 10:32:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7BE09A363B;
 Fri, 13 Dec 2019 10:32:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Fri, 13 Dec 2019 10:32:56 -0000
Message-ID: <157623317647.23799.2085660729673426881@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191212124015.24077-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20191212124015.24077-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgUmVm?=
 =?utf-8?q?actor_Gen11+_SAGV_support_=28rev13=29?=
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

Series: Refactor Gen11+ SAGV support (rev13)
URL   : https://patchwork.freedesktop.org/series/68028/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7551_full -> Patchwork_15721_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15721_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-apl6/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-apl1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#679])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-glk5/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-glk9/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-persistence:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-iclb2/igt@gem_ctx_persistence@vcs1-persistence.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-iclb3/igt@gem_ctx_persistence@vcs1-persistence.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111735])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-tglb5/igt@gem_ctx_shared@q-smoketest-vebox.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-tglb3/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_eio@suspend:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#460])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-tglb6/igt@gem_eio@suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-tglb8/igt@gem_eio@suspend.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-iclb6/igt@gem_exec_async@concurrent-writes-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_balancer@bonded-slice:
    - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#800])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-kbl1/igt@gem_exec_balancer@bonded-slice.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-kbl1/igt@gem_exec_balancer@bonded-slice.html
    - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#800])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-iclb3/igt@gem_exec_balancer@bonded-slice.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-iclb2/igt@gem_exec_balancer@bonded-slice.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111736])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-tglb1/igt@gem_exec_balancer@nop.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-tglb6/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_parse_blt@allowed-single:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#716])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-apl8/igt@gem_exec_parse_blt@allowed-single.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-apl3/igt@gem_exec_parse_blt@allowed-single.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109276]) +6 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-iclb2/igt@gem_exec_schedule@fifo-bsd1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-iclb3/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-chain-vebox:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([fdo#111677])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-tglb2/igt@gem_exec_schedule@preempt-queue-chain-vebox.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-vebox.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-iclb:         [PASS][25] -> [DMESG-WARN][26] ([fdo#111764])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-iclb8/igt@gem_exec_suspend@basic-s0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-iclb5/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-iclb:         [PASS][27] -> [FAIL][28] ([i915#520])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-iclb3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-iclb2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-snb:          [PASS][29] -> [FAIL][30] ([i915#520])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-snb6/igt@gem_persistent_relocs@forked-thrashing.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-snb5/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#644])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#644])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-skl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-skl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-snb:          [PASS][35] -> [DMESG-WARN][36] ([fdo#111870])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-snb7/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-snb6/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@i915_suspend@sysfs-reader:
    - shard-tglb:         [PASS][37] -> [INCOMPLETE][38] ([i915#456] / [i915#460]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-tglb5/igt@i915_suspend@sysfs-reader.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-tglb8/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-hsw:          [PASS][39] -> [DMESG-WARN][40] ([IGT#6])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-hsw4/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-hsw6/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
    - shard-skl:          [PASS][41] -> [INCOMPLETE][42] ([i915#435] / [i915#667])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-skl8/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#52] / [i915#54])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-skl2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#79])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html
    - shard-glk:          [PASS][47] -> [FAIL][48] ([i915#79])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-glk3/igt@kms_flip@flip-vs-expired-vblank.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-glk4/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [PASS][49] -> [DMESG-WARN][50] ([i915#180]) +4 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-hsw:          [PASS][51] -> [INCOMPLETE][52] ([i915#61])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-hsw7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-hsw4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][53] -> [FAIL][54] ([i915#49])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-1p-rte:
    - shard-tglb:         [PASS][55] -> [INCOMPLETE][56] ([i915#474] / [i915#667])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-rte.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-rte.html

  * igt@kms_frontbuffer_tracking@fbc-farfromfence:
    - shard-kbl:          [PASS][57] -> [DMESG-WARN][58] ([i915#62] / [i915#92]) +4 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-farfromfence.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-farfromfence.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:
    - shard-skl:          [PASS][59] -> [INCOMPLETE][60] ([i915#123] / [i915#667])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-kbl:          [PASS][61] -> [INCOMPLETE][62] ([fdo#103665] / [i915#435] / [i915#648] / [i915#667])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-kbl3/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-kbl6/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-skl:          [PASS][63] -> [INCOMPLETE][64] ([i915#69])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][65] -> [SKIP][66] ([fdo#109441]) +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][67] -> [FAIL][68] ([i915#31])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-glk2/igt@kms_setmode@basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-glk1/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][69] -> [SKIP][70] ([fdo#112080]) +8 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-iclb2/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][71] ([fdo#109276] / [fdo#112080]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-iclb8/igt@gem_ctx_persistence@vcs1-queued.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][73] ([fdo#110841]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][75] ([fdo#112080]) -> [PASS][76] +7 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][77] ([fdo#109276]) -> [PASS][78] +10 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2:
    - shard-tglb:         [INCOMPLETE][79] ([fdo#111677]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-tglb4/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2.html

  * igt@gem_exec_schedule@smoketest-bsd:
    - shard-iclb:         [SKIP][81] ([fdo#112146]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-iclb2/igt@gem_exec_schedule@smoketest-bsd.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-iclb8/igt@gem_exec_schedule@smoketest-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-snb:          [TIMEOUT][83] ([i915#530]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-snb2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-snb6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-tglb:         [FAIL][85] ([i915#520]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-tglb5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-tglb1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-iclb:         [FAIL][87] ([i915#644]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-iclb8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-iclb5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
    - shard-hsw:          [FAIL][89] ([i915#817]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-hsw1/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-hsw1/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-snb:          [DMESG-WARN][91] ([fdo#111870]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-snb1/igt@gem_userptr_blits@dmabuf-unsync.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-snb4/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][93] ([i915#454]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-iclb5/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@live_hangcheck:
    - shard-tglb:         [INCOMPLETE][95] ([i915#435]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-tglb2/igt@i915_selftest@live_hangcheck.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-tglb1/igt@i915_selftest@live_hangcheck.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-kbl:          [DMESG-WARN][97] ([i915#747]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-kbl1/igt@i915_selftest@mock_sanitycheck.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-kbl4/igt@i915_selftest@mock_sanitycheck.html
    - shard-skl:          [DMESG-WARN][99] ([i915#747]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-skl5/igt@i915_selftest@mock_sanitycheck.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-skl4/igt@i915_selftest@mock_sanitycheck.html
    - shard-snb:          [DMESG-WARN][101] ([i915#747]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-snb2/igt@i915_selftest@mock_sanitycheck.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-snb5/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [DMESG-WARN][103] ([i915#109]) -> [PASS][104] +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-skl3/igt@kms_color@pipe-b-ctm-0-25.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-skl2/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-skl:          [FAIL][105] ([i915#54]) -> [PASS][106] +5 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [INCOMPLETE][107] ([i915#300]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
    - shard-kbl:          [DMESG-WARN][109] ([i915#180]) -> [PASS][110] +2 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled:
    - shard-skl:          [FAIL][111] ([i915#52] / [i915#54]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-skl3/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-skl2/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html

  * igt@kms_draw_crc@draw-method-rgb565-render-ytiled:
    - shard-tglb:         [INCOMPLETE][113] ([i915#667]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-tglb4/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-tglb5/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][115] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc:
    - shard-tglb:         [INCOMPLETE][117] ([i915#474] / [i915#667]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt:
    - shard-tglb:         [FAIL][119] ([i915#49]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-tglb:         [INCOMPLETE][121] ([fdo#112393] / [i915#667]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [INCOMPLETE][123] ([i915#69]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
    - shard-tglb:         [INCOMPLETE][125] ([i915#456] / [i915#460]) -> [PASS][126] +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-tglb8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-tglb4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-apl:          [DMESG-WARN][127] ([i915#180]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-apl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-apl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][129] ([i915#648] / [i915#667]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-skl3/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-skl1/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][131] ([fdo#109441]) -> [PASS][132] +4 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [SKIP][133] -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-tglb5/igt@kms_psr@psr2_suspend.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-tglb1/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [FAIL][135] ([i915#31]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-hsw2/igt@kms_setmode@basic.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-hsw4/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][137] ([i915#818]) -> [INCOMPLETE][138] ([i915#61])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-hsw2/igt@gem_tiled_blits@normal.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-hsw2/igt@gem_tiled_blits@normal.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][139] ([fdo#107724]) -> [SKIP][140] ([fdo#109349])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-iclb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][141] ([fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][142] ([i915#648])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-skl3/igt@kms_plane@pixel-format-pipe-b-planes.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-skl2/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][143] ([i915#180]) -> [DMESG-WARN][144] ([i915#62] / [i915#92])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/shard-kbl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/shard-kbl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [fdo#112393]: https://bugs.freedesktop.org/show_bug.cgi?id=112393
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#800]: https://gitlab.freedesktop.org/drm/intel/issues/800
  [i915#817]: https://gitlab.freedesktop.org/drm/intel/issues/817
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Participating hosts (10 -> 10)
------------------------

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15721/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
