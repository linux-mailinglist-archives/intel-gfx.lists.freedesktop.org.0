Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C23111F00C
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Dec 2019 03:47:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C9436E2F9;
	Sat, 14 Dec 2019 02:47:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0A8AF6E2F3;
 Sat, 14 Dec 2019 02:47:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EE2E2A0BCB;
 Sat, 14 Dec 2019 02:47:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dan Carpenter" <dan.carpenter@oracle.com>
Date: Sat, 14 Dec 2019 02:47:53 -0000
Message-ID: <157629167394.13803.16303938186415383219@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191213105050.y2v5nylsuxvc44jj@kili.mountain>
In-Reply-To: <20191213105050.y2v5nylsuxvc44jj@kili.mountain>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_remove_a_condition?=
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

Series: drm/i915/selftests: remove a condition
URL   : https://patchwork.freedesktop.org/series/70877/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7557_full -> Patchwork_15740_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15740_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-apl1/igt@gen9_exec_parse@allowed-single.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-apl1/igt@gen9_exec_parse@allowed-single.html

  * {igt@gen9_exec_parse@batch-zero-length}:
    - shard-iclb:         NOTRUN -> [SKIP][3] +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-iclb3/igt@gen9_exec_parse@batch-zero-length.html

  * {igt@gen9_exec_parse@bb-start-param}:
    - shard-tglb:         NOTRUN -> [SKIP][4] +4 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-tglb2/igt@gen9_exec_parse@bb-start-param.html

  
Known issues
------------

  Here are the changes found in Patchwork_15740_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-kbl6/igt@gem_ctx_isolation@bcs0-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-kbl4/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#456])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-tglb2/igt@gem_ctx_isolation@rcs0-s3.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-tglb5/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-dirty-switch:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276] / [fdo#112080])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-iclb1/igt@gem_ctx_isolation@vcs1-dirty-switch.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-iclb8/igt@gem_ctx_isolation@vcs1-dirty-switch.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-apl:          [PASS][11] -> [FAIL][12] ([i915#679])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-apl6/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-apl3/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_shared@exec-shared-gtt-bsd2:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +5 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-iclb1/igt@gem_ctx_shared@exec-shared-gtt-bsd2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-iclb8/igt@gem_ctx_shared@exec-shared-gtt-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-blt:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111677]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-tglb9/igt@gem_exec_schedule@preempt-queue-blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-tglb6/igt@gem_exec_schedule@preempt-queue-blt.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-glk:          [PASS][17] -> [TIMEOUT][18] ([i915#530])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-glk2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-glk8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#644])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-kbl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-snb:          [PASS][21] -> [DMESG-WARN][22] ([fdo#111870]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-snb6/igt@gem_userptr_blits@sync-unmap-cycles.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-snb4/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-hsw:          [PASS][23] -> [DMESG-WARN][24] ([i915#747])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-hsw5/igt@i915_selftest@mock_sanitycheck.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-hsw8/igt@i915_selftest@mock_sanitycheck.html
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#747])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-kbl1/igt@i915_selftest@mock_sanitycheck.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-kbl6/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][27] -> [DMESG-WARN][28] ([i915#109]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-skl10/igt@kms_color@pipe-a-ctm-0-5.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-skl1/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#300])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-offscreen:
    - shard-hsw:          [PASS][31] -> [DMESG-WARN][32] ([IGT#6])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-hsw8/igt@kms_cursor_crc@pipe-c-cursor-128x42-offscreen.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-hsw6/igt@kms_cursor_crc@pipe-c-cursor-128x42-offscreen.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-toggle:
    - shard-hsw:          [PASS][33] -> [INCOMPLETE][34] ([i915#61])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-hsw8/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-hsw7/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([IGT#5])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [PASS][37] -> [INCOMPLETE][38] ([i915#435] / [i915#456] / [i915#460])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-tglb9/igt@kms_fbcon_fbt@fbc-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-tglb4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#79])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html
    - shard-glk:          [PASS][41] -> [FAIL][42] ([i915#79]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-glk4/igt@kms_flip@flip-vs-expired-vblank.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-glk4/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][45] -> [FAIL][46] ([i915#49])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-kbl:          [PASS][47] -> [INCOMPLETE][48] ([fdo#103665] / [i915#648] / [i915#667])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-kbl7/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-kbl3/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-tglb:         [PASS][49] -> [INCOMPLETE][50] ([i915#456] / [i915#460]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-tglb6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-tglb1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-yf:
    - shard-skl:          [PASS][51] -> [DMESG-WARN][52] ([IGT#6])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-skl1/igt@kms_plane_multiple@atomic-pipe-c-tiling-yf.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-skl6/igt@kms_plane_multiple@atomic-pipe-c-tiling-yf.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#109441])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-iclb3/igt@kms_psr@psr2_cursor_render.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#112080]) +3 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-iclb8/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-apl:          [FAIL][57] ([i915#679]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-apl2/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-apl7/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-cleanup:
    - shard-iclb:         [SKIP][59] ([fdo#109276] / [fdo#112080]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-iclb6/igt@gem_ctx_persistence@vcs1-cleanup.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-iclb1/igt@gem_ctx_persistence@vcs1-cleanup.html

  * igt@gem_exec_basic@readonly-vcs1:
    - shard-iclb:         [SKIP][61] ([fdo#112080]) -> [PASS][62] +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-iclb6/igt@gem_exec_basic@readonly-vcs1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-iclb1/igt@gem_exec_basic@readonly-vcs1.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][63] ([fdo#111593]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-tglb7/igt@gem_exec_gttfill@basic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-tglb5/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [INCOMPLETE][65] ([i915#470]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-tglb6/igt@gem_exec_parallel@fds.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-tglb4/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [SKIP][67] ([fdo#109276]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-iclb6/igt@gem_exec_schedule@fifo-bsd1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-iclb1/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-chain-vebox:
    - shard-tglb:         [INCOMPLETE][69] ([fdo#111677]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-vebox.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-tglb8/igt@gem_exec_schedule@preempt-queue-chain-vebox.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][71] ([i915#435] / [i915#472]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-tglb6/igt@gem_sync@basic-store-each.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-tglb1/igt@gem_sync@basic-store-each.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][73] ([i915#818]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-hsw7/igt@gem_tiled_blits@interruptible.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-hsw6/igt@gem_tiled_blits@interruptible.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup:
    - shard-snb:          [DMESG-WARN][75] ([fdo#111870]) -> [PASS][76] +3 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-snb2/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-snb1/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-skl:          [INCOMPLETE][77] ([i915#69]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-skl8/igt@gem_workarounds@suspend-resume-fd.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-skl10/igt@gem_workarounds@suspend-resume-fd.html

  * {igt@gen9_exec_parse@allowed-all}:
    - shard-apl:          [DMESG-WARN][79] -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-apl7/igt@gen9_exec_parse@allowed-all.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-apl1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-snb:          [DMESG-WARN][81] ([i915#747]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-snb6/igt@i915_selftest@mock_sanitycheck.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-snb2/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [FAIL][83] ([i915#54]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [INCOMPLETE][85] ([i915#300]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-render-ytiled:
    - shard-skl:          [INCOMPLETE][87] ([i915#667]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-skl5/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][89] ([i915#79]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-tglb:         [INCOMPLETE][91] ([i915#456] / [i915#460] / [i915#516]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-tglb1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-tglb6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-tglb:         [FAIL][93] ([i915#49]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [INCOMPLETE][95] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt:
    - shard-tglb:         [INCOMPLETE][97] ([i915#667]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-tglb9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-tglb:         [INCOMPLETE][99] ([i915#456] / [i915#460]) -> [PASS][100] +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-tglb4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-tglb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][101] ([i915#648] / [i915#667]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-skl6/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-skl3/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-kbl:          [INCOMPLETE][103] ([fdo#103665] / [i915#435] / [i915#648] / [i915#667]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-kbl1/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-kbl3/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane@pixel-format-pipe-c-planes-source-clamping:
    - shard-iclb:         [INCOMPLETE][105] ([i915#140] / [i915#246]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-iclb8/igt@kms_plane@pixel-format-pipe-c-planes-source-clamping.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-iclb8/igt@kms_plane@pixel-format-pipe-c-planes-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [DMESG-WARN][107] ([i915#180]) -> [PASS][108] +4 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][109] ([fdo#108145]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][111] ([fdo#108145] / [i915#265]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [FAIL][113] ([i915#31]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/shard-hsw2/igt@kms_setmode@basic.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/shard-hsw1/igt@kms_setmode@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#246]: https://gitlab.freedesktop.org/drm/intel/issues/246
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#516]: https://gitlab.freedesktop.org/drm/intel/issues/516
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7557 -> Patchwork_15740

  CI-20190529: 20190529
  CI_DRM_7557: a6596a7f6c774047468c78a42781e4bc17449c24 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15740: 898b71ebf29546113ac1894c42b4e4b7c6ed8476 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
