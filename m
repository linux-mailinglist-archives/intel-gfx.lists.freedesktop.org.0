Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C290511FA96
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Dec 2019 19:56:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CCAA6E13D;
	Sun, 15 Dec 2019 18:56:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8964C6E13B;
 Sun, 15 Dec 2019 18:55:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7FCA0A0073;
 Sun, 15 Dec 2019 18:55:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Sun, 15 Dec 2019 18:55:58 -0000
Message-ID: <157643615849.27847.6858822448882931328@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191215163810.52356-1-hdegoede@redhat.com>
In-Reply-To: <20191215163810.52356-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_Control_panel_and_backlight_enable_GPIOs_from_VBT?=
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

Series: drm/i915/dsi: Control panel and backlight enable GPIOs from VBT
URL   : https://patchwork.freedesktop.org/series/70945/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7569_full -> Patchwork_15773_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15773_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15773_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15773_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gen7_exec_parse@basic-allocation}:
    - shard-hsw:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw5/igt@gen7_exec_parse@basic-allocation.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-hsw8/igt@gen7_exec_parse@basic-allocation.html

  * {igt@gen9_exec_parse@allowed-all}:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-glk9/igt@gen9_exec_parse@allowed-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-glk3/igt@gen9_exec_parse@allowed-all.html

  * {igt@gen9_exec_parse@batch-zero-length}:
    - shard-iclb:         NOTRUN -> [SKIP][5] +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-iclb6/igt@gen9_exec_parse@batch-zero-length.html

  * {igt@gen9_exec_parse@bb-start-cmd}:
    - shard-tglb:         NOTRUN -> [SKIP][6] +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-tglb1/igt@gen9_exec_parse@bb-start-cmd.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_vertex_type_2_10_10_10_rev@attribs (NEW):
    - pig-hsw-4770r:      NOTRUN -> [FAIL][7] +20 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/pig-hsw-4770r/spec@arb_vertex_type_2_10_10_10_rev@attribs.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7569_full and Patchwork_15773_full:

### New Piglit tests (21) ###

  * spec@arb_base_instance@arb_base_instance-drawarrays:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_blend_func_extended@arb_blend_func_extended-fbo-extended-blend:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_blend_func_extended@arb_blend_func_extended-fbo-extended-blend-explicit:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_blend_func_extended@arb_blend_func_extended-fbo-extended-blend-explicit_gles3:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_blend_func_extended@arb_blend_func_extended-fbo-extended-blend_gles3:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_copy_image@arb_copy_image-format-swizzle:
    - Statuses : 1 fail(s)
    - Exec time: [4.29] s

  * spec@arb_copy_image@arb_copy_image-formats --samples=2:
    - Statuses : 1 fail(s)
    - Exec time: [5.50] s

  * spec@arb_copy_image@arb_copy_image-formats --samples=4:
    - Statuses : 1 fail(s)
    - Exec time: [5.39] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_3d 32 32 17 gl_texture_3d 32 16 18 11 5 2 5 9 7 14 7 11:
    - Statuses : 1 fail(s)
    - Exec time: [4.31] s

  * spec@arb_copy_image@arb_copy_image-targets gl_texture_3d 32 32 17 gl_texture_cube_map_array 16 16 18 11 5 2 5 9 7 5 7 11:
    - Statuses : 1 fail(s)
    - Exec time: [4.51] s

  * spec@arb_draw_buffers@arb_draw_buffers-state_change:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_es2_compatibility@fbo-blending-formats:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-uint-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [7.62] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-1-uint-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [7.45] s

  * spec@arb_gpu_shader5@texturegatheroffsets@vs-rgba-1-unorm-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [7.15] s

  * spec@arb_occlusion_query@occlusion_query:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_sample_shading@builtin-gl-sample-mask-simple 6:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@arb_sample_shading@builtin-gl-sample-mask-simple 8:
    - Statuses : 1 fail(s)
    - Exec time: [0.23] s

  * spec@arb_vertex_type_10f_11f_11f_rev@arb_vertex_type_10f_11f_11f_rev-draw-vertices:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_vertex_type_2_10_10_10_rev@attribs:
    - Statuses : 1 fail(s)
    - Exec time: [0.87] s

  * spec@ext_base_instance@arb_base_instance-drawarrays_gles3:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  

Known issues
------------

  Here are the changes found in Patchwork_15773_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [PASS][8] -> [INCOMPLETE][9] ([i915#435]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb4/igt@gem_busy@close-race.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-tglb6/igt@gem_busy@close-race.html

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#109276] / [fdo#112080])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb1/igt@gem_ctx_isolation@vcs1-none.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-iclb3/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_exec_async@concurrent-writes-bsd2:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#109276]) +4 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd2.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-iclb3/igt@gem_exec_async@concurrent-writes-bsd2.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#112146])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-tglb:         [PASS][16] -> [INCOMPLETE][17] ([i915#470] / [i915#475])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb8/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-tglb6/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-snb:          [PASS][18] -> [DMESG-WARN][19] ([fdo#111870]) +2 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-snb1/igt@gem_userptr_blits@sync-unmap-cycles.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-snb5/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@i915_hangman@error-state-capture-vcs1:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#112080]) +2 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb1/igt@i915_hangman@error-state-capture-vcs1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-iclb3/igt@i915_hangman@error-state-capture-vcs1.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-skl:          [PASS][22] -> [INCOMPLETE][23] ([i915#198])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl6/igt@i915_pm_dc@dc5-dpms.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-skl10/igt@i915_pm_dc@dc5-dpms.html

  * igt@kms_busy@extended-pageflip-hang-oldfb-render-pipe-a:
    - shard-snb:          [PASS][24] -> [SKIP][25] ([fdo#109271]) +4 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-snb5/igt@kms_busy@extended-pageflip-hang-oldfb-render-pipe-a.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-snb6/igt@kms_busy@extended-pageflip-hang-oldfb-render-pipe-a.html

  * igt@kms_color@pipe-b-ctm-0-5:
    - shard-skl:          [PASS][26] -> [DMESG-WARN][27] ([i915#109])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl3/igt@kms_color@pipe-b-ctm-0-5.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-skl9/igt@kms_color@pipe-b-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#54]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [PASS][30] -> [INCOMPLETE][31] ([i915#435] / [i915#456] / [i915#460])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb6/igt@kms_fbcon_fbt@fbc-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-tglb8/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#79]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][34] -> [DMESG-WARN][35] ([i915#180]) +3 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-snb:          [PASS][36] -> [INCOMPLETE][37] ([i915#82])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-snb5/igt@kms_flip@flip-vs-suspend-interruptible.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-snb1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][38] -> [FAIL][39] ([i915#49]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][40] -> [DMESG-WARN][41] ([i915#180]) +9 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-tglb:         [PASS][42] -> [INCOMPLETE][43] ([i915#456] / [i915#460])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-tglb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][44] -> [FAIL][45] ([i915#31])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl1/igt@kms_setmode@basic.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-kbl3/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend:
    - shard-tglb:         [PASS][46] -> [INCOMPLETE][47] ([i915#460])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb9/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-tglb5/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][48] ([i915#180]) -> [PASS][49] +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-apl:          [DMESG-WARN][50] ([i915#180]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-apl6/igt@gem_ctx_isolation@vcs0-s3.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-apl1/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-reset:
    - shard-iclb:         [SKIP][52] ([fdo#109276] / [fdo#112080]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb6/igt@gem_ctx_isolation@vcs1-reset.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-iclb1/igt@gem_ctx_isolation@vcs1-reset.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [FAIL][54] ([i915#232]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-snb2/igt@gem_eio@reset-stress.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-snb2/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][56] ([fdo#110854]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [INCOMPLETE][58] ([i915#435]) -> [PASS][59] +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb6/igt@gem_exec_create@madvise.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-tglb7/igt@gem_exec_create@madvise.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][60] ([fdo#111593]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb6/igt@gem_exec_gttfill@basic.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-tglb4/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][62] ([fdo#109276]) -> [PASS][63] +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb6/igt@gem_exec_params@invalid-bsd-ring.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-iclb1/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][64] ([fdo#112146]) -> [PASS][65] +3 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][66] ([i915#818]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw5/igt@gem_tiled_blits@normal.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-hsw6/igt@gem_tiled_blits@normal.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-iclb:         [INCOMPLETE][68] ([i915#140]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb3/igt@gem_workarounds@suspend-resume-fd.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-iclb8/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-skl:          [FAIL][70] ([i915#54]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][72] ([i915#456] / [i915#460]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-tglb9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - shard-hsw:          [DMESG-WARN][74] ([IGT#6]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw6/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-hsw5/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
    - shard-skl:          [INCOMPLETE][76] ([i915#435] / [i915#667]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl2/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-skl7/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][78] ([fdo#108145] / [i915#265]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_vblank@pipe-a-wait-busy-hang:
    - shard-kbl:          [INCOMPLETE][80] ([fdo#103665]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl7/igt@kms_vblank@pipe-a-wait-busy-hang.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-kbl6/igt@kms_vblank@pipe-a-wait-busy-hang.html

  * igt@perf@disabled-read-error:
    - shard-hsw:          [INCOMPLETE][82] ([i915#61]) -> [PASS][83] +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw8/igt@perf@disabled-read-error.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-hsw4/igt@perf@disabled-read-error.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [SKIP][84] ([fdo#112080]) -> [PASS][85] +2 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb6/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-iclb1/igt@perf_pmu@busy-accuracy-98-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-dirty-create:
    - shard-tglb:         [SKIP][86] ([fdo#111912] / [fdo#112080]) -> [SKIP][87] ([fdo#112080])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb5/igt@gem_ctx_isolation@vcs2-dirty-create.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-create.html

  * igt@gem_eio@kms:
    - shard-snb:          [DMESG-WARN][88] ([i915#444]) -> [INCOMPLETE][89] ([i915#82])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-snb4/igt@gem_eio@kms.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-snb6/igt@gem_eio@kms.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing:
    - shard-tglb:         [SKIP][90] ([fdo#112021]) -> [SKIP][91] ([fdo#112016] / [fdo#112021])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-tglb5/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-tglb:         [INCOMPLETE][92] ([i915#435] / [i915#474] / [i915#667]) -> [FAIL][93] ([i915#49])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#475]: https://gitlab.freedesktop.org/drm/intel/issues/475
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7569 -> Patchwork_15773

  CI-20190529: 20190529
  CI_DRM_7569: 62c2abc0df8983aba79ba093413683c44e9c4748 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15773: 619b4acd14d58735d5dacdd365670fcb6329380b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
