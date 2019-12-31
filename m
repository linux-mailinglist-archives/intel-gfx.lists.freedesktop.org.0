Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7A912D8E5
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2019 14:15:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA1F36E229;
	Tue, 31 Dec 2019 13:14:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4ED946E223;
 Tue, 31 Dec 2019 13:14:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 46039A0009;
 Tue, 31 Dec 2019 13:14:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 31 Dec 2019 13:14:57 -0000
Message-ID: <157779809728.26887.17756945870775056098@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191231013309.3998505-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191231013309.3998505-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/5=5D_drm/i915/gt=3A_Include_a_bunch_more?=
 =?utf-8?q?_rcs_image_state?=
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

Series: series starting with [1/5] drm/i915/gt: Include a bunch more rcs image state
URL   : https://patchwork.freedesktop.org/series/71506/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7657_full -> Patchwork_15951_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15951_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [fdo#112080])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-iclb5/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-blt:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([fdo#111735])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb5/igt@gem_ctx_shared@q-smoketest-blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-tglb4/igt@gem_ctx_shared@q-smoketest-blt.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110854])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@gem_exec_balancer@smoke.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-iclb3/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#470]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb1/igt@gem_exec_parallel@contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-tglb8/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_schedule@preempt-queue-blt:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#111677])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb7/igt@gem_exec_schedule@preempt-queue-blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-tglb8/igt@gem_exec_schedule@preempt-queue-blt.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +15 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb1/igt@gem_exec_schedule@promotion-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-iclb8/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#460])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb8/igt@gem_exec_suspend@basic-s4-devices.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-tglb9/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_exec_whisper@normal:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#435]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb5/igt@gem_exec_whisper@normal.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-tglb8/igt@gem_exec_whisper@normal.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-apl:          [PASS][19] -> [TIMEOUT][20] ([i915#530])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#470] / [i915#472])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb2/igt@gem_sync@basic-all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-tglb6/igt@gem_sync@basic-all.html

  * igt@i915_selftest@live_requests:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#472])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb8/igt@i915_selftest@live_requests.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-tglb2/igt@i915_selftest@live_requests.html

  * igt@kms_color@pipe-a-ctm-negative:
    - shard-skl:          [PASS][25] -> [DMESG-WARN][26] ([i915#109])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl6/igt@kms_color@pipe-a-ctm-negative.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-skl9/igt@kms_color@pipe-a-ctm-negative.html

  * igt@kms_cursor_crc@pipe-a-cursor-size-change:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#54])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-size-change.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-size-change.html

  * igt@kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic:
    - shard-skl:          [PASS][29] -> [DMESG-WARN][30] ([i915#88])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl3/igt@kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-skl1/igt@kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - shard-hsw:          [PASS][31] -> [DMESG-WARN][32] ([i915#44])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-hsw2/igt@kms_flip@basic-flip-vs-dpms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-hsw5/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [PASS][33] -> [FAIL][34] ([i915#79])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-apl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
    - shard-tglb:         [PASS][37] -> [FAIL][38] ([i915#49]) +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-apl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-apl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([fdo#108145] / [i915#265])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109642] / [fdo#111068]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-iclb1/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109441]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#112080]) +7 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@perf_pmu@busy-vcs1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-iclb5/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [SKIP][49] ([fdo#109276] / [fdo#112080]) -> [PASS][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb5/igt@gem_ctx_isolation@vcs1-none.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-iclb2/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-skl:          [FAIL][51] ([i915#679]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl5/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-skl9/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [INCOMPLETE][53] ([i915#461]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-tglb2/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [SKIP][55] ([fdo#112146]) -> [PASS][56] +3 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb4/igt@gem_exec_async@concurrent-writes-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-iclb7/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_await@wide-contexts:
    - shard-tglb:         [INCOMPLETE][57] ([fdo#111736]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb5/igt@gem_exec_await@wide-contexts.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-tglb6/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [INCOMPLETE][59] ([i915#435]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb8/igt@gem_exec_nop@basic-sequential.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-tglb1/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][61] ([fdo#112080]) -> [PASS][62] +7 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb7/igt@gem_exec_parallel@vcs1-fds.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html

  * {igt@gem_exec_schedule@pi-common-bsd}:
    - shard-iclb:         [SKIP][63] ([i915#677]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-tglb:         [INCOMPLETE][65] ([fdo#111677]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb5/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-tglb9/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-render:
    - shard-tglb:         [INCOMPLETE][67] ([fdo#111606] / [fdo#111677]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb4/igt@gem_exec_schedule@preempt-queue-contexts-render.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-render.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][69] ([i915#707]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb9/igt@gem_exec_schedule@smoketest-vebox.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-tglb7/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-iclb:         [TIMEOUT][71] ([i915#530]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb5/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-iclb2/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][73] ([i915#707] / [i915#796]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb3/igt@gem_pipe_control_store_loop@reused-buffer.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-tglb7/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][75] ([i915#180]) -> [PASS][76] +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-apl3/igt@gem_softpin@noreloc-s3.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-apl7/igt@gem_softpin@noreloc-s3.html

  * {igt@gen9_exec_parse@allowed-all}:
    - shard-kbl:          [DMESG-WARN][77] ([i915#716]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-kbl3/igt@gen9_exec_parse@allowed-all.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-kbl2/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][79] ([i915#447]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-iclb8/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][81] ([i915#413]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb6/igt@i915_pm_rps@waitboost.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-iclb3/igt@i915_pm_rps@waitboost.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][83] ([i915#109]) -> [PASS][84] +3 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl4/igt@kms_color@pipe-a-ctm-0-75.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding:
    - shard-glk:          [FAIL][85] ([i915#54]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-glk6/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-glk9/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled:
    - shard-snb:          [SKIP][87] ([fdo#109271]) -> [PASS][88] +3 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-snb2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-snb6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][89] ([i915#46]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
    - shard-glk:          [FAIL][91] ([i915#46]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite:
    - shard-tglb:         [FAIL][93] ([i915#49]) -> [PASS][94] +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][95] ([i915#180]) -> [PASS][96] +8 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][97] ([fdo#108145]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [SKIP][99] ([fdo#109441]) -> [PASS][100] +3 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb4/igt@kms_psr@psr2_dpms.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-iclb2/igt@kms_psr@psr2_dpms.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][101] ([i915#31]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-apl8/igt@kms_setmode@basic.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-apl6/igt@kms_setmode@basic.html

  * igt@perf@oa-exponents:
    - shard-glk:          [FAIL][103] ([i915#84]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-glk8/igt@perf@oa-exponents.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-glk1/igt@perf@oa-exponents.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][105] ([fdo#109276]) -> [PASS][106] +10 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb5/igt@prime_busy@hang-bsd2.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][107] ([IGT#28]) -> [SKIP][108] ([fdo#109276] / [fdo#112080])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs2-reset:
    - shard-tglb:         [SKIP][109] ([fdo#111912] / [fdo#112080]) -> [SKIP][110] ([fdo#112080])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb3/igt@gem_ctx_isolation@vcs2-reset.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-tglb9/igt@gem_ctx_isolation@vcs2-reset.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][111] ([i915#832]) -> [FAIL][112] ([i915#818])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-hsw6/igt@gem_tiled_blits@interruptible.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/shard-hsw6/igt@gem_tiled_blits@interruptible.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84
  [i915#88]: https://gitlab.freedesktop.org/drm/intel/issues/88


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7657 -> Patchwork_15951

  CI-20190529: 20190529
  CI_DRM_7657: 265f77c05e67b37169ac1a9d750a2e2936928ea0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5355: 2ead76177f2546d3eec0abbd0d9e47cd36588199 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15951: 9cc55ba3c653f8b1d413668cedeb039ea1ed1a85 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15951/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
