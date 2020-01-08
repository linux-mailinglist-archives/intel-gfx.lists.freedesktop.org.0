Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6AF133A18
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 05:19:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6BE86E16F;
	Wed,  8 Jan 2020 04:19:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 81B946E167;
 Wed,  8 Jan 2020 04:19:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 778E0A0087;
 Wed,  8 Jan 2020 04:19:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 08 Jan 2020 04:19:43 -0000
Message-ID: <157845718346.23224.5540528224281730026@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200107143826.3298401-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200107143826.3298401-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Drop_a_defunct_timeline_assertion?=
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

Series: drm/i915/gt: Drop a defunct timeline assertion
URL   : https://patchwork.freedesktop.org/series/71697/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7695_full -> Patchwork_16015_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16015_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +10 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-iclb5/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-kbl3/igt@gem_ctx_isolation@bcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-kbl1/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-iclb6/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#469])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb1/igt@gem_eio@unwedge-stress.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-tglb1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#111593] / [i915#472])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb5/igt@gem_exec_gttfill@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-tglb8/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#435] / [i915#472]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb7/igt@gem_exec_nop@basic-sequential.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-tglb8/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +20 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb1/igt@gem_exec_schedule@independent-bsd2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-iclb3/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([i915#677]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-blt:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([fdo#111606] / [fdo#111677] / [i915#472])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb1/igt@gem_exec_schedule@preempt-queue-chain-blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-tglb4/igt@gem_exec_schedule@preempt-queue-chain-blt.html

  * igt@gem_mmap_gtt@hang:
    - shard-snb:          [PASS][21] -> [INCOMPLETE][22] ([i915#82])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-snb2/igt@gem_mmap_gtt@hang.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-snb4/igt@gem_mmap_gtt@hang.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-tglb:         [PASS][23] -> [TIMEOUT][24] ([fdo#112126] / [i915#530])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb2/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-tglb6/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][25] -> [DMESG-WARN][26] ([i915#716])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-glk6/igt@gen9_exec_parse@allowed-all.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-glk5/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_color@pipe-b-ctm-red-to-blue:
    - shard-skl:          [PASS][27] -> [DMESG-WARN][28] ([i915#109])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl9/igt@kms_color@pipe-b-ctm-red-to-blue.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-skl9/igt@kms_color@pipe-b-ctm-red-to-blue.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt:
    - shard-tglb:         [PASS][31] -> [FAIL][32] ([i915#49]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_vblank@pipe-b-ts-continuation-idle:
    - shard-snb:          [PASS][35] -> [SKIP][36] ([fdo#109271]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-snb5/igt@kms_vblank@pipe-b-ts-continuation-idle.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-snb4/igt@kms_vblank@pipe-b-ts-continuation-idle.html

  
#### Possible fixes ####

  * igt@gem_blits@basic:
    - shard-kbl:          [DMESG-WARN][37] ([i915#836]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-kbl2/igt@gem_blits@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-kbl3/igt@gem_blits@basic.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +7 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][41] ([fdo#109276] / [fdo#112080]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb3/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][43] ([fdo#111735]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb4/igt@gem_ctx_shared@q-smoketest-vebox.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-tglb7/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][45] ([fdo#110854]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb7/igt@gem_exec_balancer@smoke.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-iclb2/igt@gem_exec_balancer@smoke.html
    - shard-tglb:         [INCOMPLETE][47] ([fdo#111593] / [i915#472]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb4/igt@gem_exec_balancer@smoke.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-tglb7/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-render:
    - shard-tglb:         [INCOMPLETE][49] ([fdo#111677] / [i915#472]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-tglb5/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][51] ([fdo#112146]) -> [PASS][52] +8 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-iclb8/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-iclb:         [TIMEOUT][53] ([i915#530]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb6/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-iclb1/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-hsw:          [FAIL][55] ([i915#874]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-hsw5/igt@gem_pipe_control_store_loop@reused-buffer.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-hsw4/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-tglb:         [INCOMPLETE][57] ([i915#470]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb9/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-tglb6/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][59] ([i915#644]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-apl:          [FAIL][61] ([i915#644]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][63] ([i915#472] / [i915#707]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb9/igt@gem_sync@basic-each.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-tglb5/igt@gem_sync@basic-each.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][65] ([i915#413]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb1/igt@i915_pm_rps@waitboost.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-iclb7/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live_hangcheck:
    - shard-tglb:         [INCOMPLETE][67] ([i915#435]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb3/igt@i915_selftest@live_hangcheck.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-tglb1/igt@i915_selftest@live_hangcheck.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [DMESG-WARN][69] ([i915#180]) -> [PASS][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-apl6/igt@i915_suspend@fence-restore-untiled.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-apl2/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-skl:          [FAIL][71] ([i915#54]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][73] ([i915#72]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-panning-interruptible:
    - shard-skl:          [DMESG-WARN][75] ([i915#109]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl1/igt@kms_flip@flip-vs-panning-interruptible.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-skl5/igt@kms_flip@flip-vs-panning-interruptible.html

  * igt@kms_flip_tiling@flip-changes-tiling-yf:
    - shard-skl:          [FAIL][77] ([i915#699]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl4/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-skl10/igt@kms_flip_tiling@flip-changes-tiling-yf.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
    - shard-tglb:         [FAIL][79] ([i915#49]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][81] ([fdo#108145]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][83] ([fdo#109441]) -> [PASS][84] +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb3/igt@kms_psr@psr2_primary_blt.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][85] ([i915#69]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl9/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-skl4/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
    - shard-kbl:          [INCOMPLETE][87] ([fdo#103665]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [SKIP][89] ([fdo#112080]) -> [PASS][90] +9 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb7/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-iclb2/igt@perf_pmu@busy-accuracy-98-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][91] ([fdo#109276]) -> [PASS][92] +23 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][93] ([fdo#109276] / [fdo#112080]) -> [FAIL][94] ([IGT#28])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_ctx_isolation@vcs2-reset:
    - shard-tglb:         [SKIP][95] ([fdo#111912] / [fdo#112080]) -> [SKIP][96] ([fdo#112080])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb3/igt@gem_ctx_isolation@vcs2-reset.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-tglb9/igt@gem_ctx_isolation@vcs2-reset.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][97] ([i915#454]) -> [SKIP][98] ([i915#468])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-tglb1/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [DMESG-WARN][99] ([i915#109]) -> [INCOMPLETE][100] ([i915#69])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl6/igt@kms_fbcon_fbt@psr-suspend.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/shard-skl2/igt@kms_fbcon_fbt@psr-suspend.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#469]: https://gitlab.freedesktop.org/drm/intel/issues/469
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#836]: https://gitlab.freedesktop.org/drm/intel/issues/836
  [i915#874]: https://gitlab.freedesktop.org/drm/intel/issues/874


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7695 -> Patchwork_16015

  CI-20190529: 20190529
  CI_DRM_7695: 8df346a062d56d97ab53555d3f5829c26f950233 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16015: 7a1336e24506abeaccdbf0dd49e75f1e44fed3cf @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16015/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
