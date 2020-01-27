Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 151DE14A460
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 14:01:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1348E6EB83;
	Mon, 27 Jan 2020 13:01:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4C1BE6EB83;
 Mon, 27 Jan 2020 13:01:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 42C38A0009;
 Mon, 27 Jan 2020 13:01:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Mon, 27 Jan 2020 13:01:35 -0000
Message-ID: <158013009523.9687.16494726745149829398@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200124084456.2961-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200124084456.2961-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgRW5h?=
 =?utf-8?q?ble_second_DBuf_slice_for_ICL_and_TGL_=28rev21=29?=
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

Series: Enable second DBuf slice for ICL and TGL (rev21)
URL   : https://patchwork.freedesktop.org/series/70059/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7806_full -> Patchwork_16248_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16248_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@close-race:
    - shard-hsw:          [PASS][1] -> [TIMEOUT][2] ([fdo#112271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-hsw8/igt@gem_busy@close-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-hsw2/igt@gem_busy@close-race.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-iclb7/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-iclb4/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +6 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb1/igt@gem_exec_schedule@promotion-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-iclb5/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#1028])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-skl1/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-skl9/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-hsw:          [PASS][13] -> [INCOMPLETE][14] ([i915#530] / [i915#61])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-hsw7/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-hsw7/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
    - shard-iclb:         [PASS][15] -> [INCOMPLETE][16] ([i915#140])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb8/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-iclb8/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-snb:          [PASS][17] -> [FAIL][18] ([i915#520])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-snb5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-snb2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-iclb:         [PASS][19] -> [INCOMPLETE][20] ([fdo#109100] / [i915#140])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb6/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-iclb3/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#530])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-skl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-skl9/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@i915_pm_rps@reset:
    - shard-tglb:         [PASS][23] -> [FAIL][24] ([i915#413])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-tglb6/igt@i915_pm_rps@reset.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-tglb4/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@mock_requests:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#198])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-skl10/igt@i915_selftest@mock_requests.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-skl4/igt@i915_selftest@mock_requests.html
    - shard-apl:          [PASS][27] -> [INCOMPLETE][28] ([fdo#103927]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-apl7/igt@i915_selftest@mock_requests.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-apl8/igt@i915_selftest@mock_requests.html

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-apl2/igt@i915_suspend@debugfs-reader.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-apl4/igt@i915_suspend@debugfs-reader.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [PASS][31] -> [DMESG-WARN][32] ([i915#109]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-skl6/igt@kms_color@pipe-b-ctm-0-25.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-skl7/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#54]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#52] / [i915#54])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-skl8/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#79])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
    - shard-glk:          [PASS][39] -> [FAIL][40] ([i915#79])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-tglb:         [PASS][41] -> [FAIL][42] ([i915#49]) +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([fdo#108145]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109441]) +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][47] -> [FAIL][48] ([i915#31])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-apl4/igt@kms_setmode@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-apl6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][49] -> [DMESG-WARN][50] ([i915#180]) +6 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#112080]) +4 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb1/igt@perf_pmu@busy-vcs1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-iclb6/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +7 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [SKIP][55] ([fdo#109276] / [fdo#112080]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb7/igt@gem_ctx_isolation@vcs1-none.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-iclb2/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-glk:          [FAIL][57] ([i915#679]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-glk3/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-glk3/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][59] ([fdo#110841]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][61] ([fdo#112080]) -> [PASS][62] +6 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@in-order-bsd2:
    - shard-iclb:         [SKIP][63] ([fdo#109276]) -> [PASS][64] +15 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb7/igt@gem_exec_schedule@in-order-bsd2.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-iclb2/igt@gem_exec_schedule@in-order-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][65] ([i915#677]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-iclb8/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][67] ([fdo#112146]) -> [PASS][68] +6 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-hsw:          [INCOMPLETE][69] ([i915#530] / [i915#61]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-apl:          [INCOMPLETE][71] ([fdo#103927]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-apl8/igt@gem_persistent_relocs@forked-thrashing.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-apl8/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][73] ([i915#413]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb3/igt@i915_pm_rps@waitboost.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-iclb5/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@mock_requests:
    - shard-glk:          [INCOMPLETE][75] ([i915#58] / [k.org#198133]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-glk7/igt@i915_selftest@mock_requests.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-glk2/igt@i915_selftest@mock_requests.html
    - shard-tglb:         [INCOMPLETE][77] ([i915#472]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-tglb6/igt@i915_selftest@mock_requests.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-tglb4/igt@i915_selftest@mock_requests.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][79] ([i915#72]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-skl:          [FAIL][81] ([IGT#5] / [i915#697]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [DMESG-WARN][83] ([i915#180]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-apl8/igt@kms_flip@flip-vs-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-apl2/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@modeset-vs-vblank-race-interruptible:
    - shard-glk:          [FAIL][85] ([i915#407]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-glk6/igt@kms_flip@modeset-vs-vblank-race-interruptible.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-glk5/igt@kms_flip@modeset-vs-vblank-race-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack:
    - shard-tglb:         [FAIL][87] ([i915#49]) -> [PASS][88] +5 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][89] ([fdo#108145] / [i915#265]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][91] ([fdo#109441]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [FAIL][93] ([i915#831]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-hsw2/igt@prime_mmap_coherency@ioctl-errors.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-hsw5/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][95] ([fdo#109276] / [fdo#112080]) -> [FAIL][96] ([IGT#28])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][97] ([i915#818]) -> [FAIL][98] ([i915#694])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-hsw1/igt@gem_tiled_blits@interruptible.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-hsw5/igt@gem_tiled_blits@interruptible.html

  * igt@kms_atomic_transition@3x-modeset-transitions:
    - shard-hsw:          [SKIP][99] ([fdo#109271] / [i915#439]) -> [SKIP][100] ([fdo#109271])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-hsw5/igt@kms_atomic_transition@3x-modeset-transitions.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-hsw8/igt@kms_atomic_transition@3x-modeset-transitions.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][101] ([fdo#109349]) -> [DMESG-WARN][102] ([fdo#107724])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7806/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109100]: https://bugs.freedesktop.org/show_bug.cgi?id=109100
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1028]: https://gitlab.freedesktop.org/drm/intel/issues/1028
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#439]: https://gitlab.freedesktop.org/drm/intel/issues/439
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#697]: https://gitlab.freedesktop.org/drm/intel/issues/697
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7806 -> Patchwork_16248

  CI-20190529: 20190529
  CI_DRM_7806: 0b551226df5e5b84044705d5fd76571da70f3163 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5382: 8dbe5ce61baa2d563d4dd7c56a018bb1e1077467 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16248: 095e63821d5eb9749b1ff6d9a7a49e5c2a45d4bb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16248/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
