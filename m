Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B681E12B111
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2019 05:49:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83AA589C3F;
	Fri, 27 Dec 2019 04:49:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D7DD389B69;
 Fri, 27 Dec 2019 04:49:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AD27CA00E8;
 Fri, 27 Dec 2019 04:49:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 27 Dec 2019 04:49:13 -0000
Message-ID: <157742215367.27187.714488010167989504@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191220220650.16349-1-lucas.demarchi@intel.com>
In-Reply-To: <20191220220650.16349-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_nuke_skl_workaround_for_pre-production_hw_=28r?=
 =?utf-8?q?ev2=29?=
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

Series: drm/i915/display: nuke skl workaround for pre-production hw (rev2)
URL   : https://patchwork.freedesktop.org/series/71230/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7630_full -> Patchwork_15906_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_7630_full and Patchwork_15906_full:

### New Piglit tests (8) ###

  * spec@arb_draw_buffers@fbo-mrt-new-bind:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_texture_cube_map_array@texturesize@tes-texturesize-usamplercubearray:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_texture_cube_map_array@texturesize@vs-texturesize-usamplercubearray:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_double_array3-position-double_dmat2x4_array2:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-uint_uint_array3-position-double_dmat4x3:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@ext_framebuffer_multisample@draw-buffers-alpha-to-coverage 8:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  * spec@ext_framebuffer_multisample@sample-alpha-to-coverage 8 color:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-double_dmat4x2_array3-double_dvec4:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  

Known issues
------------

  Here are the changes found in Patchwork_15906_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([i915#435])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb8/igt@gem_busy@close-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-tglb6/igt@gem_busy@close-race.html

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#570])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl9/igt@gem_ctx_persistence@processes.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-skl5/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([fdo#111736] / [i915#460])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb8/igt@gem_exec_suspend@basic-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-tglb4/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#472] / [i915#707])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb9/igt@gem_sync@basic-each.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-tglb6/igt@gem_sync@basic-each.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#472])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb1/igt@gem_sync@basic-store-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-tglb3/igt@gem_sync@basic-store-all.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#435] / [i915#460])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb8/igt@i915_pm_rpm@system-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-tglb7/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_selftest@live_gem_contexts:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#455])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb2/igt@i915_selftest@live_gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-tglb4/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#300])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#456] / [i915#460])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#54])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#52] / [i915#54])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-skl2/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#79])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip_tiling@flip-to-yf-tiled:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#107931] / [i915#167])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl9/igt@kms_flip_tiling@flip-to-yf-tiled.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-skl5/igt@kms_flip_tiling@flip-to-yf-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [PASS][29] -> [FAIL][30] ([i915#49]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-snb:          [PASS][31] -> [DMESG-WARN][32] ([i915#42])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-snb7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-snb6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145] / [i915#265])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][35] -> [FAIL][36] ([i915#31])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-apl1/igt@kms_setmode@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-apl2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180]) +6 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend:
    - shard-tglb:         [PASS][39] -> [INCOMPLETE][40] ([i915#460]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb9/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-tglb4/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-kbl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-kbl7/igt@gem_ctx_isolation@bcs0-s3.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-kbl4/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-skl:          [FAIL][43] ([i915#679]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl7/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-skl2/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-blt:
    - shard-tglb:         [INCOMPLETE][45] ([fdo#111735]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb6/igt@gem_ctx_shared@q-smoketest-blt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-tglb7/igt@gem_ctx_shared@q-smoketest-blt.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [INCOMPLETE][47] ([i915#469]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb6/igt@gem_eio@unwedge-stress.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-tglb3/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][49] ([fdo#111593]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb5/igt@gem_exec_gttfill@basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-tglb2/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [INCOMPLETE][51] ([i915#435]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb6/igt@gem_exec_nop@basic-sequential.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-tglb7/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][53] ([i915#470]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb9/igt@gem_exec_parallel@contexts.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-tglb1/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [INCOMPLETE][55] ([i915#707]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb4/igt@gem_exec_schedule@smoketest-bsd2.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-tglb2/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [DMESG-WARN][57] ([i915#109]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl4/igt@kms_color@pipe-a-ctm-0-5.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-skl1/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][59] ([i915#456] / [i915#460]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-tglb9/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:
    - shard-skl:          [FAIL][61] ([i915#54]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
    - shard-glk:          [FAIL][63] -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-glk8/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][65] ([i915#79]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl4/igt@kms_flip@flip-vs-expired-vblank.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][67] ([i915#79]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-tglb:         [INCOMPLETE][69] ([i915#456] / [i915#460] / [i915#516]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-tglb9/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][71] ([fdo#108145]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][73] ([fdo#108145] / [i915#265]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][75] ([i915#180]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][77] ([i915#818]) -> [INCOMPLETE][78] ([i915#61])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-hsw1/igt@gem_tiled_blits@interruptible.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/shard-hsw1/igt@gem_tiled_blits@interruptible.html

  
  [fdo#107931]: https://bugs.freedesktop.org/show_bug.cgi?id=107931
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#167]: https://gitlab.freedesktop.org/drm/intel/issues/167
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#469]: https://gitlab.freedesktop.org/drm/intel/issues/469
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#516]: https://gitlab.freedesktop.org/drm/intel/issues/516
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7630 -> Patchwork_15906

  CI-20190529: 20190529
  CI_DRM_7630: 28a2aa0ebf1520ea8a0dd89299f7ceea80dfd96f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15906: 4e4667cba36744fe229627ebd76b0d3298a79b33 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15906/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
