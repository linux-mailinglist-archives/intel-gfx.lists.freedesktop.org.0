Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C75F4141D7D
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Jan 2020 12:15:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E23596E342;
	Sun, 19 Jan 2020 11:15:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 98F286E340;
 Sun, 19 Jan 2020 11:15:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 901AAA0088;
 Sun, 19 Jan 2020 11:15:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Sun, 19 Jan 2020 11:15:09 -0000
Message-ID: <157943250956.23915.12401613445831712935@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115152437.13207-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200115152437.13207-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Align_engine-=3Euabi=5Fclass/instance_with_i915=5Fdrm?=
 =?utf-8?b?LmggKHJldjIp?=
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

Series: drm/i915: Align engine->uabi_class/instance with i915_drm.h (rev2)
URL   : https://patchwork.freedesktop.org/series/72078/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7754_full -> Patchwork_16130_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16130_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb4/igt@gem_ctx_isolation@vcs1-clean.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-iclb6/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([fdo#111735] / [i915#472])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb8/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_ctx_shared@q-smoketest-bsd2:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#461] / [i915#472])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb1/igt@gem_ctx_shared@q-smoketest-bsd2.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd2.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#472] / [i915#476])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb8/igt@gem_eio@kms.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-tglb6/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#111736] / [i915#472]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb6/igt@gem_exec_balancer@nop.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-tglb3/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +15 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-iclb6/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([i915#677])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112146]) +6 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-blt:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111606] / [fdo#111677] / [i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb5/igt@gem_exec_schedule@preempt-queue-chain-blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-tglb3/igt@gem_exec_schedule@preempt-queue-chain-blt.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [PASS][19] -> [TIMEOUT][20] ([fdo#112271] / [i915#530])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-apl4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-apl8/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#69])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-skl4/igt@gem_softpin@noreloc-s3.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-skl3/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#470] / [i915#472])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb8/igt@gem_sync@basic-all.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-tglb6/igt@gem_sync@basic-all.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#472] / [i915#707])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb1/igt@gem_sync@basic-each.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-tglb4/igt@gem_sync@basic-each.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][27] -> [FAIL][28] ([i915#454])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-kbl:          [PASS][29] -> [INCOMPLETE][30] ([fdo#103665] / [i915#151])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-kbl7/igt@i915_pm_rpm@system-suspend-modeset.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-kbl1/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#413])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb6/igt@i915_pm_rps@waitboost.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-iclb8/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live_sanitycheck:
    - shard-tglb:         [PASS][33] -> [INCOMPLETE][34] ([i915#472])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb3/igt@i915_selftest@live_sanitycheck.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-tglb6/igt@i915_selftest@live_sanitycheck.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +5 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-apl3/igt@i915_suspend@sysfs-reader.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-apl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180]) +7 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@basic-plain-flip:
    - shard-hsw:          [PASS][39] -> [DMESG-WARN][40] ([i915#44])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-hsw5/igt@kms_flip@basic-plain-flip.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-hsw5/igt@kms_flip@basic-plain-flip.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#79])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][43] -> [FAIL][44] ([i915#49]) +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([fdo#108145])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][47] -> [FAIL][48] ([i915#173])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb5/igt@kms_psr@no_drrs.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#109441])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#112080]) +12 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb4/igt@perf_pmu@busy-vcs1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-iclb6/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][53] ([fdo#109276] / [fdo#112080]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb5/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [INCOMPLETE][55] ([i915#461] / [i915#472]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-tglb1/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][57] ([fdo#110854]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb5/igt@gem_exec_balancer@smoke.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@fifo-bsd:
    - shard-iclb:         [SKIP][59] ([fdo#112146]) -> [PASS][60] +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb2/igt@gem_exec_schedule@fifo-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-iclb8/igt@gem_exec_schedule@fifo-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd2:
    - shard-tglb:         [INCOMPLETE][61] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb3/igt@gem_exec_schedule@preempt-queue-bsd2.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-tglb7/igt@gem_exec_schedule@preempt-queue-bsd2.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [SKIP][63] ([fdo#109276]) -> [PASS][64] +15 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb6/igt@gem_exec_schedule@promotion-bsd1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-iclb4/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [INCOMPLETE][65] ([i915#463] / [i915#472]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb4/igt@gem_exec_schedule@smoketest-all.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-tglb7/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][67] ([i915#472] / [i915#707]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb6/igt@gem_exec_schedule@smoketest-vebox.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-tglb6/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-tglb:         [TIMEOUT][69] ([fdo#112271] / [i915#530]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb7/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-tglb8/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-apl:          [TIMEOUT][71] ([fdo#112271] / [i915#530]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-kbl:          [INCOMPLETE][73] ([fdo#103665] / [i915#530]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-kbl1/igt@gem_persistent_relocs@forked-thrashing.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-kbl6/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@i915_suspend@debugfs-reader:
    - shard-snb:          [DMESG-WARN][75] ([i915#42]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-snb5/igt@i915_suspend@debugfs-reader.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-snb5/igt@i915_suspend@debugfs-reader.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [DMESG-WARN][77] ([i915#109]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-skl9/igt@kms_color@pipe-b-ctm-0-75.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-skl4/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][81] ([i915#180] / [i915#391]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-stridechange:
    - shard-tglb:         [FAIL][83] ([i915#49]) -> [PASS][84] +4 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][85] ([i915#180]) -> [PASS][86] +3 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][87] ([fdo#108145] / [i915#265]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [SKIP][89] ([fdo#109441]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb1/igt@kms_psr@psr2_primary_mmap_gtt.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][91] ([i915#69]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-skl7/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-skl7/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][93] ([fdo#112080]) -> [PASS][94] +9 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb5/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][95] ([fdo#109276] / [fdo#112080]) -> [FAIL][96] ([IGT#28])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][97] ([i915#818]) -> [FAIL][98] ([i915#694])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-hsw4/igt@gem_tiled_blits@interruptible.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-hsw7/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-snb:          [SKIP][99] ([fdo#109271]) -> [INCOMPLETE][100] ([i915#82])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-snb5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/shard-snb2/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#391]: https://gitlab.freedesktop.org/drm/intel/issues/391
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7754 -> Patchwork_16130

  CI-20190529: 20190529
  CI_DRM_7754: 4db14301dfa813d24cd2ad46552af83d493c5d12 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5370: a98fb02cc2816a48eec374392d9b6941abb6af2c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16130: a81c58f048d6eaa408fc35cf652354a65efc7b28 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
