Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1F313C6E8
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 16:05:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E2B46EAD0;
	Wed, 15 Jan 2020 15:05:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BE1256EA27;
 Wed, 15 Jan 2020 15:05:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B4C79A47E8;
 Wed, 15 Jan 2020 15:05:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 15 Jan 2020 15:05:11 -0000
Message-ID: <157910071173.2007.18288851963597764084@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200113140407.1856468-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200113140407.1856468-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Preemptive_timeline_retirement_=28rev3=29?=
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

Series: drm/i915: Preemptive timeline retirement (rev3)
URL   : https://patchwork.freedesktop.org/series/71958/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7733_full -> Patchwork_16072_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16072_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +6 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-kbl3/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-mixed:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#679])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-apl3/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-apl3/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111735])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb5/igt@gem_ctx_shared@q-smoketest-vebox.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-tglb9/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-snb:          [PASS][9] -> [FAIL][10] ([i915#490])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-snb2/igt@gem_eio@in-flight-contexts-1us.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-snb5/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([fdo#111736] / [i915#472]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb4/igt@gem_exec_balancer@nop.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-tglb1/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#110854])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-iclb3/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#472])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb2/igt@gem_exec_nop@basic-sequential.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-tglb7/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +6 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb8/igt@gem_exec_schedule@in-order-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([i915#677]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd2:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([fdo#111677] / [i915#472])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb9/igt@gem_exec_schedule@preempt-queue-chain-bsd2.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd2:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([fdo#111606] / [fdo#111677] / [i915#472]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb5/igt@gem_exec_schedule@preempt-queue-contexts-bsd2.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-bsd2.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-kbl:          [PASS][25] -> [FAIL][26] ([i915#520])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-kbl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-kbl4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#470] / [i915#472])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb1/igt@gem_sync@basic-all.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-tglb5/igt@gem_sync@basic-all.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#300])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#79])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen:
    - shard-tglb:         [PASS][33] -> [DMESG-FAIL][34] ([i915#402]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@primary_blt:
    - shard-tglb:         [PASS][37] -> [DMESG-WARN][38] ([i915#402]) +19 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb2/igt@kms_psr@primary_blt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-tglb2/igt@kms_psr@primary_blt.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441]) +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][41] -> [INCOMPLETE][42] ([i915#69])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl3/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-skl10/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@perf@short-reads:
    - shard-kbl:          [PASS][43] -> [TIMEOUT][44] ([fdo#112271] / [i915#51])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-kbl4/igt@perf@short-reads.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-kbl2/igt@perf@short-reads.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#112080]) +11 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb2/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-iclb5/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109276]) +22 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-iclb3/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][49] ([fdo#109276] / [fdo#112080]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb6/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][51] ([fdo#110841]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][53] ([fdo#111735]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-tglb7/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][55] ([i915#470] / [i915#472]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb3/igt@gem_exec_parallel@contexts.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-tglb5/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][57] ([fdo#112080]) -> [PASS][58] +12 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][59] ([i915#677]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-iclb3/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-tglb:         [INCOMPLETE][61] ([fdo#111677] / [i915#472]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb6/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-tglb7/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-blt:
    - shard-tglb:         [INCOMPLETE][63] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-blt.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-tglb9/igt@gem_exec_schedule@preempt-queue-contexts-blt.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][65] ([fdo#112146]) -> [PASS][66] +6 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [INCOMPLETE][67] ([i915#472] / [i915#707]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd2.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][69] ([i915#707] / [i915#796]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb8/igt@gem_pipe_control_store_loop@reused-buffer.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-tglb4/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-apl1/igt@gem_softpin@noreloc-s3.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-apl2/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [INCOMPLETE][73] ([i915#472]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb8/igt@gem_sync@basic-store-all.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-tglb4/igt@gem_sync@basic-store-all.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][75] ([i915#447]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-iclb8/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-apl:          [FAIL][77] ([i915#39]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-apl8/igt@i915_pm_rps@min-max-config-loaded.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-apl8/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][79] ([i915#413]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb2/igt@i915_pm_rps@reset.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-iclb5/igt@i915_pm_rps@reset.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [DMESG-WARN][81] ([i915#109]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl3/igt@kms_color@pipe-b-ctm-0-25.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-skl9/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
    - shard-hsw:          [INCOMPLETE][83] ([i915#61]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-hsw5/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-hsw7/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [INCOMPLETE][85] ([i915#69]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl7/igt@kms_fbcon_fbt@psr-suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-skl1/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-apl:          [FAIL][87] ([i915#79]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-apl1/igt@kms_flip@flip-vs-expired-vblank.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-apl2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-skl:          [FAIL][89] ([i915#34]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl2/igt@kms_flip@plain-flip-ts-check.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-skl5/igt@kms_flip@plain-flip-ts-check.html
    - shard-apl:          [FAIL][91] ([i915#34]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-apl8/igt@kms_flip@plain-flip-ts-check.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-apl4/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [FAIL][93] ([i915#49]) -> [PASS][94] +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][95] ([i915#180]) -> [PASS][96] +4 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-tglb:         [SKIP][97] ([i915#668]) -> [PASS][98] +3 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][99] ([fdo#109642] / [fdo#111068]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb5/igt@kms_psr2_su@page_flip.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][101] ([fdo#109441]) -> [PASS][102] +2 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][103] ([i915#31]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-apl3/igt@kms_setmode@basic.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-apl1/igt@kms_setmode@basic.html
    - shard-hsw:          [FAIL][105] ([i915#31]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-hsw1/igt@kms_setmode@basic.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-hsw6/igt@kms_setmode@basic.html
    - shard-kbl:          [FAIL][107] ([i915#31]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-kbl6/igt@kms_setmode@basic.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-kbl7/igt@kms_setmode@basic.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][109] ([fdo#109276]) -> [PASS][110] +24 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][111] ([IGT#28]) -> [SKIP][112] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs2-nonpriv-switch:
    - shard-tglb:         [SKIP][113] ([fdo#111912] / [fdo#112080]) -> [SKIP][114] ([fdo#112080])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb8/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][115] ([i915#82]) -> [DMESG-WARN][116] ([i915#443] / [i915#444])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-snb4/igt@gem_eio@kms.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-snb2/igt@gem_eio@kms.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][117] ([i915#818]) -> [FAIL][118] ([i915#694])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-hsw5/igt@gem_tiled_blits@normal.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-hsw2/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][119] ([i915#454]) -> [SKIP][120] ([i915#468])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb5/igt@i915_pm_dc@dc6-dpms.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-tglb8/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@gem-execbuf-stress:
    - shard-snb:          [INCOMPLETE][121] ([i915#82]) -> [SKIP][122] ([fdo#109271])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-snb5/igt@i915_pm_rpm@gem-execbuf-stress.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-snb2/igt@i915_pm_rpm@gem-execbuf-stress.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing:
    - shard-tglb:         [SKIP][123] ([fdo#112016] / [fdo#112021]) -> [SKIP][124] ([fdo#112021])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb8/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html

  * igt@kms_ccs@pipe-d-crc-primary-rotation-180:
    - shard-tglb:         [FAIL][125] ([i915#979]) -> [DMESG-WARN][126] ([i915#402])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb2/igt@kms_ccs@pipe-d-crc-primary-rotation-180.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-tglb2/igt@kms_ccs@pipe-d-crc-primary-rotation-180.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding:
    - shard-iclb:         [SKIP][127] ([fdo#112010] / [i915#508]) -> [SKIP][128] ([fdo#109278] / [fdo#112010] / [i915#508])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-iclb2/igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding.html

  * igt@kms_cursor_legacy@pipe-d-single-move:
    - shard-iclb:         [SKIP][129] ([fdo#112010]) -> [SKIP][130] ([fdo#109278] / [fdo#112010]) +84 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb5/igt@kms_cursor_legacy@pipe-d-single-move.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-iclb4/igt@kms_cursor_legacy@pipe-d-single-move.html

  * igt@kms_plane_multiple@atomic-pipe-d-tiling-yf:
    - shard-iclb:         [SKIP][131] ([fdo#112010] / [fdo#112025]) -> [SKIP][132] ([fdo#109278] / [fdo#112010] / [fdo#112025])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb3/igt@kms_plane_multiple@atomic-pipe-d-tiling-yf.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-iclb3/igt@kms_plane_multiple@atomic-pipe-d-tiling-yf.html

  * igt@runner@aborted:
    - shard-snb:          [FAIL][133] ([i915#974]) -> ([FAIL][134], [FAIL][135]) ([i915#436] / [i915#974])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-snb2/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-snb4/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/shard-snb2/igt@runner@aborted.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112010]: https://bugs.freedesktop.org/show_bug.cgi?id=112010
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112025]: https://bugs.freedesktop.org/show_bug.cgi?id=112025
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#436]: https://gitlab.freedesktop.org/drm/intel/issues/436
  [i915#443]: https://gitlab.freedesktop.org/drm/intel/issues/443
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#508]: https://gitlab.freedesktop.org/drm/intel/issues/508
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#974]: https://gitlab.freedesktop.org/drm/intel/issues/974
  [i915#979]: https://gitlab.freedesktop.org/drm/intel/issues/979


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7733 -> Patchwork_16072

  CI-20190529: 20190529
  CI_DRM_7733: 379e3dc4d5c95f4c3bcb244fd9527986a23b3e74 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16072: 052f69323628c8a5cfa6a1b6bee927a893ba7065 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16072/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
