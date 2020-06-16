Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F13941FC108
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 23:33:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E0326E99B;
	Tue, 16 Jun 2020 21:33:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9EDCE6E99B;
 Tue, 16 Jun 2020 21:33:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 791E9A47EE;
 Tue, 16 Jun 2020 21:33:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Colin Ian King" <colin.king@canonical.com>
Date: Tue, 16 Jun 2020 21:33:40 -0000
Message-ID: <159234322046.4596.8535606236671819186@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200616114221.73971-1-colin.king@canonical.com>
In-Reply-To: <20200616114221.73971-1-colin.king@canonical.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_fix_missing_null_check_on_allocated_dsb_object?=
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

Series: drm/i915/display: fix missing null check on allocated dsb object
URL   : https://patchwork.freedesktop.org/series/78414/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8635_full -> Patchwork_17962_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17962_full:

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat2x4_array3-position-double_double (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][1] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/pig-icl-1065g7/spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat2x4_array3-position-double_double.html

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dvec3_array3-double_dmat2x4_array2-position (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [CRASH][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/pig-icl-1065g7/spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dvec3_array3-double_dmat2x4_array2-position.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8635_full and Patchwork_17962_full:

### New Piglit tests (4) ###

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat2x4_array3-position-double_double:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dvec3_array3-double_dmat2x4_array2-position:
    - Statuses : 1 crash(s)
    - Exec time: [0.44] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dmat3x2_array5-float_vec4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-float_vec4_array3-double_dmat3x4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_17962_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#118] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-glk4/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-glk1/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@gem_mmap_wc@write-cpu-read-wc:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#95]) +15 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-apl2/igt@gem_mmap_wc@write-cpu-read-wc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-apl1/igt@gem_mmap_wc@write-cpu-read-wc.html

  * igt@gem_shrink@reclaim:
    - shard-hsw:          [PASS][9] -> [SKIP][10] ([fdo#109271])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-hsw5/igt@gem_shrink@reclaim.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-hsw1/igt@gem_shrink@reclaim.html

  * igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:
    - shard-glk:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-glk4/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-glk5/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-hsw:          [PASS][13] -> [FAIL][14] ([IGT#5])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-hsw1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-hsw6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#79])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-kbl7/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-kbl1/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-apl:          [PASS][19] -> [DMESG-FAIL][20] ([i915#95])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-apl2/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-apl1/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#93] / [i915#95]) +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_plane@plane-panning-top-left-pipe-b-planes:
    - shard-snb:          [PASS][23] -> [SKIP][24] ([fdo#109271]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-snb6/igt@kms_plane@plane-panning-top-left-pipe-b-planes.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-snb4/igt@kms_plane@plane-panning-top-left-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145] / [i915#265])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_psr@suspend:
    - shard-skl:          [PASS][29] -> [DMESG-WARN][30] ([i915#1982]) +12 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl2/igt@kms_psr@suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-skl6/igt@kms_psr@suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-skl:          [PASS][31] -> [INCOMPLETE][32] ([i915#69])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-skl5/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-kbl:          [PASS][33] -> [INCOMPLETE][34] ([i915#155])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-kbl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-kbl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf_pmu@module-unload:
    - shard-tglb:         [PASS][35] -> [DMESG-WARN][36] ([i915#402])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-tglb8/igt@perf_pmu@module-unload.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-tglb1/igt@perf_pmu@module-unload.html

  
#### Possible fixes ####

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [FAIL][37] ([i915#1930]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-glk8/igt@gem_exec_reloc@basic-concurrent0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-glk2/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_schedule@implicit-read-write@rcs0:
    - shard-snb:          [INCOMPLETE][39] ([i915#82]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-snb1/igt@gem_exec_schedule@implicit-read-write@rcs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-snb6/igt@gem_exec_schedule@implicit-read-write@rcs0.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-glk:          [DMESG-WARN][41] ([i915#118] / [i915#95]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-glk5/igt@gem_exec_schedule@smoketest-all.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-glk2/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_schedule@smoketest@bcs0:
    - shard-tglb:         [INCOMPLETE][43] ([i915#1829]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-tglb1/igt@gem_exec_schedule@smoketest@bcs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-tglb3/igt@gem_exec_schedule@smoketest@bcs0.html

  * igt@gem_mmap_offset@ptrace@gtt:
    - shard-kbl:          [DMESG-WARN][45] ([i915#93] / [i915#95]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-kbl1/igt@gem_mmap_offset@ptrace@gtt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-kbl3/igt@gem_mmap_offset@ptrace@gtt.html

  * igt@i915_module_load@reload:
    - shard-skl:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48] +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl9/igt@i915_module_load@reload.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-skl8/igt@i915_module_load@reload.html
    - shard-tglb:         [DMESG-WARN][49] ([i915#402]) -> [PASS][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-tglb8/igt@i915_module_load@reload.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-tglb1/igt@i915_module_load@reload.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][51] ([IGT#5]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:
    - shard-glk:          [FAIL][53] ([i915#79]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@modeset-vs-vblank-race-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][57] ([i915#165] / [i915#78]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-kbl2/igt@kms_flip@modeset-vs-vblank-race-interruptible@a-dp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-kbl3/igt@kms_flip@modeset-vs-vblank-race-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
    - shard-apl:          [DMESG-WARN][59] ([i915#1982]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][61] ([fdo#108145] / [i915#265]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-b-overlay-size-256:
    - shard-apl:          [DMESG-WARN][63] ([i915#95]) -> [PASS][64] +12 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-apl1/igt@kms_plane_cursor@pipe-b-overlay-size-256.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-apl8/igt@kms_plane_cursor@pipe-b-overlay-size-256.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-iclb6/igt@kms_psr@psr2_cursor_blt.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  
#### Warnings ####

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [DMESG-WARN][67] ([i915#180]) -> [INCOMPLETE][68] ([i915#155])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-kbl7/igt@i915_suspend@fence-restore-untiled.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-kbl2/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-tglb:         [DMESG-FAIL][69] ([i915#1149] / [i915#1982]) -> [FAIL][70] ([i915#1149] / [i915#315])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-tglb6/igt@kms_color@pipe-c-ctm-0-25.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-tglb5/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-skl:          [FAIL][71] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][72] ([fdo#108145] / [i915#1982])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1829]: https://gitlab.freedesktop.org/drm/intel/issues/1829
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8635 -> Patchwork_17962

  CI-20190529: 20190529
  CI_DRM_8635: f9acdb898773f94ac1bcb9a8826596f88412a53b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5711: 90611a0c90afa4a46496c78a4faf9638a1538ac3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17962: f48c185da47b189fee405b28a4e607332d5b200d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17962/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
