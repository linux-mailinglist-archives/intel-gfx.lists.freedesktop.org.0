Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A63CC1C3BB4
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 15:49:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C0C76E400;
	Mon,  4 May 2020 13:49:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3D0126E3FE;
 Mon,  4 May 2020 13:49:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 36C58A00FD;
 Mon,  4 May 2020 13:49:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 04 May 2020 13:49:27 -0000
Message-ID: <158860016719.5815.11630005089699798323@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200504044903.7626-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200504044903.7626-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/22=5D_drm/i915=3A_Allow_some_leniency_i?=
 =?utf-8?q?n_PCU_reads?=
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

Series: series starting with [01/22] drm/i915: Allow some leniency in PCU reads
URL   : https://patchwork.freedesktop.org/series/76885/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8415_full -> Patchwork_17561_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_8415_full and Patchwork_17561_full:

### New IGT tests (2) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 8 pass(s)
    - Exec time: [0.03, 0.11] s

  * igt@i915_selftest@live@gem_execbuf:
    - Statuses : 8 pass(s)
    - Exec time: [0.44, 2.51] s

  

Known issues
------------

  Here are the changes found in Patchwork_17561_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-kbl6/igt@i915_suspend@forcewake.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-kbl6/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge:
    - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#70] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-apl3/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-apl4/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#72])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@pipe-b-forked-bo:
    - shard-hsw:          [PASS][9] -> [INCOMPLETE][10] ([i915#61])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-hsw6/igt@kms_cursor_legacy@pipe-b-forked-bo.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-hsw7/igt@kms_cursor_legacy@pipe-b-forked-bo.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109349])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#177] / [i915#52] / [i915#54])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-apl:          [PASS][15] -> [FAIL][16] ([i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-apl7/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-apl8/igt@kms_flip_tiling@flip-changes-tiling-y.html
    - shard-kbl:          [PASS][17] -> [FAIL][18] ([i915#699] / [i915#93] / [i915#95])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-kbl2/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-kbl3/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#49])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#1188])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#69])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145] / [i915#265]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#899])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@basic-await@rcs0:
    - shard-skl:          [FAIL][31] ([i915#1472]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-skl9/igt@gem_exec_fence@basic-await@rcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-skl5/igt@gem_exec_fence@basic-await@rcs0.html

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][33] ([fdo#109276]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-iclb8/igt@gem_exec_params@invalid-bsd-ring.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-iclb4/igt@gem_exec_params@invalid-bsd-ring.html

  * {igt@gem_exec_schedule@pi-distinct-iova@vecs0}:
    - shard-glk:          [FAIL][35] ([i915#859]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-glk5/igt@gem_exec_schedule@pi-distinct-iova@vecs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-glk9/igt@gem_exec_schedule@pi-distinct-iova@vecs0.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][37] ([i915#716]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-skl5/igt@gen9_exec_parse@allowed-single.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-skl3/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-kbl:          [FAIL][39] ([i915#54] / [i915#93] / [i915#95]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [INCOMPLETE][41] ([i915#300]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * {igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][43] ([i915#79]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html

  * {igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1}:
    - shard-skl:          [FAIL][45] ([i915#34]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +4 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html
    - shard-apl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-apl1/igt@kms_hdr@bpc-switch-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-apl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][51] ([i915#173]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-iclb1/igt@kms_psr@no_drrs.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-iclb6/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][53] ([fdo#109441]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * {igt@sysfs_heartbeat_interval@mixed@rcs0}:
    - shard-skl:          [FAIL][57] ([i915#1731]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-skl9/igt@sysfs_heartbeat_interval@mixed@rcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/shard-skl5/igt@sysfs_heartbeat_interval@mixed@rcs0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1472]: https://gitlab.freedesktop.org/drm/intel/issues/1472
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#859]: https://gitlab.freedesktop.org/drm/intel/issues/859
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8415 -> Patchwork_17561

  CI-20190529: 20190529
  CI_DRM_8415: a20d5d8cc2cec9962cf4241fd8ac4b0c4bb4d9d8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5628: 652a3fd8966345fa5498904ce80a2027a6782783 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17561: bf21c39c1bef1cfa475a3a5703201b09b26cb6fd @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17561/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
