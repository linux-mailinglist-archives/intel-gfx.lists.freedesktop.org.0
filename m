Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDCB12D9EB
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2019 16:46:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BE016E24B;
	Tue, 31 Dec 2019 15:46:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3351C6E249;
 Tue, 31 Dec 2019 15:46:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 21DDAA432F;
 Tue, 31 Dec 2019 15:46:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 31 Dec 2019 15:46:08 -0000
Message-ID: <157780716810.26888.17708143862372463192@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191231122708.4025916-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191231122708.4025916-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Restore_coarse_power_gating?=
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

Series: drm/i915/gt: Restore coarse power gating
URL   : https://patchwork.freedesktop.org/series/71520/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7657_full -> Patchwork_15953_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15953_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@processes:
    - shard-apl:          [PASS][1] -> [FAIL][2] ([i915#570])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-apl4/igt@gem_ctx_persistence@processes.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-apl3/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-iclb3/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#470])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb7/igt@gem_exec_parallel@fds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-tglb9/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_reloc@basic-active:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#472])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb6/igt@gem_exec_reloc@basic-active.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-tglb3/igt@gem_exec_reloc@basic-active.html

  * igt@gem_exec_reuse@single:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#435])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb1/igt@gem_exec_reuse@single.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-tglb6/igt@gem_exec_reuse@single.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +4 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb8/igt@gem_exec_schedule@in-order-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +11 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb1/igt@gem_exec_schedule@promotion-bsd1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-iclb7/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-iclb:         [PASS][15] -> [TIMEOUT][16] ([i915#530])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb5/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-iclb6/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#644])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-skl9/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_render_copy_redux@interruptible:
    - shard-hsw:          [PASS][19] -> [FAIL][20] ([i915#910])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-hsw6/igt@gem_render_copy_redux@interruptible.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-hsw2/igt@gem_render_copy_redux@interruptible.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#470] / [i915#472])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb2/igt@gem_sync@basic-all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-tglb6/igt@gem_sync@basic-all.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#455])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb8/igt@i915_selftest@live_gt_timelines.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-tglb5/igt@i915_selftest@live_gt_timelines.html

  * igt@kms_color@pipe-b-ctm-red-to-blue:
    - shard-skl:          [PASS][25] -> [DMESG-WARN][26] ([i915#109]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl10/igt@kms_color@pipe-b-ctm-red-to-blue.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-skl8/igt@kms_color@pipe-b-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#54])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-glk4/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-glk1/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][31] -> [FAIL][32] ([i915#49]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#69])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145] / [i915#265])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109642] / [fdo#111068]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-iclb3/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-apl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#112080]) +7 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@perf_pmu@busy-vcs1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-iclb5/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-reset:
    - shard-iclb:         [SKIP][45] ([fdo#109276] / [fdo#112080]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb8/igt@gem_ctx_isolation@vcs1-reset.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-iclb1/igt@gem_ctx_isolation@vcs1-reset.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-skl:          [FAIL][47] ([i915#679]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl5/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-skl4/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [INCOMPLETE][49] ([i915#461]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-tglb1/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [INCOMPLETE][51] ([i915#435]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb9/igt@gem_exec_create@madvise.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-tglb8/igt@gem_exec_create@madvise.html

  * {igt@gem_exec_schedule@pi-common-bsd}:
    - shard-iclb:         [SKIP][53] ([i915#677]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-tglb:         [INCOMPLETE][55] ([fdo#111677]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb5/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-tglb3/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-render:
    - shard-tglb:         [INCOMPLETE][57] ([fdo#111606] / [fdo#111677]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb4/igt@gem_exec_schedule@preempt-queue-contexts-render.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-render.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][59] ([fdo#112146]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][61] ([i915#707]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb9/igt@gem_exec_schedule@smoketest-vebox.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-tglb7/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-iclb:         [TIMEOUT][63] ([i915#530]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb5/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-iclb6/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][65] ([i915#707] / [i915#796]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb3/igt@gem_pipe_control_store_loop@reused-buffer.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-tglb2/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][67] ([i915#644]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * {igt@gen9_exec_parse@allowed-all}:
    - shard-kbl:          [DMESG-WARN][69] ([i915#716]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-kbl3/igt@gen9_exec_parse@allowed-all.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-kbl7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][71] ([i915#447]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-iclb7/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][73] ([i915#413]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb6/igt@i915_pm_rps@waitboost.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-iclb8/igt@i915_pm_rps@waitboost.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][75] ([i915#109]) -> [PASS][76] +3 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl4/igt@kms_color@pipe-a-ctm-0-75.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-skl9/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding:
    - shard-glk:          [FAIL][77] ([i915#54]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-glk6/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-glk4/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled:
    - shard-snb:          [SKIP][79] ([fdo#109271]) -> [PASS][80] +3 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-snb2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-snb7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][81] ([i915#46]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:
    - shard-tglb:         [FAIL][83] ([i915#49]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][85] ([i915#180]) -> [PASS][86] +6 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-apl:          [DMESG-WARN][87] ([i915#180]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][89] ([fdo#108145]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-y:
    - shard-skl:          [DMESG-WARN][91] ([IGT#6]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl5/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-skl5/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][93] ([fdo#109441]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb3/igt@kms_psr@psr2_no_drrs.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][95] ([i915#31]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-glk3/igt@kms_setmode@basic.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-glk6/igt@kms_setmode@basic.html

  * igt@perf@oa-exponents:
    - shard-glk:          [FAIL][97] ([i915#84]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-glk8/igt@perf@oa-exponents.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-glk2/igt@perf@oa-exponents.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][99] ([fdo#112080]) -> [PASS][100] +8 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb3/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-iclb2/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][101] ([fdo#109276]) -> [PASS][102] +13 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-s3:
    - shard-tglb:         [SKIP][103] ([fdo#111912] / [fdo#112080]) -> [SKIP][104] ([fdo#112080])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb7/igt@gem_ctx_isolation@vcs2-s3.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-tglb9/igt@gem_ctx_isolation@vcs2-s3.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][105] ([i915#832]) -> [FAIL][106] ([i915#818])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-hsw6/igt@gem_tiled_blits@interruptible.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-hsw2/igt@gem_tiled_blits@interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][107] ([i915#46]) -> [FAIL][108] ([i915#79])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84
  [i915#910]: https://gitlab.freedesktop.org/drm/intel/issues/910


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7657 -> Patchwork_15953

  CI-20190529: 20190529
  CI_DRM_7657: 265f77c05e67b37169ac1a9d750a2e2936928ea0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5355: 2ead76177f2546d3eec0abbd0d9e47cd36588199 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15953: 0bd0e98f0db7fa9b6d1a10fca7ee24f60039b314 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15953/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
