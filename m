Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1516515216E
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 21:14:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A528A6E8EB;
	Tue,  4 Feb 2020 20:14:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AD7826E8EA;
 Tue,  4 Feb 2020 20:14:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 84353A010F;
 Tue,  4 Feb 2020 20:14:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jerry (Fangzhi) Zuo" <Jerry.Zuo@amd.com>
Date: Tue, 04 Feb 2020 20:14:17 -0000
Message-ID: <158084725751.25090.15542050643675631186@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200131202451.8994-1-Jerry.Zuo@amd.com>
In-Reply-To: <20200131202451.8994-1-Jerry.Zuo@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Add_support_for_DP_1=2E4_Compliance_edid_corruption_test_?=
 =?utf-8?b?KHJldjQp?=
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

Series: drm: Add support for DP 1.4 Compliance edid corruption test (rev4)
URL   : https://patchwork.freedesktop.org/series/70530/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7853_full -> Patchwork_16367_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16367_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16367_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16367_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_balancer@bonded-slice:
    - shard-tglb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-tglb3/igt@gem_exec_balancer@bonded-slice.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-tglb5/igt@gem_exec_balancer@bonded-slice.html

  
Known issues
------------

  Here are the changes found in Patchwork_16367_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#69])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-skl1/igt@gem_ctx_isolation@rcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-skl10/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +7 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-iclb6/igt@gem_exec_async@concurrent-writes-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +13 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-iclb4/igt@gem_exec_schedule@fifo-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-iclb8/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-hsw:          [PASS][11] -> [FAIL][12] ([i915#694]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-hsw7/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-hsw8/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-apl:          [PASS][15] -> [FAIL][16] ([i915#644])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([IGT#5])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#79])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-apl3/igt@kms_flip@flip-vs-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-apl6/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt:
    - shard-glk:          [PASS][23] -> [INCOMPLETE][24] ([CI#80] / [i915#58] / [k.org#198133])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-glk5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-glk6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-tglb:         [PASS][29] -> [SKIP][30] ([i915#668])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-tglb8/igt@kms_psr2_su@page_flip.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-tglb5/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-iclb8/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#31])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-skl1/igt@kms_setmode@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-skl9/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#112080]) +13 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-iclb2/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-iclb7/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +9 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html
    - shard-apl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-apl6/igt@gem_ctx_isolation@rcs0-s3.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-apl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#110841]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][45] ([i915#677]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][47] ([fdo#112146]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-hsw:          [FAIL][49] ([i915#694]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-hsw1/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-hsw7/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][51] ([i915#69]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-skl10/igt@gem_softpin@noreloc-s3.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-skl2/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][53] ([i915#454]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-iclb7/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [INCOMPLETE][55] ([fdo#103665]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled:
    - shard-skl:          [FAIL][57] ([i915#52] / [i915#54]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-skl4/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-skl5/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:
    - shard-glk:          [FAIL][59] ([i915#52] / [i915#54]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-glk4/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-glk5/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:
    - shard-tglb:         [SKIP][61] ([i915#668]) -> [PASS][62] +14 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-skl:          [DMESG-WARN][63] ([i915#109]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-skl4/igt@kms_plane@pixel-format-pipe-a-planes.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-skl4/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@plane-position-covered-pipe-b-planes:
    - shard-skl:          [FAIL][65] ([i915#247]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-skl9/igt@kms_plane@plane-position-covered-pipe-b-planes.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-skl10/igt@kms_plane@plane-position-covered-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][67] ([fdo#108145]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][71] ([fdo#112080]) -> [PASS][72] +16 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-iclb3/igt@perf_pmu@init-busy-vcs1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-iclb2/igt@perf_pmu@init-busy-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][73] ([fdo#109276]) -> [PASS][74] +28 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-iclb5/igt@prime_busy@hang-bsd2.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-iclb1/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][75] ([fdo#112080]) -> [FAIL][76] ([IGT#28])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][77] ([IGT#28]) -> [SKIP][78] ([fdo#112080])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-apl:          [TIMEOUT][79] ([fdo#112271]) -> [INCOMPLETE][80] ([CI#80] / [fdo#103927] / [i915#1098])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/shard-apl8/igt@gem_eio@in-flight-contexts-immediate.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/shard-apl7/igt@gem_eio@in-flight-contexts-immediate.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#1098]: https://gitlab.freedesktop.org/drm/intel/issues/1098
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#247]: https://gitlab.freedesktop.org/drm/intel/issues/247
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7853 -> Patchwork_16367

  CI-20190529: 20190529
  CI_DRM_7853: 1df04205c16923e525efe9c26d6e98612d38c9b3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5409: 93aefe6baa3fabf8c0cabe83e185f7b8f8d8753d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16367: bd9dc1267ab5a3e2c594fddefd52e064a3957a71 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16367/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
