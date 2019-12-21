Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 803F81285F1
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Dec 2019 01:18:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBDB46ECD6;
	Sat, 21 Dec 2019 00:18:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6D1DF6ECD2;
 Sat, 21 Dec 2019 00:18:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 650CEA0094;
 Sat, 21 Dec 2019 00:18:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 21 Dec 2019 00:18:46 -0000
Message-ID: <157688752640.32690.1645263613240291953@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191219204417.131219-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191219204417.131219-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Flush_engine-=3Eretire_on_virtual_engine_cleanup?=
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

Series: drm/i915/gt: Flush engine->retire on virtual engine cleanup
URL   : https://patchwork.freedesktop.org/series/71187/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7610_full -> Patchwork_15848_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15848_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15848_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15848_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_shared@exec-shared-gtt-bsd1:
    - shard-apl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-apl2/igt@gem_ctx_shared@exec-shared-gtt-bsd1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-apl6/igt@gem_ctx_shared@exec-shared-gtt-bsd1.html

  * igt@gem_exec_balancer@bonded-imm:
    - shard-iclb:         [PASS][3] -> [DMESG-WARN][4] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-iclb2/igt@gem_exec_balancer@bonded-imm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-iclb4/igt@gem_exec_balancer@bonded-imm.html

  * igt@gem_exec_balancer@full-late-pulse:
    - shard-tglb:         [PASS][5] -> [DMESG-WARN][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb4/igt@gem_exec_balancer@full-late-pulse.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-tglb1/igt@gem_exec_balancer@full-late-pulse.html

  * igt@gem_exec_balancer@individual:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-kbl3/igt@gem_exec_balancer@individual.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-kbl1/igt@gem_exec_balancer@individual.html

  * igt@gem_exec_balancer@invalid-balancer:
    - shard-tglb:         NOTRUN -> [DMESG-WARN][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-tglb2/igt@gem_exec_balancer@invalid-balancer.html

  * igt@gem_exec_balancer@semaphore:
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb6/igt@gem_exec_balancer@semaphore.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-tglb3/igt@gem_exec_balancer@semaphore.html

  
#### Warnings ####

  * igt@i915_selftest@mock_requests:
    - shard-tglb:         [INCOMPLETE][12] -> [DMESG-WARN][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb4/igt@i915_selftest@mock_requests.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-tglb5/igt@i915_selftest@mock_requests.html

  * igt@runner@aborted:
    - shard-apl:          [FAIL][14] -> ([FAIL][15], [FAIL][16]) ([i915#716])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-apl6/igt@runner@aborted.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-apl7/igt@runner@aborted.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-apl1/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_balancer@bonded-chain}:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-iclb2/igt@gem_exec_balancer@bonded-chain.html
    - shard-kbl:          NOTRUN -> [DMESG-WARN][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-kbl2/igt@gem_exec_balancer@bonded-chain.html

  * {igt@gem_exec_balancer@bonded-semaphore}:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-kbl6/igt@gem_exec_balancer@bonded-semaphore.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-kbl6/igt@gem_exec_balancer@bonded-semaphore.html
    - shard-tglb:         NOTRUN -> [DMESG-WARN][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-tglb2/igt@gem_exec_balancer@bonded-semaphore.html

  
Known issues
------------

  Here are the changes found in Patchwork_15848_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][22] -> [SKIP][23] ([fdo#112080]) +6 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-iclb3/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][24] -> [SKIP][25] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-iclb4/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-iclb5/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-snb:          [PASS][26] -> [FAIL][27] ([i915#490])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-snb5/igt@gem_eio@in-flight-contexts-1us.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-snb7/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_balancer@busy:
    - shard-iclb:         [PASS][28] -> [INCOMPLETE][29] ([i915#140]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-iclb6/igt@gem_exec_balancer@busy.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-iclb2/igt@gem_exec_balancer@busy.html

  * igt@gem_exec_balancer@nop:
    - shard-kbl:          [PASS][30] -> [INCOMPLETE][31] ([fdo#103665])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-kbl1/igt@gem_exec_balancer@nop.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-kbl3/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_create@basic:
    - shard-tglb:         [PASS][32] -> [INCOMPLETE][33] ([fdo#111736]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb7/igt@gem_exec_create@basic.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-tglb6/igt@gem_exec_create@basic.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [PASS][34] -> [INCOMPLETE][35] ([fdo#108838] / [i915#435])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb1/igt@gem_exec_create@forked.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-tglb5/igt@gem_exec_create@forked.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][36] -> [SKIP][37] ([fdo#112146]) +6 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-iclb3/igt@gem_exec_schedule@in-order-bsd.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [PASS][38] -> [SKIP][39] ([fdo#109276]) +9 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-iclb4/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-iclb6/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-render:
    - shard-tglb:         [PASS][40] -> [INCOMPLETE][41] ([fdo#111606] / [fdo#111677])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb7/igt@gem_exec_schedule@preempt-queue-render.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-tglb6/igt@gem_exec_schedule@preempt-queue-render.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-iclb:         [PASS][42] -> [FAIL][43] ([i915#644])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-iclb3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-iclb2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][44] -> [DMESG-WARN][45] ([i915#180]) +4 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-tglb:         [PASS][46] -> [INCOMPLETE][47] ([i915#456] / [i915#460]) +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb9/igt@i915_suspend@fence-restore-tiled2untiled.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-tglb8/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - shard-skl:          [PASS][48] -> [DMESG-WARN][49] ([i915#109])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-skl10/igt@kms_color@pipe-a-ctm-0-25.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-skl7/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-skl:          [PASS][50] -> [FAIL][51] ([i915#54])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled:
    - shard-skl:          [PASS][52] -> [INCOMPLETE][53] ([i915#646] / [i915#667])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-skl3/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][54] -> [INCOMPLETE][55] ([i915#221])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-iclb:         [PASS][56] -> [INCOMPLETE][57] ([i915#123] / [i915#140])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt:
    - shard-tglb:         [PASS][58] -> [FAIL][59] ([i915#49]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][60] -> [DMESG-WARN][61] ([i915#180]) +4 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][62] -> [SKIP][63] ([fdo#109441])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [PASS][64] -> [DMESG-WARN][65] ([i915#402])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb9/igt@kms_psr@psr2_suspend.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-tglb7/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-skl:          [PASS][66] -> [INCOMPLETE][67] ([i915#69]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-skl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-tglb:         [PASS][68] -> [DMESG-WARN][69] ([i915#799])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb4/igt@perf_pmu@cpu-hotplug.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-tglb4/igt@perf_pmu@cpu-hotplug.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][70] ([i915#180]) -> [PASS][71] +4 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-tglb:         [INCOMPLETE][72] ([i915#456]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb4/igt@gem_ctx_isolation@vcs0-s3.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-tglb7/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-apl:          [FAIL][74] ([i915#679]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-apl3/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-apl3/igt@gem_ctx_persistence@vcs0-mixed-process.html
    - shard-skl:          [FAIL][76] ([i915#679]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-skl5/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-skl3/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][78] ([fdo#109276] / [fdo#112080]) -> [PASS][79] +3 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-iclb6/igt@gem_ctx_persistence@vcs1-queued.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][80] ([fdo#111735]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb6/igt@gem_ctx_shared@q-smoketest-vebox.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-tglb2/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][82] ([fdo#112080]) -> [PASS][83] +8 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * {igt@gem_exec_schedule@pi-shared-iova-bsd2}:
    - shard-iclb:         [SKIP][84] ([fdo#109276]) -> [PASS][85] +14 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-iclb3/igt@gem_exec_schedule@pi-shared-iova-bsd2.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd2.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][86] ([fdo#112146]) -> [PASS][87] +3 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [INCOMPLETE][88] ([i915#707]) -> [PASS][89] +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd2.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-tglb8/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_sync@basic-many-each:
    - shard-tglb:         [INCOMPLETE][90] ([i915#472] / [i915#707]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb5/igt@gem_sync@basic-many-each.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-tglb2/igt@gem_sync@basic-many-each.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][92] ([i915#435] / [i915#472]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb7/igt@gem_sync@basic-store-each.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-tglb4/igt@gem_sync@basic-store-each.html

  * igt@gem_wait@basic-busy-all:
    - shard-skl:          [DMESG-WARN][94] ([i915#109]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-skl7/igt@gem_wait@basic-busy-all.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-skl2/igt@gem_wait@basic-busy-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][96] ([i915#454]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-iclb5/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
    - shard-skl:          [FAIL][98] ([i915#54]) -> [PASS][99] +2 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled:
    - shard-skl:          [INCOMPLETE][100] ([i915#646] / [i915#667]) -> [PASS][101] +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-skl10/igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-skl7/igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][102] ([i915#79]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][104] ([i915#221]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-skl10/igt@kms_flip@flip-vs-suspend.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-skl7/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-onoff:
    - shard-tglb:         [INCOMPLETE][106] ([i915#474] / [i915#667]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-onoff.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:
    - shard-tglb:         [FAIL][108] ([i915#49]) -> [PASS][109] +2 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt:
    - shard-iclb:         [INCOMPLETE][110] ([i915#123] / [i915#140]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-iclb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-iclb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html
    - shard-tglb:         [INCOMPLETE][112] ([i915#435] / [i915#667]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][114] ([fdo#108145] / [i915#265]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-c-viewport-size-128:
    - shard-hsw:          [DMESG-WARN][116] ([i915#44]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-hsw5/igt@kms_plane_cursor@pipe-c-viewport-size-128.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-hsw4/igt@kms_plane_cursor@pipe-c-viewport-size-128.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][118] ([fdo#109441]) -> [PASS][119] +2 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][120] ([i915#180]) -> [PASS][121] +3 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-clean:
    - shard-tglb:         [SKIP][122] ([fdo#112080]) -> [SKIP][123] ([fdo#111912] / [fdo#112080])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-tglb9/igt@gem_ctx_isolation@vcs2-clean.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-tglb7/igt@gem_ctx_isolation@vcs2-clean.html

  * igt@gem_eio@kms:
    - shard-snb:          [DMESG-WARN][124] ([i915#443] / [i915#444]) -> [INCOMPLETE][125] ([i915#82])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-snb5/igt@gem_eio@kms.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-snb1/igt@gem_eio@kms.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][126] ([i915#832]) -> [FAIL][127] ([i915#818])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-hsw4/igt@gem_tiled_blits@interruptible.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-hsw5/igt@gem_tiled_blits@interruptible.html

  * igt@i915_selftest@mock_requests:
    - shard-snb:          [DMESG-WARN][128] -> [INCOMPLETE][129] ([i915#82])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-snb7/igt@i915_selftest@mock_requests.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-snb7/igt@i915_selftest@mock_requests.html
    - shard-glk:          [DMESG-WARN][130] ([i915#802]) -> [INCOMPLETE][131] ([i915#58] / [k.org#198133])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-glk7/igt@i915_selftest@mock_requests.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-glk8/igt@i915_selftest@mock_requests.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][132] ([i915#648] / [i915#667]) -> [INCOMPLETE][133] ([i915#648])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/shard-skl7/igt@kms_plane@pixel-format-pipe-b-planes.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/shard-skl6/igt@kms_plane@pixel-format-pipe-b-planes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#443]: https://gitlab.freedesktop.org/drm/intel/issues/443
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#646]: https://gitlab.freedesktop.org/drm/intel/issues/646
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#799]: https://gitlab.freedesktop.org/drm/intel/issues/799
  [i915#802]: https://gitlab.freedesktop.org/drm/intel/issues/802
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7610 -> Patchwork_15848

  CI-20190529: 20190529
  CI_DRM_7610: 26117c3187bfcdee1f9501ff304f62252681d279 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15848: 9b679b5aeee8d1d2e714ca8615f1f36059e6af08 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
