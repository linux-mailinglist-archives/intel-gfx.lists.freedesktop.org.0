Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 309F913C69A
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 15:52:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7199789911;
	Wed, 15 Jan 2020 14:52:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2B48289736;
 Wed, 15 Jan 2020 14:52:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 23620A47EB;
 Wed, 15 Jan 2020 14:52:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 15 Jan 2020 14:52:01 -0000
Message-ID: <157909992114.2009.14474181146004211282@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200113112917.1789952-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200113112917.1789952-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/gt=3A_Sanitize_and_reset_G?=
 =?utf-8?q?PU_before_removing_powercontext?=
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

Series: series starting with [1/2] drm/i915/gt: Sanitize and reset GPU before removing powercontext
URL   : https://patchwork.freedesktop.org/series/71953/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7733_full -> Patchwork_16070_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16070_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb1/igt@gem_busy@extended-parallel-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-iclb5/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +8 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-kbl3/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-iclb:         [PASS][5] -> [DMESG-WARN][6] ([fdo#111764])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb2/igt@gem_ctx_isolation@vecs0-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-iclb4/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_persistence@vcs1-mixed:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-iclb3/igt@gem_ctx_persistence@vcs1-mixed.html

  * igt@gem_eio@reset-stress:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#470])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb9/igt@gem_eio@reset-stress.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-tglb5/igt@gem_eio@reset-stress.html
    - shard-snb:          [PASS][11] -> [FAIL][12] ([i915#232])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-snb6/igt@gem_eio@reset-stress.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-snb5/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([fdo#111736] / [i915#472]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb4/igt@gem_exec_balancer@nop.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-tglb2/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#110854])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-iclb3/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb2/igt@gem_exec_nop@basic-sequential.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-tglb5/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([i915#677])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-hang-bsd:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#112146]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb5/igt@gem_exec_schedule@preempt-hang-bsd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-iclb4/igt@gem_exec_schedule@preempt-hang-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([fdo#111736] / [i915#460] / [i915#472])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb7/igt@gem_exec_suspend@basic-s3.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-tglb6/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-iclb:         [PASS][25] -> [INCOMPLETE][26] ([i915#140])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb2/igt@gem_exec_suspend@basic-s4-devices.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-iclb5/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#530])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb7/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-tglb7/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#470] / [i915#472])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb1/igt@gem_sync@basic-all.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-tglb9/igt@gem_sync@basic-all.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#454])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb6/igt@i915_pm_dc@dc6-dpms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_color@pipe-a-ctm-red-to-blue:
    - shard-skl:          [PASS][33] -> [DMESG-WARN][34] ([i915#109]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl1/igt@kms_color@pipe-a-ctm-red-to-blue.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-skl6/igt@kms_color@pipe-a-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#54])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][39] -> [FAIL][40] ([i915#49]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([fdo#108145]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][43] -> [FAIL][44] ([i915#173])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb4/igt@kms_psr@no_drrs.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109441]) +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109276]) +18 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-iclb5/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_shared@q-smoketest-blt:
    - shard-tglb:         [INCOMPLETE][49] ([fdo#111735]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb6/igt@gem_ctx_shared@q-smoketest-blt.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-tglb9/igt@gem_ctx_shared@q-smoketest-blt.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][51] ([i915#470] / [i915#472]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb3/igt@gem_exec_parallel@contexts.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-tglb9/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][53] ([i915#677]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][55] ([fdo#109276]) -> [PASS][56] +14 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html
    - shard-tglb:         [INCOMPLETE][57] ([fdo#111677] / [i915#472]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb6/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-tglb6/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-blt:
    - shard-tglb:         [INCOMPLETE][59] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-blt.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-tglb1/igt@gem_exec_schedule@preempt-queue-contexts-blt.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][61] ([fdo#112146]) -> [PASS][62] +5 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][63] ([i915#463] / [i915#472]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb9/igt@gem_exec_schedule@smoketest-bsd1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-tglb8/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][65] ([i915#707] / [i915#796]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb8/igt@gem_pipe_control_store_loop@reused-buffer.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-tglb4/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [INCOMPLETE][67] ([i915#472]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb8/igt@gem_sync@basic-store-all.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-tglb1/igt@gem_sync@basic-store-all.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][69] ([i915#447]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-iclb4/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-apl:          [FAIL][71] ([i915#39]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-apl8/igt@i915_pm_rps@min-max-config-loaded.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-apl4/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [DMESG-WARN][73] ([i915#109]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl3/igt@kms_color@pipe-b-ctm-0-25.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-skl4/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [INCOMPLETE][75] ([i915#69]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl7/igt@kms_fbcon_fbt@psr-suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-skl8/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-apl:          [FAIL][77] ([i915#79]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-apl1/igt@kms_flip@flip-vs-expired-vblank.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-apl6/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-skl:          [FAIL][79] ([i915#34]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl2/igt@kms_flip@plain-flip-ts-check.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-skl8/igt@kms_flip@plain-flip-ts-check.html
    - shard-apl:          [FAIL][81] ([i915#34]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-apl8/igt@kms_flip@plain-flip-ts-check.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-apl4/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][83] ([i915#180]) -> [PASS][84] +3 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-tglb:         [SKIP][85] ([i915#668]) -> [PASS][86] +3 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render:
    - shard-tglb:         [FAIL][87] ([i915#49]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][89] ([fdo#108145]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][91] ([fdo#108145] / [i915#265]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][93] ([fdo#109441]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb1/igt@kms_psr@psr2_primary_mmap_cpu.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][95] ([i915#31]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-apl3/igt@kms_setmode@basic.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-apl7/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-accuracy-2-vcs1:
    - shard-iclb:         [SKIP][97] ([fdo#112080]) -> [PASS][98] +6 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb3/igt@perf_pmu@busy-accuracy-2-vcs1.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-iclb1/igt@perf_pmu@busy-accuracy-2-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][99] ([IGT#28]) -> [SKIP][100] ([fdo#109276] / [fdo#112080])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][101] ([i915#818]) -> [FAIL][102] ([i915#694])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-hsw5/igt@gem_tiled_blits@normal.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-hsw7/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_rpm@gem-execbuf-stress:
    - shard-snb:          [INCOMPLETE][103] ([i915#82]) -> [SKIP][104] ([fdo#109271])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-snb5/igt@i915_pm_rpm@gem-execbuf-stress.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/shard-snb4/igt@i915_pm_rpm@gem-execbuf-stress.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7733 -> Patchwork_16070

  CI-20190529: 20190529
  CI_DRM_7733: 379e3dc4d5c95f4c3bcb244fd9527986a23b3e74 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16070: 23231346a24a895a255b65db8dd5f0eb46426248 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16070/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
