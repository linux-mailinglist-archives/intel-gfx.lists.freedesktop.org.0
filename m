Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDC513CAB8
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 18:14:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FF4C6EB0B;
	Wed, 15 Jan 2020 17:14:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F34856EA5E;
 Wed, 15 Jan 2020 17:14:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E167FA011C;
 Wed, 15 Jan 2020 17:14:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Radhakrishna Sripada" <radhakrishna.sripada@intel.com>
Date: Wed, 15 Jan 2020 17:14:55 -0000
Message-ID: <157910849591.2009.8477188799243759385@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200109223727.5630-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20200109223727.5630-1-radhakrishna.sripada@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Add_Wa=5F1409825376_to_tgl_=28rev3=29?=
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

Series: drm/i915/tgl: Add Wa_1409825376 to tgl (rev3)
URL   : https://patchwork.freedesktop.org/series/71853/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7733_full -> Patchwork_16076_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16076_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-iclb8/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-iclb:         [PASS][3] -> [DMESG-WARN][4] ([fdo#111764])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb2/igt@gem_ctx_isolation@vecs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-iclb8/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#461])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb2/igt@gem_ctx_shared@q-smoketest-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-tglb6/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-snb:          [PASS][7] -> [FAIL][8] ([i915#490])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-snb2/igt@gem_eio@in-flight-contexts-1us.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-snb2/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#472])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb2/igt@gem_exec_nop@basic-sequential.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-tglb8/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_reloc@basic-cpu-read-active:
    - shard-skl:          [PASS][11] -> [DMESG-WARN][12] ([i915#109])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl7/igt@gem_exec_reloc@basic-cpu-read-active.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-skl10/igt@gem_exec_reloc@basic-cpu-read-active.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([i915#677])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd2:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109276]) +17 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd2.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-iclb5/igt@gem_exec_schedule@pi-shared-iova-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-iclb4/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_exec_schedule@smoketest-blt:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#470] / [i915#472]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb5/igt@gem_exec_schedule@smoketest-blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-tglb6/igt@gem_exec_schedule@smoketest-blt.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-iclb:         [PASS][21] -> [TIMEOUT][22] ([fdo#112271])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-iclb3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#472] / [i915#707])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb7/igt@gem_sync@basic-each.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-tglb7/igt@gem_sync@basic-each.html

  * igt@kms_busy@basic-flip-pipe-a:
    - shard-kbl:          [PASS][25] -> [INCOMPLETE][26] ([CI#80] / [fdo#103665])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-kbl7/igt@kms_busy@basic-flip-pipe-a.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-kbl7/igt@kms_busy@basic-flip-pipe-a.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#221])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl3/igt@kms_flip@flip-vs-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-skl8/igt@kms_flip@flip-vs-suspend.html
    - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-apl6/igt@kms_flip@flip-vs-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-apl4/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][33] -> [FAIL][34] ([i915#49]) +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#112080]) +11 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb2/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-iclb3/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][41] ([fdo#109276] / [fdo#112080]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb3/igt@gem_ctx_persistence@vcs1-queued.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#110841]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [INCOMPLETE][45] ([i915#472] / [i915#476]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb3/igt@gem_exec_parallel@basic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-tglb9/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][47] ([fdo#112080]) -> [PASS][48] +6 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][49] ([i915#677]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-blt:
    - shard-tglb:         [INCOMPLETE][51] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-blt.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-tglb4/igt@gem_exec_schedule@preempt-queue-contexts-blt.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][53] ([fdo#112146]) -> [PASS][54] +5 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][55] ([i915#463] / [i915#472]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb9/igt@gem_exec_schedule@smoketest-bsd1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-tglb1/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][57] ([i915#707] / [i915#796]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb8/igt@gem_pipe_control_store_loop@reused-buffer.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-tglb9/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][59] ([i915#447]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-iclb1/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-apl:          [FAIL][61] ([i915#39]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-apl8/igt@i915_pm_rps@min-max-config-loaded.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-apl7/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][63] ([i915#413]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb2/igt@i915_pm_rps@reset.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-iclb3/igt@i915_pm_rps@reset.html

  * igt@kms_color@pipe-b-ctm-0-5:
    - shard-skl:          [DMESG-WARN][65] ([i915#109]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl6/igt@kms_color@pipe-b-ctm-0-5.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-skl1/igt@kms_color@pipe-b-ctm-0-5.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [INCOMPLETE][67] ([i915#69]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl7/igt@kms_fbcon_fbt@psr-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-skl10/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-apl:          [FAIL][69] ([i915#79]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-apl1/igt@kms_flip@flip-vs-expired-vblank.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-apl1/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-iclb:         [DMESG-WARN][71] ([fdo#111764]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb8/igt@kms_flip@flip-vs-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-iclb1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-skl:          [FAIL][73] ([i915#34]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl2/igt@kms_flip@plain-flip-ts-check.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-skl5/igt@kms_flip@plain-flip-ts-check.html
    - shard-apl:          [FAIL][75] ([i915#34]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-apl8/igt@kms_flip@plain-flip-ts-check.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-apl7/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [FAIL][77] ([i915#49]) -> [PASS][78] +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +5 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-tglb:         [SKIP][81] ([i915#668]) -> [PASS][82] +3 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][83] ([fdo#108145]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][85] ([fdo#108145] / [i915#265]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][87] ([fdo#109441]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb3/igt@kms_psr@psr2_suspend.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][89] ([fdo#109276]) -> [PASS][90] +17 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][91] ([IGT#28]) -> [SKIP][92] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs2-none:
    - shard-tglb:         [SKIP][93] ([fdo#111912] / [fdo#112080]) -> [SKIP][94] ([fdo#112080])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb8/igt@gem_ctx_isolation@vcs2-none.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-tglb9/igt@gem_ctx_isolation@vcs2-none.html

  * igt@i915_pm_rpm@gem-execbuf-stress:
    - shard-snb:          [INCOMPLETE][95] ([i915#82]) -> [SKIP][96] ([fdo#109271])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-snb5/igt@i915_pm_rpm@gem-execbuf-stress.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-snb1/igt@i915_pm_rpm@gem-execbuf-stress.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding:
    - shard-iclb:         [SKIP][97] ([fdo#112010] / [i915#508]) -> [SKIP][98] ([fdo#109278] / [fdo#112010] / [i915#508])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding.html

  * igt@kms_cursor_legacy@pipe-d-single-move:
    - shard-iclb:         [SKIP][99] ([fdo#112010]) -> [SKIP][100] ([fdo#109278] / [fdo#112010]) +87 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb5/igt@kms_cursor_legacy@pipe-d-single-move.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-iclb3/igt@kms_cursor_legacy@pipe-d-single-move.html

  * igt@kms_plane_multiple@atomic-pipe-d-tiling-yf:
    - shard-iclb:         [SKIP][101] ([fdo#112010] / [fdo#112025]) -> [SKIP][102] ([fdo#109278] / [fdo#112010] / [fdo#112025])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb3/igt@kms_plane_multiple@atomic-pipe-d-tiling-yf.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/shard-iclb2/igt@kms_plane_multiple@atomic-pipe-d-tiling-yf.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112010]: https://bugs.freedesktop.org/show_bug.cgi?id=112010
  [fdo#112025]: https://bugs.freedesktop.org/show_bug.cgi?id=112025
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#508]: https://gitlab.freedesktop.org/drm/intel/issues/508
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7733 -> Patchwork_16076

  CI-20190529: 20190529
  CI_DRM_7733: 379e3dc4d5c95f4c3bcb244fd9527986a23b3e74 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16076: d3eb3f1b106049210f475510f99b66f7637af88f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16076/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
