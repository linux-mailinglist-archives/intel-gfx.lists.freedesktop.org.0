Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC89142191
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 03:18:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 970D36E084;
	Mon, 20 Jan 2020 02:18:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 435626E084;
 Mon, 20 Jan 2020 02:18:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3A285A00E9;
 Mon, 20 Jan 2020 02:18:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Mon, 20 Jan 2020 02:18:45 -0000
Message-ID: <157948672520.680.2058826930266355823@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200116192809.843138-1-matthew.auld@intel.com>
In-Reply-To: <20200116192809.843138-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/userptr=3A_add_user=5Fsize?=
 =?utf-8?q?_limit_check?=
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

Series: series starting with [1/2] drm/i915/userptr: add user_size limit check
URL   : https://patchwork.freedesktop.org/series/72135/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7758_full -> Patchwork_16137_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16137_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-iclb8/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@processes:
    - shard-apl:          [PASS][3] -> [FAIL][4] ([i915#570])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-apl1/igt@gem_ctx_persistence@processes.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-apl4/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs1-cleanup:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb1/igt@gem_ctx_persistence@vcs1-cleanup.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-iclb8/igt@gem_ctx_persistence@vcs1-cleanup.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111735] / [i915#472])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb1/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#111593] / [i915#472])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb7/igt@gem_exec_gttfill@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-tglb1/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#472]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb7/igt@gem_exec_nop@basic-sequential.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-tglb8/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#470] / [i915#472])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb5/igt@gem_exec_parallel@contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-tglb3/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([i915#677]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@pi-ringfull-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb5/igt@gem_exec_schedule@pi-ringfull-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-iclb2/igt@gem_exec_schedule@pi-ringfull-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-render:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([fdo#111606] / [fdo#111677] / [i915#472])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb3/igt@gem_exec_schedule@preempt-queue-chain-render.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-render.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#463] / [i915#472])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb1/igt@gem_exec_schedule@smoketest-bsd1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-tglb4/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc:
    - shard-apl:          [PASS][23] -> [FAIL][24] ([i915#520])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-apl:          [PASS][25] -> [TIMEOUT][26] ([fdo#112271] / [i915#530])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [PASS][27] -> [DMESG-FAIL][28] ([i915#553] / [i915#725])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-hsw5/igt@i915_selftest@live_blt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-hsw7/igt@i915_selftest@live_blt.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][29] -> [DMESG-WARN][30] ([i915#109]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl3/igt@kms_color@pipe-a-ctm-0-5.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-skl5/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:
    - shard-snb:          [PASS][31] -> [SKIP][32] ([fdo#109271]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-snb4/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-snb2/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#52] / [i915#54])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl9/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-skl4/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#221]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl3/igt@kms_flip@flip-vs-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-skl6/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-iclb:         [PASS][37] -> [INCOMPLETE][38] ([i915#140] / [i915#221])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-iclb8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-glk:          [PASS][39] -> [FAIL][40] ([i915#34])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-glk9/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-glk8/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt:
    - shard-tglb:         [PASS][41] -> [FAIL][42] ([i915#49]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#49])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-skl4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][45] -> [DMESG-WARN][46] ([i915#180]) +6 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109642] / [fdo#111068])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-iclb4/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#109441])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-iclb4/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-kbl:          [PASS][51] -> [DMESG-WARN][52] ([i915#180])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-kbl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-skl:          [PASS][53] -> [INCOMPLETE][54] ([i915#69])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl9/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-skl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#109276]) +9 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@processes:
    - shard-iclb:         [FAIL][57] ([i915#570]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@gem_ctx_persistence@processes.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-iclb8/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][59] ([fdo#109276] / [fdo#112080]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb5/igt@gem_ctx_persistence@vcs1-queued.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@q-smoketest-bsd2:
    - shard-iclb:         [SKIP][61] ([fdo#109276]) -> [PASS][62] +14 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb5/igt@gem_ctx_shared@q-smoketest-bsd2.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-iclb2/igt@gem_ctx_shared@q-smoketest-bsd2.html
    - shard-tglb:         [INCOMPLETE][63] ([i915#461] / [i915#472]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd2.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-tglb5/igt@gem_ctx_shared@q-smoketest-bsd2.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][65] ([i915#82]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-snb6/igt@gem_eio@kms.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-snb5/igt@gem_eio@kms.html
    - shard-tglb:         [INCOMPLETE][67] ([i915#472] / [i915#476]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb6/igt@gem_eio@kms.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-tglb7/igt@gem_eio@kms.html

  * igt@gem_exec_await@wide-all:
    - shard-tglb:         [INCOMPLETE][69] ([fdo#111736] / [i915#472]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb3/igt@gem_exec_await@wide-all.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-tglb7/igt@gem_exec_await@wide-all.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][71] ([fdo#110854]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb5/igt@gem_exec_balancer@smoke.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][73] ([fdo#112080]) -> [PASS][74] +8 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][75] ([i915#677]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-iclb8/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][77] ([fdo#112146]) -> [PASS][78] +3 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-tglb:         [INCOMPLETE][79] ([i915#472]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb6/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-tglb5/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-kbl:          [TIMEOUT][81] ([fdo#112271] / [i915#530]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
    - shard-hsw:          [TIMEOUT][83] ([fdo#112271] / [i915#530]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][85] ([i915#472] / [i915#707] / [i915#796]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb3/igt@gem_pipe_control_store_loop@reused-buffer.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-tglb1/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [DMESG-WARN][87] ([i915#716]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl8/igt@gen9_exec_parse@allowed-all.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-skl7/igt@gen9_exec_parse@allowed-all.html

  * {igt@i915_pm_rc6_residency@rc6-idle}:
    - shard-apl:          [FAIL][89] ([i915#973]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-apl3/igt@i915_pm_rc6_residency@rc6-idle.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-apl2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][91] ([i915#413]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@i915_pm_rps@reset.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-iclb2/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live_execlists:
    - shard-kbl:          [INCOMPLETE][93] ([fdo#103665] / [fdo#112175] / [fdo#112259]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl6/igt@i915_selftest@live_execlists.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-kbl1/igt@i915_selftest@live_execlists.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [DMESG-WARN][95] ([i915#180]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][97] ([i915#180]) -> [PASS][98] +3 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [FAIL][99] ([i915#34]) -> [PASS][100] +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [FAIL][101] ([i915#49]) -> [PASS][102] +5 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-iclb:         [INCOMPLETE][103] ([i915#140] / [i915#250]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-iclb6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][105] ([fdo#108145]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][107] ([fdo#109441]) -> [PASS][108] +3 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][109] ([i915#454]) -> [SKIP][110] ([i915#468])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb4/igt@i915_pm_dc@dc6-dpms.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112175]: https://bugs.freedesktop.org/show_bug.cgi?id=112175
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#973]: https://gitlab.freedesktop.org/drm/intel/issues/973


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7758 -> Patchwork_16137

  CI-20190529: 20190529
  CI_DRM_7758: d19270ce1f367fbfc1ff3b539bcb50e11ded181f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5371: 1b2816124ec3dbd53b81725d39292f45d41d895b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16137: 1706d18601a1db19e00b11ac40eed5cd0dabeb04 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16137/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
