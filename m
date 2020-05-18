Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E551D74DA
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 12:12:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB7A56E037;
	Mon, 18 May 2020 10:12:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 709A66E037;
 Mon, 18 May 2020 10:12:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 69E37A0099;
 Mon, 18 May 2020 10:12:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 18 May 2020 10:12:17 -0000
Message-ID: <158979673742.31685.12028109308559777753@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200516161542.8032-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200516161542.8032-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_dbuf_slice_mask_when_turning_off_all_the_pipes?=
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

Series: drm/i915: Fix dbuf slice mask when turning off all the pipes
URL   : https://patchwork.freedesktop.org/series/77322/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8493_full -> Patchwork_17680_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_17680_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17680_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17680_full:

### IGT changes ###

#### Warnings ####

  * igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge:
    - shard-tglb:         [FAIL][1] ([i915#402]) -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-tglb5/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-tglb5/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-iclb:         [FAIL][3] ([i915#1757]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-iclb3/igt@kms_panel_fitting@atomic-fastset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-iclb1/igt@kms_panel_fitting@atomic-fastset.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb}:
    - shard-tglb:         [FAIL][5] ([i915#402]) -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-tglb1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-tglb8/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  
Known issues
------------

  Here are the changes found in Patchwork_17680_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-apl6/igt@gem_workarounds@suspend-resume.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-apl1/igt@gem_workarounds@suspend-resume.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1436] / [i915#716])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-apl4/igt@gen9_exec_parse@allowed-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-apl1/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_crc@pipe-a-cursor-dpms:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#54])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-dpms.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-dpms.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([IGT#5])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#165] / [i915#180])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [i915#265])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_render:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-iclb2/igt@kms_psr@psr2_primary_render.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-iclb6/igt@kms_psr@psr2_primary_render.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@rcs0}:
    - shard-kbl:          [DMESG-WARN][23] ([i915#180]) -> [PASS][24] +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:
    - shard-tglb:         [FAIL][25] ([i915#1897]) -> [PASS][26] +4 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28] +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-apl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][29] ([fdo#109349]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_draw_crc@draw-method-rgb565-render-xtiled:
    - shard-snb:          [SKIP][31] ([fdo#109271]) -> [PASS][32] +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-snb4/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-snb6/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html

  * {igt@kms_flip@flip-vs-suspend@b-edp1}:
    - shard-skl:          [INCOMPLETE][33] ([i915#198]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-skl3/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-skl2/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:
    - shard-tglb:         [FAIL][35] ([i915#402]) -> [PASS][36] +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:
    - shard-skl:          [FAIL][37] ([i915#49]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html

  * igt@kms_plane@plane-position-hole-dpms-pipe-d-planes:
    - shard-tglb:         [FAIL][39] ([i915#1897] / [i915#402]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-tglb7/igt@kms_plane@plane-position-hole-dpms-pipe-d-planes.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-tglb5/igt@kms_plane@plane-position-hole-dpms-pipe-d-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][41] ([fdo#108145] / [i915#265]) -> [PASS][42] +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_cursor@pipe-a-primary-size-256:
    - shard-glk:          [FAIL][43] ([i915#1559]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-glk9/igt@kms_plane_cursor@pipe-a-primary-size-256.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-glk7/igt@kms_plane_cursor@pipe-a-primary-size-256.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][45] ([fdo#109441]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][47] ([i915#31]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-skl5/igt@kms_setmode@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-skl7/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][49] ([i915#468]) -> [SKIP][50] ([i915#668])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-tglb7/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-tglb:         [FAIL][51] ([i915#1172] / [i915#402]) -> [FAIL][52] ([i915#1172])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-tglb5/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-tglb1/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_color@pipe-c-gamma:
    - shard-tglb:         [FAIL][53] ([i915#1149]) -> [FAIL][54] ([i915#1149] / [i915#402])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-tglb6/igt@kms_color@pipe-c-gamma.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-tglb8/igt@kms_color@pipe-c-gamma.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][55] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][56] ([i915#1319])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-apl8/igt@kms_content_protection@atomic-dpms.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-apl3/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [FAIL][57] ([fdo#110321]) -> [TIMEOUT][58] ([i915#1319])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-apl8/igt@kms_content_protection@lic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-apl3/igt@kms_content_protection@lic.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:
    - shard-tglb:         [FAIL][59] ([i915#1897]) -> [FAIL][60] ([i915#1897] / [i915#402]) +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-tglb:         [FAIL][61] -> [FAIL][62] ([i915#402]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-tglb6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-tglb5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@plane-panning-top-left-pipe-d-planes:
    - shard-tglb:         [FAIL][63] ([i915#1897] / [i915#402]) -> [FAIL][64] ([i915#1897]) +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8493/shard-tglb6/igt@kms_plane@plane-panning-top-left-pipe-d-planes.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/shard-tglb5/igt@kms_plane@plane-panning-top-left-pipe-d-planes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1172]: https://gitlab.freedesktop.org/drm/intel/issues/1172
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1559]: https://gitlab.freedesktop.org/drm/intel/issues/1559
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1757]: https://gitlab.freedesktop.org/drm/intel/issues/1757
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1883]: https://gitlab.freedesktop.org/drm/intel/issues/1883
  [i915#1897]: https://gitlab.freedesktop.org/drm/intel/issues/1897
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8493 -> Patchwork_17680

  CI-20190529: 20190529
  CI_DRM_8493: 47e0097b33017be45f6826ef82a1f535b81ab9a3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5657: 649eae5c905a7460b44305800f95db83a6dd47cb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17680: 7b2bb13994737b6fb1c5e52d8d1227622ccd9d36 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17680/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
