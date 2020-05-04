Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADE51C4891
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 22:51:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33E5989105;
	Mon,  4 May 2020 20:51:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 054BA89105;
 Mon,  4 May 2020 20:51:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F28CFA00FD;
 Mon,  4 May 2020 20:51:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Mon, 04 May 2020 20:51:50 -0000
Message-ID: <158862551095.5815.10547827179463418079@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200504111249.1367096-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200504111249.1367096-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/perf=3A_Add_support_for_multi_context_perf_queries_=28rev?=
 =?utf-8?q?6=29?=
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

Series: drm/i915/perf: Add support for multi context perf queries (rev6)
URL   : https://patchwork.freedesktop.org/series/76588/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8417_full -> Patchwork_17566_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17566_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#716])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-apl2/igt@gen9_exec_parse@allowed-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-apl1/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge:
    - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#70] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-apl1/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-apl4/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-apl6/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-apl7/igt@kms_flip_tiling@flip-changes-tiling-y.html
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#699] / [i915#93] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-kbl6/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-kbl1/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +4 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-kbl:          [PASS][13] -> [FAIL][14] ([fdo#108145] / [i915#265] / [i915#93] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([fdo#108145] / [i915#265])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#899])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180] / [i915#93] / [i915#95])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [PASS][23] -> [INCOMPLETE][24] ([i915#155] / [i915#794])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-kbl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@rcs0}:
    - shard-kbl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_exec_fence@basic-await@vecs0:
    - shard-skl:          [FAIL][27] ([i915#1472]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-skl3/igt@gem_exec_fence@basic-await@vecs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-skl5/igt@gem_exec_fence@basic-await@vecs0.html

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][29] ([fdo#109276]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-iclb8/igt@gem_exec_params@invalid-bsd-ring.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-iclb2/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [INCOMPLETE][31] -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-tglb8/igt@gem_exec_suspend@basic-s0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-tglb8/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_cursor_legacy@all-pipes-torture-move:
    - shard-iclb:         [DMESG-WARN][33] ([i915#128]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-iclb4/igt@kms_cursor_legacy@all-pipes-torture-move.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-iclb8/igt@kms_cursor_legacy@all-pipes-torture-move.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled:
    - shard-skl:          [FAIL][35] ([i915#177] / [i915#52] / [i915#54]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-skl9/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-skl6/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html

  * {igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1}:
    - shard-skl:          [FAIL][37] ([i915#34]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-skl:          [FAIL][39] ([i915#49]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][41] ([i915#1188]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][45] ([fdo#108145] / [i915#265]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][47] ([fdo#109441]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * {igt@sysfs_heartbeat_interval@mixed@vecs0}:
    - shard-skl:          [FAIL][49] ([i915#1731]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-skl3/igt@sysfs_heartbeat_interval@mixed@vecs0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-skl5/igt@sysfs_heartbeat_interval@mixed@vecs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][51] ([i915#588]) -> [SKIP][52] ([i915#658])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][53] ([i915#454]) -> [SKIP][54] ([i915#468])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@pm-tiling:
    - shard-snb:          [INCOMPLETE][55] ([i915#82]) -> [SKIP][56] ([fdo#109271])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-snb1/igt@i915_pm_rpm@pm-tiling.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-snb2/igt@i915_pm_rpm@pm-tiling.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [FAIL][57] ([i915#93] / [i915#95]) -> [DMESG-FAIL][58] ([i915#180] / [i915#95])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [FAIL][59] ([i915#608]) -> [SKIP][60] ([fdo#109642] / [fdo#111068])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8417/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/shard-iclb6/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1472]: https://gitlab.freedesktop.org/drm/intel/issues/1472
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8417 -> Patchwork_17566

  CI-20190529: 20190529
  CI_DRM_8417: 7f9142d29c789842bd79245dd6623df9f15ba746 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5628: 652a3fd8966345fa5498904ce80a2027a6782783 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17566: 694113f0aaaa85b7b98a9f6f452ae5091c03c658 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17566/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
