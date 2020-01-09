Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D58135D0C
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 16:44:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 133466E445;
	Thu,  9 Jan 2020 15:44:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8BB7A6E440;
 Thu,  9 Jan 2020 15:44:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 82C35A0087;
 Thu,  9 Jan 2020 15:44:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 09 Jan 2020 15:44:47 -0000
Message-ID: <157858468750.4563.3284562229460128195@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200108145616.7349-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200108145616.7349-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Pass_cpu=5Ftranscoder_to_assert=5Fpipe=5Fdisabled=28?=
 =?utf-8?q?=29_always?=
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

Series: drm/i915: Pass cpu_transcoder to assert_pipe_disabled() always
URL   : https://patchwork.freedesktop.org/series/71768/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7703_full -> Patchwork_16028_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16028_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16028_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16028_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@close-race:
    - shard-hsw:          [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-hsw5/igt@gem_busy@close-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-hsw1/igt@gem_busy@close-race.html

  * igt@gem_exec_parallel@vecs0-contexts:
    - shard-tglb:         [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb3/igt@gem_exec_parallel@vecs0-contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-tglb1/igt@gem_exec_parallel@vecs0-contexts.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7703_full and Patchwork_16028_full:

### New IGT tests (3) ###

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-none:
    - Statuses : 6 pass(s)
    - Exec time: [0.24, 1.01] s

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-none:
    - Statuses : 8 pass(s)
    - Exec time: [0.26, 2.21] s

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-none:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 2.26] s

  

Known issues
------------

  Here are the changes found in Patchwork_16028_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112080]) +14 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb1/igt@gem_busy@extended-parallel-vcs1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-iclb7/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +5 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-apl8/igt@gem_ctx_isolation@rcs0-s3.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-apl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276] / [fdo#112080]) +6 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-iclb6/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-iclb:         [PASS][11] -> [FAIL][12] ([i915#679])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb8/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-iclb5/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([fdo#111735])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb2/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_exec_balancer@smoke:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111593] / [i915#472])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb5/igt@gem_exec_balancer@smoke.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-tglb8/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([CI#80] / [i915#472]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb2/igt@gem_exec_nop@basic-sequential.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-tglb6/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112146]) +7 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb7/igt@gem_exec_schedule@in-order-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([i915#677])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#472] / [i915#707])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb1/igt@gem_exec_schedule@smoketest-vebox.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-tglb3/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#460] / [i915#472]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb3/igt@gem_exec_suspend@basic-s4-devices.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-tglb6/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#69])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-skl2/igt@gem_softpin@noreloc-s3.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-skl1/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#470] / [i915#472])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb2/igt@gem_sync@basic-all.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-tglb2/igt@gem_sync@basic-all.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][31] -> [INCOMPLETE][32] ([i915#472])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb1/igt@gem_sync@basic-store-all.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-tglb6/igt@gem_sync@basic-store-all.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-hsw:          [PASS][33] -> [FAIL][34] ([i915#694])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-hsw1/igt@gen7_exec_parse@basic-offset.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-hsw5/igt@gen7_exec_parse@basic-offset.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [PASS][35] -> [DMESG-WARN][36] ([i915#109])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-skl5/igt@kms_color@pipe-a-ctm-0-75.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-skl3/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180]) +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][39] -> [FAIL][40] ([i915#79])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][41] -> [INCOMPLETE][42] ([i915#221])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-skl3/igt@kms_flip@flip-vs-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-skl7/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][43] -> [FAIL][44] ([i915#49])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([fdo#108145])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109441]) +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-iclb5/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#109276]) +17 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-skl:          [FAIL][51] ([i915#679]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-skl8/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-skl5/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [FAIL][53] ([i915#570]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-skl6/igt@gem_ctx_persistence@processes.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-skl4/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][55] ([fdo#109276] / [fdo#112080]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb7/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][57] ([fdo#110841]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-iclb7/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [INCOMPLETE][59] ([i915#461]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb9/igt@gem_ctx_shared@q-smoketest-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-tglb7/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [INCOMPLETE][61] ([i915#469]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb3/igt@gem_eio@unwedge-stress.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-tglb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_flush@basic-wb-rw-default:
    - shard-glk:          [TIMEOUT][63] ([i915#952]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-glk3/igt@gem_exec_flush@basic-wb-rw-default.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-glk5/igt@gem_exec_flush@basic-wb-rw-default.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [INCOMPLETE][65] ([i915#472] / [i915#476]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb6/igt@gem_exec_parallel@basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-tglb1/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_reuse@single:
    - shard-tglb:         [INCOMPLETE][67] ([CI#80] / [i915#472]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb6/igt@gem_exec_reuse@single.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-tglb1/igt@gem_exec_reuse@single.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][69] ([fdo#109276]) -> [PASS][70] +17 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb7/igt@gem_exec_schedule@independent-bsd2.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][71] ([i915#677]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox:
    - shard-tglb:         [INCOMPLETE][73] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-tglb2/igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox.html

  * igt@gem_exec_schedule@preempt-queue-contexts-vebox:
    - shard-tglb:         [INCOMPLETE][75] ([fdo#111677] / [i915#472]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-tglb2/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][77] ([fdo#112146]) -> [PASS][78] +6 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [INCOMPLETE][79] ([i915#463] / [i915#472]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb7/igt@gem_exec_schedule@smoketest-all.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-tglb7/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [INCOMPLETE][81] ([i915#456] / [i915#472]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb6/igt@gem_exec_suspend@basic-s0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-tglb8/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-iclb:         [TIMEOUT][83] ([i915#530]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-iclb2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-kbl:          [FAIL][85] ([i915#520]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][87] ([i915#454]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][89] ([i915#413]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb1/igt@i915_pm_rps@reset.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-iclb7/igt@i915_pm_rps@reset.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][91] ([i915#180]) -> [PASS][92] +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [FAIL][93] ([i915#54]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][95] ([i915#72]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][97] ([i915#221]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
    - shard-tglb:         [FAIL][99] ([i915#49]) -> [PASS][100] +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [DMESG-WARN][101] ([i915#109]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-skl2/igt@kms_plane@pixel-format-pipe-b-planes.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-skl2/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][103] ([i915#69]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][105] ([i915#180]) -> [PASS][106] +2 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][107] ([fdo#108145]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][109] ([fdo#108145] / [i915#265]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][111] ([fdo#109441]) -> [PASS][112] +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][113] ([fdo#112080]) -> [PASS][114] +7 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb7/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][115] ([fdo#109276] / [fdo#112080]) -> [FAIL][116] ([IGT#28])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs2-dirty-switch:
    - shard-tglb:         [SKIP][117] ([fdo#112080]) -> [SKIP][118] ([fdo#111912] / [fdo#112080])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-switch.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-tglb8/igt@gem_ctx_isolation@vcs2-dirty-switch.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][119] ([i915#82]) -> [DMESG-FAIL][120] ([i915#436])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-snb6/igt@gem_eio@kms.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-snb5/igt@gem_eio@kms.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-iclb:         [INCOMPLETE][121] ([fdo#109100] / [i915#140] / [i915#530]) -> [FAIL][122] ([i915#520])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-iclb6/igt@gem_persistent_relocs@forked-thrashing.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-iclb5/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][123] ([i915#818]) -> [FAIL][124] ([i915#694])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-hsw5/igt@gem_tiled_blits@interruptible.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-hsw5/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][125] ([i915#454]) -> [SKIP][126] ([i915#468])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7703/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109100]: https://bugs.freedesktop.org/show_bug.cgi?id=109100
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#436]: https://gitlab.freedesktop.org/drm/intel/issues/436
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#469]: https://gitlab.freedesktop.org/drm/intel/issues/469
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#952]: https://gitlab.freedesktop.org/drm/intel/issues/952


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7703 -> Patchwork_16028

  CI-20190529: 20190529
  CI_DRM_7703: 17da00c0d18968f69a34991f54804c7eaa8a3312 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16028: 2e2a16f104814af0c1439c5def3e460642f00a08 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16028/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
