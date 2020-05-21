Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 269221DD903
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 23:01:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF5266E266;
	Thu, 21 May 2020 21:01:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 41F536E266;
 Thu, 21 May 2020 21:01:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3BB0DA0138;
 Thu, 21 May 2020 21:01:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 21 May 2020 21:01:18 -0000
Message-ID: <159009487821.4443.3352685356423707179@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200519131117.17190-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200519131117.17190-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgQ29u?=
 =?utf-8?q?sider_DBuf_bandwidth_when_calculating_CDCLK_=28rev18=29?=
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

Series: Consider DBuf bandwidth when calculating CDCLK (rev18)
URL   : https://patchwork.freedesktop.org/series/74739/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8511_full -> Patchwork_17733_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17733_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a2}:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-glk9/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a2.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/shard-glk7/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a2.html

  
Known issues
------------

  Here are the changes found in Patchwork_17733_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-hostile@bcs0:
    - shard-iclb:         [PASS][3] -> [FAIL][4] ([i915#1622])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-iclb3/igt@gem_ctx_persistence@engines-hostile@bcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/shard-iclb2/igt@gem_ctx_persistence@engines-hostile@bcs0.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-apl7/igt@gem_softpin@noreloc-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/shard-apl4/igt@gem_softpin@noreloc-s3.html
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-kbl7/igt@gem_softpin@noreloc-s3.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/shard-kbl2/igt@gem_softpin@noreloc-s3.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][9] -> [INCOMPLETE][10] ([i915#155])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#1874])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-skl2/igt@i915_selftest@live@execlists.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/shard-skl5/igt@i915_selftest@live@execlists.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#1119] / [i915#118] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-glk6/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-rapid-movement:
    - shard-snb:          [PASS][15] -> [SKIP][16] ([fdo#109271]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-snb4/igt@kms_cursor_crc@pipe-a-cursor-128x128-rapid-movement.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/shard-snb1/igt@kms_cursor_crc@pipe-a-cursor-128x128-rapid-movement.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-glk:          [PASS][17] -> [DMESG-FAIL][18] ([i915#1186])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-glk1/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/shard-glk1/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#49]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#69])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/shard-iclb8/igt@kms_psr@psr2_no_drrs.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-hostile@rcs0:
    - shard-iclb:         [FAIL][27] ([i915#1622]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-iclb3/igt@gem_ctx_persistence@engines-hostile@rcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/shard-iclb2/igt@gem_ctx_persistence@engines-hostile@rcs0.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-skl:          [FAIL][29] ([i915#1528]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-skl3/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/shard-skl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * {igt@gem_exec_schedule@pi-distinct-iova@bcs0}:
    - shard-glk:          [FAIL][31] ([i915#859]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-glk6/igt@gem_exec_schedule@pi-distinct-iova@bcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/shard-glk8/igt@gem_exec_schedule@pi-distinct-iova@bcs0.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][33] ([i915#1436] / [i915#716]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-apl2/igt@gen9_exec_parse@allowed-all.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/shard-apl7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][35] ([i915#454]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/shard-iclb5/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-kbl3/igt@i915_suspend@fence-restore-untiled.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html

  * {igt@kms_flip@flip-vs-expired-vblank@a-edp1}:
    - shard-skl:          [FAIL][39] ([i915#79]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +5 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][43] ([fdo#108145] / [i915#265]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][45] ([fdo#109441]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][47] ([i915#31]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-apl2/igt@kms_setmode@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/shard-apl1/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic:
    - shard-apl:          [FAIL][49] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][50] ([i915#1319])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-apl2/igt@kms_content_protection@atomic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/shard-apl1/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [DMESG-FAIL][51] ([fdo#110321]) -> [FAIL][52] ([fdo#110321])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-apl8/igt@kms_content_protection@lic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/shard-apl3/igt@kms_content_protection@lic.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][53] -> [SKIP][54] ([fdo#109642] / [fdo#111068])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/shard-iclb3/igt@kms_psr2_su@frontbuffer.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1186]: https://gitlab.freedesktop.org/drm/intel/issues/1186
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1622]: https://gitlab.freedesktop.org/drm/intel/issues/1622
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1874]: https://gitlab.freedesktop.org/drm/intel/issues/1874
  [i915#1883]: https://gitlab.freedesktop.org/drm/intel/issues/1883
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#859]: https://gitlab.freedesktop.org/drm/intel/issues/859
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8511 -> Patchwork_17733

  CI-20190529: 20190529
  CI_DRM_8511: 504ee538bd65abff745914a6f0b7aad62bbc1d11 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5664: 404e2fa06b9c5986dec3fa210234fe8b034b157e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17733: 727bc2568e96653db48fa5821212abe6fb01b7a8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
