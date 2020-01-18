Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 556091418D8
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2020 19:02:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF5E16E0A6;
	Sat, 18 Jan 2020 18:02:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 35A706E0A6;
 Sat, 18 Jan 2020 18:02:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2BE7EA363B;
 Sat, 18 Jan 2020 18:02:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Sat, 18 Jan 2020 18:02:53 -0000
Message-ID: <157937057314.11510.5772659494604110578@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200110134913.24325-1-anshuman.gupta@intel.com>
In-Reply-To: <20200110134913.24325-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/hdcp=3A_update_HDCP_CP_property_as_per_port_authenticatio?=
 =?utf-8?q?n_state_=28rev2=29?=
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

Series: drm/i915/hdcp: update HDCP CP property as per port authentication state (rev2)
URL   : https://patchwork.freedesktop.org/series/71887/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7753_full -> Patchwork_16122_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16122_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-dirty-switch:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [fdo#112080])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-switch.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-iclb8/igt@gem_ctx_isolation@vcs1-dirty-switch.html

  * igt@gem_eio@kms:
    - shard-skl:          [PASS][3] -> [DMESG-WARN][4] ([i915#109])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl8/igt@gem_eio@kms.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-skl5/igt@gem_eio@kms.html

  * igt@gem_exec_await@wide-all:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([fdo#111736] / [i915#472])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb4/igt@gem_exec_await@wide-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-tglb6/igt@gem_exec_await@wide-all.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#110854])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-iclb8/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#470] / [i915#472])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb8/igt@gem_exec_parallel@fds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-tglb3/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([i915#677])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb5/igt@gem_exec_schedule@pi-userfault-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb8/igt@gem_exec_schedule@preempt-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-iclb4/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#463] / [i915#472])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb5/igt@gem_exec_schedule@smoketest-all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-tglb3/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#460] / [i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb1/igt@gem_exec_suspend@basic-s4-devices.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-tglb3/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_sync@basic-many-each:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#472] / [i915#707])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb4/igt@gem_sync@basic-many-each.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-tglb8/igt@gem_sync@basic-many-each.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - shard-skl:          [PASS][21] -> [SKIP][22] ([fdo#109271])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl2/igt@i915_pm_rpm@dpms-lpsp.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-skl4/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#413])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb4/igt@i915_pm_rps@reset.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-iclb1/igt@i915_pm_rps@reset.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#699])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl1/igt@kms_flip_tiling@flip-changes-tiling.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-skl2/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][27] -> [FAIL][28] ([i915#49]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109642] / [fdo#111068])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-iclb1/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-iclb8/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][37] -> [FAIL][38] ([i915#31])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-apl8/igt@kms_setmode@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-apl1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180]) +10 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#112080]) +11 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-iclb5/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109276]) +21 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-apl2/igt@gem_ctx_isolation@bcs0-s3.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-apl3/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +5 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][49] ([fdo#109276] / [fdo#112080]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb6/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_eio@kms:
    - shard-tglb:         [INCOMPLETE][51] ([i915#472] / [i915#476]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb6/igt@gem_eio@kms.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-tglb6/igt@gem_eio@kms.html

  * igt@gem_exec_await@wide-contexts:
    - shard-tglb:         [INCOMPLETE][53] ([fdo#111736] / [i915#472]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb3/igt@gem_exec_await@wide-contexts.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-tglb8/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][55] ([fdo#111593] / [i915#472]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb5/igt@gem_exec_gttfill@basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-tglb7/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [INCOMPLETE][57] ([i915#472]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb7/igt@gem_exec_nop@basic-series.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-tglb8/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_schedule@preempt-other-bsd:
    - shard-iclb:         [SKIP][59] ([fdo#112146]) -> [PASS][60] +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb4/igt@gem_exec_schedule@preempt-other-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-iclb8/igt@gem_exec_schedule@preempt-other-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][61] ([fdo#109276]) -> [PASS][62] +14 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [INCOMPLETE][63] ([i915#472] / [i915#707]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb6/igt@gem_exec_schedule@smoketest-bsd2.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-tglb7/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [TIMEOUT][65] ([fdo#112271] / [i915#530]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-kbl:          [TIMEOUT][67] ([fdo#112271] / [i915#530]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-kbl:          [INCOMPLETE][69] ([fdo#103665] / [i915#530]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-kbl6/igt@gem_persistent_relocs@forked-thrashing.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-kbl7/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-skl:          [DMESG-WARN][71] ([fdo#111870] / [i915#836]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl2/igt@gem_userptr_blits@sync-unmap-after-close.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-skl5/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][73] ([i915#454]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-iclb1/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live_gt_heartbeat:
    - shard-skl:          [DMESG-FAIL][75] ([i915#541]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl7/igt@i915_selftest@live_gt_heartbeat.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-skl2/igt@i915_selftest@live_gt_heartbeat.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:
    - shard-skl:          [FAIL][77] ([i915#54]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][79] ([IGT#5]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][81] ([i915#79]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
    - shard-tglb:         [FAIL][83] ([i915#49]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][85] ([fdo#108145]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][87] ([fdo#109441]) -> [PASS][88] +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb6/igt@kms_psr@psr2_basic.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][89] ([fdo#112080]) -> [PASS][90] +6 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb8/igt@perf_pmu@busy-vcs1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-iclb4/igt@perf_pmu@busy-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][91] ([fdo#109276] / [fdo#112080]) -> [FAIL][92] ([IGT#28])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][93] ([IGT#28]) -> [SKIP][94] ([fdo#109276] / [fdo#112080])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][95] ([i915#454]) -> [SKIP][96] ([i915#468])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb4/igt@i915_pm_dc@dc6-dpms.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-tglb1/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][97] ([i915#468]) -> [FAIL][98] ([i915#454])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-tglb8/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][99] ([fdo#107724]) -> [SKIP][100] ([fdo#109349])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#836]: https://gitlab.freedesktop.org/drm/intel/issues/836


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7753 -> Patchwork_16122

  CI-20190529: 20190529
  CI_DRM_7753: cef3a815e760485d4c011adb3dafb4d49bff9378 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5367: 94af6de4f07487b93c4f5008f3ed04b5fc045200 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16122: 1bf275c8bb490d00b495bc2ee2837311163efcee @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16122/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
