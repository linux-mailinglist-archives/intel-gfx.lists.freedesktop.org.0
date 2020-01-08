Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05795133ECF
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 11:03:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D91B6E881;
	Wed,  8 Jan 2020 10:03:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E1F0C6E880;
 Wed,  8 Jan 2020 10:03:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D9587A0073;
 Wed,  8 Jan 2020 10:03:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Wed, 08 Jan 2020 10:03:17 -0000
Message-ID: <157847779788.23226.2653117727324603613@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200107170922.153612-1-jose.souza@intel.com>
In-Reply-To: <20200107170922.153612-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv4=2Crebased=2C1/2=5D_drm/i915/display/icl?=
 =?utf-8?q?+=3A_Do_not_program_clockgating?=
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

Series: series starting with [v4,rebased,1/2] drm/i915/display/icl+: Do not program clockgating
URL   : https://patchwork.freedesktop.org/series/71705/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7697_full -> Patchwork_16018_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16018_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-kbl:          [PASS][1] -> [INCOMPLETE][2] ([fdo#103665])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-kbl7/igt@gem_ctx_isolation@vecs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-kbl2/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-iclb3/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([fdo#111735])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-tglb5/igt@gem_ctx_shared@q-smoketest-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-tglb9/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#476])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-tglb1/igt@gem_eio@kms.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-tglb8/igt@gem_eio@kms.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [PASS][9] -> [FAIL][10] ([i915#232])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-snb4/igt@gem_eio@reset-stress.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-snb2/igt@gem_eio@reset-stress.html

  * igt@gem_exec_await@wide-contexts:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([fdo#111736] / [i915#472])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-tglb1/igt@gem_exec_await@wide-contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-tglb4/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#110854])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-iclb7/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#470] / [i915#472])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-tglb5/igt@gem_exec_parallel@contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-tglb2/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@vcs1:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111593] / [i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-tglb1/igt@gem_exec_parallel@vcs1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-tglb2/igt@gem_exec_parallel@vcs1.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([i915#677]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#112146]) +5 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-iclb3/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-render:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([fdo#111606] / [fdo#111677] / [i915#472])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-tglb1/igt@gem_exec_schedule@preempt-queue-render.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-tglb6/igt@gem_exec_schedule@preempt-queue-render.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#472] / [i915#707])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-tglb8/igt@gem_exec_schedule@smoketest-vebox.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-tglb4/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#460] / [i915#472]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-tglb5/igt@gem_exec_suspend@basic-s4-devices.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-tglb9/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#151] / [i915#69])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-skl10/igt@i915_pm_rpm@system-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-skl7/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-kbl4/igt@i915_suspend@forcewake.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-kbl7/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-random:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#54])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][35] -> [FAIL][36] ([i915#72])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [PASS][37] -> [FAIL][38] ([i915#79])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][39] -> [FAIL][40] ([i915#49])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109441])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#112080]) +8 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-iclb2/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-iclb3/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109276]) +19 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-iclb7/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-persistence:
    - shard-iclb:         [SKIP][47] ([fdo#109276] / [fdo#112080]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-iclb8/igt@gem_ctx_persistence@vcs1-persistence.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-iclb2/igt@gem_ctx_persistence@vcs1-persistence.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [INCOMPLETE][49] ([i915#461]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-tglb6/igt@gem_ctx_shared@q-smoketest-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-tglb5/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][51] ([fdo#111593] / [i915#472]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-tglb7/igt@gem_exec_gttfill@basic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-tglb5/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [INCOMPLETE][53] ([i915#435] / [i915#472]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-tglb4/igt@gem_exec_nop@basic-series.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-tglb8/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][55] ([fdo#112146]) -> [PASS][56] +4 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-iclb3/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][57] ([i915#677]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-iclb7/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][59] ([i915#463] / [i915#472]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-tglb4/igt@gem_exec_schedule@smoketest-bsd1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-tglb8/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62] +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-kbl4/igt@gem_exec_suspend@basic-s3.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-kbl3/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_sync@basic-many-each:
    - shard-tglb:         [INCOMPLETE][63] ([i915#472] / [i915#707]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-tglb8/igt@gem_sync@basic-many-each.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-tglb2/igt@gem_sync@basic-many-each.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][65] ([i915#716]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-glk8/igt@gen9_exec_parse@allowed-all.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-glk8/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][67] ([i915#454]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [INCOMPLETE][69] ([i915#455]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-tglb3/igt@i915_selftest@live_gt_timelines.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-tglb8/igt@i915_selftest@live_gt_timelines.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen:
    - shard-skl:          [FAIL][71] ([i915#54]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][73] ([i915#79]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][75] ([i915#180]) -> [PASS][76] +3 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-kbl:          [INCOMPLETE][77] ([fdo#103665] / [i915#600]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][79] ([fdo#108145]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][81] ([fdo#108145] / [i915#265]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][83] ([fdo#109642] / [fdo#111068]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-iclb8/igt@kms_psr2_su@page_flip.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][85] ([i915#173]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-iclb1/igt@kms_psr@no_drrs.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-iclb4/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][87] ([fdo#109441]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-iclb8/igt@kms_psr@psr2_basic.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][89] ([i915#31]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-glk6/igt@kms_setmode@basic.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-glk3/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][91] ([fdo#112080]) -> [PASS][92] +8 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-iclb8/igt@perf_pmu@busy-vcs1.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-iclb1/igt@perf_pmu@busy-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][93] ([fdo#109276]) -> [PASS][94] +16 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-iclb8/igt@prime_busy@hang-bsd2.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-dirty-create:
    - shard-tglb:         [SKIP][95] ([fdo#112080]) -> [SKIP][96] ([fdo#111912] / [fdo#112080])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-create.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-tglb1/igt@gem_ctx_isolation@vcs2-dirty-create.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][97] ([i915#454]) -> [SKIP][98] ([i915#468])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-tglb1/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][99] ([fdo#107724]) -> [SKIP][100] ([fdo#109349])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#600]: https://gitlab.freedesktop.org/drm/intel/issues/600
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7697 -> Patchwork_16018

  CI-20190529: 20190529
  CI_DRM_7697: 52b73829cd05668fd06586c8d2ab4af6e058dd8a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16018: e87f5bd04649b4eb78d081a5c0f4e3313531465e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
