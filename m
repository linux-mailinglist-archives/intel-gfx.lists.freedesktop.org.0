Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC90512C28B
	for <lists+intel-gfx@lfdr.de>; Sun, 29 Dec 2019 14:36:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D17189994;
	Sun, 29 Dec 2019 13:36:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7DD31897C3;
 Sun, 29 Dec 2019 13:36:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6AF0DA0099;
 Sun, 29 Dec 2019 13:36:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 29 Dec 2019 13:36:27 -0000
Message-ID: <157762658740.6888.17983599319238408140@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191229114037.3266228-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191229114037.3266228-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/gt=3A_Ensure_that_all?=
 =?utf-8?q?_new_contexts_clear_STOP=5FRING?=
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

Series: series starting with [CI,1/2] drm/i915/gt: Ensure that all new contexts clear STOP_RING
URL   : https://patchwork.freedesktop.org/series/71468/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7649_full -> Patchwork_15940_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_7649_full and Patchwork_15940_full:

### New Piglit tests (4) ###

  * spec@arb_shading_language_packing@execution@built-in-functions@const-unpackunorm2x16:
    - Statuses : 1 fail(s)
    - Exec time: [6.00] s

  * spec@arb_texture_view@sampling-2d-array-as-2d-layer:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dvec3_array3-double_dmat3x2:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat2_array5-uint_uint-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  

Known issues
------------

  Here are the changes found in Patchwork_15940_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [PASS][1] -> [FAIL][2] ([i915#570])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-skl8/igt@gem_ctx_persistence@processes.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-skl3/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-iclb6/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110854])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-iclb5/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112080]) +14 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-iclb7/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +11 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-iclb6/igt@gem_exec_schedule@in-order-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#69])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-skl4/igt@gem_exec_suspend@basic-s3.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-skl8/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-iclb:         [PASS][13] -> [TIMEOUT][14] ([i915#530])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-iclb7/igt@gem_persistent_relocs@forked-thrashing.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-iclb1/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][15] -> [FAIL][16] ([i915#644])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_selftest@mock_requests:
    - shard-glk:          [PASS][17] -> [INCOMPLETE][18] ([i915#58] / [k.org#198133])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-glk5/igt@i915_selftest@mock_requests.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-glk9/igt@i915_selftest@mock_requests.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([i915#109])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-skl4/igt@kms_color@pipe-a-ctm-0-75.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-skl1/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-random:
    - shard-hsw:          [PASS][21] -> [DMESG-WARN][22] ([IGT#6])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-hsw2/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-hsw6/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#54]) +4 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#72])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-glk7/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-glk2/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#52] / [i915#54])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-skl7/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#79])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#79])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-glk3/igt@kms_flip@flip-vs-expired-vblank.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-glk5/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [PASS][33] -> [FAIL][34] ([i915#79])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-apl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-apl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][39] -> [FAIL][40] ([i915#173])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-iclb7/igt@kms_psr@no_drrs.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109441]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-iclb7/igt@kms_psr@psr2_cursor_blt.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109276]) +15 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-iclb7/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][45] ([fdo#112080]) -> [PASS][46] +10 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-iclb8/igt@gem_busy@busy-vcs1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [SKIP][47] ([fdo#109276] / [fdo#112080]) -> [PASS][48] +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-iclb3/igt@gem_ctx_isolation@vcs1-none.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-iclb2/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][49] ([fdo#109276]) -> [PASS][50] +23 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-iclb8/igt@gem_exec_schedule@independent-bsd2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-iclb1/igt@gem_exec_schedule@independent-bsd2.html

  * {igt@gem_exec_schedule@pi-distinct-iova-bsd}:
    - shard-iclb:         [SKIP][51] ([i915#677]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][53] ([fdo#112146]) -> [PASS][54] +5 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [FAIL][55] ([i915#644]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-kbl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-kbl2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-apl6/igt@gem_softpin@noreloc-s3.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-apl2/igt@gem_softpin@noreloc-s3.html

  * {igt@gen7_exec_parse@basic-offset}:
    - shard-hsw:          [FAIL][59] ([i915#819]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-hsw5/igt@gen7_exec_parse@basic-offset.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-hsw2/igt@gen7_exec_parse@basic-offset.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][61] ([i915#454]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-iclb1/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [DMESG-WARN][63] ([i915#109]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-skl9/igt@kms_color@pipe-a-ctm-0-5.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-skl3/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][65] ([i915#180]) -> [PASS][66] +5 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][67] ([i915#79]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][69] ([fdo#108145] / [i915#265]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][71] ([fdo#109441]) -> [PASS][72] +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-iclb3/igt@kms_psr@psr2_suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@prime_vgem@sync-vebox:
    - shard-apl:          [INCOMPLETE][73] ([fdo#103927] / [i915#409]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-apl3/igt@prime_vgem@sync-vebox.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-apl1/igt@prime_vgem@sync-vebox.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][75] ([fdo#109276] / [fdo#112080]) -> [FAIL][76] ([IGT#28])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][77] ([IGT#28]) -> [SKIP][78] ([fdo#109276] / [fdo#112080])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - shard-snb:          [SKIP][79] ([fdo#109271]) -> [INCOMPLETE][80] ([i915#82])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-snb1/igt@i915_pm_rpm@drm-resources-equal.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-snb4/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-kbl:          [DMESG-FAIL][81] ([i915#95]) -> [DMESG-WARN][82] ([i915#93] / [i915#95])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-kbl6/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-kbl1/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@runner@aborted:
    - shard-apl:          [FAIL][83] -> [FAIL][84] ([i915#716])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7649/shard-apl3/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/shard-apl3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#819]: https://gitlab.freedesktop.org/drm/intel/issues/819
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7649 -> Patchwork_15940

  CI-20190529: 20190529
  CI_DRM_7649: 95b8f5ae8715a1da8c8bd2dffcbdc978f75796bd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15940: 3bcebfd48a6f7bdcff21df8d813c03cf2c9d8632 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15940/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
