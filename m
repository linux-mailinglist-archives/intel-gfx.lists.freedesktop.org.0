Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8AA16A82C
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 15:19:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8068A6E500;
	Mon, 24 Feb 2020 14:19:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BC3E86E4FE;
 Mon, 24 Feb 2020 14:19:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B509FA00E9;
 Mon, 24 Feb 2020 14:19:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Mon, 24 Feb 2020 14:19:50 -0000
Message-ID: <158255399071.28360.1267027428398436511@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200221172927.510027-1-hdegoede@redhat.com>
In-Reply-To: <20200221172927.510027-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bresend=2C1/2=5D_drm/i915=3A_panel=3A_Use_i?=
 =?utf-8?q?ntel=5Fpanel=5Fcompute=5Fbrightness=28=29_from_pwm=5Fsetup=5Fba?=
 =?utf-8?b?Y2tsaWdodCgp?=
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

Series: series starting with [resend,1/2] drm/i915: panel: Use intel_panel_compute_brightness() from pwm_setup_backlight()
URL   : https://patchwork.freedesktop.org/series/73784/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7984_full -> Patchwork_16668_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16668_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +16 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-iclb7/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112146]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb3/igt@gem_exec_async@concurrent-writes-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276]) +21 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb2/igt@gem_exec_schedule@out-order-bsd2.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-iclb3/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb3/igt@gem_exec_schedule@pi-userfault-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +8 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl2/igt@gem_exec_suspend@basic-s3.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-kbl7/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [PASS][13] -> [INCOMPLETE][14] ([i915#61])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-hsw2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#49])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +5 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [i915#265])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#899])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#31])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl7/igt@kms_setmode@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-skl3/igt@kms_setmode@basic.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-tglb:         [PASS][27] -> [TIMEOUT][28] ([fdo#112271])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-tglb1/igt@sw_sync@sync_multi_producer_single_consumer.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-tglb6/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][29] ([fdo#110854]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb7/igt@gem_exec_balancer@smoke.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_reuse@baggage:
    - shard-apl:          [TIMEOUT][31] ([fdo#112271]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl7/igt@gem_exec_reuse@baggage.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-apl8/igt@gem_exec_reuse@baggage.html

  * {igt@gem_exec_schedule@implicit-both-bsd2}:
    - shard-iclb:         [SKIP][33] ([fdo#109276] / [i915#677]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd2.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][35] ([i915#677]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][37] ([fdo#112146]) -> [PASS][38] +7 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][39] ([i915#644]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-glk:          [FAIL][41] -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk4/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-glk5/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-hsw:          [FAIL][43] ([i915#694]) -> [PASS][44] +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw4/igt@gen7_exec_parse@basic-offset.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-hsw2/igt@gen7_exec_parse@basic-offset.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][45] ([i915#447]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-iclb2/igt@i915_pm_dc@dc5-dpms.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +4 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][49] ([i915#79]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk6/igt@kms_flip@flip-vs-expired-vblank.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-glk8/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-glk:          [FAIL][53] ([i915#34]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-glk5/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-glk6/igt@kms_flip@plain-flip-ts-check-interruptible.html
    - shard-kbl:          [INCOMPLETE][55] ([CI#80] / [fdo#103665]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl4/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-kbl1/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][57] ([i915#69]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][59] ([fdo#108145]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-tglb:         [SKIP][61] ([i915#668]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-tglb5/igt@kms_psr@psr2_primary_mmap_gtt.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-tglb8/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][63] ([fdo#109441]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][65] ([i915#31]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-apl3/igt@kms_setmode@basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-apl6/igt@kms_setmode@basic.html
    - shard-kbl:          [FAIL][67] ([i915#31]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-kbl1/igt@kms_setmode@basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-kbl7/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [SKIP][69] ([fdo#112080]) -> [PASS][70] +15 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb8/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-iclb4/igt@perf_pmu@busy-accuracy-98-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][71] ([fdo#109276]) -> [PASS][72] +22 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb8/igt@prime_busy@hang-bsd2.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-iclb4/igt@prime_busy@hang-bsd2.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-hsw:          [TIMEOUT][73] ([fdo#112271]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw2/igt@sw_sync@sync_multi_producer_single_consumer.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-hsw1/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][75] ([fdo#112080]) -> [FAIL][76] ([IGT#28])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][77] ([i915#694]) -> [FAIL][78] ([i915#818])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-hsw4/igt@gem_tiled_blits@interruptible.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-hsw8/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_rpm@legacy-planes-dpms:
    - shard-snb:          [SKIP][79] ([fdo#109271]) -> [INCOMPLETE][80] ([i915#82])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/shard-snb6/igt@i915_pm_rpm@legacy-planes-dpms.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/shard-snb5/igt@i915_pm_rpm@legacy-planes-dpms.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
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
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7984 -> Patchwork_16668

  CI-20190529: 20190529
  CI_DRM_7984: ab1d770e389d9407be633b5afbe6859e0072ca9d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5458: 5f7e4ae6a91ed2c104593b8abd5b71a6cc96fc10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16668: dc2359f4d6a7333a39b2b10a9f8b8fc0af6dddc8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16668/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
