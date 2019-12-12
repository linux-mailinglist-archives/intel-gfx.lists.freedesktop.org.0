Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B90211DA2C
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 00:45:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 805498940E;
	Thu, 12 Dec 2019 23:45:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 22533893D1;
 Thu, 12 Dec 2019 23:45:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EDA1AA0138;
 Thu, 12 Dec 2019 23:45:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 12 Dec 2019 23:45:10 -0000
Message-ID: <157619431094.32010.1804747717266244051@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191212014629.854076-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191212014629.854076-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_Use_EAGAIN_for_trylock_?=
 =?utf-8?q?failures_=28rev2=29?=
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

Series: series starting with [1/3] drm/i915: Use EAGAIN for trylock failures (rev2)
URL   : https://patchwork.freedesktop.org/series/70797/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7549_full -> Patchwork_15712_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15712_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_create@basic-files:
    - shard-kbl:          [PASS][1] -> [INCOMPLETE][2] ([fdo#103665] / [i915#435])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-kbl3/igt@gem_ctx_create@basic-files.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-kbl6/igt@gem_ctx_create@basic-files.html

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb1/igt@gem_ctx_isolation@vcs1-clean.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-iclb3/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          [PASS][5] -> [FAIL][6] ([i915#232])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-snb6/igt@gem_eio@unwedge-stress.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-snb4/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb5/igt@gem_exec_schedule@preempt-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-iclb2/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-iclb:         [PASS][9] -> [DMESG-WARN][10] ([fdo#111764])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb1/igt@gem_exec_suspend@basic-s0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-iclb6/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#520])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-tglb2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-tglb2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-skl9/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_wait@busy-vcs1:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112080]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb2/igt@gem_wait@busy-vcs1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-iclb7/igt@gem_wait@busy-vcs1.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-kbl7/igt@i915_suspend@sysfs-reader.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-kbl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([i915#109]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl8/igt@kms_color@pipe-a-ctm-0-75.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#54]) +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#79])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-skl7/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-apl6/igt@kms_flip@flip-vs-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-apl8/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#460])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-tglb2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-tglb8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-kbl:          [PASS][29] -> [INCOMPLETE][30] ([fdo#103665] / [i915#648] / [i915#667])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-kbl4/igt@kms_plane@pixel-format-pipe-a-planes.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-kbl3/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109642] / [fdo#111068])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-iclb7/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@perf_pmu@busy-accuracy-98-bcs0:
    - shard-iclb:         [PASS][37] -> [INCOMPLETE][38] ([i915#140])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb4/igt@perf_pmu@busy-accuracy-98-bcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-iclb7/igt@perf_pmu@busy-accuracy-98-bcs0.html

  * igt@prime_busy@after-bsd2:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109276]) +6 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb2/igt@prime_busy@after-bsd2.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-iclb7/igt@prime_busy@after-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-persistence:
    - shard-iclb:         [SKIP][41] ([fdo#109276] / [fdo#112080]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb5/igt@gem_ctx_persistence@vcs1-persistence.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-iclb2/igt@gem_ctx_persistence@vcs1-persistence.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [FAIL][43] ([i915#232]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-snb2/igt@gem_eio@reset-stress.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-snb2/igt@gem_eio@reset-stress.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#112146]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb4/igt@gem_exec_async@concurrent-writes-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-iclb7/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_balancer@bonded-slice:
    - shard-tglb:         [FAIL][47] ([i915#800]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-tglb8/igt@gem_exec_balancer@bonded-slice.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-tglb7/igt@gem_exec_balancer@bonded-slice.html

  * igt@gem_exec_nop@basic-parallel:
    - shard-tglb:         [INCOMPLETE][49] ([i915#435]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-tglb4/igt@gem_exec_nop@basic-parallel.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-tglb2/igt@gem_exec_nop@basic-parallel.html

  * igt@gem_exec_parallel@vcs1:
    - shard-tglb:         [INCOMPLETE][51] ([fdo#111593]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-tglb1/igt@gem_exec_parallel@vcs1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-tglb2/igt@gem_exec_parallel@vcs1.html

  * igt@gem_exec_parse_blt@allowed-single:
    - shard-skl:          [DMESG-WARN][53] ([i915#716]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl4/igt@gem_exec_parse_blt@allowed-single.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-skl8/igt@gem_exec_parse_blt@allowed-single.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [INCOMPLETE][55] ([i915#456] / [i915#472]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-tglb1/igt@gem_exec_suspend@basic-s0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-tglb7/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-snb:          [TIMEOUT][57] ([i915#530]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-snb1/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-snb4/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-hsw:          [FAIL][59] ([i915#520]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-hsw4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-hsw1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-iclb:         [TIMEOUT][61] ([i915#530]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb6/igt@gem_persistent_relocs@forked-thrashing.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-iclb1/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-iclb:         [FAIL][63] ([i915#644]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-iclb6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][65] ([i915#69]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl8/igt@gem_softpin@noreloc-s3.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-skl7/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - shard-tglb:         [INCOMPLETE][67] ([i915#456] / [i915#460]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-tglb8/igt@i915_pm_rpm@system-suspend-devices.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-tglb4/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-snb:          [DMESG-WARN][69] ([i915#747]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-snb1/igt@i915_selftest@mock_sanitycheck.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-snb5/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_color@pipe-b-ctm-max:
    - shard-skl:          [DMESG-WARN][71] ([i915#109]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl1/igt@kms_color@pipe-b-ctm-max.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-skl8/igt@kms_color@pipe-b-ctm-max.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-skl:          [FAIL][73] ([i915#54]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [FAIL][75] ([IGT#5]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled:
    - shard-skl:          [FAIL][77] ([i915#52] / [i915#54]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl8/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-skl7/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-snb:          [DMESG-WARN][81] ([i915#42]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-snb2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-snb1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-interruptible:
    - shard-kbl:          [INCOMPLETE][83] ([fdo#103665]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-kbl7/igt@kms_flip@plain-flip-interruptible.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-kbl4/igt@kms_flip@plain-flip-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][85] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt:
    - shard-tglb:         [INCOMPLETE][87] ([i915#474] / [i915#667]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [SKIP][89] ([fdo#109441]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb5/igt@kms_psr@psr2_primary_mmap_gtt.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][91] ([i915#31]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-kbl7/igt@kms_setmode@basic.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-kbl2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][93] ([i915#180]) -> [PASS][94] +4 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend:
    - shard-tglb:         [INCOMPLETE][95] ([i915#460]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-tglb1/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-tglb3/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][97] ([fdo#112080]) -> [PASS][98] +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb5/igt@perf_pmu@busy-vcs1.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-iclb2/igt@perf_pmu@busy-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][99] ([fdo#109276]) -> [PASS][100] +11 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb5/igt@prime_busy@hang-bsd2.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][101] ([fdo#109349]) -> [DMESG-WARN][102] ([fdo#107724])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#800]: https://gitlab.freedesktop.org/drm/intel/issues/800


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7549 -> Patchwork_15712

  CI-20190529: 20190529
  CI_DRM_7549: 9573e1b7d1cb54cc984cf5c4f93a743641d868da @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5346: 466b0e6cbcbaccff012b484d1fd7676364b37b93 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15712: 712c967a25f9bc6557bf03efbd6aa05d404a3030 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15712/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
