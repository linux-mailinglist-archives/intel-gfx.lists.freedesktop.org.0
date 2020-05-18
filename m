Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B751D7E7D
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 18:29:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 579CE6E43B;
	Mon, 18 May 2020 16:29:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7F9EF6E43B;
 Mon, 18 May 2020 16:29:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7E3F3A0BD0;
 Mon, 18 May 2020 16:29:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Mon, 18 May 2020 16:29:36 -0000
Message-ID: <158981937651.31685.10448461161591960823@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200518111804.11842-1-anshuman.gupta@intel.com>
In-Reply-To: <20200518111804.11842-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgSERD?=
 =?utf-8?q?P_minor_refactoring_=28rev2=29?=
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

Series: HDCP minor refactoring (rev2)
URL   : https://patchwork.freedesktop.org/series/77224/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8494_full -> Patchwork_17688_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17688_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-glk:          [PASS][1] -> [FAIL][2] ([i915#1901])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-glk2/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-glk7/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#1436] / [i915#716])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-apl7/igt@gen9_exec_parse@allowed-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-apl7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-kbl3/igt@i915_suspend@forcewake.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-kbl3/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-random:
    - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#54])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#54] / [i915#93] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#1188]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#69])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-iclb3/igt@kms_psr@psr2_sprite_blt.html

  * igt@perf@enable-disable:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#1352])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-skl10/igt@perf@enable-disable.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-skl5/igt@perf@enable-disable.html

  
#### Possible fixes ####

  * {igt@gem_exec_schedule@pi-shared-iova@rcs0}:
    - shard-tglb:         [INCOMPLETE][23] ([i915#1193]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb2/igt@gem_exec_schedule@pi-shared-iova@rcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-tglb6/igt@gem_exec_schedule@pi-shared-iova@rcs0.html

  * {igt@kms_atomic_transition@plane-all-transition-nonblocking@pipe-b}:
    - shard-kbl:          [DMESG-WARN][25] ([i915#78]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-kbl2/igt@kms_atomic_transition@plane-all-transition-nonblocking@pipe-b.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-kbl2/igt@kms_atomic_transition@plane-all-transition-nonblocking@pipe-b.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:
    - shard-tglb:         [FAIL][27] ([i915#1897]) -> [PASS][28] +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen:
    - shard-skl:          [FAIL][29] ([i915#54]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][31] ([fdo#109349]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-iclb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1}:
    - shard-skl:          [FAIL][33] ([i915#79]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36] +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:
    - shard-tglb:         [FAIL][37] ([i915#1897] / [i915#402]) -> [PASS][38] +4 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:
    - shard-skl:          [FAIL][39] ([i915#49]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +10 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-kbl:          [INCOMPLETE][43] ([i915#155]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][45] ([fdo#108145] / [i915#265]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-a-primary-size-256:
    - shard-glk:          [FAIL][47] ([i915#1559]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-glk5/igt@kms_plane_cursor@pipe-a-primary-size-256.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-glk9/igt@kms_plane_cursor@pipe-a-primary-size-256.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][49] ([fdo#109642] / [fdo#111068]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-iclb1/igt@kms_psr2_su@frontbuffer.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][51] ([fdo#109441]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  
#### Warnings ####

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-tglb:         [FAIL][53] ([i915#1172] / [i915#1897] / [i915#402]) -> [FAIL][54] ([i915#1172] / [i915#1897]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb8/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-tglb2/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_color@pipe-c-gamma:
    - shard-tglb:         [FAIL][55] ([i915#1149] / [i915#1897]) -> [FAIL][56] ([i915#1149] / [i915#1897] / [i915#402]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb7/igt@kms_color@pipe-c-gamma.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-tglb1/igt@kms_color@pipe-c-gamma.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][57] ([i915#1319]) -> [FAIL][58] ([fdo#110321] / [fdo#110336]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-apl6/igt@kms_content_protection@atomic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-apl3/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][59] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][60] ([i915#1319])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-apl2/igt@kms_content_protection@atomic-dpms.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-apl4/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [DMESG-FAIL][61] ([fdo#110321]) -> [FAIL][62] ([fdo#110321])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-apl8/igt@kms_content_protection@lic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-apl4/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [TIMEOUT][63] ([i915#1319]) -> [FAIL][64] ([fdo#110321])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-apl7/igt@kms_content_protection@srm.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-apl7/igt@kms_content_protection@srm.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:
    - shard-tglb:         [FAIL][65] ([i915#1897]) -> [FAIL][66] ([i915#1897] / [i915#402]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html

  * igt@kms_plane@plane-panning-top-left-pipe-d-planes:
    - shard-tglb:         [FAIL][67] ([i915#1897] / [i915#402]) -> [FAIL][68] ([i915#1897]) +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-tglb5/igt@kms_plane@plane-panning-top-left-pipe-d-planes.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-tglb6/igt@kms_plane@plane-panning-top-left-pipe-d-planes.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][69] ([fdo#109642] / [fdo#111068]) -> [FAIL][70] ([i915#608])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/shard-iclb8/igt@kms_psr2_su@page_flip.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/shard-iclb2/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1172]: https://gitlab.freedesktop.org/drm/intel/issues/1172
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1193]: https://gitlab.freedesktop.org/drm/intel/issues/1193
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1352]: https://gitlab.freedesktop.org/drm/intel/issues/1352
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1559]: https://gitlab.freedesktop.org/drm/intel/issues/1559
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1897]: https://gitlab.freedesktop.org/drm/intel/issues/1897
  [i915#1901]: https://gitlab.freedesktop.org/drm/intel/issues/1901
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8494 -> Patchwork_17688

  CI-20190529: 20190529
  CI_DRM_8494: 3d15348fde9b998e754da0b0655baf02b98e7f17 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5657: 649eae5c905a7460b44305800f95db83a6dd47cb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17688: 9fb88404f720d350f3e12c74344955b517dfb964 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17688/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
