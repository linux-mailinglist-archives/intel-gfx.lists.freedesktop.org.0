Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E911B94FF
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 03:50:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C3D96E046;
	Mon, 27 Apr 2020 01:50:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 79AD06E041;
 Mon, 27 Apr 2020 01:50:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 64C67A00FD;
 Mon, 27 Apr 2020 01:50:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 27 Apr 2020 01:50:49 -0000
Message-ID: <158795224938.30986.6057767012762237827@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200426222918.14892-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200426222918.14892-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Fix_up_clock_frequency?=
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

Series: drm/i915/gt: Fix up clock frequency
URL   : https://patchwork.freedesktop.org/series/76512/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8370_full -> Patchwork_17470_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17470_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180] / [i915#93] / [i915#95])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17470/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
    - shard-tglb:         [PASS][3] -> [SKIP][4] ([i915#668]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17470/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#53] / [i915#93] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-kbl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17470/shard-kbl2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
    - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#53] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-apl2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17470/shard-apl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-skl:          [PASS][9] -> [INCOMPLETE][10] ([i915#69])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-skl5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17470/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17470/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17470/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@perf@short-reads:
    - shard-apl:          [PASS][15] -> [FAIL][16] ([i915#51])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-apl6/igt@perf@short-reads.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17470/shard-apl6/igt@perf@short-reads.html

  
#### Possible fixes ####

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][17] ([i915#180]) -> [PASS][18] +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17470/shard-apl4/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding:
    - shard-skl:          [FAIL][19] ([i915#54]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17470/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][21] ([i915#1188]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-skl2/igt@kms_hdr@bpc-switch.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17470/shard-skl8/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][23] ([i915#180]) -> [PASS][24] +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17470/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][25] ([fdo#108145] / [i915#265]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17470/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][27] ([fdo#109441]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17470/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * {igt@sysfs_heartbeat_interval@mixed@bcs0}:
    - shard-skl:          [INCOMPLETE][29] ([i915#198]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-skl1/igt@sysfs_heartbeat_interval@mixed@bcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17470/shard-skl10/igt@sysfs_heartbeat_interval@mixed@bcs0.html

  
#### Warnings ####

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-snb:          [SKIP][31] ([fdo#109271]) -> [INCOMPLETE][32] ([i915#82])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-snb6/igt@i915_pm_rpm@system-suspend-modeset.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17470/shard-snb4/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [INCOMPLETE][33] ([CI#80]) -> [DMESG-WARN][34] ([i915#180])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-kbl6/igt@i915_suspend@sysfs-reader.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17470/shard-kbl7/igt@i915_suspend@sysfs-reader.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          [FAIL][35] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][36] ([fdo#108145] / [i915#265])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17470/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8370 -> Patchwork_17470

  CI-20190529: 20190529
  CI_DRM_8370: 1f3ffd7683d5457e14a1f879a8714a74b7b7faeb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5610: 71fed15724898a8f914666093352a964b70a62fc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17470: ee56ef2b675c5ca55694a0acdd4b5069c2a1ac0a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17470/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
