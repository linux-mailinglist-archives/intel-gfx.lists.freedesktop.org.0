Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC97C1E224F
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2020 14:55:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 193AB6E1B9;
	Tue, 26 May 2020 12:55:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BF1616E1B2;
 Tue, 26 May 2020 12:55:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A3BBAA0BC6;
 Tue, 26 May 2020 12:55:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 26 May 2020 12:55:13 -0000
Message-ID: <159049771364.28044.306822847095570493@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200526090753.11329-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200526090753.11329-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Reorder_await=5Fexecuti?=
 =?utf-8?q?on_before_await=5Frequest?=
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

Series: series starting with [1/2] drm/i915: Reorder await_execution before await_request
URL   : https://patchwork.freedesktop.org/series/77653/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8537_full -> Patchwork_17775_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17775_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2] ([i915#1436] / [i915#716])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-glk7/igt@gen9_exec_parse@allowed-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17775/shard-glk6/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#1119] / [i915#118] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-glk9/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17775/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-offscreen:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#54])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-128x42-offscreen.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17775/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-128x42-offscreen.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#1188])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17775/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109441]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17775/shard-iclb4/igt@kms_psr@psr2_suspend.html

  * igt@kms_psr@suspend:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#198])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-skl7/igt@kms_psr@suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17775/shard-skl3/igt@kms_psr@suspend.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#31])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-apl3/igt@kms_setmode@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17775/shard-apl6/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@i915_suspend@forcewake:
    - shard-apl:          [DMESG-WARN][15] ([i915#180]) -> [PASS][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-apl6/igt@i915_suspend@forcewake.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17775/shard-apl1/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-glk:          [FAIL][17] ([i915#1119] / [i915#118] / [i915#95]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17775/shard-glk2/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * {igt@kms_flip@flip-vs-suspend@c-dp1}:
    - shard-kbl:          [DMESG-WARN][19] ([i915#180]) -> [PASS][20] +4 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17775/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * {igt@kms_flip@plain-flip-fb-recreate-interruptible@c-dp1}:
    - shard-kbl:          [FAIL][21] ([i915#1928]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-kbl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-dp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17775/shard-kbl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-dp1.html

  * {igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1}:
    - shard-skl:          [FAIL][23] ([i915#1928]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17775/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][25] ([fdo#108145] / [i915#265]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17775/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][27] ([fdo#109441]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17775/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][29] ([i915#31]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-kbl4/igt@kms_setmode@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17775/shard-kbl7/igt@kms_setmode@basic.html

  * {igt@perf@polling-parameterized}:
    - shard-iclb:         [FAIL][31] ([i915#1542]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-iclb7/igt@perf@polling-parameterized.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17775/shard-iclb2/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][33] ([i915#588]) -> [SKIP][34] ([i915#658])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17775/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][35] ([i915#454]) -> [SKIP][36] ([i915#468])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-tglb5/igt@i915_pm_dc@dc6-psr.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17775/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-glk:          [DMESG-FAIL][37] ([i915#1925]) -> [DMESG-WARN][38] ([i915#1926])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-glk7/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17775/shard-glk7/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1925]: https://gitlab.freedesktop.org/drm/intel/issues/1925
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8537 -> Patchwork_17775

  CI-20190529: 20190529
  CI_DRM_8537: 05a47cd761c49c3fa87648c30df0fd4d64b0b8c5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5678: c1f30ee09ac2e7eb3e8e90245239731a169a6050 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17775: 95d84329d1e9e74b00a4372c6b5b24a4d5a58d0c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17775/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
