Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA77D1A2ABF
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 23:01:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3119589581;
	Wed,  8 Apr 2020 21:01:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C5327890FF;
 Wed,  8 Apr 2020 21:01:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BADF5A00E7;
 Wed,  8 Apr 2020 21:01:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 08 Apr 2020 21:01:41 -0000
Message-ID: <158637970173.19347.5367482007981415423@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200408092916.5355-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200408092916.5355-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Mark_up_racy_check_of_breadcrumb_irq_enabled?=
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

Series: drm/i915/gt: Mark up racy check of breadcrumb irq enabled
URL   : https://patchwork.freedesktop.org/series/75663/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8274_full -> Patchwork_17250_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17250_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17250_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17250_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_whisper@basic-queues:
    - shard-iclb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/shard-iclb7/igt@gem_exec_whisper@basic-queues.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/shard-iclb5/igt@gem_exec_whisper@basic-queues.html

  
Known issues
------------

  Here are the changes found in Patchwork_17250_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/shard-kbl4/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/shard-kbl1/igt@gem_exec_suspend@basic-s3.html
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#69])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/shard-skl3/igt@gem_exec_suspend@basic-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/shard-skl3/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#177] / [i915#52] / [i915#54])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#34])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#1188])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#648] / [i915#69])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/shard-iclb8/igt@kms_psr@psr2_cursor_render.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [INCOMPLETE][19] ([i915#151] / [i915#69]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/shard-skl1/igt@i915_pm_rpm@system-suspend-modeset.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/shard-skl9/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [INCOMPLETE][21] ([i915#1531] / [i915#1658]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/shard-tglb1/igt@i915_selftest@live@requests.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/shard-tglb6/igt@i915_selftest@live@requests.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [DMESG-WARN][23] ([i915#180]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/shard-kbl1/igt@i915_suspend@sysfs-reader.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/shard-kbl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-skl:          [FAIL][25] ([i915#54]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [DMESG-WARN][27] ([i915#180] / [i915#95]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][29] ([fdo#109349]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][31] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-tglb:         [SKIP][33] ([i915#668]) -> [PASS][34] +4 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:
    - shard-skl:          [FAIL][35] ([i915#49]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38] +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][39] ([fdo#108145] / [i915#265]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][41] ([fdo#109441]) -> [PASS][42] +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/shard-iclb4/igt@kms_psr@psr2_basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/shard-iclb2/igt@kms_psr@psr2_basic.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][43] ([i915#1542]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/shard-iclb7/igt@perf@blocking-parameterized.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/shard-iclb4/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][45] ([i915#658]) -> [SKIP][46] ([i915#588])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][47] ([i915#468]) -> [FAIL][48] ([i915#454])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/shard-tglb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][49] ([i915#1515]) -> [FAIL][50] ([i915#1515])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [FAIL][51] ([i915#95]) -> [DMESG-FAIL][52] ([i915#180] / [i915#95])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html
    - shard-kbl:          [DMESG-FAIL][53] ([i915#180] / [i915#95]) -> [FAIL][54] ([i915#93] / [i915#95])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1658]: https://gitlab.freedesktop.org/drm/intel/issues/1658
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
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8274 -> Patchwork_17250

  CI-20190529: 20190529
  CI_DRM_8274: 860acd37e552def563b63ac3f77ad002b58fada0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5580: fb488389a7a263b649361ec9c29e8b3b69851122 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17250: 3fc532718c8a0bba71f95c542817b955487663d2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
