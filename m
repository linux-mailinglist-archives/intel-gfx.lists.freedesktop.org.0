Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4619211C8D1
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 10:08:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 932256ECD0;
	Thu, 12 Dec 2019 09:08:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 24A2D6ECD0;
 Thu, 12 Dec 2019 09:08:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1B1A2A0118;
 Thu, 12 Dec 2019 09:08:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Venkata Sandeep Dhanalakota" <venkata.s.dhanalakota@intel.com>
Date: Thu, 12 Dec 2019 09:08:02 -0000
Message-ID: <157614168208.32008.14486395043481942089@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191211160724.26467-1-venkata.s.dhanalakota@intel.com>
In-Reply-To: <20191211160724.26467-1-venkata.s.dhanalakota@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/perf=3A_Register_sysctl_pa?=
 =?utf-8?q?th_globally?=
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

Series: series starting with [1/2] drm/i915/perf: Register sysctl path globally
URL   : https://patchwork.freedesktop.org/series/70768/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7543_full -> Patchwork_15695_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15695_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-tglb:         [PASS][1] -> [FAIL][2] ([i915#679])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb7/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-tglb8/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-cleanup:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb4/igt@gem_ctx_persistence@vcs1-cleanup.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-iclb8/igt@gem_ctx_persistence@vcs1-cleanup.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110841])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_parse_blt@allowed-all:
    - shard-glk:          [PASS][7] -> [DMESG-WARN][8] ([i915#716])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-glk6/igt@gem_exec_parse_blt@allowed-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-glk4/igt@gem_exec_parse_blt@allowed-all.html

  * igt@gem_exec_parse_blt@allowed-single:
    - shard-skl:          [PASS][9] -> [DMESG-WARN][10] ([i915#716])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl5/igt@gem_exec_parse_blt@allowed-single.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-skl7/igt@gem_exec_parse_blt@allowed-single.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +10 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb3/igt@gem_exec_schedule@preempt-queue-contexts-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-iclb4/igt@gem_exec_schedule@preempt-queue-contexts-bsd.html

  * igt@gem_exec_store@basic-vcs1:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112080]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb4/igt@gem_exec_store@basic-vcs1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-iclb8/igt@gem_exec_store@basic-vcs1.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-snb:          [PASS][17] -> [TIMEOUT][18] ([i915#530])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-snb5/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-snb7/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#644])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-kbl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-kbl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@sync-unmap:
    - shard-snb:          [PASS][21] -> [DMESG-WARN][22] ([fdo#111870])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-snb7/igt@gem_userptr_blits@sync-unmap.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-snb2/igt@gem_userptr_blits@sync-unmap.html

  * igt@i915_pm_rpm@modeset-stress-extra-wait:
    - shard-glk:          [PASS][23] -> [DMESG-WARN][24] ([i915#118] / [i915#95])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-glk9/igt@i915_pm_rpm@modeset-stress-extra-wait.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-glk8/igt@i915_pm_rpm@modeset-stress-extra-wait.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#456] / [i915#460]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb8/igt@i915_pm_rpm@system-suspend-modeset.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-tglb8/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-kbl1/igt@i915_suspend@fence-restore-untiled.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_color@pipe-a-ctm-max:
    - shard-skl:          [PASS][29] -> [DMESG-WARN][30] ([i915#109])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl3/igt@kms_color@pipe-a-ctm-max.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-skl9/igt@kms_color@pipe-a-ctm-max.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen:
    - shard-iclb:         [PASS][31] -> [DMESG-WARN][32] ([IGT#6])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb3/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-iclb3/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#54])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html

  * igt@kms_draw_crc@draw-method-rgb565-render-xtiled:
    - shard-kbl:          [PASS][35] -> [INCOMPLETE][36] ([fdo#103665] / [i915#667]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-kbl7/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-kbl2/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html
    - shard-iclb:         [PASS][37] -> [INCOMPLETE][38] ([i915#140])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb2/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-iclb5/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled:
    - shard-skl:          [PASS][39] -> [INCOMPLETE][40] ([fdo#112347] / [i915#646] / [i915#667])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl8/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-skl2/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [PASS][41] -> [INCOMPLETE][42] ([i915#456] / [i915#460] / [i915#474])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:
    - shard-tglb:         [PASS][43] -> [FAIL][44] ([i915#49]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
    - shard-iclb:         [PASS][45] -> [INCOMPLETE][46] ([i915#123] / [i915#140])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-iclb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-tglb:         [PASS][47] -> [INCOMPLETE][48] ([fdo#112393] / [i915#435] / [i915#667])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-tglb4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-tglb:         [PASS][49] -> [INCOMPLETE][50] ([i915#460])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-tglb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-kbl:          [PASS][51] -> [INCOMPLETE][52] ([fdo#103665] / [i915#648] / [i915#667])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-kbl6/igt@kms_plane@pixel-format-pipe-b-planes.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-kbl4/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([fdo#108145]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#109441]) +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [PASS][57] -> [DMESG-WARN][58] ([i915#180]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [SKIP][59] ([fdo#112080]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb3/igt@gem_busy@extended-parallel-vcs1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-iclb4/igt@gem_busy@extended-parallel-vcs1.html

  * {igt@gem_exec_schedule@pi-distinct-iova-bsd}:
    - shard-iclb:         [SKIP][61] ([i915#677]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [SKIP][63] ([fdo#112146]) -> [PASS][64] +4 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb2/igt@gem_exec_schedule@preempt-bsd.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-iclb7/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [INCOMPLETE][65] ([fdo#103665]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-kbl3/igt@gem_exec_suspend@basic-s3.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-kbl1/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-snb:          [TIMEOUT][67] ([i915#530]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-snb1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-snb1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-snb:          [DMESG-WARN][69] ([fdo#110789] / [fdo#111870]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-snb2/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-snb6/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-snb:          [DMESG-WARN][71] ([fdo#111870]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-snb6/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-snb6/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gem_wait@await-vecs0:
    - shard-skl:          [DMESG-WARN][73] ([i915#109]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl4/igt@gem_wait@await-vecs0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-skl3/igt@gem_wait@await-vecs0.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][75] ([i915#447]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-iclb7/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [INCOMPLETE][77] ([i915#455]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb3/igt@i915_selftest@live_gt_timelines.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-tglb4/igt@i915_selftest@live_gt_timelines.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [DMESG-WARN][79] ([i915#747]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl8/igt@i915_selftest@mock_sanitycheck.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-skl3/igt@i915_selftest@mock_sanitycheck.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82] +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-apl6/igt@i915_suspend@sysfs-reader.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-apl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [FAIL][83] ([i915#54]) -> [PASS][84] +3 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:
    - shard-tglb:         [INCOMPLETE][85] ([i915#667]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb9/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-tglb7/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled:
    - shard-tglb:         [INCOMPLETE][87] ([fdo#112393] / [i915#667]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb8/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-tglb8/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][89] ([i915#79]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][91] ([i915#79]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][93] ([i915#180]) -> [PASS][94] +6 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][95] ([fdo#108145]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][97] ([fdo#109276]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb7/igt@prime_vgem@fence-wait-bsd2.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][99] ([i915#648] / [i915#667]) -> [INCOMPLETE][100] ([i915#648])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl1/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-skl4/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][101] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][102] ([fdo#112347] / [i915#648] / [i915#667])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl6/igt@kms_plane@pixel-format-pipe-b-planes.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-skl10/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@runner@aborted:
    - shard-skl:          [FAIL][103] ([i915#69] / [k.org#204565]) -> [FAIL][104] ([i915#69])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl8/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/shard-skl7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110789]: https://bugs.freedesktop.org/show_bug.cgi?id=110789
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [fdo#112393]: https://bugs.freedesktop.org/show_bug.cgi?id=112393
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#646]: https://gitlab.freedesktop.org/drm/intel/issues/646
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7543 -> Patchwork_15695

  CI-20190529: 20190529
  CI_DRM_7543: 91752f80df9b582561be6bbac12ef780b12f606c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5345: 9e0c82b6d70065db894ececf2be8de372e983cf0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15695: 619f60d048a67acded1d56ab93ca5dbc74f8b9e1 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15695/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
