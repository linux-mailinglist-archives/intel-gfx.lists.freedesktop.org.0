Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE3C1C2882
	for <lists+intel-gfx@lfdr.de>; Sun,  3 May 2020 00:15:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03B0A6E0F4;
	Sat,  2 May 2020 22:15:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B6DA06E0D9;
 Sat,  2 May 2020 22:15:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A673FA47DB;
 Sat,  2 May 2020 22:15:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 02 May 2020 22:15:23 -0000
Message-ID: <158845772365.4998.4090263256381374549@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200502173512.32353-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200502173512.32353-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Sanitize_RPS_interrupts_upon_resume?=
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

Series: drm/i915/gt: Sanitize RPS interrupts upon resume
URL   : https://patchwork.freedesktop.org/series/76863/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8411_full -> Patchwork_17554_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17554_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [PASS][1] -> [FAIL][2] ([i915#1528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-skl3/igt@gem_ctx_persistence@processes.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17554/shard-skl10/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-kbl:          [PASS][3] -> [FAIL][4] ([i915#1479] / [i915#1772])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-kbl6/igt@gem_exec_whisper@basic-queues-forked.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17554/shard-kbl1/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#1531])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-tglb2/igt@i915_selftest@live@requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17554/shard-tglb5/igt@i915_selftest@live@requests.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-apl1/igt@i915_suspend@sysfs-reader.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17554/shard-apl1/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#54])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17554/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17554/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@all-pipes-torture-move:
    - shard-glk:          [PASS][13] -> [DMESG-WARN][14] ([i915#128])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-glk5/igt@kms_cursor_legacy@all-pipes-torture-move.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17554/shard-glk8/igt@kms_cursor_legacy@all-pipes-torture-move.html

  * igt@kms_cursor_legacy@pipe-c-torture-move:
    - shard-tglb:         [PASS][15] -> [DMESG-WARN][16] ([i915#128])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-tglb1/igt@kms_cursor_legacy@pipe-c-torture-move.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17554/shard-tglb8/igt@kms_cursor_legacy@pipe-c-torture-move.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109349])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17554/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#1188])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17554/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145] / [i915#265])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17554/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17554/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_vblank@pipe-a-accuracy-idle:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#43])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-glk7/igt@kms_vblank@pipe-a-accuracy-idle.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17554/shard-glk4/igt@kms_vblank@pipe-a-accuracy-idle.html

  
#### Possible fixes ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][27] ([i915#716]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-apl7/igt@gen9_exec_parse@allowed-all.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17554/shard-apl7/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30] +8 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17554/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][31] ([i915#180] / [i915#95]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-apl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17554/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b-frame-sequence:
    - shard-skl:          [FAIL][33] ([i915#53]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-skl1/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b-frame-sequence.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17554/shard-skl6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36] +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17554/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][37] ([fdo#108145] / [i915#265]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17554/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [SKIP][39] ([fdo#109441]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17554/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][41] ([i915#31]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-apl8/igt@kms_setmode@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17554/shard-apl3/igt@kms_setmode@basic.html
    - shard-skl:          [FAIL][43] ([i915#31]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-skl8/igt@kms_setmode@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17554/shard-skl7/igt@kms_setmode@basic.html

  * {igt@perf@polling-parameterized}:
    - shard-hsw:          [FAIL][45] ([i915#1542]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-hsw6/igt@perf@polling-parameterized.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17554/shard-hsw4/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][47] ([i915#658]) -> [SKIP][48] ([i915#588])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17554/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          [FAIL][49] ([fdo#108145] / [i915#265]) -> [FAIL][50] ([fdo#108145] / [i915#265] / [i915#95])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17554/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [FAIL][51] ([i915#608]) -> [SKIP][52] ([fdo#109642] / [fdo#111068])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8411/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17554/shard-iclb7/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1479]: https://gitlab.freedesktop.org/drm/intel/issues/1479
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1772]: https://gitlab.freedesktop.org/drm/intel/issues/1772
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#43]: https://gitlab.freedesktop.org/drm/intel/issues/43
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8411 -> Patchwork_17554

  CI-20190529: 20190529
  CI_DRM_8411: b0821be4cf1a8ede85f8b93d4d28e0332f6fb334 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5626: f27fdfff026276ac75c69e487c929a843f66f6ca @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17554: 66ad78adb0616602454d2d7c20430675a54f36bc @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17554/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
