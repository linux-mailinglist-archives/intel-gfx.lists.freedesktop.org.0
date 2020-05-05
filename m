Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B858A1C4ED8
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 09:15:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D5206E110;
	Tue,  5 May 2020 07:15:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 177A76E566;
 Tue,  5 May 2020 07:15:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3F2D1A0078;
 Tue,  5 May 2020 07:15:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Oliver Barta" <o.barta89@gmail.com>
Date: Tue, 05 May 2020 07:15:50 -0000
Message-ID: <158866295022.25912.1671385395135316742@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200504123524.7731-1-oliver.barta@aptiv.com>
In-Reply-To: <20200504123524.7731-1-oliver.barta@aptiv.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_HDCP=3A_retry_link_integrity_check_on_failure?=
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

Series: drm/i915: HDCP: retry link integrity check on failure
URL   : https://patchwork.freedesktop.org/series/76917/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8422_full -> Patchwork_17572_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17572_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#716])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-apl3/igt@gen9_exec_parse@allowed-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17572/shard-apl4/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_suspend@forcewake:
    - shard-iclb:         [PASS][3] -> [INCOMPLETE][4] ([i915#1185])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-iclb5/igt@i915_suspend@forcewake.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17572/shard-iclb3/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#54] / [i915#93] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17572/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-apl2/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17572/shard-apl6/igt@kms_flip_tiling@flip-changes-tiling-y.html
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#699] / [i915#93] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-kbl6/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17572/shard-kbl2/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#49])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17572/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17572/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17572/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17572/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17572/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180] / [i915#93] / [i915#95])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17572/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@bcs0}:
    - shard-kbl:          [DMESG-WARN][23] ([i915#180]) -> [PASS][24] +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17572/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html
    - shard-apl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-apl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17572/shard-apl2/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][27] ([i915#300]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17572/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * {igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][29] ([i915#34]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17572/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][31] ([fdo#108145] / [i915#265]) -> [PASS][32] +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17572/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][33] ([fdo#109642] / [fdo#111068]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-iclb4/igt@kms_psr2_su@frontbuffer.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17572/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][35] ([fdo#109441]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17572/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][37] ([i915#468]) -> [FAIL][38] ([i915#454])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17572/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][39] ([fdo#109642] / [fdo#111068]) -> [FAIL][40] ([i915#608])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8422/shard-iclb4/igt@kms_psr2_su@page_flip.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17572/shard-iclb2/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8422 -> Patchwork_17572

  CI-20190529: 20190529
  CI_DRM_8422: 0ca0fee447b032331962bc5c717786bdb3594bd9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5628: 652a3fd8966345fa5498904ce80a2027a6782783 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17572: a62240c79605a8b651272b2eb4b9d879f81f0504 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17572/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
