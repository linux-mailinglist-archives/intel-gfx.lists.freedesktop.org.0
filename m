Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12314131ADF
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 22:58:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 590E06E55C;
	Mon,  6 Jan 2020 21:58:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 317FC6E558;
 Mon,  6 Jan 2020 21:58:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DB980A432F;
 Mon,  6 Jan 2020 21:58:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 06 Jan 2020 21:58:22 -0000
Message-ID: <157834790289.24768.11990563072609712842@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200106123921.2543886-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200106123921.2543886-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Mark_up_virtual_engine_uabi=5Finstance?=
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

Series: drm/i915/gt: Mark up virtual engine uabi_instance
URL   : https://patchwork.freedesktop.org/series/71657/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7684_full -> Patchwork_16003_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_7684_full and Patchwork_16003_full:

### New Piglit tests (7) ###

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat2-int_ivec2_array3-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-float_mat3-position-double_dmat2x3:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_double_array3-double_double:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dvec2-uint_uint:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-uint_uvec2_array3-double_dmat3x2:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-4.10@execution@vs_in@vs-input-double_double-float_mat2-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@glsl-4.10@execution@vs_in@vs-input-double_double-uint_uvec2_array3-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  

Known issues
------------

  Here are the changes found in Patchwork_16003_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-kbl4/igt@gem_ctx_isolation@vecs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-kbl7/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-iclb1/igt@gem_ctx_persistence@vcs1-queued.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-iclb6/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([fdo#111735])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb2/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_eio@in-flight-1us:
    - shard-snb:          [PASS][7] -> [FAIL][8] ([i915#490])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-snb4/igt@gem_eio@in-flight-1us.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-snb6/igt@gem_eio@in-flight-1us.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-iclb3/igt@gem_exec_async@concurrent-writes-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-iclb2/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([fdo#108838] / [i915#435])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb1/igt@gem_exec_create@forked.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-tglb6/igt@gem_exec_create@forked.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +10 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-iclb1/igt@gem_exec_schedule@out-order-bsd2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-iclb6/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111677])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb7/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-tglb6/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-render:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111606] / [fdo#111677])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb2/igt@gem_exec_schedule@preempt-queue-contexts-render.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-tglb5/igt@gem_exec_schedule@preempt-queue-contexts-render.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#472]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb7/igt@gem_sync@basic-store-all.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-tglb2/igt@gem_sync@basic-store-all.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [PASS][21] -> [FAIL][22] ([i915#447])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-iclb2/igt@i915_pm_dc@dc5-dpms.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#109])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-skl4/igt@kms_color@pipe-b-ctm-0-25.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-skl1/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#52] / [i915#54])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-skl5/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-apl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
    - shard-tglb:         [PASS][29] -> [FAIL][30] ([i915#49]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#49])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_plane@plane-position-covered-pipe-a-planes:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#247])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-skl3/igt@kms_plane@plane-position-covered-pipe-a-planes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-skl5/igt@kms_plane@plane-position-covered-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([fdo#108145] / [i915#265])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-iclb1/igt@kms_psr@psr2_sprite_render.html

  * igt@perf_pmu@most-busy-idle-check-all-vcs1:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#112080]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-iclb1/igt@perf_pmu@most-busy-idle-check-all-vcs1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-iclb3/igt@perf_pmu@most-busy-idle-check-all-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-iclb:         [DMESG-WARN][43] ([fdo#111764]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-iclb6/igt@gem_ctx_isolation@rcs0-s3.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-iclb5/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][45] ([fdo#109276] / [fdo#112080]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-iclb7/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_eio@in-flight-suspend:
    - shard-apl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-apl4/igt@gem_eio@in-flight-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-apl6/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@kms:
    - shard-tglb:         [INCOMPLETE][49] ([i915#476]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb9/igt@gem_eio@kms.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-tglb7/igt@gem_eio@kms.html

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [INCOMPLETE][51] ([i915#435]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb9/igt@gem_exec_create@madvise.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-tglb1/igt@gem_exec_create@madvise.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [INCOMPLETE][53] ([i915#470]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb9/igt@gem_exec_parallel@fds.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-tglb7/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-skl:          [DMESG-WARN][55] ([i915#109]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-skl3/igt@gem_exec_reloc@basic-write-read-active.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-skl10/igt@gem_exec_reloc@basic-write-read-active.html

  * {igt@gem_exec_schedule@pi-common-bsd1}:
    - shard-iclb:         [SKIP][57] ([fdo#109276]) -> [PASS][58] +9 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd1.html

  * {igt@gem_exec_schedule@pi-shared-iova-bsd}:
    - shard-iclb:         [SKIP][59] ([i915#677]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-iclb3/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][61] ([fdo#112146]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-vebox:
    - shard-tglb:         [INCOMPLETE][63] ([fdo#111677]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-tglb:         [FAIL][65] ([i915#520]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-tglb7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-hsw:          [FAIL][67] ([i915#520]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-hsw7/igt@gem_persistent_relocs@forked-thrashing.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-hsw2/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][69] ([i915#707] / [i915#796]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb5/igt@gem_pipe_control_store_loop@reused-buffer.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-tglb1/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][71] ([i915#435] / [i915#472]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb9/igt@gem_sync@basic-store-each.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-tglb1/igt@gem_sync@basic-store-each.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [INCOMPLETE][73] ([fdo#103665]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-kbl2/igt@i915_suspend@fence-restore-untiled.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-kbl2/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][75] ([i915#79]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [FAIL][77] ([i915#79]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][79] ([i915#221]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-skl9/igt@kms_flip@flip-vs-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-skl1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][81] ([i915#34]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt:
    - shard-tglb:         [FAIL][83] ([i915#49]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][85] ([i915#69]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][87] ([fdo#109441]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-a-wait-busy-hang:
    - shard-snb:          [SKIP][89] ([fdo#109271]) -> [PASS][90] +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-snb2/igt@kms_vblank@pipe-a-wait-busy-hang.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-snb7/igt@kms_vblank@pipe-a-wait-busy-hang.html

  * igt@perf_pmu@busy-accuracy-2-vcs1:
    - shard-iclb:         [SKIP][91] ([fdo#112080]) -> [PASS][92] +6 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-iclb7/igt@perf_pmu@busy-accuracy-2-vcs1.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-iclb4/igt@perf_pmu@busy-accuracy-2-vcs1.html

  * igt@perf_pmu@enable-race-vcs1:
    - shard-tglb:         [INCOMPLETE][93] ([i915#435] / [i915#923]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb5/igt@perf_pmu@enable-race-vcs1.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-tglb1/igt@perf_pmu@enable-race-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][95] ([fdo#109276] / [fdo#112080]) -> [FAIL][96] ([IGT#28])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_ctx_isolation@vcs2-dirty-create:
    - shard-tglb:         [SKIP][97] ([fdo#111912] / [fdo#112080]) -> [SKIP][98] ([fdo#112080]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb6/igt@gem_ctx_isolation@vcs2-dirty-create.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-create.html

  * igt@gem_eio@kms:
    - shard-snb:          [DMESG-WARN][99] ([i915#443] / [i915#444]) -> [INCOMPLETE][100] ([i915#82])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-snb7/igt@gem_eio@kms.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-snb2/igt@gem_eio@kms.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing:
    - shard-tglb:         [SKIP][101] ([fdo#112021]) -> [SKIP][102] ([fdo#112016] / [fdo#112021])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/shard-tglb1/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#247]: https://gitlab.freedesktop.org/drm/intel/issues/247
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#443]: https://gitlab.freedesktop.org/drm/intel/issues/443
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#923]: https://gitlab.freedesktop.org/drm/intel/issues/923


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7684 -> Patchwork_16003

  CI-20190529: 20190529
  CI_DRM_7684: 24e427b22da0dc4581464fb4469cc5667c20e7ae @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16003: 4e6477d4d13c18b53f4b8f0a24645d9000050fb0 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16003/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
