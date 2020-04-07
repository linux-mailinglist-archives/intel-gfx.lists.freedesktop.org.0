Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 020D71A076E
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 08:39:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B5746E517;
	Tue,  7 Apr 2020 06:39:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 460186E516;
 Tue,  7 Apr 2020 06:39:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0B0A3A00CC;
 Tue,  7 Apr 2020 06:39:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 07 Apr 2020 06:39:31 -0000
Message-ID: <158624157101.26325.9065677793867003591@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200406163931.6979-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200406163931.6979-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Apply_more_mb=28=29_around_clflush_relocation_path?=
 =?utf-8?q?s?=
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

Series: drm/i915/gem: Apply more mb() around clflush relocation paths
URL   : https://patchwork.freedesktop.org/series/75558/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8264_full -> Patchwork_17223_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17223_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17223_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17223_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-tglb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-tglb5/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/shard-tglb3/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_17223_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-apl3/igt@gem_workarounds@suspend-resume-context.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/shard-apl8/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#54] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#52] / [i915#54])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-glk7/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][9] -> [INCOMPLETE][10] ([i915#146] / [i915#221])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-skl6/igt@kms_flip@flip-vs-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/shard-skl5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#1188])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([fdo#108145] / [i915#265]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-c-tiling-x:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#78])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-kbl1/igt@kms_plane_lowres@pipe-c-tiling-x.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/shard-kbl2/igt@kms_plane_lowres@pipe-c-tiling-x.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@rcs0}:
    - shard-apl:          [DMESG-WARN][19] ([i915#180]) -> [PASS][20] +4 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-apl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/shard-apl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [FAIL][21] ([i915#1277]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-tglb6/igt@gem_exec_balancer@hang.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/shard-tglb7/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][23] ([fdo#109276]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-iclb7/igt@gem_exec_params@invalid-bsd-ring.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/shard-iclb1/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - shard-skl:          [FAIL][25] ([i915#138]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-skl5/igt@i915_pm_rpm@basic-pci-d3-state.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/shard-skl1/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@blt:
    - shard-snb:          [DMESG-FAIL][27] ([i915#1409]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-snb4/igt@i915_selftest@live@blt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/shard-snb4/igt@i915_selftest@live@blt.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-kbl2/igt@i915_suspend@debugfs-reader.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/shard-kbl1/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-skl:          [INCOMPLETE][31] ([i915#69]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-skl3/igt@i915_suspend@fence-restore-tiled2untiled.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/shard-skl10/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
    - shard-glk:          [FAIL][33] ([i915#177] / [i915#52] / [i915#54]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][35] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-glk:          [FAIL][37] ([i915#34]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-apl:          [FAIL][39] ([i915#79]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-apl4/igt@kms_flip@flip-vs-expired-vblank.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/shard-apl3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][41] ([i915#1188]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-skl3/igt@kms_hdr@bpc-switch.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/shard-skl10/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-snb:          [DMESG-WARN][43] ([i915#42]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-snb6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/shard-snb1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_lowres@pipe-a-tiling-none:
    - shard-kbl:          [DMESG-WARN][45] ([i915#165] / [i915#78]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-kbl2/igt@kms_plane_lowres@pipe-a-tiling-none.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/shard-kbl1/igt@kms_plane_lowres@pipe-a-tiling-none.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][47] ([fdo#109441]) -> [PASS][48] +5 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][49] ([i915#31]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-apl7/igt@kms_setmode@basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/shard-apl1/igt@kms_setmode@basic.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][51] ([i915#1542]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-iclb8/igt@perf@blocking-parameterized.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/shard-iclb2/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-snb:          [SKIP][53] ([fdo#109271]) -> [INCOMPLETE][54] ([i915#82]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-snb7/igt@i915_pm_dc@dc6-dpms.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/shard-snb5/igt@i915_pm_dc@dc6-dpms.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#138]: https://gitlab.freedesktop.org/drm/intel/issues/138
  [i915#1409]: https://gitlab.freedesktop.org/drm/intel/issues/1409
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8264 -> Patchwork_17223

  CI-20190529: 20190529
  CI_DRM_8264: e0104585f880a64d4a9b40803cf4fb51ab499f7c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5573: 9c582425d6b4fc1de9fc2ffc8015cc6f0a0d3e98 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17223: 0e6160631516555fbf01aed3e3d15925c16ed3f0 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17223/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
