Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1F5173014
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 05:58:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 488F36E9A1;
	Fri, 28 Feb 2020 04:58:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1E76E6E9A1;
 Fri, 28 Feb 2020 04:58:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0F7C3A363D;
 Fri, 28 Feb 2020 04:58:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Date: Fri, 28 Feb 2020 04:58:55 -0000
Message-ID: <158286593503.7476.7854816323590549267@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200221153209.268712-1-michal.wajdeczko@intel.com>
In-Reply-To: <20200221153209.268712-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/huc=3A_Fix_error_reported_by_I915=5FPARAM=5FHUC=5FSTATUS_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915/huc: Fix error reported by I915_PARAM_HUC_STATUS (rev2)
URL   : https://patchwork.freedesktop.org/series/72419/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7984_full -> Patchwork_16665_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_16665_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16665_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16665_full:

### IGT changes ###

#### Warnings ####

  * igt@gem_exec_reuse@baggage:
    - shard-skl:          [TIMEOUT][1] ([fdo#112271]) -> [TIMEOUT][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl5/igt@gem_exec_reuse@baggage.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-skl6/igt@gem_exec_reuse@baggage.html

  * igt@gem_pwrite@huge-cpu-fbr:
    - shard-hsw:          [TIMEOUT][3] ([fdo#112271]) -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw5/igt@gem_pwrite@huge-cpu-fbr.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-hsw5/igt@gem_pwrite@huge-cpu-fbr.html

  
Known issues
------------

  Here are the changes found in Patchwork_16665_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_caching@reads:
    - shard-hsw:          [PASS][5] -> [FAIL][6] ([i915#694])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw6/igt@gem_caching@reads.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-hsw5/igt@gem_caching@reads.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-apl:          [PASS][7] -> [INCOMPLETE][8] ([fdo#103927] / [i915#1291])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl4/igt@gem_ctx_persistence@close-replace-race.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-apl6/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#1277])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-tglb6/igt@gem_exec_balancer@hang.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-tglb2/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +13 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb4/igt@gem_exec_schedule@fifo-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-iclb8/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([i915#677]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109276] / [i915#677])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-iclb6/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#644])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][21] -> [FAIL][22] ([i915#454])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb7/igt@i915_pm_dc@dc6-dpms.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [PASS][23] -> [FAIL][24] ([fdo#103375])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl1/igt@i915_suspend@fence-restore-untiled.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-kbl3/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +4 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [PASS][27] -> [FAIL][28] ([i915#96])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-hsw4/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [PASS][29] -> [INCOMPLETE][30] ([i915#61])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-hsw4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@basic:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#49]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk7/igt@kms_frontbuffer_tracking@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-glk5/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#31])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl7/igt@kms_setmode@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-skl7/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#112080]) +11 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb4/igt@perf_pmu@busy-vcs1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-iclb6/igt@perf_pmu@busy-vcs1.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-snb:          [PASS][41] -> [TIMEOUT][42] ([i915#1328])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-snb2/igt@sw_sync@sync_multi_producer_single_consumer.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-snb4/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][43] ([fdo#110854]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb7/igt@gem_exec_balancer@smoke.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_reuse@baggage:
    - shard-apl:          [TIMEOUT][45] ([fdo#112271]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl7/igt@gem_exec_reuse@baggage.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-apl4/igt@gem_exec_reuse@baggage.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][47] ([i915#677]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][49] ([fdo#112146]) -> [PASS][50] +6 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-iclb3/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][51] ([fdo#109276]) -> [PASS][52] +16 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [FAIL][53] ([i915#644]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-skl9/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_blits@interruptible:
    - shard-glk:          [TIMEOUT][55] ([fdo#112271]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk6/igt@gem_tiled_blits@interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-glk7/igt@gem_tiled_blits@interruptible.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-glk:          [FAIL][57] ([i915#1309]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk4/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-glk3/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-hsw:          [FAIL][59] ([i915#694]) -> [PASS][60] +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw4/igt@gen7_exec_parse@basic-offset.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-hsw6/igt@gen7_exec_parse@basic-offset.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][61] ([i915#447]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-iclb5/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_selftest@mock_buddy:
    - shard-skl:          [INCOMPLETE][63] ([i915#1310]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl3/igt@i915_selftest@mock_buddy.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-skl1/igt@i915_selftest@mock_buddy.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-random:
    - shard-skl:          [FAIL][65] ([i915#54]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +4 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][69] ([i915#79]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk6/igt@kms_flip@flip-vs-expired-vblank.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-glk7/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-glk:          [FAIL][71] ([i915#34]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk5/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-glk1/igt@kms_flip@plain-flip-ts-check-interruptible.html
    - shard-kbl:          [INCOMPLETE][73] ([CI#80] / [fdo#103665]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl4/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-kbl2/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:
    - shard-glk:          [FAIL][75] ([i915#49]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][77] ([i915#180]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][79] ([i915#69]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][81] ([fdo#108145]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][83] ([fdo#108145] / [i915#265]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][85] ([fdo#109441]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb3/igt@kms_psr@psr2_basic.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-tglb:         [SKIP][87] ([i915#668]) -> [PASS][88] +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-tglb5/igt@kms_psr@psr2_primary_mmap_gtt.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-tglb3/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][89] ([i915#31]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl3/igt@kms_setmode@basic.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-apl7/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][91] ([fdo#112080]) -> [PASS][92] +11 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb8/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-kbl:          [TIMEOUT][93] ([fdo#112271]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl1/igt@sw_sync@sync_multi_producer_single_consumer.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-kbl7/igt@sw_sync@sync_multi_producer_single_consumer.html
    - shard-skl:          [TIMEOUT][95] ([fdo#112271]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl7/igt@sw_sync@sync_multi_producer_single_consumer.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-skl2/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][97] ([fdo#112080]) -> [FAIL][98] ([IGT#28])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_fence_thrash@bo-write-verify-threaded-x:
    - shard-iclb:         [TIMEOUT][99] ([fdo#112271]) -> [TIMEOUT][100] ([i915#1321]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb4/igt@gem_fence_thrash@bo-write-verify-threaded-x.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-iclb6/igt@gem_fence_thrash@bo-write-verify-threaded-x.html

  * igt@gem_fence_thrash@bo-write-verify-threaded-y:
    - shard-skl:          [TIMEOUT][101] ([fdo#112271]) -> [TIMEOUT][102] ([i915#1321]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl9/igt@gem_fence_thrash@bo-write-verify-threaded-y.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-skl10/igt@gem_fence_thrash@bo-write-verify-threaded-y.html

  * igt@gem_linear_blits@interruptible:
    - shard-apl:          [TIMEOUT][103] ([fdo#112271]) -> [TIMEOUT][104] ([i915#1322])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl6/igt@gem_linear_blits@interruptible.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-apl3/igt@gem_linear_blits@interruptible.html

  * igt@gem_linear_blits@normal:
    - shard-apl:          [TIMEOUT][105] ([fdo#111732] / [fdo#112271]) -> [TIMEOUT][106] ([fdo#111732])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl4/igt@gem_linear_blits@normal.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-apl8/igt@gem_linear_blits@normal.html

  * igt@gem_pwrite@big-gtt-fbr:
    - shard-glk:          [TIMEOUT][107] ([fdo#112271]) -> [TIMEOUT][108] ([i915#1283]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk7/igt@gem_pwrite@big-gtt-fbr.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-glk7/igt@gem_pwrite@big-gtt-fbr.html
    - shard-apl:          [TIMEOUT][109] ([fdo#112271]) -> [TIMEOUT][110] ([i915#1283]) +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl4/igt@gem_pwrite@big-gtt-fbr.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-apl1/igt@gem_pwrite@big-gtt-fbr.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [TIMEOUT][111] ([fdo#112271]) -> [TIMEOUT][112] ([i915#1325])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl1/igt@gem_softpin@noreloc-s3.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-skl8/igt@gem_softpin@noreloc-s3.html

  * igt@gem_tiled_blits@normal:
    - shard-apl:          [TIMEOUT][113] ([fdo#112271]) -> [TIMEOUT][114] ([i915#1286]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl8/igt@gem_tiled_blits@normal.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-apl3/igt@gem_tiled_blits@normal.html
    - shard-hsw:          [FAIL][115] ([i915#694]) -> [FAIL][116] ([i915#818])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw2/igt@gem_tiled_blits@normal.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-hsw1/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][117] ([i915#454]) -> [SKIP][118] ([i915#468])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-tglb8/igt@i915_pm_dc@dc6-dpms.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@legacy-planes-dpms:
    - shard-iclb:         [TIMEOUT][119] ([fdo#112271]) -> [TIMEOUT][120] ([i915#1281]) +3 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb6/igt@i915_pm_rpm@legacy-planes-dpms.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-iclb8/igt@i915_pm_rpm@legacy-planes-dpms.html

  * igt@i915_pm_rpm@universal-planes-dpms:
    - shard-tglb:         [TIMEOUT][121] ([fdo#112126] / [fdo#112271]) -> [TIMEOUT][122] ([fdo#112126] / [i915#1281]) +3 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-tglb3/igt@i915_pm_rpm@universal-planes-dpms.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-tglb5/igt@i915_pm_rpm@universal-planes-dpms.html

  * igt@i915_selftest@live_gt_lrc:
    - shard-tglb:         [DMESG-FAIL][123] ([i915#1233]) -> [INCOMPLETE][124] ([i915#1233])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-tglb1/igt@i915_selftest@live_gt_lrc.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-tglb8/igt@i915_selftest@live_gt_lrc.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-glk:          [TIMEOUT][125] ([fdo#112271]) -> [TIMEOUT][126] ([i915#1320]) +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-glk9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][127] ([fdo#112271]) -> [TIMEOUT][128] ([i915#1319]) +4 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl3/igt@kms_content_protection@atomic.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-kbl2/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][129] ([fdo#112271]) -> [TIMEOUT][130] ([i915#1319]) +4 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl3/igt@kms_content_protection@lic.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-apl6/igt@kms_content_protection@lic.html

  * igt@kms_flip@flip-vs-modeset-vs-hang-interruptible:
    - shard-glk:          [TIMEOUT][131] ([fdo#112271]) -> [TIMEOUT][132] ([i915#1284]) +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk4/igt@kms_flip@flip-vs-modeset-vs-hang-interruptible.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-glk9/igt@kms_flip@flip-vs-modeset-vs-hang-interruptible.html
    - shard-tglb:         [TIMEOUT][133] ([fdo#112271] / [i915#561]) -> [TIMEOUT][134] ([i915#1284] / [i915#561]) +1 similar issue
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-tglb3/igt@kms_flip@flip-vs-modeset-vs-hang-interruptible.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-tglb6/igt@kms_flip@flip-vs-modeset-vs-hang-interruptible.html

  * igt@perf@gen12-mi-rpc:
    - shard-tglb:         [TIMEOUT][135] ([fdo#112271] / [i915#1085]) -> [TIMEOUT][136] ([i915#1085])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-tglb6/igt@perf@gen12-mi-rpc.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-tglb7/igt@perf@gen12-mi-rpc.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-hsw:          [TIMEOUT][137] ([fdo#112271]) -> [TIMEOUT][138] ([i915#1328])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw2/igt@sw_sync@sync_multi_producer_single_consumer.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-hsw1/igt@sw_sync@sync_multi_producer_single_consumer.html
    - shard-glk:          [TIMEOUT][139] ([fdo#112271]) -> [TIMEOUT][140] ([i915#1328])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk9/igt@sw_sync@sync_multi_producer_single_consumer.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-glk6/igt@sw_sync@sync_multi_producer_single_consumer.html
    - shard-apl:          [TIMEOUT][141] ([fdo#112271]) -> [TIMEOUT][142] ([i915#1328])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl4/igt@sw_sync@sync_multi_producer_single_consumer.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/shard-apl6/igt@sw_sync@sync_multi_producer_single_consumer.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1085]: https://gitlab.freedesktop.org/drm/intel/issues/1085
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#1281]: https://gitlab.freedesktop.org/drm/intel/issues/1281
  [i915#1283]: https://gitlab.freedesktop.org/drm/intel/issues/1283
  [i915#1284]: https://gitlab.freedesktop.org/drm/intel/issues/1284
  [i915#1286]: https://gitlab.freedesktop.org/drm/intel/issues/1286
  [i915#1291]: https://gitlab.freedesktop.org/drm/intel/issues/1291
  [i915#1309]: https://gitlab.freedesktop.org/drm/intel/issues/1309
  [i915#1310]: https://gitlab.freedesktop.org/drm/intel/issues/1310
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1320]: https://gitlab.freedesktop.org/drm/intel/issues/1320
  [i915#1321]: https://gitlab.freedesktop.org/drm/intel/issues/1321
  [i915#1322]: https://gitlab.freedesktop.org/drm/intel/issues/1322
  [i915#1325]: https://gitlab.freedesktop.org/drm/intel/issues/1325
  [i915#1328]: https://gitlab.freedesktop.org/drm/intel/issues/1328
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#561]: https://gitlab.freedesktop.org/drm/intel/issues/561
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7984 -> Patchwork_16665

  CI-20190529: 20190529
  CI_DRM_7984: ab1d7

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
