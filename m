Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A2C12D979
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2019 15:30:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28C7189BAB;
	Tue, 31 Dec 2019 14:30:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EA59489B3C;
 Tue, 31 Dec 2019 14:30:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D8E33A00FD;
 Tue, 31 Dec 2019 14:30:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 31 Dec 2019 14:30:22 -0000
Message-ID: <157780262285.26889.11158923155290914408@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191231120857.4014900-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191231120857.4014900-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Tweak_flushes_around_ivb_ppgtt?=
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

Series: drm/i915/gt: Tweak flushes around ivb ppgtt
URL   : https://patchwork.freedesktop.org/series/71519/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7657_full -> Patchwork_15952_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15952_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-kbl4/igt@gem_ctx_isolation@bcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-kbl1/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-iclb3/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#476])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb7/igt@gem_eio@kms.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-tglb2/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#110854])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@gem_exec_balancer@smoke.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-iclb5/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_reuse@single:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#435])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb1/igt@gem_exec_reuse@single.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-tglb6/igt@gem_exec_reuse@single.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +8 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb1/igt@gem_exec_schedule@fifo-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-iclb8/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd1:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([fdo#111606] / [fdo#111677])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb1/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-tglb5/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112146]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-iclb2/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_exec_schedule@smoketest-blt:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#470])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb8/igt@gem_exec_schedule@smoketest-blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-tglb3/igt@gem_exec_schedule@smoketest-blt.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-tglb:         [PASS][19] -> [TIMEOUT][20] ([fdo#112126] / [i915#530])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-tglb7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-apl:          [PASS][21] -> [TIMEOUT][22] ([i915#530])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-apl8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#454])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@live_requests:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#472])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb8/igt@i915_selftest@live_requests.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-tglb6/igt@i915_selftest@live_requests.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#54])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-glk4/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-glk9/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109642] / [fdo#111068]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-iclb3/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#112080]) +7 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@perf_pmu@busy-vcs1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-iclb3/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][39] ([fdo#109276] / [fdo#112080]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb3/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-iclb4/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-skl:          [FAIL][41] ([i915#679]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl5/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-skl6/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_exec_await@wide-contexts:
    - shard-tglb:         [INCOMPLETE][43] ([fdo#111736]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb5/igt@gem_exec_await@wide-contexts.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-tglb7/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][45] ([fdo#112080]) -> [PASS][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb7/igt@gem_exec_parallel@vcs1-fds.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * {igt@gem_exec_schedule@pi-common-bsd}:
    - shard-iclb:         [SKIP][47] ([i915#677]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [SKIP][49] ([fdo#109276]) -> [PASS][50] +12 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb7/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-iclb4/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-tglb:         [INCOMPLETE][51] ([fdo#111677]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb5/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-tglb7/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-render:
    - shard-tglb:         [INCOMPLETE][53] ([fdo#111606] / [fdo#111677]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb4/igt@gem_exec_schedule@preempt-queue-contexts-render.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-render.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][55] ([fdo#112146]) -> [PASS][56] +3 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][57] ([i915#707]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb9/igt@gem_exec_schedule@smoketest-vebox.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-tglb5/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-iclb:         [TIMEOUT][59] ([i915#530]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb5/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-iclb5/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_sync@basic-many-each:
    - shard-tglb:         [INCOMPLETE][61] ([i915#472] / [i915#707]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb4/igt@gem_sync@basic-many-each.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-tglb2/igt@gem_sync@basic-many-each.html

  * {igt@gen9_exec_parse@allowed-all}:
    - shard-kbl:          [DMESG-WARN][63] ([i915#716]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-kbl3/igt@gen9_exec_parse@allowed-all.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-kbl2/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][65] ([i915#109]) -> [PASS][66] +3 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl4/igt@kms_color@pipe-a-ctm-0-75.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-skl3/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding:
    - shard-glk:          [FAIL][67] ([i915#54]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-glk6/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-glk9/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled:
    - shard-snb:          [SKIP][69] ([fdo#109271]) -> [PASS][70] +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-snb2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-snb7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][71] ([i915#46]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
    - shard-glk:          [FAIL][73] ([i915#46]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:
    - shard-tglb:         [FAIL][75] ([i915#49]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][77] ([i915#180]) -> [PASS][78] +7 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][79] ([fdo#108145]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-y:
    - shard-skl:          [DMESG-WARN][81] ([IGT#6]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl5/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-skl9/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][83] ([fdo#109441]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf@oa-exponents:
    - shard-glk:          [FAIL][85] ([i915#84]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-glk8/igt@perf@oa-exponents.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-glk4/igt@perf@oa-exponents.html

  * igt@perf_pmu@enable-race-vcs1:
    - shard-tglb:         [INCOMPLETE][87] ([i915#435]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb5/igt@perf_pmu@enable-race-vcs1.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-tglb7/igt@perf_pmu@enable-race-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][89] ([IGT#28]) -> [SKIP][90] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][91] ([i915#82]) -> [DMESG-WARN][92] ([i915#444])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-snb4/igt@gem_eio@kms.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-snb6/igt@gem_eio@kms.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][93] ([i915#818]) -> [FAIL][94] ([i915#832])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-hsw7/igt@gem_tiled_blits@normal.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/shard-hsw7/igt@gem_tiled_blits@normal.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7657 -> Patchwork_15952

  CI-20190529: 20190529
  CI_DRM_7657: 265f77c05e67b37169ac1a9d750a2e2936928ea0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5355: 2ead76177f2546d3eec0abbd0d9e47cd36588199 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15952: 670665f712503142a04ff8cb27c0d5d1acdd00cb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
