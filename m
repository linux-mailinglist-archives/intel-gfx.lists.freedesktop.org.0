Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 331A012DBF7
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2019 22:40:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 992F16E282;
	Tue, 31 Dec 2019 21:40:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C2D7189F08;
 Tue, 31 Dec 2019 21:40:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B1BADA0009;
 Tue, 31 Dec 2019 21:40:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kai Vehmanen" <kai.vehmanen@linux.intel.com>
Date: Tue, 31 Dec 2019 21:40:37 -0000
Message-ID: <157782843769.26887.15181588151168318281@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191231144718.32127-1-kai.vehmanen@linux.intel.com>
In-Reply-To: <20191231144718.32127-1-kai.vehmanen@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_save_state_of_AUD=5FFREQ=5FCNTRL_on_all_gen9+_platform?=
 =?utf-8?q?s?=
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

Series: drm/i915: save state of AUD_FREQ_CNTRL on all gen9+ platforms
URL   : https://patchwork.freedesktop.org/series/71527/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7657_full -> Patchwork_15955_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_7657_full and Patchwork_15955_full:

### New Piglit tests (39) ###

  * shaders@glsl-fs-ceil:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * shaders@glsl-fs-discard-01:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * shaders@glsl-fs-floor:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * shaders@glsl-fs-if-texture2d-discard:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * shaders@glsl-fs-log:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@!opengl 1.0@gl-1.0-no-op-paths:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@!opengl 1.1@depthstencil-default_fb-blit samples=2:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@!opengl 1.1@depthstencil-default_fb-clear samples=4:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-32f_24_8_rev:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@!opengl 1.1@depthstencil-default_fb-drawpixels-float-and-ushort:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 1.1@depthstencil-default_fb-readpixels-32f_24_8_rev samples=4:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@!opengl 1.1@dlist-fdo3129-01:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@!opengl 3.2@layered-rendering@clear-color-all-types 3d single_level:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * spec@amd_shader_trinary_minmax@execution@built-in-functions@fs-mid3-int-int-int:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_1d 32 1 1 gl_texture_rectangle 32 32 1 11 0 0 5 13 0 14 1 1:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_framebuffer_object@framebuffer-blit-levels draw rgba:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_gpu_shader_fp64@execution@built-in-functions@gs-greaterthan-dvec3-dvec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_shader_image_load_store@restrict:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 32 42 1 8 3:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_texture_multisample@texelfetch@2-fs-usampler2dmsarray:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_texture_multisample@texelfetch@4-fs-isampler2dms:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_texture_query_levels@execution@vs-maxlevel:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_texture_query_lod@execution@fs-texturequerylod-nearest-biased:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_texture_rectangle@texwrap rect proj:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@ext_framebuffer_multisample@alpha-to-one-msaa-disabled 2:
    - Statuses : 1 fail(s)
    - Exec time: [0.24] s

  * spec@ext_framebuffer_multisample@interpolation 4 non-centroid-disabled:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@ext_framebuffer_object@fbo-cubemap:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-1.10@execution@vs-nested-return-sibling-if:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@glsl-1.30@execution@interpolation@interpolation-noperspective-gl_backsecondarycolor-smooth-none:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-1.30@execution@interpolation@interpolation-noperspective-other-flat-fixed:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@glsl-1.30@execution@interpolation@interpolation-smooth-gl_backsecondarycolor-flat-fixed:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureprojgrad 2drectshadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-1.40@execution@texturesize@fs-texturesize-isampler1darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-4.00@execution@built-in-functions@fs-greaterthan-dvec4-dvec4:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-byte_ivec2-double_dvec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@glsl-4.30@execution@built-in-functions@cs-lessthan-ivec4-ivec4:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-eq-float-float-using-if:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-eq-int-int-using-if:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-lt-float-float:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  

Known issues
------------

  Here are the changes found in Patchwork_15955_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@processes:
    - shard-iclb:         [PASS][1] -> [FAIL][2] ([i915#570])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb3/igt@gem_ctx_persistence@processes.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-iclb2/igt@gem_ctx_persistence@processes.html
    - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#570])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl9/igt@gem_ctx_persistence@processes.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-skl2/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-iclb5/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#469])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb2/igt@gem_eio@unwedge-stress.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-tglb2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#110854])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@gem_exec_balancer@smoke.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-iclb7/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vecs0:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([fdo#111736])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb6/igt@gem_exec_parallel@vecs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-tglb7/igt@gem_exec_parallel@vecs0.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +15 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb1/igt@gem_exec_schedule@fifo-bsd1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-iclb3/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd1:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111606] / [fdo#111677])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb1/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-tglb5/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111677])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb9/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-tglb5/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112146]) +6 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_whisper@normal:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#435]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb5/igt@gem_exec_whisper@normal.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-tglb3/igt@gem_exec_whisper@normal.html

  * igt@gem_persistent_relocs@forked-interruptible:
    - shard-apl:          [PASS][23] -> [FAIL][24] ([i915#520])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-apl6/igt@gem_persistent_relocs@forked-interruptible.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-apl6/igt@gem_persistent_relocs@forked-interruptible.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-skl:          [PASS][25] -> [TIMEOUT][26] ([i915#530])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl10/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-skl8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [PASS][27] -> [FAIL][28] ([i915#644])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-kbl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-kbl6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#470] / [i915#472])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb2/igt@gem_sync@basic-all.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-tglb5/igt@gem_sync@basic-all.html

  * igt@gem_wait@write-wait-rcs0:
    - shard-skl:          [PASS][31] -> [DMESG-WARN][32] ([i915#109])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl9/igt@gem_wait@write-wait-rcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-skl6/igt@gem_wait@write-wait-rcs0.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][33] -> [FAIL][34] ([i915#454])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-iclb8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live_requests:
    - shard-tglb:         [PASS][35] -> [INCOMPLETE][36] ([i915#472])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb8/igt@i915_selftest@live_requests.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-tglb8/igt@i915_selftest@live_requests.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][37] -> [INCOMPLETE][38] ([i915#300])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#46])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt:
    - shard-kbl:          [PASS][43] -> [DMESG-WARN][44] ([i915#62] / [i915#92]) +42 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][45] -> [FAIL][46] ([i915#49])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][47] -> [DMESG-WARN][48] ([i915#180]) +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([fdo#108145] / [i915#265]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#109642] / [fdo#111068]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-iclb5/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#109441]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#112080]) +10 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@perf_pmu@busy-vcs1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-iclb8/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][57] ([fdo#109276] / [fdo#112080]) -> [PASS][58] +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb3/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-skl:          [FAIL][59] ([i915#679]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl5/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-skl7/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd2:
    - shard-tglb:         [INCOMPLETE][61] ([i915#461]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb9/igt@gem_ctx_shared@q-smoketest-bsd2.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-tglb1/igt@gem_ctx_shared@q-smoketest-bsd2.html

  * igt@gem_exec_await@wide-contexts:
    - shard-tglb:         [INCOMPLETE][63] ([fdo#111736]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb5/igt@gem_exec_await@wide-contexts.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-tglb8/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [INCOMPLETE][65] ([i915#476]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb9/igt@gem_exec_parallel@basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-tglb2/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][67] ([fdo#112080]) -> [PASS][68] +11 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb7/igt@gem_exec_parallel@vcs1-fds.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * {igt@gem_exec_schedule@pi-common-bsd}:
    - shard-iclb:         [SKIP][69] ([i915#677]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd2:
    - shard-tglb:         [INCOMPLETE][71] ([fdo#111606] / [fdo#111677]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb6/igt@gem_exec_schedule@preempt-queue-bsd2.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-tglb3/igt@gem_exec_schedule@preempt-queue-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-render:
    - shard-tglb:         [INCOMPLETE][73] ([fdo#111677]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][75] ([fdo#112146]) -> [PASS][76] +3 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-iclb:         [TIMEOUT][77] ([i915#530]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb5/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-iclb1/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-apl3/igt@gem_softpin@noreloc-s3.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-apl3/igt@gem_softpin@noreloc-s3.html

  * {igt@gen9_exec_parse@allowed-all}:
    - shard-kbl:          [DMESG-WARN][81] ([i915#716]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-kbl3/igt@gen9_exec_parse@allowed-all.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-kbl6/igt@gen9_exec_parse@allowed-all.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-skl:          [DMESG-WARN][83] ([i915#716]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl9/igt@gen9_exec_parse@allowed-single.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-skl6/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][85] ([i915#109]) -> [PASS][86] +3 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl4/igt@kms_color@pipe-a-ctm-0-75.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-skl3/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding:
    - shard-glk:          [FAIL][87] ([i915#54]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-glk6/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-glk9/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled:
    - shard-snb:          [SKIP][89] ([fdo#109271]) -> [PASS][90] +3 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-snb2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-snb2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][91] ([i915#46]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
    - shard-glk:          [FAIL][93] ([i915#46]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite:
    - shard-tglb:         [FAIL][95] ([i915#49]) -> [PASS][96] +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][97] ([i915#180]) -> [PASS][98] +7 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][99] ([fdo#108145]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-y:
    - shard-skl:          [DMESG-WARN][101] ([IGT#6]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-skl5/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-skl6/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][103] ([fdo#109441]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb1/igt@kms_psr@psr2_cursor_render.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@perf@oa-exponents:
    - shard-glk:          [FAIL][105] ([i915#84]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-glk8/igt@perf@oa-exponents.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-glk1/igt@perf@oa-exponents.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][107] ([fdo#109276]) -> [PASS][108] +20 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb5/igt@prime_busy@hang-bsd2.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-iclb1/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][109] ([IGT#28]) -> [SKIP][110] ([fdo#109276] / [fdo#112080])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][111] ([i915#447]) -> [INCOMPLETE][112] ([i915#140])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-iclb2/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][113] ([i915#468]) -> [FAIL][114] ([i915#454])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-tglb8/igt@i915_pm_dc@dc6-dpms.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          [FAIL][115] ([fdo#110321] / [fdo#110336]) -> [DMESG-FAIL][116] ([fdo#110321] / [i915#62])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-kbl4/igt@kms_content_protection@atomic-dpms.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-kbl3/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-kbl:          [DMESG-WARN][117] ([i915#180]) -> [DMESG-WARN][118] ([i915#62] / [i915#92])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-kbl1/igt@kms_flip@flip-vs-suspend.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-kbl3/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-kbl:          [FAIL][119] ([fdo#108145]) -> [DMESG-FAIL][120] ([fdo#108145] / [i915#62])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
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
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Participating hosts (11 -> 11)
------------------------------

  No

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15955/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
