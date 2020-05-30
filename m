Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49FB81E8D7D
	for <lists+intel-gfx@lfdr.de>; Sat, 30 May 2020 05:20:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93B786E9AB;
	Sat, 30 May 2020 03:20:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 52A586E9AB;
 Sat, 30 May 2020 03:20:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3C2BAA47E8;
 Sat, 30 May 2020 03:20:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.aiemd@gmail.com>
Date: Sat, 30 May 2020 03:20:00 -0000
Message-ID: <159080880021.9481.5333969828407380956@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200529163351.5228-1-nirmoy.das@amd.com>
In-Reply-To: <20200529163351.5228-1-nirmoy.das@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BRFC=2C1/1=5D_drm/mm=3A_add_ig=5Ffrag_selft?=
 =?utf-8?q?est?=
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

Series: series starting with [RFC,1/1] drm/mm: add ig_frag selftest
URL   : https://patchwork.freedesktop.org/series/77803/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8556_full -> Patchwork_17823_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17823_full:

### IGT changes ###

#### Possible regressions ####

  * {igt@drm_mm@all@frag} (NEW):
    - shard-apl:          NOTRUN -> [DMESG-FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-apl3/igt@drm_mm@all@frag.html
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-tglb1/igt@drm_mm@all@frag.html
    - shard-glk:          NOTRUN -> [DMESG-FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-glk8/igt@drm_mm@all@frag.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8556_full and Patchwork_17823_full:

### New IGT tests (1) ###

  * igt@drm_mm@all@frag:
    - Statuses : 3 dmesg-fail(s) 4 pass(s)
    - Exec time: [2.53, 33.41] s

  

Known issues
------------

  Here are the changes found in Patchwork_17823_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][4] -> [DMESG-WARN][5] ([i915#180]) +3 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-kbl7/igt@gem_exec_suspend@basic-s3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-kbl6/igt@gem_exec_suspend@basic-s3.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][6] -> [DMESG-WARN][7] ([i915#1436] / [i915#716])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-apl3/igt@gen9_exec_parse@allowed-all.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-apl6/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding:
    - shard-kbl:          [PASS][8] -> [FAIL][9] ([i915#54])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
    - shard-skl:          [PASS][10] -> [FAIL][11] ([i915#54])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
    - shard-apl:          [PASS][12] -> [FAIL][13] ([i915#54])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][14] -> [DMESG-WARN][15] ([i915#180]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
    - shard-kbl:          [PASS][16] -> [FAIL][17] ([i915#1566] / [i915#93] / [i915#95])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-kbl4/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-kbl3/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-tglb:         [PASS][18] -> [DMESG-WARN][19] ([i915#128])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-tglb5/igt@kms_cursor_legacy@pipe-d-torture-bo.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-tglb7/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#109441]) +3 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html

  
#### Possible fixes ####

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-glk:          [FAIL][22] ([i915#1930]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-glk6/igt@gem_exec_reloc@basic-concurrent0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-glk8/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-tglb:         [INCOMPLETE][24] ([i915#456]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-tglb6/igt@i915_pm_rpm@system-suspend-execbuf.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-tglb6/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [DMESG-WARN][26] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-kbl2/igt@i915_suspend@fence-restore-untiled.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-kbl3/igt@i915_suspend@fence-restore-untiled.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [INCOMPLETE][28] ([i915#155]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-kbl3/igt@i915_suspend@forcewake.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-kbl7/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-glk:          [FAIL][30] ([i915#1119] / [i915#118] / [i915#95]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-glk6/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-random:
    - shard-skl:          [FAIL][32] ([i915#54]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-256x85-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][34] ([i915#180]) -> [PASS][35] +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge:
    - shard-glk:          [TIMEOUT][36] ([i915#1958]) -> [PASS][37] +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-glk7/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-glk5/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-glk:          [DMESG-FAIL][38] ([i915#1925] / [i915#1926]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-glk2/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-glk1/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * {igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][40] ([i915#79]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][42] ([i915#180]) -> [PASS][43] +3 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
    - shard-iclb:         [FAIL][44] ([i915#49]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][46] ([i915#1188]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][48] ([fdo#108145] / [i915#265]) -> [PASS][49] +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:
    - shard-glk:          [INCOMPLETE][50] ([i915#1927] / [i915#58] / [k.org#198133]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-glk2/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-glk4/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][52] ([fdo#109441]) -> [PASS][53] +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-iclb6/igt@kms_psr@psr2_basic.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-iclb2/igt@kms_psr@psr2_basic.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][54] ([i915#658]) -> [SKIP][55] ([i915#588])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [DMESG-FAIL][56] ([fdo#110321]) -> [TIMEOUT][57] ([i915#1319] / [i915#1635])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-apl2/igt@kms_content_protection@legacy.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-apl8/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          [FAIL][58] ([i915#357]) -> [FAIL][59] ([i915#357] / [i915#93] / [i915#95])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-kbl3/igt@kms_content_protection@uevent.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-kbl1/igt@kms_content_protection@uevent.html
    - shard-apl:          [FAIL][60] ([i915#357]) -> [FAIL][61] ([i915#357] / [i915#95])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-apl1/igt@kms_content_protection@uevent.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-apl2/igt@kms_content_protection@uevent.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-glk:          [TIMEOUT][62] ([i915#1958]) -> [SKIP][63] ([fdo#109271])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-glk7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-glk5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          [FAIL][64] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][65] ([fdo#108145] / [i915#265])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1566]: https://gitlab.freedesktop.org/drm/intel/issues/1566
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1925]: https://gitlab.freedesktop.org/drm/intel/issues/1925
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1927]: https://gitlab.freedesktop.org/drm/intel/issues/1927
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#357]: https://gitlab.freedesktop.org/drm/intel/issues/357
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8556 -> Patchwork_17823

  CI-20190529: 20190529
  CI_DRM_8556: a12abc504361cc53eeb53c2948aebbd88709a901 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5684: bd399f5eb8263bb4a84ae6a5bb1a13d329e0515d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17823: 320cc6810801929affc6303c2481c0d2b735414e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
