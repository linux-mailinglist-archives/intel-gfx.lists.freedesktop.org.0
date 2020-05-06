Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 844E51C7DA4
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 01:00:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E49306E8FB;
	Wed,  6 May 2020 23:00:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C022F6E8FB;
 Wed,  6 May 2020 23:00:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B966AA00E7;
 Wed,  6 May 2020 23:00:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Wed, 06 May 2020 23:00:49 -0000
Message-ID: <158880604972.11897.3575521432378368133@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200506144734.29297-1-mika.kuoppala@linux.intel.com>
In-Reply-To: <20200506144734.29297-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_Revert_=22drm/i915/tgl=3A_Include_r?=
 =?utf-8?q?o_parts_of_l3_to_invalidate=22_=28rev3=29?=
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

Series: series starting with [1/4] Revert "drm/i915/tgl: Include ro parts of l3 to invalidate" (rev3)
URL   : https://patchwork.freedesktop.org/series/77000/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8437_full -> Patchwork_17592_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17592_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-skl:          [PASS][1] -> [FAIL][2] ([i915#1528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8437/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17592/shard-skl5/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8437/shard-kbl3/igt@i915_suspend@fence-restore-tiled2untiled.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17592/shard-kbl2/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#70] / [i915#93] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8437/shard-kbl6/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17592/shard-kbl4/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [PASS][7] -> [FAIL][8] ([i915#96])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8437/shard-hsw7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17592/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109349])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8437/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17592/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_draw_crc@fill-fb:
    - shard-apl:          [PASS][11] -> [FAIL][12] ([i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8437/shard-apl2/igt@kms_draw_crc@fill-fb.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17592/shard-apl3/igt@kms_draw_crc@fill-fb.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#69])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8437/shard-skl3/igt@kms_fbcon_fbt@psr-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17592/shard-skl9/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#1188])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8437/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17592/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180] / [i915#93] / [i915#95])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8437/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17592/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [i915#265]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8437/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17592/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8437/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17592/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][23] -> [FAIL][24] ([i915#31])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8437/shard-kbl6/igt@kms_setmode@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17592/shard-kbl4/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26] +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8437/shard-apl4/igt@i915_suspend@sysfs-reader.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17592/shard-apl7/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [FAIL][27] ([i915#96]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8437/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17592/shard-hsw2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-kbl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30] +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8437/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17592/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-snb:          [SKIP][31] ([fdo#109271]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8437/shard-snb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17592/shard-snb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][33] ([i915#1188]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8437/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17592/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][35] ([fdo#108145] / [i915#265]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8437/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17592/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][37] ([fdo#109441]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8437/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17592/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [FAIL][39] ([i915#31]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8437/shard-hsw4/igt@kms_setmode@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17592/shard-hsw4/igt@kms_setmode@basic.html

  * {igt@perf@polling-parameterized}:
    - shard-kbl:          [FAIL][41] ([i915#1542]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8437/shard-kbl1/igt@perf@polling-parameterized.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17592/shard-kbl3/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][43] ([i915#454]) -> [SKIP][44] ([i915#468])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8437/shard-tglb5/igt@i915_pm_dc@dc6-dpms.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17592/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@pm-tiling:
    - shard-snb:          [SKIP][45] ([fdo#109271]) -> [INCOMPLETE][46] ([i915#82])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8437/shard-snb5/igt@i915_pm_rpm@pm-tiling.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17592/shard-snb6/igt@i915_pm_rpm@pm-tiling.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][47] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][48] ([i915#1319]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8437/shard-apl1/igt@kms_content_protection@atomic-dpms.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17592/shard-apl6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [FAIL][49] ([fdo#110321]) -> [TIMEOUT][50] ([i915#1319])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8437/shard-apl4/igt@kms_content_protection@srm.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17592/shard-apl6/igt@kms_content_protection@srm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8437 -> Patchwork_17592

  CI-20190529: 20190529
  CI_DRM_8437: f721984e59fc8e56b7811b1c9229e94136742a74 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5635: e83abfca61d407d12eee4d25bb0e8686337a7791 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17592: b823a90e110bdff605705b2046f7c079da6b4c5f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17592/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
