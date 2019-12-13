Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F76D11EBF6
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 21:40:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACC366EDBB;
	Fri, 13 Dec 2019 20:40:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B6BB76EDBA;
 Fri, 13 Dec 2019 20:40:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AE948A0114;
 Fri, 13 Dec 2019 20:40:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Fri, 13 Dec 2019 20:40:55 -0000
Message-ID: <157626965568.23799.10946903377054738872@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191211212433.18185-1-manasi.d.navare@intel.com>
In-Reply-To: <20191211212433.18185-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm=3A_Handle_connector_tile_suppor?=
 =?utf-8?q?t_only_for_modes_that_match_tile_size?=
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

Series: series starting with [1/2] drm: Handle connector tile support only for modes that match tile size
URL   : https://patchwork.freedesktop.org/series/70790/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7545_full -> Patchwork_15701_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15701_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb2/igt@gem_busy@extended-parallel-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-iclb6/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_persistence@vcs1-hostile-preempt:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb1/igt@gem_ctx_persistence@vcs1-hostile-preempt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-iclb6/igt@gem_ctx_persistence@vcs1-hostile-preempt.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [PASS][5] -> [FAIL][6] ([i915#232])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-snb2/igt@gem_eio@reset-stress.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-snb2/igt@gem_eio@reset-stress.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +6 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +6 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-kbl2/igt@gem_exec_suspend@basic-s3.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-kbl7/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-iclb:         [PASS][13] -> [TIMEOUT][14] ([i915#530])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb8/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-iclb8/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-tglb:         [PASS][15] -> [TIMEOUT][16] ([fdo#112126] / [i915#530])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-tglb5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#69])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl9/igt@gem_softpin@noreloc-s3.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-skl2/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][19] -> [FAIL][20] ([i915#454])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [PASS][21] -> [FAIL][22] ([i915#413])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb3/igt@i915_pm_rps@waitboost.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-tglb8/igt@i915_pm_rps@waitboost.html

  * igt@i915_suspend@sysfs-reader:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#456] / [i915#460])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb4/igt@i915_suspend@sysfs-reader.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-tglb4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#54]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#52] / [i915#54])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-skl2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#46])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#221])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl1/igt@kms_flip@flip-vs-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-skl10/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:
    - shard-tglb:         [PASS][35] -> [FAIL][36] ([i915#49]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-tglb:         [PASS][37] -> [INCOMPLETE][38] ([i915#474] / [i915#667]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-kbl:          [PASS][39] -> [INCOMPLETE][40] ([fdo#103665] / [i915#648] / [i915#667]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-kbl1/igt@kms_plane@pixel-format-pipe-b-planes.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-kbl3/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109441]) +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-iclb6/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_rmfb@rmfb-ioctl:
    - shard-hsw:          [PASS][43] -> [DMESG-WARN][44] ([i915#44])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-hsw5/igt@kms_rmfb@rmfb-ioctl.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-hsw5/igt@kms_rmfb@rmfb-ioctl.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
    - shard-iclb:         [PASS][45] -> [DMESG-WARN][46] ([i915#109])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-iclb8/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][47] -> [FAIL][48] ([i915#31])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-hsw4/igt@kms_setmode@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-hsw7/igt@kms_setmode@basic.html
    - shard-kbl:          [PASS][49] -> [FAIL][50] ([i915#31])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-kbl2/igt@kms_setmode@basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-kbl4/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-d-ts-continuation-suspend:
    - shard-tglb:         [PASS][51] -> [INCOMPLETE][52] ([i915#460])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb6/igt@kms_vblank@pipe-d-ts-continuation-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-tglb5/igt@kms_vblank@pipe-d-ts-continuation-suspend.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-glk:          [PASS][53] -> [DMESG-WARN][54] ([i915#142])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-glk7/igt@perf_pmu@cpu-hotplug.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-glk1/igt@perf_pmu@cpu-hotplug.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-skl:          [INCOMPLETE][55] ([i915#69]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl5/igt@gem_ctx_isolation@vcs0-s3.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-skl6/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-mixed:
    - shard-iclb:         [SKIP][57] ([fdo#109276] / [fdo#112080]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb6/igt@gem_ctx_persistence@vcs1-mixed.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [INCOMPLETE][59] ([fdo#111735]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb8/igt@gem_ctx_shared@q-smoketest-all.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-tglb7/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          [FAIL][61] ([i915#232]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-snb6/igt@gem_eio@unwedge-stress.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-snb4/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [INCOMPLETE][63] ([i915#476]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb6/igt@gem_exec_parallel@basic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-tglb2/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_schedule@deep-bsd2:
    - shard-iclb:         [SKIP][65] ([fdo#109276]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb6/igt@gem_exec_schedule@deep-bsd2.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-iclb2/igt@gem_exec_schedule@deep-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-blt:
    - shard-tglb:         [INCOMPLETE][67] ([fdo#111606] / [fdo#111677]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-blt.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-tglb1/igt@gem_exec_schedule@preempt-queue-contexts-blt.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][69] ([fdo#112146]) -> [PASS][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [INCOMPLETE][71] ([i915#456] / [i915#472]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb1/igt@gem_exec_suspend@basic-s0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-tglb7/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][73] ([i915#644]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_wait@wait-vcs1:
    - shard-iclb:         [SKIP][75] ([fdo#112080]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb6/igt@gem_wait@wait-vcs1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-iclb1/igt@gem_wait@wait-vcs1.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-hsw:          [DMESG-WARN][77] ([i915#747]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-hsw4/igt@i915_selftest@mock_sanitycheck.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-hsw2/igt@i915_selftest@mock_sanitycheck.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-skl:          [FAIL][81] ([i915#54]) -> [PASS][82] +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][83] ([i915#456] / [i915#460]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-tglb4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-offscreen:
    - shard-hsw:          [DMESG-WARN][85] ([IGT#6]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-hsw6/igt@kms_cursor_crc@pipe-c-cursor-256x256-offscreen.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-hsw4/igt@kms_cursor_crc@pipe-c-cursor-256x256-offscreen.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [FAIL][87] ([i915#96]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-hsw7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled:
    - shard-skl:          [FAIL][89] ([i915#52] / [i915#54]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl3/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-skl1/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-snb:          [INCOMPLETE][91] ([i915#82]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-snb1/igt@kms_flip@flip-vs-suspend.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-snb7/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-interruptible:
    - shard-hsw:          [INCOMPLETE][93] ([i915#61]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-hsw2/igt@kms_flip@plain-flip-interruptible.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-hsw8/igt@kms_flip@plain-flip-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][95] ([i915#180]) -> [PASS][96] +7 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
    - shard-tglb:         [FAIL][97] ([i915#49]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][99] ([fdo#112347] / [i915#648] / [i915#667]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl7/igt@kms_plane@pixel-format-pipe-a-planes.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-skl4/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][101] ([i915#648] / [i915#667]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl7/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-skl2/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][103] ([fdo#112391] / [i915#648] / [i915#667]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl10/igt@kms_plane@pixel-format-pipe-b-planes.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-skl5/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_sequence@get-forked-busy:
    - shard-snb:          [SKIP][105] ([fdo#109271]) -> [PASS][106] +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-snb2/igt@kms_sequence@get-forked-busy.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-snb5/igt@kms_sequence@get-forked-busy.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-clean:
    - shard-tglb:         [SKIP][107] ([fdo#111912] / [fdo#112080]) -> [SKIP][108] ([fdo#112080])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb8/igt@gem_ctx_isolation@vcs2-clean.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-tglb9/igt@gem_ctx_isolation@vcs2-clean.html

  * igt@gem_eio@kms:
    - shard-snb:          [DMESG-WARN][109] ([i915#444]) -> [INCOMPLETE][110] ([i915#82])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-snb6/igt@gem_eio@kms.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/shard-snb6/igt@gem_eio@kms.html

  
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#142]: https://gitlab.freedesktop.org/drm/intel/issues/142
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7545 -> Patchwork_15701

  CI-20190529: 20190529
  CI_DRM_7545: b1b808dff985c3c2050b20771050453589a60ca3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5346: 466b0e6cbcbaccff012b484d1fd7676364b37b93 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15701: 2b0a7be8f2636c049b492fce127416b1fa5212b4 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
