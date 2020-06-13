Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C52CB1F7FE6
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jun 2020 02:24:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12D2C6E391;
	Sat, 13 Jun 2020 00:24:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A5F4D6E391;
 Sat, 13 Jun 2020 00:24:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9F961A3C0D;
 Sat, 13 Jun 2020 00:24:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Sat, 13 Jun 2020 00:24:10 -0000
Message-ID: <159200785064.20489.16775138176975621511@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/8=5D_drm/atomic-helper=3A_reset_vblank_o?=
 =?utf-8?q?n_crtc_reset_=28rev2=29?=
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

Series: series starting with [1/8] drm/atomic-helper: reset vblank on crtc reset (rev2)
URL   : https://patchwork.freedesktop.org/series/78268/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8621_full -> Patchwork_17943_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17943_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17943_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17943_full:

### IGT changes ###

#### Possible regressions ####

  * igt@perf_pmu@busy-check-all@rcs0:
    - shard-snb:          [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-snb5/igt@perf_pmu@busy-check-all@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-snb6/igt@perf_pmu@busy-check-all@rcs0.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8621_full and Patchwork_17943_full:

### New IGT tests (1) ###

  * igt@gem_exec_reloc@basic-spin-others:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_17943_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#198])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-skl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-skl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#1930])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-apl7/igt@gem_exec_reloc@basic-concurrent0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-apl2/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-glk:          [PASS][7] -> [DMESG-WARN][8] ([i915#118] / [i915#95]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-glk4/igt@gem_exec_schedule@smoketest-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-glk8/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_mmap@bad-size:
    - shard-snb:          [PASS][9] -> [TIMEOUT][10] ([i915#1958])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-snb5/igt@gem_mmap@bad-size.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-snb6/igt@gem_mmap@bad-size.html

  * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#95]) +23 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-apl4/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-apl7/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][13] -> [DMESG-WARN][14] ([i915#402])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-tglb6/igt@i915_module_load@reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-tglb8/igt@i915_module_load@reload.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-glk:          [PASS][15] -> [DMESG-FAIL][16] ([i915#118] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-glk6/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#54])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +6 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([IGT#5])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-apl8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-apl1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#1188])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145] / [i915#265]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-iclb1/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-c:
    - shard-skl:          [PASS][33] -> [DMESG-WARN][34] ([i915#1982]) +8 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-skl9/igt@kms_universal_plane@disable-primary-vs-flip-pipe-c.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-skl10/igt@kms_universal_plane@disable-primary-vs-flip-pipe-c.html

  * igt@perf_pmu@busy-check-all@vcs0:
    - shard-snb:          [PASS][35] -> [INCOMPLETE][36] ([i915#82])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-snb5/igt@perf_pmu@busy-check-all@vcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-snb6/igt@perf_pmu@busy-check-all@vcs0.html

  
#### Possible fixes ####

  * igt@gem_exec_schedule@implicit-read-write@bcs0:
    - shard-snb:          [INCOMPLETE][37] ([i915#82]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-snb1/igt@gem_exec_schedule@implicit-read-write@bcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-snb4/igt@gem_exec_schedule@implicit-read-write@bcs0.html

  * igt@i915_selftest@perf@request:
    - shard-tglb:         [DMESG-FAIL][39] ([i915#1823]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-tglb5/igt@i915_selftest@perf@request.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-tglb3/igt@i915_selftest@perf@request.html

  * igt@kms_addfb_basic@size-max:
    - shard-kbl:          [DMESG-WARN][41] ([i915#93] / [i915#95]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-kbl2/igt@kms_addfb_basic@size-max.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-kbl3/igt@kms_addfb_basic@size-max.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge:
    - shard-skl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46] +4 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-skl3/igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-skl6/igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:
    - shard-apl:          [DMESG-WARN][47] ([i915#95]) -> [PASS][48] +20 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-apl1/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-apl8/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +11 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-badstride:
    - shard-glk:          [DMESG-WARN][51] ([i915#1982]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-glk5/igt@kms_frontbuffer_tracking@fbc-badstride.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-glk4/igt@kms_frontbuffer_tracking@fbc-badstride.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][53] ([i915#1188]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][55] ([i915#69]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][57] ([fdo#108145] / [i915#265]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [SKIP][59] ([fdo#109441]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-iclb8/igt@kms_psr@psr2_dpms.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-iclb2/igt@kms_psr@psr2_dpms.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][61] ([i915#31]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-apl2/igt@kms_setmode@basic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-apl2/igt@kms_setmode@basic.html
    - shard-glk:          [FAIL][63] ([i915#31]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-glk9/igt@kms_setmode@basic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-glk5/igt@kms_setmode@basic.html
    - shard-kbl:          [FAIL][65] ([i915#31]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-kbl7/igt@kms_setmode@basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-kbl1/igt@kms_setmode@basic.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [FAIL][67] ([i915#1542]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-iclb8/igt@perf@blocking-parameterized.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-iclb2/igt@perf@blocking-parameterized.html

  * igt@perf_pmu@module-unload:
    - shard-tglb:         [DMESG-WARN][69] ([i915#402]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-tglb2/igt@perf_pmu@module-unload.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-tglb7/igt@perf_pmu@module-unload.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process:
    - shard-snb:          [SKIP][71] ([fdo#109271] / [i915#1099]) -> [INCOMPLETE][72] ([i915#82])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-snb5/igt@gem_ctx_persistence@legacy-engines-mixed-process.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-snb6/igt@gem_ctx_persistence@legacy-engines-mixed-process.html

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][73] ([i915#1930]) -> [TIMEOUT][74] ([i915#1958])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][75] ([i915#468]) -> [FAIL][76] ([i915#454])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][77] ([i915#1319] / [i915#1958]) -> [TIMEOUT][78] ([i915#1319])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-kbl4/igt@kms_content_protection@atomic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-kbl3/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [TIMEOUT][79] ([i915#1319]) -> [TIMEOUT][80] ([i915#1319] / [i915#1635])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-apl8/igt@kms_content_protection@legacy.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-apl6/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][81] ([i915#1319]) -> [DMESG-FAIL][82] ([fdo#110321] / [i915#95])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-apl1/igt@kms_content_protection@lic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-apl6/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [DMESG-FAIL][83] ([fdo#110321]) -> [TIMEOUT][84] ([i915#1319] / [i915#1635])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-apl3/igt@kms_content_protection@srm.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-apl7/igt@kms_content_protection@srm.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][85] ([fdo#109349]) -> [DMESG-WARN][86] ([i915#1226])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-blt:
    - shard-snb:          [SKIP][87] ([fdo#109271]) -> [TIMEOUT][88] ([i915#1958])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-snb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-blt.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/shard-snb6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-blt.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1823]: https://gitlab.freedesktop.org/drm/intel/issues/1823
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8621 -> Patchwork_17943

  CI-20190529: 20190529
  CI_DRM_8621: acd803311fbd1e6adc38d10ca382a60c6c190be9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5708: f66c71e29de50bae880bc81ceb0517d4e3e2dfd8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17943: 923b9ca5f747ec1d47686fc47f9c66434763b1ae @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17943/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
