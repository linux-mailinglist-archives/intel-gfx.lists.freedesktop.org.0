Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 087CA13AB17
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 14:29:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 780E66E3B2;
	Tue, 14 Jan 2020 13:29:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C493D6E3AE;
 Tue, 14 Jan 2020 13:29:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BB3DCA41FB;
 Tue, 14 Jan 2020 13:29:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 14 Jan 2020 13:29:29 -0000
Message-ID: <157900856973.24907.11121974771098475729@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200110144418.1415639-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200110144418.1415639-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Hold_rpm_wakeref_before_taking_ggtt-=3Evm=2Emutex?=
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

Series: drm/i915/gt: Hold rpm wakeref before taking ggtt->vm.mutex
URL   : https://patchwork.freedesktop.org/series/71889/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7720_full -> Patchwork_16054_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16054_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vcs1-mixed:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-iclb3/igt@gem_ctx_persistence@vcs1-mixed.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-apl:          [PASS][3] -> [FAIL][4] ([i915#679])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-apl6/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-apl3/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([fdo#111735]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb7/igt@gem_ctx_shared@q-smoketest-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-tglb8/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb3/igt@gem_exec_async@concurrent-writes-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_await@wide-contexts:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#111736] / [i915#472])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb7/igt@gem_exec_await@wide-contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-tglb3/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_balancer@smoke:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([fdo#111593] / [i915#472])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb9/igt@gem_exec_balancer@smoke.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-tglb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#470] / [i915#472])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb4/igt@gem_exec_parallel@contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-tglb3/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112080]) +10 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_reloc@basic-gtt-read-active:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#109]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-skl3/igt@gem_exec_reloc@basic-gtt-read-active.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-skl7/igt@gem_exec_reloc@basic-gtt-read-active.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([i915#677])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb7/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd2:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([fdo#111677] / [i915#472])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb7/igt@gem_exec_schedule@preempt-queue-chain-bsd2.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-tglb8/igt@gem_exec_schedule@preempt-queue-chain-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd1:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([fdo#111606] / [fdo#111677] / [i915#472])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#644])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-many-each:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#472] / [i915#707])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb1/igt@gem_sync@basic-many-each.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-tglb7/igt@gem_sync@basic-many-each.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#472]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb5/igt@gem_sync@basic-store-all.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-tglb1/igt@gem_sync@basic-store-all.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#454]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb5/igt@i915_pm_dc@dc6-dpms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@basic-rte:
    - shard-iclb:         [PASS][33] -> [INCOMPLETE][34] ([i915#140] / [i915#189])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb5/igt@i915_pm_rpm@basic-rte.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-iclb2/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-apl:          [PASS][35] -> [FAIL][36] ([i915#39])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-apl2/igt@i915_pm_rps@min-max-config-loaded.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-apl8/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-rapid-movement:
    - shard-hsw:          [PASS][37] -> [DMESG-WARN][38] ([i915#44])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-hsw2/igt@kms_cursor_crc@pipe-c-cursor-256x256-rapid-movement.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-hsw5/igt@kms_cursor_crc@pipe-c-cursor-256x256-rapid-movement.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#79]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt:
    - shard-tglb:         [PASS][41] -> [FAIL][42] ([i915#49]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180]) +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([fdo#108145])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][47] -> [DMESG-WARN][48] ([i915#180])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@blocking:
    - shard-tglb:         [PASS][49] -> [TIMEOUT][50] ([fdo#112271] / [i915#472])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb2/igt@perf@blocking.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-tglb2/igt@perf@blocking.html

  * igt@perf@oa-exponents:
    - shard-glk:          [PASS][51] -> [FAIL][52] ([i915#84])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-glk1/igt@perf@oa-exponents.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-glk3/igt@perf@oa-exponents.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#109276]) +14 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html

  * igt@prime_vgem@sync-render:
    - shard-iclb:         [PASS][55] -> [INCOMPLETE][56] ([i915#140])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb2/igt@prime_vgem@sync-render.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-iclb4/igt@prime_vgem@sync-render.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][57] ([fdo#112080]) -> [PASS][58] +5 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb3/igt@gem_busy@busy-vcs1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-skl:          [INCOMPLETE][59] ([i915#69]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-skl8/igt@gem_ctx_isolation@rcs0-s3.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-skl7/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][61] ([fdo#109276] / [fdo#112080]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb7/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-iclb4/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-iclb:         [DMESG-WARN][63] ([fdo#111764]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb7/igt@gem_ctx_isolation@vecs0-s3.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-iclb4/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][65] ([fdo#110841]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][67] ([fdo#111735]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-tglb5/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          [FAIL][69] ([i915#232]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-snb6/igt@gem_eio@unwedge-stress.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-snb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_schedule@fifo-bsd:
    - shard-iclb:         [SKIP][71] ([fdo#112146]) -> [PASS][72] +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb1/igt@gem_exec_schedule@fifo-bsd.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-iclb5/igt@gem_exec_schedule@fifo-bsd.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [SKIP][73] ([fdo#109276]) -> [PASS][74] +13 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb3/igt@gem_exec_schedule@out-order-bsd2.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-iclb4/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][75] ([i915#463] / [i915#472]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb9/igt@gem_exec_schedule@smoketest-bsd1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-tglb8/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_persistent_relocs@forked-interruptible:
    - shard-kbl:          [FAIL][77] ([i915#520]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-kbl6/igt@gem_persistent_relocs@forked-interruptible.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][79] ([i915#472] / [i915#707]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb6/igt@gem_sync@basic-each.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-tglb4/igt@gem_sync@basic-each.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82] +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-apl3/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_rpm@gem-idle:
    - shard-iclb:         [DMESG-WARN][83] ([i915#958]) -> [PASS][84] +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb8/igt@i915_pm_rpm@gem-idle.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-iclb7/igt@i915_pm_rpm@gem-idle.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [FAIL][85] ([i915#34]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-skl3/igt@kms_flip@plain-flip-fb-recreate.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-skl5/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-glk:          [FAIL][87] ([i915#34]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-glk3/igt@kms_flip@plain-flip-ts-check.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-glk7/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-tglb:         [INCOMPLETE][89] -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb8/igt@kms_plane@pixel-format-pipe-a-planes.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-tglb7/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [DMESG-WARN][91] ([i915#180]) -> [PASS][92] +6 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][93] ([fdo#109441]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb1/igt@kms_psr@psr2_suspend.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@perf@disabled-read-error:
    - shard-iclb:         [DMESG-WARN][95] ([i915#645]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb6/igt@perf@disabled-read-error.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-iclb8/igt@perf@disabled-read-error.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-none:
    - shard-tglb:         [SKIP][97] ([fdo#112080]) -> [SKIP][98] ([fdo#111912] / [fdo#112080])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb9/igt@gem_ctx_isolation@vcs2-none.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-tglb1/igt@gem_ctx_isolation@vcs2-none.html

  * igt@gem_ctx_isolation@vcs2-nonpriv-switch:
    - shard-tglb:         [SKIP][99] ([fdo#111912] / [fdo#112080]) -> [SKIP][100] ([fdo#112080])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb2/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][101] ([i915#694]) -> [FAIL][102] ([i915#818])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-hsw7/igt@gem_tiled_blits@interruptible.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-hsw2/igt@gem_tiled_blits@interruptible.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][103] ([i915#818]) -> [FAIL][104] ([i915#694])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-hsw5/igt@gem_tiled_blits@normal.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-hsw2/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][105] ([i915#468]) -> [FAIL][106] ([i915#454])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb8/igt@i915_pm_dc@dc6-dpms.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing:
    - shard-tglb:         [SKIP][107] ([fdo#112016] / [fdo#112021]) -> [SKIP][108] ([fdo#112021])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb2/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html

  * igt@runner@aborted:
    - shard-iclb:         ([FAIL][109], [FAIL][110], [FAIL][111]) ([fdo#110275] / [fdo#111093]) -> ([FAIL][112], [FAIL][113], [FAIL][114]) ([fdo#111093])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb7/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb6/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb2/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-iclb4/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-iclb4/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/shard-iclb1/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110275]: https://bugs.freedesktop.org/show_bug.cgi?id=110275
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111093]: https://bugs.freedesktop.org/show_bug.cgi?id=111093
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#645]: https://gitlab.freedesktop.org/drm/intel/issues/645
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84
  [i915#958]: https://gitlab.freedesktop.org/drm/intel/issues/958


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7720 -> Patchwork_16054

  CI-20190529: 20190529
  CI_DRM_7720: 3770105165843883b1422bb3bc5bc8601dfc8051 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16054: 11b779254a261dd0dbe14311b76e2f4fb12b7423 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16054/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
