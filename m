Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D5B141676
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2020 09:05:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11C196F9BE;
	Sat, 18 Jan 2020 08:05:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3967E6F9BD;
 Sat, 18 Jan 2020 08:05:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 30035A363B;
 Sat, 18 Jan 2020 08:05:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Sat, 18 Jan 2020 08:05:15 -0000
Message-ID: <157933471516.11509.939824689081498360@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115190813.17971-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200115190813.17971-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/5=5D_drm/i915=3A_Fix_post-fastset_modese?=
 =?utf-8?q?t_check_for_port_sync?=
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

Series: series starting with [1/5] drm/i915: Fix post-fastset modeset check for port sync
URL   : https://patchwork.freedesktop.org/series/72083/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7751_full -> Patchwork_16116_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16116_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb1/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-iclb5/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-snb:          [PASS][3] -> [FAIL][4] ([i915#490])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-snb7/igt@gem_eio@in-flight-contexts-1us.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-snb6/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_await@wide-all:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([fdo#111736] / [i915#472])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb7/igt@gem_exec_await@wide-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-tglb3/igt@gem_exec_await@wide-all.html

  * igt@gem_exec_create@forked:
    - shard-glk:          [PASS][7] -> [TIMEOUT][8] ([fdo#112271] / [i915#940])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-glk5/igt@gem_exec_create@forked.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-glk2/igt@gem_exec_create@forked.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#472] / [i915#476])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb7/igt@gem_exec_parallel@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-tglb8/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([i915#677])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +24 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111677] / [i915#472])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb4/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +7 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb8/igt@gem_exec_schedule@reorder-wide-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#463] / [i915#472])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb8/igt@gem_exec_schedule@smoketest-all.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-tglb7/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#472] / [i915#707])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb5/igt@gem_exec_schedule@smoketest-bsd2.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-tglb6/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-skl:          [PASS][23] -> [TIMEOUT][24] ([fdo#112271] / [i915#530])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-skl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-hsw:          [PASS][25] -> [TIMEOUT][26] ([fdo#112271] / [i915#530])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-hsw5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-tglb:         [PASS][27] -> [FAIL][28] ([i915#520])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb1/igt@gem_persistent_relocs@forked-thrashing.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-tglb5/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#470] / [i915#472] / [i915#475])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb1/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-tglb6/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#644])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][33] -> [INCOMPLETE][34] ([i915#472])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb1/igt@gem_sync@basic-store-all.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-tglb4/igt@gem_sync@basic-store-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][35] -> [FAIL][36] ([i915#454])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_suspend@debugfs-reader:
    - shard-skl:          [PASS][37] -> [INCOMPLETE][38] ([i915#69]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl1/igt@i915_suspend@debugfs-reader.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-skl10/igt@i915_suspend@debugfs-reader.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180]) +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([IGT#5])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#79])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
    - shard-glk:          [PASS][45] -> [FAIL][46] ([i915#79])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][47] -> [DMESG-WARN][48] ([i915#180]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][49] -> [FAIL][50] ([i915#49])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [PASS][51] -> [DMESG-WARN][52] ([i915#109])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl4/igt@kms_plane@pixel-format-pipe-b-planes.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-skl3/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#109642] / [fdo#111068])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-iclb4/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#109441])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-iclb1/igt@kms_psr@psr2_cursor_render.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][57] -> [SKIP][58] ([fdo#112080]) +10 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb1/igt@perf_pmu@busy-vcs1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-iclb8/igt@perf_pmu@busy-vcs1.html

  * igt@perf_pmu@enable-race-vcs0:
    - shard-tglb:         [PASS][59] -> [INCOMPLETE][60] ([i915#472] / [i915#480])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb5/igt@perf_pmu@enable-race-vcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-tglb8/igt@perf_pmu@enable-race-vcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-apl:          [FAIL][61] ([i915#679]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-apl4/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-apl6/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][63] ([fdo#110854]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][65] ([i915#677]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][67] ([fdo#112146]) -> [PASS][68] +5 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd1:
    - shard-tglb:         [INCOMPLETE][69] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-tglb4/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-render:
    - shard-tglb:         [INCOMPLETE][71] ([fdo#111677] / [i915#472]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-tglb1/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][73] ([i915#472] / [i915#707]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb3/igt@gem_exec_schedule@smoketest-vebox.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-tglb7/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-kbl:          [TIMEOUT][75] ([fdo#112271] / [i915#530]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-kbl2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-skl:          [TIMEOUT][77] ([fdo#112271] / [i915#530]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl6/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-skl7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
    - shard-snb:          [TIMEOUT][79] ([fdo#112271] / [i915#530]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-snb7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-snb4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-iclb:         [FAIL][81] ([i915#520]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-iclb1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-kbl:          [INCOMPLETE][83] ([fdo#103665] / [i915#530]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-kbl3/igt@gem_persistent_relocs@forked-thrashing.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-kbl3/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][85] ([i915#644]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][87] ([i915#472]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb6/igt@gem_sync@basic-store-each.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-tglb1/igt@gem_sync@basic-store-each.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [DMESG-WARN][89] ([i915#180]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-apl6/igt@gem_workarounds@suspend-resume.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-apl7/igt@gem_workarounds@suspend-resume.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][91] ([i915#300]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [FAIL][93] ([i915#49]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][95] ([i915#56]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
    - shard-skl:          [DMESG-WARN][97] ([IGT#6]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl2/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-skl8/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][99] ([fdo#109642] / [fdo#111068]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb8/igt@kms_psr2_su@frontbuffer.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][101] ([fdo#109441]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][103] ([i915#31]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-kbl6/igt@kms_setmode@basic.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-kbl2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][105] ([i915#180]) -> [PASS][106] +4 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [SKIP][107] ([fdo#112080]) -> [PASS][108] +15 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb6/igt@perf_pmu@busy-check-all-vcs1.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-iclb1/igt@perf_pmu@busy-check-all-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][109] ([fdo#109276]) -> [PASS][110] +27 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb8/igt@prime_busy@hang-bsd2.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-iclb1/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][111] ([IGT#28]) -> [SKIP][112] ([fdo#109276] / [fdo#112080])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][113] ([i915#82]) -> [DMESG-WARN][114] ([i915#444])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-snb5/igt@gem_eio@kms.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-snb5/igt@gem_eio@kms.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][115] ([i915#468]) -> [FAIL][116] ([i915#454])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb3/igt@i915_pm_dc@dc6-dpms.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/shard-tglb4/igt@i915_pm_dc@dc6-dpms.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#475]: https://gitlab.freedesktop.org/drm/intel/issues/475
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#480]: https://gitlab.freedesktop.org/drm/intel/issues/480
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#940]: https://gitlab.freedesktop.org/drm/intel/issues/940


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7751 -> Patchwork_16116

  CI-20190529: 20190529
  CI_DRM_7751: bffb5bf41a2e3d84ee5043dcccad49578656a012 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5367: 94af6de4f07487b93c4f5008f3ed04b5fc045200 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16116: 1060deea422567275d6c7d950283e5bca8d7b321 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16116/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
