Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE992149320
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Jan 2020 04:41:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA1946E56A;
	Sat, 25 Jan 2020 03:40:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 492D66E353;
 Sat, 25 Jan 2020 03:40:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 371BDA011A;
 Sat, 25 Jan 2020 03:40:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wambui Karuga" <wambui.karugax@gmail.com>
Date: Sat, 25 Jan 2020 03:40:58 -0000
Message-ID: <157992365819.29036.471276395668662957@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200122110844.2022-1-wambui.karugax@gmail.com>
In-Reply-To: <20200122110844.2022-1-wambui.karugax@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgY29u?=
 =?utf-8?q?version_to_struct_drm=5Fdevice_logging_macros=2E_=28rev2=29?=
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

Series: conversion to struct drm_device logging macros. (rev2)
URL   : https://patchwork.freedesktop.org/series/72349/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7802_full -> Patchwork_16230_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16230_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +13 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-kbl1/igt@gem_ctx_isolation@vecs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-kbl2/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-iclb5/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +5 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb3/igt@gem_exec_schedule@wide-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-iclb2/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_largeobject:
    - shard-glk:          [PASS][9] -> [DMESG-WARN][10] ([i915#109])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-glk9/igt@gem_largeobject.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-glk8/igt@gem_largeobject.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-kbl:          [PASS][11] -> [INCOMPLETE][12] ([fdo#103665])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-kbl4/igt@gem_persistent_relocs@forked-thrashing.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-kbl1/igt@gem_persistent_relocs@forked-thrashing.html
    - shard-iclb:         [PASS][13] -> [FAIL][14] ([i915#520])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb6/igt@gem_persistent_relocs@forked-thrashing.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-iclb8/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@i915_selftest@mock_requests:
    - shard-iclb:         [PASS][15] -> [INCOMPLETE][16] ([i915#140])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb5/igt@i915_selftest@mock_requests.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-iclb7/igt@i915_selftest@mock_requests.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#109])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-skl1/igt@kms_color@pipe-a-ctm-0-75.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-skl10/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:
    - shard-hsw:          [PASS][19] -> [INCOMPLETE][20] ([i915#61]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-hsw7/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-hsw6/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt:
    - shard-tglb:         [PASS][23] -> [FAIL][24] ([i915#49]) +6 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +4 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109276]) +21 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb1/igt@prime_busy@hang-bsd2.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-iclb5/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-skl:          [FAIL][31] ([i915#679]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-skl8/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-skl2/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed:
    - shard-iclb:         [SKIP][33] ([fdo#109276] / [fdo#112080]) -> [PASS][34] +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb3/igt@gem_ctx_persistence@vcs1-mixed.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][35] ([fdo#110854]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb8/igt@gem_exec_balancer@smoke.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][37] ([fdo#112146]) -> [PASS][38] +5 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd2:
    - shard-iclb:         [SKIP][39] ([fdo#109276]) -> [PASS][40] +14 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd2.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd2.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [INCOMPLETE][41] ([fdo#103927] / [i915#530] / [i915#970]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
    - shard-kbl:          [INCOMPLETE][43] ([fdo#103665] / [i915#530] / [i915#970]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-kbl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-apl:          [INCOMPLETE][45] ([fdo#103927] / [i915#530]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][47] ([i915#454]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][49] ([i915#413]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb4/igt@i915_pm_rps@reset.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-iclb6/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@mock_requests:
    - shard-snb:          [INCOMPLETE][51] ([i915#82]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-snb2/igt@i915_selftest@mock_requests.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-snb6/igt@i915_selftest@mock_requests.html
    - shard-tglb:         [INCOMPLETE][53] ([i915#472]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-tglb4/igt@i915_selftest@mock_requests.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-tglb4/igt@i915_selftest@mock_requests.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-apl1/igt@i915_suspend@sysfs-reader.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-apl7/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +4 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [INCOMPLETE][59] ([i915#69]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-skl10/igt@kms_fbcon_fbt@psr-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-skl3/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][61] ([i915#79]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-glk7/igt@kms_flip@flip-vs-expired-vblank.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-glk2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][63] ([i915#221]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-skl4/igt@kms_flip@flip-vs-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-skl5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [FAIL][65] ([i915#34]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-skl8/igt@kms_flip@plain-flip-fb-recreate.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-skl7/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-tglb:         [FAIL][67] ([i915#49]) -> [PASS][68] +3 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][69] ([fdo#108145]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][71] ([fdo#109441]) -> [PASS][72] +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][73] ([i915#31]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-glk6/igt@kms_setmode@basic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-glk4/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][75] ([fdo#112080]) -> [PASS][76] +4 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-iclb3/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-iclb2/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-hsw:          [INCOMPLETE][77] ([i915#61]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-hsw6/igt@perf_pmu@cpu-hotplug.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-hsw7/igt@perf_pmu@cpu-hotplug.html

  
#### Warnings ####

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][79] ([i915#818]) -> [FAIL][80] ([i915#694])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7802/shard-hsw5/igt@gem_tiled_blits@normal.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/shard-hsw7/igt@gem_tiled_blits@normal.html

  
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#970]: https://gitlab.freedesktop.org/drm/intel/issues/970


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7802 -> Patchwork_16230

  CI-20190529: 20190529
  CI_DRM_7802: cd932df72f11bdff93423a8d4a9e0e9ccb0985d7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5381: 4ff48cdd5c94140d2dd9bfa3225a6e1e0238e247 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16230: 1663c971df992b720254923639ed2e0aca965665 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16230/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
