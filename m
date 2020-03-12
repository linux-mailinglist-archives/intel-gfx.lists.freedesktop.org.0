Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF73182E1F
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 11:46:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7C3C6E135;
	Thu, 12 Mar 2020 10:46:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0AB586E134;
 Thu, 12 Mar 2020 10:46:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 02F48A47DA;
 Thu, 12 Mar 2020 10:46:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 12 Mar 2020 10:46:48 -0000
Message-ID: <158401000800.4947.11987724923351694512@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200311133047.30696-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200311133047.30696-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/12=5D_drm/i915/selftests=3A_Add_request?=
 =?utf-8?q?_throughput_measurement_to_perf?=
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

Series: series starting with [01/12] drm/i915/selftests: Add request throughput measurement to perf
URL   : https://patchwork.freedesktop.org/series/74586/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8120_full -> Patchwork_16929_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_8120_full and Patchwork_16929_full:

### New IGT tests (3) ###

  * igt@dmabuf@all@dma_fence_chain:
    - Statuses : 8 pass(s)
    - Exec time: [7.47, 33.91] s

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 8 pass(s)
    - Exec time: [0.04, 0.11] s

  * igt@i915_selftest@perf@request:
    - Statuses : 6 pass(s)
    - Exec time: [3.50, 5.72] s

  

Known issues
------------

  Here are the changes found in Patchwork_16929_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb4/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-iclb8/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [i915#677]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-iclb8/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb7/igt@gem_exec_schedule@in-order-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb7/igt@gem_exec_schedule@pi-userfault-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#644])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-tglb7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-tglb3/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-kbl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#447])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb8/igt@i915_pm_dc@dc5-dpms.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109349])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#52] / [i915#54])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-skl1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-skl5/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-kbl:          [PASS][23] -> [FAIL][24] ([i915#34])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-kbl3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-kbl1/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#49])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-snb:          [PASS][29] -> [DMESG-WARN][30] ([i915#42])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-snb2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-snb6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145] / [i915#265])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][35] -> [FAIL][36] ([i915#899])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][39] -> [FAIL][40] ([i915#31])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-kbl7/igt@kms_setmode@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-kbl3/igt@kms_setmode@basic.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109276]) +19 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb1/igt@prime_busy@hang-bsd2.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-iclb8/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [INCOMPLETE][43] ([i915#1402]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-tglb8/igt@gem_ctx_persistence@close-replace-race.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-tglb2/igt@gem_ctx_persistence@close-replace-race.html
    - shard-kbl:          [INCOMPLETE][45] ([i915#1402]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-kbl7/igt@gem_ctx_persistence@close-replace-race.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-kbl3/igt@gem_ctx_persistence@close-replace-race.html
    - shard-skl:          [INCOMPLETE][47] ([i915#1402]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-skl10/igt@gem_ctx_persistence@close-replace-race.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-skl10/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_schedule@implicit-write-read-bsd2:
    - shard-iclb:         [SKIP][49] ([fdo#109276] / [i915#677]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb5/igt@gem_exec_schedule@implicit-write-read-bsd2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-iclb2/igt@gem_exec_schedule@implicit-write-read-bsd2.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][51] ([fdo#109276]) -> [PASS][52] +12 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb5/igt@gem_exec_schedule@independent-bsd2.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][53] ([i915#677]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-iclb8/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][55] ([fdo#112146]) -> [PASS][56] +6 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-iclb3/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-iclb:         [TIMEOUT][57] -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb2/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-iclb3/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@i915_hangman@error-state-capture-vcs1:
    - shard-iclb:         [SKIP][59] ([fdo#112080]) -> [PASS][60] +8 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb7/igt@i915_hangman@error-state-capture-vcs1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-iclb1/igt@i915_hangman@error-state-capture-vcs1.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [INCOMPLETE][61] -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-random:
    - shard-skl:          [FAIL][63] ([i915#54]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-256x256-random.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-256x256-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][65] ([i915#180]) -> [PASS][66] +3 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][67] ([i915#79]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [INCOMPLETE][69] ([i915#61]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-hsw2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-hsw5/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-apl:          [FAIL][71] ([i915#34]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-apl7/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-apl2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][73] ([i915#1188]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][75] ([fdo#108145]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [FAIL][77] ([i915#899]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][79] ([fdo#109642] / [fdo#111068]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb5/igt@kms_psr2_su@page_flip.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [SKIP][81] ([fdo#109441]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-iclb5/igt@kms_psr@psr2_sprite_render.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-iclb2/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][83] ([i915#180]) -> [PASS][84] +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-apl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-apl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
    - shard-skl:          [INCOMPLETE][85] ([i915#69]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-skl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-skl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-apl:          [INCOMPLETE][87] ([fdo#103927] / [i915#1402]) -> [TIMEOUT][88] ([i915#1340])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-apl8/igt@gem_ctx_persistence@close-replace-race.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-apl3/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_linear_blits@normal:
    - shard-apl:          [TIMEOUT][89] ([fdo#111732] / [i915#1322]) -> [TIMEOUT][90] ([i915#1322])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-apl3/igt@gem_linear_blits@normal.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-apl1/igt@gem_linear_blits@normal.html

  * igt@i915_pm_rpm@debugfs-forcewake-user:
    - shard-snb:          [SKIP][91] ([fdo#109271]) -> [INCOMPLETE][92] ([i915#82])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-snb5/igt@i915_pm_rpm@debugfs-forcewake-user.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-snb2/igt@i915_pm_rpm@debugfs-forcewake-user.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][93], [FAIL][94]) ([i915#1389] / [i915#1402] / [i915#92]) -> [FAIL][95] ([i915#92])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-kbl7/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-kbl7/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-kbl6/igt@runner@aborted.html
    - shard-apl:          ([FAIL][96], [FAIL][97]) ([fdo#103927] / [i915#1402]) -> [FAIL][98] ([fdo#103927])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-apl8/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8120/shard-apl7/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/shard-apl6/igt@runner@aborted.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1322]: https://gitlab.freedesktop.org/drm/intel/issues/1322
  [i915#1340]: https://gitlab.freedesktop.org/drm/intel/issues/1340
  [i915#1389]: https://gitlab.freedesktop.org/drm/intel/issues/1389
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8120 -> Patchwork_16929

  CI-20190529: 20190529
  CI_DRM_8120: ce66c439df71f01b018803664c4a50fc61255788 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5505: 8973d811f3fdfb4ace4aabab2095ce0309881648 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16929: e88f97ca9c8b73d9957825e62a1a28b99466b56a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16929/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
