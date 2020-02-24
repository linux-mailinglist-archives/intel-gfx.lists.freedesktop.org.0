Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D000616A897
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 15:41:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19FEB89E14;
	Mon, 24 Feb 2020 14:41:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9658389D87;
 Mon, 24 Feb 2020 14:41:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8EE52A0138;
 Mon, 24 Feb 2020 14:41:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Mon, 24 Feb 2020 14:41:16 -0000
Message-ID: <158255527658.28360.8570278770550425401@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?_managed_resources=2C_v2?=
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

Series: drm managed resources, v2
URL   : https://patchwork.freedesktop.org/series/73794/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7984_full -> Patchwork_16670_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16670_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16670_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16670_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@mock_timelines:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb2/igt@i915_selftest@mock_timelines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-iclb3/igt@i915_selftest@mock_timelines.html
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl3/igt@i915_selftest@mock_timelines.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-skl3/igt@i915_selftest@mock_timelines.html
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-tglb1/igt@i915_selftest@mock_timelines.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-tglb5/igt@i915_selftest@mock_timelines.html

  
Known issues
------------

  Here are the changes found in Patchwork_16670_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +19 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb2/igt@gem_exec_schedule@out-order-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-iclb3/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +6 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb3/igt@gem_exec_schedule@reorder-wide-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_partial_pwrite_pread@write-display:
    - shard-hsw:          [PASS][11] -> [FAIL][12] ([i915#694])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw7/igt@gem_partial_pwrite_pread@write-display.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-hsw7/igt@gem_partial_pwrite_pread@write-display.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#644])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_selftest@mock_timelines:
    - shard-glk:          [PASS][17] -> [INCOMPLETE][18] ([i915#58] / [k.org#198133])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk1/igt@i915_selftest@mock_timelines.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-glk3/igt@i915_selftest@mock_timelines.html
    - shard-hsw:          [PASS][19] -> [INCOMPLETE][20] ([i915#61])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw6/igt@i915_selftest@mock_timelines.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-hsw6/igt@i915_selftest@mock_timelines.html
    - shard-kbl:          [PASS][21] -> [INCOMPLETE][22] ([fdo#103665])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl2/igt@i915_selftest@mock_timelines.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-kbl7/igt@i915_selftest@mock_timelines.html
    - shard-snb:          [PASS][23] -> [INCOMPLETE][24] ([i915#82])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-snb2/igt@i915_selftest@mock_timelines.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-snb1/igt@i915_selftest@mock_timelines.html
    - shard-apl:          [PASS][25] -> [INCOMPLETE][26] ([fdo#103927])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl2/igt@i915_selftest@mock_timelines.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-apl7/igt@i915_selftest@mock_timelines.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [PASS][27] -> [FAIL][28] ([fdo#103375])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl1/igt@i915_suspend@fence-restore-untiled.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-kbl6/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#221])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl3/igt@kms_flip@flip-vs-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-skl1/igt@kms_flip@flip-vs-suspend.html
    - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl8/igt@kms_flip@flip-vs-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-apl4/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +4 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145] / [i915#265])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#31])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl7/igt@kms_setmode@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-skl8/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#112080]) +10 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb4/igt@perf_pmu@busy-vcs1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-iclb7/igt@perf_pmu@busy-vcs1.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-iclb:         [PASS][43] -> [TIMEOUT][44] ([fdo#112271])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb2/igt@sw_sync@sync_multi_producer_single_consumer.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-iclb2/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][45] ([fdo#110854]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb7/igt@gem_exec_balancer@smoke.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_reuse@baggage:
    - shard-apl:          [TIMEOUT][47] ([fdo#112271]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl7/igt@gem_exec_reuse@baggage.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-apl8/igt@gem_exec_reuse@baggage.html

  * {igt@gem_exec_schedule@implicit-both-bsd2}:
    - shard-iclb:         [SKIP][49] ([fdo#109276] / [i915#677]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][51] ([i915#677]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [SKIP][53] ([fdo#109276]) -> [PASS][54] +13 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb7/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-iclb4/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][55] ([fdo#112146]) -> [PASS][56] +8 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][57] ([i915#644]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-skl:          [FAIL][59] ([i915#644]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-skl5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_blits@interruptible:
    - shard-glk:          [TIMEOUT][61] ([fdo#112271]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk6/igt@gem_tiled_blits@interruptible.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-glk6/igt@gem_tiled_blits@interruptible.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-glk:          [FAIL][63] -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk4/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-glk3/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-hsw:          [FAIL][65] ([i915#694]) -> [PASS][66] +4 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw4/igt@gen7_exec_parse@basic-offset.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-hsw8/igt@gen7_exec_parse@basic-offset.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][67] ([i915#447]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-iclb2/igt@i915_pm_dc@dc5-dpms.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][69] ([i915#180]) -> [PASS][70] +4 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [FAIL][71] ([i915#79]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-glk:          [FAIL][75] ([i915#34]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk5/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-glk8/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:
    - shard-glk:          [FAIL][77] ([i915#49]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][79] ([i915#69]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][81] ([fdo#108145]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][83] ([i915#899]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][85] ([fdo#109441]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb1/igt@kms_psr@psr2_no_drrs.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-tglb:         [SKIP][87] ([i915#668]) -> [PASS][88] +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-tglb5/igt@kms_psr@psr2_primary_mmap_gtt.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-tglb2/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][89] ([i915#31]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl3/igt@kms_setmode@basic.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-apl7/igt@kms_setmode@basic.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][91] ([fdo#112080]) -> [PASS][92] +8 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb6/igt@perf_pmu@init-busy-vcs1.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-iclb1/igt@perf_pmu@init-busy-vcs1.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-hsw:          [TIMEOUT][93] ([fdo#112271]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw2/igt@sw_sync@sync_multi_producer_single_consumer.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-hsw4/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][95] ([fdo#112080]) -> [FAIL][96] ([IGT#28])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][97] ([i915#694]) -> [FAIL][98] ([i915#818])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw4/igt@gem_tiled_blits@interruptible.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-hsw8/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_rpm@legacy-planes-dpms:
    - shard-snb:          [SKIP][99] ([fdo#109271]) -> [INCOMPLETE][100] ([i915#82])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-snb6/igt@i915_pm_rpm@legacy-planes-dpms.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-snb4/igt@i915_pm_rpm@legacy-planes-dpms.html

  * igt@kms_content_protection@lic:
    - shard-kbl:          [TIMEOUT][101] ([fdo#112271]) -> [TIMEOUT][102] ([fdo#112271] / [i915#727])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl1/igt@kms_content_protection@lic.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-kbl7/igt@kms_content_protection@lic.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:
    - shard-hsw:          [INCOMPLETE][103] ([CI#80] / [i915#61]) -> [INCOMPLETE][104] ([i915#61])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw7/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-hsw7/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-kbl:          [INCOMPLETE][105] ([CI#80] / [fdo#103665]) -> [INCOMPLETE][106] ([fdo#103665])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl4/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-kbl7/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@runner@aborted:
    - shard-snb:          ([FAIL][107], [FAIL][108], [FAIL][109], [FAIL][110], [FAIL][111], [FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115]) ([fdo#111870] / [i915#1077]) -> ([FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125]) ([fdo#111870] / [i915#1077] / [i915#974])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-snb2/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-snb6/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-snb2/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-snb4/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-snb5/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-snb6/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-snb4/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-snb1/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-snb5/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-snb1/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-snb6/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-snb5/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-snb5/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-snb5/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-snb4/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-snb2/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-snb2/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-snb1/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/shard-snb1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1077]: https://gitlab.freedesktop.org/drm/intel/issues/1077
  [i915#1291]: https://gitlab.freedesktop.org/drm/intel/issues/1291
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#727]: https://gitlab.freedesktop.org/drm/intel/issues/727
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#974]: https://gitlab.freedesktop.org/drm/intel/issues/974
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7984 -> Patchwork_16670

  CI-20190529: 20190529
  CI_DRM_7984: ab1d770e389d9407be633b5afbe6859e0072ca9d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5458: 5f7e4ae6a91ed2c104593b8abd5b71a6cc96fc10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16670: ab3b2e7372aa5a4877ebf82fe5f7cbd0d6531fda @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16670/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
