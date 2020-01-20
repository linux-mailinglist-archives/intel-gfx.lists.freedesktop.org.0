Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A9F14229B
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 06:17:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 376B36E573;
	Mon, 20 Jan 2020 05:16:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 615296E570;
 Mon, 20 Jan 2020 05:16:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3FC1DA01BB;
 Mon, 20 Jan 2020 05:16:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Mon, 20 Jan 2020 05:16:58 -0000
Message-ID: <157949741823.680.13877576431056039828@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200116211623.53799-1-lyude@redhat.com>
In-Reply-To: <20200116211623.53799-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_eDP_DPCD_aux_backlight_fixes_=28rev6=29?=
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

Series: drm/i915: eDP DPCD aux backlight fixes (rev6)
URL   : https://patchwork.freedesktop.org/series/69914/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7758_full -> Patchwork_16139_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16139_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +16 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-iclb5/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vcs1-reset:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@gem_ctx_isolation@vcs1-reset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-iclb8/igt@gem_ctx_isolation@vcs1-reset.html

  * igt@gem_exec_parallel@vcs0-fds:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#470] / [i915#472])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb5/igt@gem_exec_parallel@vcs0-fds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-tglb3/igt@gem_exec_parallel@vcs0-fds.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +6 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb8/igt@gem_exec_schedule@preempt-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-iclb1/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd2:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([fdo#111606] / [fdo#111677] / [i915#472])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb8/igt@gem_exec_schedule@preempt-queue-bsd2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-tglb3/igt@gem_exec_schedule@preempt-queue-bsd2.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#463] / [i915#472])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb1/igt@gem_exec_schedule@smoketest-bsd1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#472] / [i915#707])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb5/igt@gem_exec_schedule@smoketest-bsd2.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-tglb4/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-snb:          [PASS][17] -> [FAIL][18] ([i915#520])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-snb5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-snb1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-apl:          [PASS][19] -> [TIMEOUT][20] ([fdo#112271] / [i915#530])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-apl8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-kbl:          [PASS][21] -> [TIMEOUT][22] ([fdo#112271] / [i915#530]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#472] / [i915#530])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb3/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-tglb4/igt@gem_persistent_relocs@forked-thrash-inactive.html
    - shard-kbl:          [PASS][25] -> [INCOMPLETE][26] ([fdo#103665] / [i915#530])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl2/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-kbl3/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-hsw:          [PASS][27] -> [INCOMPLETE][28] ([i915#530] / [i915#61])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-hsw5/igt@gem_persistent_relocs@forked-thrashing.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-hsw7/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#472]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb8/igt@gem_sync@basic-store-all.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-tglb6/igt@gem_sync@basic-store-all.html

  * igt@i915_selftest@live_execlists:
    - shard-tglb:         [PASS][31] -> [INCOMPLETE][32] ([i915#472] / [i915#647])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb8/igt@i915_selftest@live_execlists.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-tglb3/igt@i915_selftest@live_execlists.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#69])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl5/igt@i915_suspend@fence-restore-untiled.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-skl2/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#34])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl8/igt@kms_flip@plain-flip-fb-recreate.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-skl10/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-tglb:         [PASS][39] -> [INCOMPLETE][40] ([i915#472] / [i915#474])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:
    - shard-tglb:         [PASS][41] -> [FAIL][42] ([i915#49])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180]) +10 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#49])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-skl1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([fdo#108145] / [i915#265])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][49] -> [FAIL][50] ([i915#173])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb8/igt@kms_psr@no_drrs.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#109276]) +17 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@processes:
    - shard-iclb:         [FAIL][53] ([i915#570]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@gem_ctx_persistence@processes.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-iclb5/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][55] ([fdo#109276] / [fdo#112080]) -> [PASS][56] +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb5/igt@gem_ctx_persistence@vcs1-queued.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [INCOMPLETE][57] ([fdo#111735] / [i915#472]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb7/igt@gem_ctx_shared@q-smoketest-all.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-tglb7/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_exec_await@wide-all:
    - shard-tglb:         [INCOMPLETE][59] ([fdo#111736] / [i915#472]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb3/igt@gem_exec_await@wide-all.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-tglb5/igt@gem_exec_await@wide-all.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][61] ([fdo#110854]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb5/igt@gem_exec_balancer@smoke.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][63] ([fdo#112080]) -> [PASS][64] +10 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][65] ([i915#677]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [SKIP][67] ([fdo#109276]) -> [PASS][68] +24 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb8/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-iclb4/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][69] ([fdo#112146]) -> [PASS][70] +7 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-tglb:         [INCOMPLETE][71] ([i915#472]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb6/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-tglb7/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-kbl:          [TIMEOUT][73] ([fdo#112271] / [i915#530]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-kbl4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-kbl:          [INCOMPLETE][75] ([fdo#103665] / [i915#530]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl6/igt@gem_persistent_relocs@forked-thrashing.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-kbl1/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][77] ([i915#472] / [i915#707] / [i915#796]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb3/igt@gem_pipe_control_store_loop@reused-buffer.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-tglb5/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [DMESG-WARN][79] ([i915#716]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl8/igt@gen9_exec_parse@allowed-all.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-skl5/igt@gen9_exec_parse@allowed-all.html

  * {igt@i915_pm_rc6_residency@rc6-idle}:
    - shard-apl:          [FAIL][81] ([i915#973]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-apl3/igt@i915_pm_rc6_residency@rc6-idle.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-apl7/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][83] ([i915#413]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@i915_pm_rps@reset.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-iclb8/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live_execlists:
    - shard-kbl:          [INCOMPLETE][85] ([fdo#103665] / [fdo#112175] / [fdo#112259]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl6/igt@i915_selftest@live_execlists.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-kbl7/igt@i915_selftest@live_execlists.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - shard-skl:          [DMESG-WARN][87] ([i915#109]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl3/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-skl3/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [DMESG-WARN][89] ([i915#180]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][91] ([i915#180]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [FAIL][93] ([i915#34]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [FAIL][95] ([i915#49]) -> [PASS][96] +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-iclb:         [INCOMPLETE][97] ([i915#140] / [i915#250]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-iclb1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][99] ([fdo#109441]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb1/igt@kms_psr@psr2_primary_blt.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][101] ([i915#31]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-apl3/igt@kms_setmode@basic.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-apl3/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][103] ([IGT#28]) -> [SKIP][104] ([fdo#109276] / [fdo#112080])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-snb:          [SKIP][105] ([fdo#109271]) -> [INCOMPLETE][106] ([i915#82])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-snb2/igt@i915_pm_dc@dc5-psr.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-snb5/igt@i915_pm_dc@dc5-psr.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][107] ([fdo#109349]) -> [DMESG-WARN][108] ([fdo#107724])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112175]: https://bugs.freedesktop.org/show_bug.cgi?id=112175
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#647]: https://gitlab.freedesktop.org/drm/intel/issues/647
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#973]: https://gitlab.freedesktop.org/drm/intel/issues/973


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7758 -> Patchwork_16139

  CI-20190529: 20190529
  CI_DRM_7758: d19270ce1f367fbfc1ff3b539bcb50e11ded181f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5371: 1b2816124ec3dbd53b81725d39292f45d41d895b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16139: 132c90f5d1b16e67e3a5a53a1f0809c6434e6638 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16139/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
