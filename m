Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E642F12DD7A
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jan 2020 04:14:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51B7A6E2BD;
	Wed,  1 Jan 2020 03:13:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0F4496E2B6;
 Wed,  1 Jan 2020 03:13:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F31B4A011A;
 Wed,  1 Jan 2020 03:13:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 01 Jan 2020 03:13:55 -0000
Message-ID: <157784843596.5189.7547422823290899721@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191231200356.409475-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191231200356.409475-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Introduce_remap=5Fio=5Fsg=28=29_to_prefault_discontigu?=
 =?utf-8?q?ous_objects?=
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

Series: drm/i915: Introduce remap_io_sg() to prefault discontiguous objects
URL   : https://patchwork.freedesktop.org/series/71530/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7659_full -> Patchwork_15959_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15959_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-skl:          [PASS][1] -> [FAIL][2] ([i915#679])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-skl6/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-skl5/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-iclb7/igt@gem_ctx_persistence@vcs1-mixed.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110854])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb2/igt@gem_exec_balancer@smoke.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-iclb7/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_create@basic:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111736])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb7/igt@gem_exec_create@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-tglb6/igt@gem_exec_create@basic.html

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#435])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb7/igt@gem_exec_create@madvise.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-tglb3/igt@gem_exec_create@madvise.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([fdo#111593])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb2/igt@gem_exec_gttfill@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-tglb8/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +14 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111677])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb1/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#707])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb1/igt@gem_exec_schedule@smoketest-vebox.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-tglb3/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#460])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb1/igt@gem_exec_suspend@basic-s4-devices.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-tglb6/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#470] / [i915#472])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb2/igt@gem_sync@basic-all.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-tglb6/igt@gem_sync@basic-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#454])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [PASS][27] -> [DMESG-WARN][28] ([i915#109])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-skl7/igt@kms_color@pipe-b-ctm-negative.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-skl9/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-hsw:          [PASS][31] -> [INCOMPLETE][32] ([i915#61])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-hsw2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-hsw8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-xtiled:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#52] / [i915#54])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-skl4/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-xtiled.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-skl5/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-xtiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [PASS][35] -> [INCOMPLETE][36] ([i915#435] / [i915#456] / [i915#460])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb5/igt@kms_fbcon_fbt@fbc-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-tglb2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [PASS][37] -> [FAIL][38] ([i915#79])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#34])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-skl1/igt@kms_flip@plain-flip-fb-recreate.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-skl7/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [PASS][41] -> [FAIL][42] ([i915#49]) +4 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [PASS][43] -> [INCOMPLETE][44] ([i915#69])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][45] -> [DMESG-WARN][46] ([i915#180]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([fdo#108145])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#109441]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#112080]) +10 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-iclb3/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-tglb:         [FAIL][53] ([i915#679]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb7/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-tglb7/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-skl:          [FAIL][55] ([i915#679]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-skl1/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-skl2/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][57] ([fdo#109276] / [fdo#112080]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb5/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [INCOMPLETE][59] ([i915#461]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-tglb1/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_eio@kms:
    - shard-tglb:         [INCOMPLETE][61] ([i915#476]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb3/igt@gem_eio@kms.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-tglb5/igt@gem_eio@kms.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][63] ([fdo#112146]) -> [PASS][64] +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd1:
    - shard-tglb:         [INCOMPLETE][65] ([fdo#111606] / [fdo#111677]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb3/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-tglb2/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html

  * igt@gem_exec_whisper@normal:
    - shard-tglb:         [INCOMPLETE][67] ([i915#435]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb5/igt@gem_exec_whisper@normal.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-tglb2/igt@gem_exec_whisper@normal.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][69] ([i915#644]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * {igt@gen9_exec_parse@allowed-all}:
    - shard-glk:          [DMESG-WARN][71] ([i915#716]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-glk4/igt@gen9_exec_parse@allowed-all.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-glk7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][73] ([i915#413]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb8/igt@i915_pm_rps@reset.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-iclb5/igt@i915_pm_rps@reset.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [FAIL][75] ([i915#49]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [DMESG-WARN][77] ([i915#180]) -> [PASS][78] +4 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][81] ([fdo#108145]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][83] ([fdo#108145] / [i915#265]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][85] ([i915#173]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb1/igt@kms_psr@no_drrs.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-iclb3/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][87] ([fdo#109441]) -> [PASS][88] +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][89] ([i915#31]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-apl1/igt@kms_setmode@basic.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-apl6/igt@kms_setmode@basic.html

  * igt@perf@blocking:
    - shard-tglb:         [TIMEOUT][91] -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb5/igt@perf@blocking.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-tglb2/igt@perf@blocking.html

  * igt@perf@oa-exponents:
    - shard-glk:          [FAIL][93] ([i915#84]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-glk5/igt@perf@oa-exponents.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-glk3/igt@perf@oa-exponents.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][95] ([fdo#112080]) -> [PASS][96] +14 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb8/igt@perf_pmu@busy-vcs1.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-iclb4/igt@perf_pmu@busy-vcs1.html

  * igt@perf_pmu@most-busy-idle-check-all-rcs0:
    - shard-tglb:         [INCOMPLETE][97] -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-tglb5/igt@perf_pmu@most-busy-idle-check-all-rcs0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-tglb1/igt@perf_pmu@most-busy-idle-check-all-rcs0.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][99] ([fdo#109276]) -> [PASS][100] +21 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb3/igt@prime_busy@hang-bsd2.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-iclb4/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][101] ([i915#818]) -> [FAIL][102] ([i915#832])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-hsw5/igt@gem_tiled_blits@normal.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-hsw4/igt@gem_tiled_blits@normal.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [INCOMPLETE][103] ([fdo#103665]) -> [DMESG-WARN][104] ([i915#180])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][105] ([fdo#107724]) -> [SKIP][106] ([fdo#109349])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7659/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7659 -> Patchwork_15959

  CI-20190529: 20190529
  CI_DRM_7659: bc7f03590ed801bb911de587835ff9547ae63fbc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5356: 62146738c68abfa7497b023a049163932f5a9aa0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15959: 8917f528d0ded636f401a29e06a63bc174f71a8a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15959/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
