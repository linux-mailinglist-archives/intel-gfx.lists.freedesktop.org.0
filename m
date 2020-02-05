Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F142153509
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 17:12:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 214E56F883;
	Wed,  5 Feb 2020 16:12:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 09FE66F87E;
 Wed,  5 Feb 2020 16:12:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 02062A011C;
 Wed,  5 Feb 2020 16:12:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 05 Feb 2020 16:12:30 -0000
Message-ID: <158091915098.17319.1715422265583280799@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200203093110.4138277-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200203093110.4138277-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/display=3A_Defer_applicati?=
 =?utf-8?q?on_of_initial_chv=5Fphy=5Fcontrol?=
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

Series: series starting with [1/3] drm/i915/display: Defer application of initial chv_phy_control
URL   : https://patchwork.freedesktop.org/series/72905/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7857_full -> Patchwork_16389_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16389_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +11 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +9 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276]) +20 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-iclb7/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +7 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb3/igt@gem_exec_schedule@reorder-wide-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_partial_pwrite_pread@write:
    - shard-hsw:          [PASS][9] -> [FAIL][10] ([i915#694])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-hsw5/igt@gem_partial_pwrite_pread@write.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-hsw2/igt@gem_partial_pwrite_pread@write.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-apl3/igt@gem_softpin@noreloc-s3.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-apl6/igt@gem_softpin@noreloc-s3.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][13] -> [TIMEOUT][14] ([i915#716])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl4/igt@gen9_exec_parse@allowed-single.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-skl3/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_color@pipe-b-ctm-0-5:
    - shard-skl:          [PASS][15] -> [DMESG-WARN][16] ([i915#109])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl2/igt@kms_color@pipe-b-ctm-0-5.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-skl5/igt@kms_color@pipe-b-ctm-0-5.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#79])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#79])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#34])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:
    - shard-tglb:         [PASS][23] -> [SKIP][24] ([i915#668]) +5 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-tglb8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-tglb3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-snb:          [PASS][25] -> [SKIP][26] ([fdo#109271])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-snb1/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-snb1/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145] / [i915#265])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-iclb4/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][33] -> [FAIL][34] ([i915#31])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-apl7/igt@kms_setmode@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-apl1/igt@kms_setmode@basic.html
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#31])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl2/igt@kms_setmode@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-skl5/igt@kms_setmode@basic.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [PASS][37] -> [FAIL][38] ([i915#831])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-hsw2/igt@prime_mmap_coherency@ioctl-errors.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-hsw2/igt@prime_mmap_coherency@ioctl-errors.html

  * igt@prime_mmap_coherency@read:
    - shard-hsw:          [PASS][39] -> [FAIL][40] ([i915#914])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-hsw7/igt@prime_mmap_coherency@read.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-hsw5/igt@prime_mmap_coherency@read.html

  
#### Possible fixes ####

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][41] ([i915#677]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +5 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd2:
    - shard-iclb:         [SKIP][45] ([fdo#109276]) -> [PASS][46] +11 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd2.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd2.html

  * igt@gem_partial_pwrite_pread@reads-display:
    - shard-hsw:          [FAIL][47] ([i915#694]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-hsw7/igt@gem_partial_pwrite_pread@reads-display.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-hsw5/igt@gem_partial_pwrite_pread@reads-display.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][49] ([i915#644]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rps@reset:
    - shard-tglb:         [FAIL][51] ([i915#413]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-tglb5/igt@i915_pm_rps@reset.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-tglb6/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][53] ([i915#413]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb6/igt@i915_pm_rps@waitboost.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-iclb4/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][55] ([i915#770]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-hsw1/igt@i915_selftest@live_blt.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-hsw4/igt@i915_selftest@live_blt.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-apl6/igt@i915_suspend@sysfs-reader.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-apl2/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +4 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [FAIL][61] ([i915#34]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl7/igt@kms_flip@plain-flip-fb-recreate.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-skl7/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [SKIP][63] ([i915#668]) -> [PASS][64] +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][65] ([fdo#108145]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][67] ([fdo#108145] / [i915#265]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][71] ([i915#69]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl8/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-skl6/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][73] ([fdo#112080]) -> [PASS][74] +13 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][75] ([IGT#28]) -> [SKIP][76] ([fdo#112080]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][77] ([i915#818]) -> [FAIL][78] ([i915#694]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-hsw5/igt@gem_tiled_blits@normal.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-hsw7/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_rpm@legacy-planes:
    - shard-snb:          [INCOMPLETE][79] ([i915#82]) -> [SKIP][80] ([fdo#109271])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-snb6/igt@i915_pm_rpm@legacy-planes.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-snb4/igt@i915_pm_rpm@legacy-planes.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][81] ([fdo#109349]) -> [DMESG-WARN][82] ([fdo#107724])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [i915#914]: https://gitlab.freedesktop.org/drm/intel/issues/914


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7857 -> Patchwork_16389

  CI-20190529: 20190529
  CI_DRM_7857: 8ec40a15b9a930df9e445f17c5e01cdb6f80353a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5411: 86c6ab8a0b6696bdb2153febd350af7fa02fbb00 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16389: bfbeab6879a9d9ecad2399e41dd457eb8472d728 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16389/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
