Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC6E131963
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 21:29:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA0356E513;
	Mon,  6 Jan 2020 20:29:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BBB7D6E511;
 Mon,  6 Jan 2020 20:29:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B20FBA47DF;
 Mon,  6 Jan 2020 20:29:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 06 Jan 2020 20:29:55 -0000
Message-ID: <157834259569.24768.7344893766581652958@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200106114234.2529613-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200106114234.2529613-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/6=5D_drm/i915/selftests=3A_Fixup_sp?=
 =?utf-8?q?arse_=5F=5Fuser_annotation_on_local_var?=
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

Series: series starting with [CI,1/6] drm/i915/selftests: Fixup sparse __user annotation on local var
URL   : https://patchwork.freedesktop.org/series/71656/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7684_full -> Patchwork_16002_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_7684_full and Patchwork_16002_full:

### New Piglit tests (9) ###

  * spec@!opengl 2.0@vertex-program-two-side front front2 back2:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@arb_texture_multisample@texelfetch@4-fs-isampler2dms:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-int_int_array3-double_dmat4x3-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dmat4x3-double_dvec4_array2:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-float_mat2x4-double_dvec3_array2:
    - Statuses : 1 fail(s)
    - Exec time: [0.22] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-ushort_uvec4-double_dmat4x2:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@ext_framebuffer_object@fbo-copyteximage:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-4.20@execution@vs_in@vs-input-float_vec4-position-double_dmat2x3:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-double_dmat2-double_dvec4_array2:
    - Statuses : 1 fail(s)
    - Exec time: [0.21] s

  

Known issues
------------

  Here are the changes found in Patchwork_16002_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-apl:          [PASS][1] -> [FAIL][2] ([i915#679])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-apl2/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-apl8/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-iclb1/igt@gem_ctx_persistence@vcs1-queued.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-iclb3/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110841])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111735])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb2/igt@gem_ctx_shared@q-smoketest-vebox.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-tglb6/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#111736])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb3/igt@gem_exec_balancer@nop.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-tglb6/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#435])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb1/igt@gem_exec_create@forked.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-tglb9/igt@gem_exec_create@forked.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([fdo#111677])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb7/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-tglb6/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd1:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111606] / [fdo#111677]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +8 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-iclb8/igt@gem_exec_schedule@wide-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-iclb4/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_exec_store@pages-vcs1:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112080]) +7 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-iclb1/igt@gem_exec_store@pages-vcs1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-iclb7/igt@gem_exec_store@pages-vcs1.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-tglb:         [PASS][21] -> [FAIL][22] ([i915#520])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb2/igt@gem_persistent_relocs@forked-thrashing.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-tglb7/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#454])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-apl8/igt@i915_suspend@sysfs-reader.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-apl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [PASS][27] -> [DMESG-WARN][28] ([i915#109])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-skl4/igt@kms_color@pipe-b-ctm-0-25.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-skl4/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#52] / [i915#54])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-skl3/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-skl9/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#34])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-glk3/igt@kms_flip@flip-vs-blocking-wf-vblank.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-glk6/igt@kms_flip@flip-vs-blocking-wf-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-tglb:         [PASS][33] -> [FAIL][34] ([i915#49]) +6 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#49])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_plane@plane-position-covered-pipe-a-planes:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#247])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-skl3/igt@kms_plane@plane-position-covered-pipe-a-planes.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-skl9/igt@kms_plane@plane-position-covered-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([fdo#108145])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109276]) +15 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][43] ([fdo#109276] / [fdo#112080]) -> [PASS][44] +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-iclb7/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [INCOMPLETE][45] ([i915#461]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb9/igt@gem_ctx_shared@q-smoketest-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-tglb7/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-skl:          [DMESG-WARN][47] ([i915#109]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-skl3/igt@gem_exec_reloc@basic-write-read-active.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-skl6/igt@gem_exec_reloc@basic-write-read-active.html

  * {igt@gem_exec_schedule@pi-common-bsd}:
    - shard-iclb:         [SKIP][49] ([i915#677]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][51] ([fdo#112146]) -> [PASS][52] +4 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-iclb3/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd2:
    - shard-iclb:         [SKIP][53] ([fdo#109276]) -> [PASS][54] +10 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd2.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-vebox:
    - shard-tglb:         [INCOMPLETE][55] ([fdo#111677]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-tglb:         [FAIL][57] ([i915#520]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-tglb2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-hsw:          [FAIL][59] ([i915#520]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-hsw7/igt@gem_persistent_relocs@forked-thrashing.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-hsw7/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][61] ([i915#707] / [i915#796]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb5/igt@gem_pipe_control_store_loop@reused-buffer.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-tglb1/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][63] ([i915#472] / [i915#707]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb9/igt@gem_sync@basic-each.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-tglb1/igt@gem_sync@basic-each.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [INCOMPLETE][65] ([fdo#103665]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-kbl2/igt@i915_suspend@fence-restore-untiled.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-kbl6/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [FAIL][67] ([i915#79]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][69] ([i915#34]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt:
    - shard-tglb:         [FAIL][71] ([i915#49]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +3 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][75] ([i915#69]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][77] ([fdo#108145] / [i915#265]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][79] ([fdo#108145]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_vblank@pipe-a-wait-busy-hang:
    - shard-snb:          [SKIP][81] ([fdo#109271]) -> [PASS][82] +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-snb2/igt@kms_vblank@pipe-a-wait-busy-hang.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-snb4/igt@kms_vblank@pipe-a-wait-busy-hang.html

  * igt@perf_pmu@enable-race-vcs1:
    - shard-tglb:         [INCOMPLETE][83] ([i915#435] / [i915#923]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-tglb5/igt@perf_pmu@enable-race-vcs1.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-tglb2/igt@perf_pmu@enable-race-vcs1.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][85] ([fdo#112080]) -> [PASS][86] +10 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7684/shard-iclb3/igt@perf_pmu@init-busy-vcs1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/shard-iclb4/igt@perf_pmu@init-busy-vcs1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#247]: https://gitlab.freedesktop.org/drm/intel/issues/247
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#923]: https://gitlab.freedesktop.org/drm/intel/issues/923


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7684 -> Patchwork_16002

  CI-20190529: 20190529
  CI_DRM_7684: 24e427b22da0dc4581464fb4469cc5667c20e7ae @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16002: 22bb3b1c9346de7411d77b820c4c93159d7c3191 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16002/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
