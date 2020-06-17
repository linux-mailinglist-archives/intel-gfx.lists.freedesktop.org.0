Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B641FD5E9
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 22:20:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E0FF6E196;
	Wed, 17 Jun 2020 20:20:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B9E336E195;
 Wed, 17 Jun 2020 20:20:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A9155A00C7;
 Wed, 17 Jun 2020 20:20:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Wed, 17 Jun 2020 20:20:11 -0000
Message-ID: <159242521166.29980.11889795722588587477@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200617180006.4130501-1-matthew.d.roper@intel.com>
In-Reply-To: <20200617180006.4130501-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Extend_Wa=5F14010685332_to_all_ICP+_PCH=27s?=
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

Series: drm/i915: Extend Wa_14010685332 to all ICP+ PCH's
URL   : https://patchwork.freedesktop.org/series/78481/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8639_full -> Patchwork_17983_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17983_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +7 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_ctx_persistence@process:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#93] / [i915#95]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-kbl7/igt@gem_ctx_persistence@process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-kbl1/igt@gem_ctx_persistence@process.html

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#95]) +24 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-apl2/igt@gem_exec_flush@basic-wb-rw-before-default.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-apl7/igt@gem_exec_flush@basic-wb-rw-before-default.html

  * igt@kms_flip@2x-plain-flip-ts-check@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#1928])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check@bc-hdmi-a1-hdmi-a2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@modeset-vs-vblank-race-interruptible@a-dp1:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#165] / [i915#78])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-kbl1/igt@kms_flip@modeset-vs-vblank-race-interruptible@a-dp1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-kbl2/igt@kms_flip@modeset-vs-vblank-race-interruptible@a-dp1.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-skl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982]) +8 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-skl7/igt@kms_flip_tiling@flip-changes-tiling.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-skl10/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-apl:          [PASS][13] -> [DMESG-FAIL][14] ([i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-apl3/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-apl8/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([fdo#108145] / [i915#265]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#31])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-kbl7/igt@kms_setmode@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-kbl4/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-kbl:          [PASS][21] -> [INCOMPLETE][22] ([i915#155])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-kbl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-kbl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-c-wait-forked-busy:
    - shard-tglb:         [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-tglb6/igt@kms_vblank@pipe-c-wait-forked-busy.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-tglb7/igt@kms_vblank@pipe-c-wait-forked-busy.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#1542])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-iclb5/igt@perf@blocking-parameterized.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-iclb7/igt@perf@blocking-parameterized.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@all:
    - shard-glk:          [DMESG-WARN][27] ([i915#118] / [i915#95]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-glk4/igt@gem_exec_gttfill@all.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-glk8/igt@gem_exec_gttfill@all.html

  * igt@gem_exec_schedule@implicit-write-read@rcs0:
    - shard-snb:          [INCOMPLETE][29] ([i915#82]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-snb2/igt@gem_exec_schedule@implicit-write-read@rcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-snb1/igt@gem_exec_schedule@implicit-write-read@rcs0.html

  * igt@gem_mmap_offset@ptrace@gtt:
    - shard-kbl:          [DMESG-WARN][31] ([i915#93] / [i915#95]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-kbl1/igt@gem_mmap_offset@ptrace@gtt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-kbl6/igt@gem_mmap_offset@ptrace@gtt.html

  * igt@gem_tiled_blits@basic:
    - shard-snb:          [TIMEOUT][33] ([i915#1958]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-snb4/igt@gem_tiled_blits@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-snb5/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-apl:          [DMESG-WARN][35] ([i915#183]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-apl2/igt@gem_tiled_swapping@non-threaded.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-apl7/igt@gem_tiled_swapping@non-threaded.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-tglb:         [DMESG-WARN][37] ([i915#402]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +4 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][41] ([i915#1928]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-tglb:         [DMESG-WARN][43] ([i915#1982]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_plane@plane-position-covered-pipe-b-planes:
    - shard-skl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46] +6 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-skl6/igt@kms_plane@plane-position-covered-pipe-b-planes.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-skl6/igt@kms_plane@plane-position-covered-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][47] ([fdo#108145] / [i915#265]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-rotation:
    - shard-apl:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-apl6/igt@kms_plane_scaling@pipe-a-scaler-with-rotation.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-apl1/igt@kms_plane_scaling@pipe-a-scaler-with-rotation.html

  * igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping:
    - shard-iclb:         [DMESG-WARN][51] ([i915#1982]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-iclb3/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-iclb3/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][53] ([fdo#109642] / [fdo#111068]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-iclb5/igt@kms_psr2_su@page_flip.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][55] ([fdo#109441]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_vblank@invalid:
    - shard-apl:          [DMESG-WARN][57] ([i915#95]) -> [PASS][58] +17 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-apl4/igt@kms_vblank@invalid.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-apl2/igt@kms_vblank@invalid.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [TIMEOUT][59] ([i915#1958]) -> [FAIL][60] ([i915#1930])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-snb:          [TIMEOUT][61] ([i915#1958]) -> [SKIP][62] ([fdo#109271]) +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-snb4/igt@gen7_exec_parse@chained-batch.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-snb5/igt@gen7_exec_parse@chained-batch.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-snb:          [TIMEOUT][63] ([i915#1958]) -> [SKIP][64] ([fdo#109271] / [fdo#111827])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-snb4/igt@kms_color_chamelium@pipe-b-ctm-max.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-snb5/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][65] ([i915#93] / [i915#95]) -> [DMESG-WARN][66] ([i915#180] / [i915#93] / [i915#95])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-skl:          [FAIL][67] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][68] ([fdo#108145] / [i915#1982])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#183]: https://gitlab.freedesktop.org/drm/intel/issues/183
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8639 -> Patchwork_17983

  CI-20190529: 20190529
  CI_DRM_8639: 47584e59cf51ec499d68a4cefbaf447448ce2894 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5711: 90611a0c90afa4a46496c78a4faf9638a1538ac3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17983: 5191bc177abc6e252b93ce4a081b472d06681472 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17983/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
