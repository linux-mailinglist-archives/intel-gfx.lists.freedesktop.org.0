Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E051C9C8C
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 22:39:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5496B6EA62;
	Thu,  7 May 2020 20:39:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 139046EA62;
 Thu,  7 May 2020 20:39:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0D325A47DF;
 Thu,  7 May 2020 20:39:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 07 May 2020 20:39:50 -0000
Message-ID: <158888399002.2189.3381861572480304226@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200507144503.15506-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200507144503.15506-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgU0FH?=
 =?utf-8?q?V_support_for_Gen12+_=28rev36=29?=
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

Series: SAGV support for Gen12+ (rev36)
URL   : https://patchwork.freedesktop.org/series/75129/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8444_full -> Patchwork_17603_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17603_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@kms:
    - shard-glk:          [PASS][1] -> [TIMEOUT][2] ([i915#1383])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-glk2/igt@gem_eio@kms.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17603/shard-glk9/igt@gem_eio@kms.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17603/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@pipe-c-torture-move:
    - shard-iclb:         [PASS][5] -> [DMESG-WARN][6] ([i915#128])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-iclb8/igt@kms_cursor_legacy@pipe-c-torture-move.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17603/shard-iclb5/igt@kms_cursor_legacy@pipe-c-torture-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#49])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17603/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [PASS][9] -> [INCOMPLETE][10] ([i915#69])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17603/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17603/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([fdo#108145] / [i915#265]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17603/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#173])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-iclb2/igt@kms_psr@no_drrs.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17603/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441]) +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17603/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_psr@suspend:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#198])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-skl4/igt@kms_psr@suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17603/shard-skl6/igt@kms_psr@suspend.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][21] -> [FAIL][22] ([i915#31])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-apl7/igt@kms_setmode@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17603/shard-apl4/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][23] ([i915#180]) -> [PASS][24] +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-apl8/igt@gem_workarounds@suspend-resume-context.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17603/shard-apl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][25] ([i915#72]) -> [PASS][26] +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17603/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@pipe-c-torture-bo:
    - shard-hsw:          [DMESG-WARN][27] ([i915#128]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-hsw5/igt@kms_cursor_legacy@pipe-c-torture-bo.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17603/shard-hsw8/igt@kms_cursor_legacy@pipe-c-torture-bo.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled:
    - shard-kbl:          [FAIL][29] ([i915#177] / [i915#52] / [i915#54] / [i915#93] / [i915#95]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-kbl7/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17603/shard-kbl2/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html

  * {igt@kms_flip@flip-vs-rmfb-interruptible@c-vga1}:
    - shard-hsw:          [INCOMPLETE][31] ([i915#61]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-hsw4/igt@kms_flip@flip-vs-rmfb-interruptible@c-vga1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17603/shard-hsw7/igt@kms_flip@flip-vs-rmfb-interruptible@c-vga1.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][33] ([fdo#109441]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-iclb7/igt@kms_psr@psr2_cursor_plane_onoff.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17603/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36] +5 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17603/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][37] ([i915#69]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-skl4/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17603/shard-skl1/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [FAIL][39] ([i915#1542]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-hsw6/igt@perf@blocking-parameterized.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17603/shard-hsw2/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][41] ([i915#658]) -> [SKIP][42] ([i915#588])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17603/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [FAIL][43] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][44] ([i915#1319])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-apl4/igt@kms_content_protection@atomic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17603/shard-apl2/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][45] ([i915#1319]) -> [FAIL][46] ([fdo#110321])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-apl2/igt@kms_content_protection@lic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17603/shard-apl6/igt@kms_content_protection@lic.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][47] ([fdo#109642] / [fdo#111068]) -> [FAIL][48] ([i915#608])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-iclb4/igt@kms_psr2_su@page_flip.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17603/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][49] ([i915#180]) -> [INCOMPLETE][50] ([i915#155] / [i915#794])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17603/shard-kbl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1383]: https://gitlab.freedesktop.org/drm/intel/issues/1383
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8444 -> Patchwork_17603

  CI-20190529: 20190529
  CI_DRM_8444: 39544482386ac801dc4140df00a7e7e5bbea4d8a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5638: 50868ab3c532a86aa147fb555b69a1078c572b13 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17603: 7b0099b8e0d14efdb0b26fe1e7748e0361c00fa0 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17603/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
