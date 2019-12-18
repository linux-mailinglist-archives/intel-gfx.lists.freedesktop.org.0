Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD4112411A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 09:10:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49B5F89BF1;
	Wed, 18 Dec 2019 08:10:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A9AEF89B70;
 Wed, 18 Dec 2019 08:10:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A1DB7A0118;
 Wed, 18 Dec 2019 08:10:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 18 Dec 2019 08:10:10 -0000
Message-ID: <157665661063.8357.15565829393692063457@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191107142417.11107-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191107142417.11107-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/5=5D_drm=3A_Add_=5F=5Fdrm=5Fatomic=5Fhel?=
 =?utf-8?b?cGVyX2NydGNfc3RhdGVfcmVzZXQoKSAmIGNvLiAocmV2Myk=?=
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

Series: series starting with [1/5] drm: Add __drm_atomic_helper_crtc_state_reset() & co. (rev3)
URL   : https://patchwork.freedesktop.org/series/69129/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7578_full -> Patchwork_15797_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15797_full:

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 1 8 128 3 (NEW):
    - {pig-hsw-4770r}:    NOTRUN -> [FAIL][1] +18 similar issues
   [1]: None

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * spec@arb_shader_image_load_store@semantics:
    - {pig-hsw-4770r}:    NOTRUN -> [FAIL][2] +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/pig-hsw-4770r/spec@arb_shader_image_load_store@semantics.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7578_full and Patchwork_15797_full:

### New Piglit tests (19) ###

  * object namespace pollution@texture with glgetteximage-compressed:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * object namespace pollution@texture with gltexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_gpu_shader5@texturegather@vs-rgb-0-float-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.83] s

  * spec@arb_query_buffer_object@coherency:
    - Statuses : 1 fail(s)
    - Exec time: [0.22] s

  * spec@arb_shader_image_load_store@host-mem-barrier:
    - Statuses : 1 fail(s)
    - Exec time: [5.66] s

  * spec@arb_shader_image_load_store@layer:
    - Statuses : 1 fail(s)
    - Exec time: [0.31] s

  * spec@arb_shader_image_load_store@level:
    - Statuses : 1 fail(s)
    - Exec time: [0.27] s

  * spec@arb_shader_image_load_store@unused:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 32 1 8 128 2:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 32 42 8 128 2:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 32 42 8 128 3:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 1 8 128 3:
    - Statuses : 1 fail(s)
    - Exec time: [0.24] s

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 1 8 128 4:
    - Statuses : 1 fail(s)
    - Exec time: [0.27] s

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 1 8 128 8:
    - Statuses : 1 fail(s)
    - Exec time: [0.26] s

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 1 128 8:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 1 8 8:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dmat3-float_mat3x2_array3:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_vertex_type_2_10_10_10_rev@attribs:
    - Statuses : 1 fail(s)
    - Exec time: [0.95] s

  * spec@glsl-4.20@execution@vs_in@vs-input-int_ivec3_array3-position-double_dmat3_array2:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  

Known issues
------------

  Here are the changes found in Patchwork_15797_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb1/igt@gem_ctx_isolation@vcs1-none.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-iclb8/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-apl:          [PASS][5] -> ([PASS][6], [FAIL][7]) ([i915#679])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl8/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl7/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl6/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-glk:          [PASS][8] -> ([FAIL][9], [PASS][10]) ([i915#679])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-glk4/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-glk7/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-glk1/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_exec_async@concurrent-writes-bsd2:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-iclb8/igt@gem_exec_async@concurrent-writes-bsd2.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([fdo#111593])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb5/igt@gem_exec_gttfill@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb6/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112146]) +5 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111606] / [fdo#111677])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-tglb:         [PASS][19] -> [TIMEOUT][20] ([fdo#112126] / [i915#530])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][21] -> ([FAIL][22], [PASS][23]) ([i915#644])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-apl:          [PASS][24] -> ([PASS][25], [FAIL][26]) ([i915#644])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][27] -> ([DMESG-WARN][28], [PASS][29]) ([i915#180]) +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl2/igt@gem_workarounds@suspend-resume-context.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl8/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_hangman@error-state-capture-vcs1:
    - shard-iclb:         [PASS][30] -> [SKIP][31] ([fdo#112080])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb1/igt@i915_hangman@error-state-capture-vcs1.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-iclb8/igt@i915_hangman@error-state-capture-vcs1.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-skl:          [PASS][32] -> ([INCOMPLETE][33], [PASS][34]) ([i915#198])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl10/igt@i915_pm_dc@dc5-psr.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl9/igt@i915_pm_dc@dc5-psr.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl1/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [PASS][35] -> ([PASS][36], [DMESG-WARN][37]) ([i915#747])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl5/igt@i915_selftest@mock_sanitycheck.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl6/igt@i915_selftest@mock_sanitycheck.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl10/igt@i915_selftest@mock_sanitycheck.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [PASS][38] -> ([INCOMPLETE][39], [PASS][40]) ([i915#69])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl9/igt@i915_suspend@forcewake.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl6/igt@i915_suspend@forcewake.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl2/igt@i915_suspend@forcewake.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl3/igt@i915_suspend@sysfs-reader.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@linear-16bpp-rotate-180:
    - shard-tglb:         [PASS][43] -> [DMESG-WARN][44] ([i915#851])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb5/igt@kms_big_fb@linear-16bpp-rotate-180.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb3/igt@kms_big_fb@linear-16bpp-rotate-180.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [PASS][45] -> ([PASS][46], [DMESG-WARN][47]) ([i915#109])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl10/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][48] -> [DMESG-WARN][49] ([i915#180]) +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen:
    - shard-hsw:          [PASS][50] -> ([DMESG-WARN][51], [PASS][52]) ([IGT#6] / [i915#435])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-hsw4/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-hsw6/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-hsw4/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [PASS][53] -> ([PASS][54], [FAIL][55]) ([i915#54]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled:
    - shard-skl:          [PASS][56] -> ([INCOMPLETE][57], [PASS][58]) ([fdo#112347] / [i915#646] / [i915#667])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl6/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl1/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl8/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][59] -> ([FAIL][60], [PASS][61]) ([i915#46])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@basic:
    - shard-skl:          [PASS][62] -> ([INCOMPLETE][63], [PASS][64]) ([i915#435])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl4/igt@kms_frontbuffer_tracking@basic.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl10/igt@kms_frontbuffer_tracking@basic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl7/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-iclb:         [PASS][65] -> [INCOMPLETE][66] ([i915#140])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
    - shard-iclb:         [PASS][67] -> [INCOMPLETE][68] ([i915#123] / [i915#140])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-tglb:         [PASS][69] -> [INCOMPLETE][70] ([i915#474] / [i915#667])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:
    - shard-skl:          [PASS][71] -> ([PASS][72], [FAIL][73]) ([i915#49])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-tglb:         [PASS][74] -> [INCOMPLETE][75] ([i915#456] / [i915#460]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][76] -> ([FAIL][77], [FAIL][78]) ([fdo#108145] / [i915#265])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [PASS][79] -> [DMESG-WARN][80] ([i915#402])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb9/igt@kms_psr@psr2_suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb8/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][81] -> ([FAIL][82], [FAIL][83]) ([i915#31])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl8/igt@kms_setmode@basic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl6/igt@kms_setmode@basic.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl7/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [INCOMPLETE][84] ([i915#435]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb6/igt@gem_busy@close-race.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb2/igt@gem_busy@close-race.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-apl:          [FAIL][86] ([i915#679]) -> ([PASS][87], [PASS][88])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl3/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl1/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl3/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][89] ([fdo#109276] / [fdo#112080]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_eio@banned:
    - shard-tglb:         [INCOMPLETE][91] ([i915#476]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb6/igt@gem_eio@banned.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb4/igt@gem_eio@banned.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][93] ([fdo#110854]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_reloc@basic-wc-active:
    - shard-skl:          [DMESG-WARN][95] ([i915#109]) -> ([PASS][96], [PASS][97])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl8/igt@gem_exec_reloc@basic-wc-active.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl2/igt@gem_exec_reloc@basic-wc-active.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl9/igt@gem_exec_reloc@basic-wc-active.html

  * igt@gem_exec_schedule@preempt-queue-bsd2:
    - shard-iclb:         [SKIP][98] ([fdo#109276]) -> [PASS][99] +10 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd2.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-vebox:
    - shard-tglb:         [INCOMPLETE][100] ([fdo#111677]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][102] ([fdo#112146]) -> [PASS][103] +2 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [INCOMPLETE][104] ([i915#707]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb2/igt@gem_exec_schedule@smoketest-bsd2.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb1/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_softpin@noreloc-s3:
    - shard-tglb:         [INCOMPLETE][106] ([i915#456]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb8/igt@gem_softpin@noreloc-s3.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb6/igt@gem_softpin@noreloc-s3.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-glk:          [DMESG-WARN][108] ([i915#716]) -> ([PASS][109], [PASS][110])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-glk9/igt@gen9_exec_parse@allowed-single.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-glk7/igt@gen9_exec_parse@allowed-single.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-glk1/igt@gen9_exec_parse@allowed-single.html
    - shard-apl:          [DMESG-WARN][111] ([i915#716]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl7/igt@gen9_exec_parse@allowed-single.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl4/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][113] ([i915#180]) -> ([PASS][114], [PASS][115])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding:
    - shard-skl:          [FAIL][116] ([i915#54]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-hsw:          [DMESG-WARN][118] ([IGT#6]) -> ([PASS][119], [PASS][120])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-hsw6/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-hsw5/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-hsw1/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][121] ([i915#456] / [i915#460]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][123] ([i915#79]) -> ([PASS][124], [PASS][125])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [FAIL][126] ([i915#79]) -> ([PASS][127], [PASS][128])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][129] ([i915#221]) -> ([PASS][130], [PASS][131])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl4/igt@kms_flip@flip-vs-suspend.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl10/igt@kms_flip@flip-vs-suspend.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         [FAIL][132] ([i915#49]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [INCOMPLETE][134] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-iclb:         [INCOMPLETE][136] ([i915#140] / [i915#246]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb4/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-iclb2/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][138] ([fdo#109441]) -> [PASS][139] +1 similar issue
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][140] ([i915#180]) -> [PASS][141] +1 similar issue
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [SKIP][142] ([fdo#112080]) -> [PASS][143] +5 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb6/igt@perf_pmu@busy-check-all-vcs1.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-iclb4/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-s3:
    - shard-tglb:         [SKIP][144] ([fdo#111912] / [fdo#112080]) -> [SKIP][145] ([fdo#112080])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb4/igt@gem_ctx_isolation@vcs2-s3.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb9/igt@gem_ctx_isolation@vcs2-s3.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][146] ([i915#818]) -> ([DMESG-FAIL][147], [FAIL][148]) ([i915#44] / [i915#818])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-hsw7/igt@gem_tiled_blits@normal.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-hsw1/igt@gem_tiled_blits@normal.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-hsw2/igt@gem_tiled_blits@normal.html

  * igt@kms_atomic_transition@6x-modeset-transitions:
    - shard-tglb:         [SKIP][149] ([fdo#112021]) -> [SKIP][150] ([fdo#112016] / [fdo#112021])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb8/igt@kms_atomic_transition@6x-modeset-transitions.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [DMESG-WARN][151] ([i915#180]) -> ([PASS][152], [DMESG-WARN][153]) ([i915#180])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl6/igt@kms_flip@flip-vs-suspend.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl8/igt@kms_flip@flip-vs-suspend.html
   [153]: http

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
