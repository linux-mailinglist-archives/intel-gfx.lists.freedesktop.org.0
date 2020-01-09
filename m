Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AFE7135B67
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 15:32:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEB6F6E45F;
	Thu,  9 Jan 2020 14:32:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2006A6E433;
 Thu,  9 Jan 2020 14:32:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 17D52A47E0;
 Thu,  9 Jan 2020 14:32:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 09 Jan 2020 14:32:32 -0000
Message-ID: <157858035206.4564.6899774650352183621@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200108142447.9952-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200108142447.9952-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_MST_disable_sequence_=28rev2=29?=
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

Series: drm/i915: Fix MST disable sequence (rev2)
URL   : https://patchwork.freedesktop.org/series/71767/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7703_full -> Patchwork_16027_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_7703_full and Patchwork_16027_full:

### New IGT tests (3) ###

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-none:
    - Statuses : 7 pass(s)
    - Exec time: [0.24, 2.64] s

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-none:
    - Statuses : 7 pass(s)
    - Exec time: [0.37, 2.15] s

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-none:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 2.22] s

  

Known issues
------------

  Here are the changes found in Patchwork_16027_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-iclb8/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb2/igt@gem_ctx_isolation@vcs1-none.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-iclb7/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-kbl:          [PASS][5] -> [INCOMPLETE][6] ([fdo#103665])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-kbl7/igt@gem_ctx_isolation@vecs0-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-kbl6/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_eio@in-flight-1us:
    - shard-snb:          [PASS][7] -> [FAIL][8] ([i915#490])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-snb6/igt@gem_eio@in-flight-1us.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-snb2/igt@gem_eio@in-flight-1us.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#476])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb1/igt@gem_eio@kms.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-tglb1/igt@gem_eio@kms.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([CI#80] / [i915#472])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb9/igt@gem_exec_nop@basic-series.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-tglb3/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +7 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb4/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-iclb8/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112146]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-render:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111677] / [i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-apl6/igt@gem_exec_suspend@basic-s3.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-apl6/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_softpin@noreloc-s3:
    - shard-iclb:         [PASS][21] -> [INCOMPLETE][22] ([fdo#109100] / [i915#140])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb2/igt@gem_softpin@noreloc-s3.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-iclb3/igt@gem_softpin@noreloc-s3.html

  * igt@i915_selftest@live_hangcheck:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([CI#80])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb1/igt@i915_selftest@live_hangcheck.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-tglb6/igt@i915_selftest@live_hangcheck.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-apl:          [PASS][25] -> [FAIL][26] ([i915#79])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-apl4/igt@kms_flip@flip-vs-expired-vblank.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-apl2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#79])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-snb:          [PASS][29] -> [INCOMPLETE][30] ([i915#82])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-snb2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-snb1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#34])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-glk2/igt@kms_flip@plain-flip-ts-check.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-glk5/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [PASS][33] -> [FAIL][34] ([i915#49]) +5 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +4 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([fdo#108145])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-skl:          [FAIL][41] ([i915#679]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-skl8/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-skl9/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [FAIL][43] ([i915#570]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-skl6/igt@gem_ctx_persistence@processes.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-skl5/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [INCOMPLETE][45] ([i915#461]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb9/igt@gem_ctx_shared@q-smoketest-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-tglb8/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [INCOMPLETE][47] ([i915#469]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb3/igt@gem_eio@unwedge-stress.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-tglb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][49] ([fdo#110854]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb8/igt@gem_exec_balancer@smoke.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [INCOMPLETE][51] ([CI#80] / [fdo#108838] / [i915#472]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb2/igt@gem_exec_create@forked.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-tglb1/igt@gem_exec_create@forked.html

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [INCOMPLETE][53] ([CI#80] / [i915#472]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb1/igt@gem_exec_create@madvise.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-tglb7/igt@gem_exec_create@madvise.html

  * igt@gem_exec_flush@basic-wb-rw-default:
    - shard-glk:          [TIMEOUT][55] ([i915#952]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-glk3/igt@gem_exec_flush@basic-wb-rw-default.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-glk2/igt@gem_exec_flush@basic-wb-rw-default.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][57] ([fdo#111593] / [i915#472]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb8/igt@gem_exec_gttfill@basic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-tglb5/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][59] ([fdo#112080]) -> [PASS][60] +7 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd1:
    - shard-iclb:         [SKIP][61] ([fdo#109276]) -> [PASS][62] +10 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb5/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-iclb4/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-vebox:
    - shard-tglb:         [INCOMPLETE][63] ([fdo#111677] / [i915#472]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-tglb9/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][65] ([fdo#112146]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-iclb7/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [INCOMPLETE][67] ([i915#456] / [i915#472]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb6/igt@gem_exec_suspend@basic-s0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-tglb7/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-iclb:         [TIMEOUT][69] ([i915#530]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-iclb7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-tglb:         [TIMEOUT][71] ([fdo#112126] / [i915#530]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-tglb2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-kbl:          [FAIL][73] ([i915#520]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-iclb:         [INCOMPLETE][75] ([fdo#109100] / [i915#140] / [i915#530]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb6/igt@gem_persistent_relocs@forked-thrashing.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-iclb2/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][77] ([i915#644]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][79] ([i915#454]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-iclb6/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][81] ([i915#413]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb1/igt@i915_pm_rps@reset.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-iclb2/igt@i915_pm_rps@reset.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][83] ([i915#180]) -> [PASS][84] +5 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [FAIL][85] ([i915#54]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][87] ([i915#72]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][89] ([i915#221]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
    - shard-tglb:         [FAIL][91] ([i915#49]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [DMESG-WARN][93] ([i915#109]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-skl2/igt@kms_plane@pixel-format-pipe-b-planes.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-skl3/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][95] ([i915#69]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-skl9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][97] ([i915#180]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][99] ([fdo#108145]) -> [PASS][100] +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][101] ([fdo#108145] / [i915#265]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][103] ([fdo#109441]) -> [PASS][104] +2 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb1/igt@kms_psr@psr2_suspend.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-iclb2/igt@kms_psr@psr2_suspend.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-dirty-switch:
    - shard-tglb:         [SKIP][105] ([fdo#112080]) -> [SKIP][106] ([fdo#111912] / [fdo#112080])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-switch.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-tglb7/igt@gem_ctx_isolation@vcs2-dirty-switch.html

  * igt@gem_ctx_isolation@vcs2-nonpriv-switch:
    - shard-tglb:         [SKIP][107] ([fdo#111912] / [fdo#112080]) -> [SKIP][108] ([fdo#112080])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb3/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][109] ([i915#454]) -> [SKIP][110] ([i915#468])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking:
    - shard-tglb:         [SKIP][111] ([fdo#112016] / [fdo#112021]) -> [SKIP][112] ([fdo#112021])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb6/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
  [fdo#109100]: https://bugs.freedesktop.org/show_bug.cgi?id=109100
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#469]: https://gitlab.freedesktop.org/drm/intel/issues/469
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#952]: https://gitlab.freedesktop.org/drm/intel/issues/952


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7703 -> Patchwork_16027

  CI-20190529: 20190529
  CI_DRM_7703: 17da00c0d18968f69a34991f54804c7eaa8a3312 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16027: 9aaf3d1679762c184fa4ad5952050a0e8b795937 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16027/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
