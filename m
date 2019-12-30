Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB8412CB66
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 01:12:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E000189CB5;
	Mon, 30 Dec 2019 00:12:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6181F89289;
 Mon, 30 Dec 2019 00:12:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 47AEBA011A;
 Mon, 30 Dec 2019 00:12:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 30 Dec 2019 00:12:13 -0000
Message-ID: <157766473326.15517.3940489175171215647@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191229183153.3719869-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191229183153.3719869-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/7=5D_drm/i915/gt=3A_Ensure_that_all_new_?=
 =?utf-8?q?contexts_clear_STOP=5FRING_=28rev2=29?=
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

Series: series starting with [1/7] drm/i915/gt: Ensure that all new contexts clear STOP_RING (rev2)
URL   : https://patchwork.freedesktop.org/series/71479/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7651_full -> Patchwork_15942_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_7651_full and Patchwork_15942_full:

### New Piglit tests (6) ###

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dvec2-double_dmat3-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-ubyte_uvec4-short_ivec4-position-double_dmat4x3:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat2x3-uint_uvec3_array3-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dvec2_array3-position-double_dmat3x2_array2:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-double_dmat2x3-double_dmat2x3_array2:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@glsl-4.20@execution@vs_in@vs-input-uint_uvec2_array3-double_dmat2_array2-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  

Known issues
------------

  Here are the changes found in Patchwork_15942_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-iclb2/igt@gem_ctx_isolation@vcs1-none.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-iclb5/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#110841])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_eio@kms:
    - shard-snb:          [PASS][5] -> [INCOMPLETE][6] ([i915#82])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-snb6/igt@gem_eio@kms.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-snb2/igt@gem_eio@kms.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [PASS][7] -> [FAIL][8] ([i915#232])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-snb1/igt@gem_eio@reset-stress.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-snb4/igt@gem_eio@reset-stress.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +8 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-snb:          [PASS][11] -> [FAIL][12] ([i915#520])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-snb5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-snb7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#520])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-apl2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#520])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-kbl4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-apl8/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][19] -> [FAIL][20] ([i915#454])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - shard-skl:          [PASS][21] -> [DMESG-WARN][22] ([i915#109])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-skl1/igt@kms_color@pipe-a-ctm-0-25.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-skl4/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#54]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#221])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-skl10/igt@kms_flip@flip-vs-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-skl5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +5 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf@oa-exponents:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#84])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-glk8/igt@perf@oa-exponents.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-glk3/igt@perf@oa-exponents.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#112080]) +14 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-iclb2/igt@perf_pmu@init-busy-vcs1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-iclb7/igt@perf_pmu@init-busy-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109276]) +19 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-apl:          [FAIL][37] ([i915#679]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-apl6/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-apl1/igt@gem_ctx_persistence@bcs0-mixed-process.html
    - shard-skl:          [FAIL][39] ([i915#679]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-skl2/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-skl7/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][41] ([fdo#109276] / [fdo#112080]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-iclb7/igt@gem_ctx_persistence@vcs1-queued.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          [FAIL][43] ([i915#232]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-snb7/igt@gem_eio@unwedge-stress.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-snb7/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][45] ([fdo#110854]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-iclb8/igt@gem_exec_balancer@smoke.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][47] ([fdo#112080]) -> [PASS][48] +10 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html

  * {igt@gem_exec_schedule@pi-common-bsd}:
    - shard-iclb:         [SKIP][49] ([i915#677]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][51] ([fdo#112146]) -> [PASS][52] +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][53] ([fdo#109276]) -> [PASS][54] +19 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][55] ([i915#644]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-apl:          [DMESG-WARN][57] ([i915#716]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-apl1/igt@gen9_exec_parse@allowed-single.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-apl2/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][59] ([i915#413]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-iclb7/igt@i915_pm_rps@reset.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-iclb7/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@mock_requests:
    - shard-glk:          [INCOMPLETE][61] ([i915#58] / [k.org#198133]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-glk4/igt@i915_selftest@mock_requests.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-glk7/igt@i915_selftest@mock_requests.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-snb:          [SKIP][63] ([fdo#109271]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-snb1/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-snb4/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-skl:          [FAIL][65] ([i915#54]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled:
    - shard-skl:          [FAIL][67] ([i915#52] / [i915#54]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-skl4/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
    - shard-glk:          [FAIL][69] ([i915#34]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][71] ([i915#79]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][73] ([i915#46]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][75] ([i915#180]) -> [PASS][76] +6 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [DMESG-WARN][77] ([i915#109]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-skl8/igt@kms_plane@pixel-format-pipe-b-planes.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-skl3/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-apl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][81] ([fdo#108145] / [i915#265]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][83] ([fdo#109642] / [fdo#111068]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-iclb7/igt@kms_psr2_su@frontbuffer.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][85] ([fdo#109441]) -> [PASS][86] +3 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-iclb6/igt@kms_psr@psr2_primary_page_flip.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][87] ([i915#69]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7651/shard-skl3/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/shard-skl10/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7651 -> Patchwork_15942

  CI-20190529: 20190529
  CI_DRM_7651: dcd9b47d596ff82b9768f1ecba436ef03073c211 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15942: e47cda8727118862688e61985babd003b1387f80 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15942/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
