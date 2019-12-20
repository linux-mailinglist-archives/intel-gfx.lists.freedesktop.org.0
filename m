Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCC8128365
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 21:52:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E723A6E146;
	Fri, 20 Dec 2019 20:52:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B7E9C6E146;
 Fri, 20 Dec 2019 20:52:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A6D48A0073;
 Fri, 20 Dec 2019 20:52:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 20 Dec 2019 20:52:11 -0000
Message-ID: <157687513165.9210.2400809637214893189@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191219111430.17527-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191219111430.17527-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Introduce_intel=5Fcrtc=5Fstate=5Falloc=28=29?=
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

Series: drm/i915: Introduce intel_crtc_state_alloc()
URL   : https://patchwork.freedesktop.org/series/71161/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7607_full -> Patchwork_15840_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_7607_full and Patchwork_15840_full:

### New Piglit tests (6) ###

  * spec@arb_gpu_shader5@texturegather@vs-rgba-0-unorm-2d:
    - Statuses : 1 fail(s)
    - Exec time: [1.72] s

  * spec@arb_gpu_shader5@texturegather@vs-rgba-1-float-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.72] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-0-float-2d:
    - Statuses : 1 fail(s)
    - Exec time: [7.44] s

  * spec@arb_shader_image_load_store@host-mem-barrier:
    - Statuses : 1 fail(s)
    - Exec time: [5.63] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat2-int_ivec3-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-float_mat2x4-double_dmat2-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  

Known issues
------------

  Here are the changes found in Patchwork_15840_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_create@basic-files:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([fdo#111735])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb3/igt@gem_ctx_create@basic-files.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-tglb6/igt@gem_ctx_create@basic-files.html

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([i915#456])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb9/igt@gem_ctx_isolation@vcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-tglb7/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_exec_balancer@smoke:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([fdo#111593])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb2/igt@gem_exec_balancer@smoke.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-tglb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-hsw:          [PASS][7] -> [FAIL][8] ([i915#520])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-hsw8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-tglb:         [PASS][9] -> [TIMEOUT][10] ([i915#530])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb5/igt@gem_persistent_relocs@forked-thrashing.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-tglb2/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-kbl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-kbl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-skl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#472] / [i915#707])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb7/igt@gem_sync@basic-each.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-tglb5/igt@gem_sync@basic-each.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#109])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl7/igt@kms_color@pipe-a-ctm-0-5.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-skl5/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +5 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#54]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#460])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#646] / [i915#667])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][27] -> [FAIL][28] ([i915#49]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#435] / [i915#474] / [i915#667])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b:
    - shard-snb:          [PASS][31] -> [SKIP][32] ([fdo#109271]) +4 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-snb5/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-snb7/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [PASS][33] -> [INCOMPLETE][34] ([fdo#103665])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-tglb:         [PASS][35] -> [DMESG-FAIL][36] ([i915#402])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb4/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-tglb4/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([fdo#108145] / [i915#265]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-tglb:         [PASS][39] -> [INCOMPLETE][40] ([i915#456] / [i915#460])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb5/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-tglb5/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries_display_on:
    - shard-skl:          [DMESG-WARN][41] ([i915#109]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl9/igt@debugfs_test@read_all_entries_display_on.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-skl4/igt@debugfs_test@read_all_entries_display_on.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][45] ([fdo#111735]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_exec_parallel@vecs0:
    - shard-tglb:         [INCOMPLETE][47] ([fdo#111736]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb1/igt@gem_exec_parallel@vecs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-tglb1/igt@gem_exec_parallel@vecs0.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [INCOMPLETE][49] ([i915#707]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-tglb7/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][51] ([i915#435] / [i915#472]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb9/igt@gem_sync@basic-store-each.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-tglb8/igt@gem_sync@basic-store-each.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-apl4/igt@gem_workarounds@suspend-resume.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-apl3/igt@gem_workarounds@suspend-resume.html

  * {igt@gen9_exec_parse@allowed-all}:
    - shard-skl:          [DMESG-WARN][55] ([i915#716]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl3/igt@gen9_exec_parse@allowed-all.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-skl5/igt@gen9_exec_parse@allowed-all.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-glk:          [DMESG-WARN][57] ([i915#716]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-glk5/igt@gen9_exec_parse@allowed-single.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-glk9/igt@gen9_exec_parse@allowed-single.html
    - shard-apl:          [DMESG-WARN][59] ([i915#716]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-apl4/igt@gen9_exec_parse@allowed-single.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-apl3/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180:
    - shard-skl:          [INCOMPLETE][61] -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl7/igt@kms_ccs@pipe-a-crc-primary-rotation-180.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-skl9/igt@kms_ccs@pipe-a-crc-primary-rotation-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][63] ([i915#456] / [i915#460]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-tglb4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding:
    - shard-skl:          [FAIL][65] ([i915#54]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][67] ([i915#79]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:
    - shard-tglb:         [FAIL][69] ([i915#49]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][71] ([fdo#108145]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-tglb:         [INCOMPLETE][73] ([i915#460]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-tglb7/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-tglb1/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@perf@short-reads:
    - shard-glk:          [TIMEOUT][75] ([i915#51]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-glk7/igt@perf@short-reads.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-glk3/igt@perf@short-reads.html

  
#### Warnings ####

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [DMESG-WARN][77] ([i915#180]) -> [DMESG-WARN][78] ([i915#180] / [i915#56])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7607/shard-kbl7/igt@gem_softpin@noreloc-s3.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/shard-kbl3/igt@gem_softpin@noreloc-s3.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#646]: https://gitlab.freedesktop.org/drm/intel/issues/646
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7607 -> Patchwork_15840

  CI-20190529: 20190529
  CI_DRM_7607: a5637870d1eaf736172c3444c02ebe5f7d2ad161 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15840: 77c4807e8a8e9636e96ed7290d01fa8feab949fb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15840/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
