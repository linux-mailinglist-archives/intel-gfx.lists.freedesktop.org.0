Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4EF91BA10D
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 12:27:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13BFC6E17B;
	Mon, 27 Apr 2020 10:27:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8591389C19;
 Mon, 27 Apr 2020 10:27:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7D86FA47E6;
 Mon, 27 Apr 2020 10:27:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 27 Apr 2020 10:27:08 -0000
Message-ID: <158798322848.26354.15911257399465386405@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200427084000.10999-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200427084000.10999-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Sanitize_GT_first?=
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

Series: drm/i915/gt: Sanitize GT first
URL   : https://patchwork.freedesktop.org/series/76540/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8370_full -> Patchwork_17472_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17472_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-kbl7/igt@i915_suspend@forcewake.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17472/shard-kbl4/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - shard-apl:          [PASS][3] -> [FAIL][4] ([i915#54] / [i915#95]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17472/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17472/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#72])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17472/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#53] / [i915#93] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-kbl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17472/shard-kbl6/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
    - shard-apl:          [PASS][11] -> [FAIL][12] ([i915#53] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-apl2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17472/shard-apl6/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#69])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17472/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109441]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17472/shard-iclb5/igt@kms_psr@psr2_cursor_plane_move.html

  
#### Possible fixes ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][17] ([fdo#109276]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-iclb7/igt@gem_exec_params@invalid-bsd-ring.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17472/shard-iclb4/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@kms_color@pipe-a-ctm-green-to-red:
    - shard-skl:          [FAIL][19] ([i915#129]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-skl1/igt@kms_color@pipe-a-ctm-green-to-red.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17472/shard-skl2/igt@kms_color@pipe-a-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding:
    - shard-skl:          [FAIL][21] ([i915#54]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17472/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [DMESG-WARN][23] ([i915#180]) -> [PASS][24] +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17472/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [FAIL][25] ([i915#57]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17472/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28] +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17472/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][29] ([fdo#108145] / [i915#265]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17472/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][31] ([fdo#109441]) -> [PASS][32] +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-iclb6/igt@kms_psr@psr2_cursor_render.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17472/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [FAIL][33] ([i915#1542]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-hsw6/igt@perf@blocking-parameterized.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17472/shard-hsw4/igt@perf@blocking-parameterized.html

  * {igt@sysfs_heartbeat_interval@mixed@bcs0}:
    - shard-skl:          [INCOMPLETE][35] ([i915#198]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-skl1/igt@sysfs_heartbeat_interval@mixed@bcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17472/shard-skl6/igt@sysfs_heartbeat_interval@mixed@bcs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][37] ([i915#454]) -> [SKIP][38] ([i915#468])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17472/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [INCOMPLETE][39] ([CI#80]) -> [INCOMPLETE][40] ([CI#80] / [i915#155])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-kbl6/igt@i915_suspend@sysfs-reader.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17472/shard-kbl1/igt@i915_suspend@sysfs-reader.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          [FAIL][41] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][42] ([fdo#108145] / [i915#265])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17472/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][43] ([fdo#109642] / [fdo#111068]) -> [FAIL][44] ([i915#608])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-iclb6/igt@kms_psr2_su@page_flip.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17472/shard-iclb2/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8370 -> Patchwork_17472

  CI-20190529: 20190529
  CI_DRM_8370: 1f3ffd7683d5457e14a1f879a8714a74b7b7faeb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5610: 71fed15724898a8f914666093352a964b70a62fc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17472: 2a85d292b81e2a06b7ce4c7b22cecb6e713beff9 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17472/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
