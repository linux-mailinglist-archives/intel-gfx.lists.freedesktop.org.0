Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF7C1432A9
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 20:55:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1D1C6EAD7;
	Mon, 20 Jan 2020 19:55:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CCCE96EAD3;
 Mon, 20 Jan 2020 19:55:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B3A83A0119;
 Mon, 20 Jan 2020 19:55:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Mon, 20 Jan 2020 19:55:09 -0000
Message-ID: <157955010970.681.10531043089299182039@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200116211623.53799-1-lyude@redhat.com>
In-Reply-To: <20200116211623.53799-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_eDP_DPCD_aux_backlight_fixes_=28rev7=29?=
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

Series: drm/i915: eDP DPCD aux backlight fixes (rev7)
URL   : https://patchwork.freedesktop.org/series/69914/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7769_full -> Patchwork_16163_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16163_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +8 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-mixed:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-snb:          [PASS][5] -> [FAIL][6] ([i915#490])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-snb6/igt@gem_eio@in-flight-contexts-1us.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-snb1/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#110854])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-iclb8/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +16 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb5/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-iclb2/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-apl:          [PASS][13] -> [TIMEOUT][14] ([fdo#112271] / [i915#530])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-apl8/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-apl4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-apl:          [PASS][15] -> [INCOMPLETE][16] ([fdo#103927] / [i915#530])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-apl2/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-apl8/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#413])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb4/igt@i915_pm_rps@waitboost.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-iclb1/igt@i915_pm_rps@waitboost.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([i915#109]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-skl7/igt@kms_color@pipe-a-ctm-0-5.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-skl5/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#34])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-none:
    - shard-hsw:          [PASS][27] -> [DMESG-FAIL][28] ([i915#44])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-hsw5/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-hsw5/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][31] -> [FAIL][32] ([i915#31])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-kbl2/igt@kms_setmode@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-kbl3/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-query-busy:
    - shard-hsw:          [PASS][33] -> [DMESG-WARN][34] ([i915#44])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-hsw5/igt@kms_vblank@pipe-c-query-busy.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-hsw5/igt@kms_vblank@pipe-c-query-busy.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#112080]) +9 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb1/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-iclb8/igt@perf_pmu@busy-accuracy-98-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [FAIL][37] ([i915#570]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-skl8/igt@gem_ctx_persistence@processes.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-skl1/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][39] ([fdo#109276] / [fdo#112080]) -> [PASS][40] +4 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb6/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [INCOMPLETE][41] ([i915#140]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb4/igt@gem_exec_balancer@hang.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-iclb8/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][43] ([i915#677]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-iclb8/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#112146]) -> [PASS][46] +5 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb4/igt@gem_exec_schedule@preempt-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-iclb8/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-kbl:          [TIMEOUT][47] ([fdo#112271] / [i915#530]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-kbl6/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-kbl1/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-apl:          [TIMEOUT][49] ([fdo#112271] / [i915#530]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gen7_exec_parse@basic-allocation:
    - shard-hsw:          [FAIL][51] ([i915#694]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-hsw2/igt@gen7_exec_parse@basic-allocation.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-hsw5/igt@gen7_exec_parse@basic-allocation.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [DMESG-WARN][53] ([i915#716]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-kbl2/igt@gen9_exec_parse@allowed-all.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-kbl6/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][55] ([i915#413]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb8/igt@i915_pm_rps@reset.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-iclb8/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_color@pipe-c-ctm-0-5:
    - shard-skl:          [DMESG-WARN][59] ([i915#109]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-skl1/igt@kms_color@pipe-c-ctm-0-5.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-skl10/igt@kms_color@pipe-c-ctm-0-5.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:
    - shard-hsw:          [SKIP][61] ([fdo#109271]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-hsw5/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-hsw5/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][63] ([IGT#5]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][65] ([i915#79]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][67] ([i915#79]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][71] ([i915#31]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-apl1/igt@kms_setmode@basic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-apl3/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +4 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][75] ([fdo#112080]) -> [PASS][76] +7 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb5/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][77] ([fdo#109276]) -> [PASS][78] +5 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-iclb5/igt@prime_busy@hang-bsd2.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][79] ([i915#694]) -> [FAIL][80] ([i915#818])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-hsw2/igt@gem_tiled_blits@normal.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-hsw7/igt@gem_tiled_blits@normal.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][81], [FAIL][82], [FAIL][83]) ([i915#716] / [i915#997]) -> ([FAIL][84], [FAIL][85]) ([i915#997])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-kbl7/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-kbl2/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-kbl1/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-kbl2/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-kbl7/igt@runner@aborted.html
    - shard-glk:          ([FAIL][86], [FAIL][87], [FAIL][88]) ([i915#997] / [k.org#202321]) -> [FAIL][89] ([k.org#202321])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-glk4/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-glk2/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7769/shard-glk5/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/shard-glk1/igt@runner@aborted.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#997]: https://gitlab.freedesktop.org/drm/intel/issues/997
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7769 -> Patchwork_16163

  CI-20190529: 20190529
  CI_DRM_7769: 15e78429922635916a012ba594255cf07a5b07ad @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5372: 0d00a27fbbd4d4a77d24499ea9811e07e65eb0ac @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16163: dab5771741336892a6f969a77fb3bc3f02446eac @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16163/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
