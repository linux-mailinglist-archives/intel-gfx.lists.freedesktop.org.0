Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B4F15AB44
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 15:49:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E251A6EACA;
	Wed, 12 Feb 2020 14:49:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 015D46EACA;
 Wed, 12 Feb 2020 14:49:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EC9DCA7525;
 Wed, 12 Feb 2020 14:49:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Wed, 12 Feb 2020 14:49:25 -0000
Message-ID: <158151896594.24265.483355699719719461@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200211012805.456373-1-jose.souza@intel.com>
In-Reply-To: <20200211012805.456373-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display/tgl=3A_Enable_hotplug_detection_in_TC5_and_TC6?=
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

Series: drm/i915/display/tgl: Enable hotplug detection in TC5 and TC6
URL   : https://patchwork.freedesktop.org/series/73267/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7904_full -> Patchwork_16513_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16513_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([i915#677]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112146]) +6 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-iclb3/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276]) +20 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-hsw:          [PASS][7] -> [FAIL][8] ([i915#694]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-hsw6/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-hsw6/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-kbl7/igt@i915_suspend@fence-restore-untiled.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-kbl7/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-random:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#54])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen:
    - shard-apl:          [PASS][15] -> [FAIL][16] ([i915#54])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:
    - shard-kbl:          [PASS][17] -> [FAIL][18] ([i915#52] / [i915#54])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-kbl1/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-kbl1/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#79]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-glk3/igt@kms_flip@flip-vs-expired-vblank.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-glk5/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#899])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-iclb2/igt@kms_psr@psr2_basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-iclb7/igt@kms_psr@psr2_basic.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#112080]) +5 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-iclb4/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-iclb8/igt@perf_pmu@busy-accuracy-98-vcs1.html

  
#### Possible fixes ####

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [SKIP][29] ([fdo#109276]) -> [PASS][30] +20 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-iclb3/igt@gem_exec_schedule@out-order-bsd2.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-iclb4/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][31] ([fdo#112146]) -> [PASS][32] +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-hsw:          [FAIL][33] ([i915#694]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-hsw6/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-hsw2/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][35] ([i915#644]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-apl1/igt@i915_suspend@sysfs-reader.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-apl2/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-random:
    - shard-skl:          [FAIL][39] ([i915#54]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [INCOMPLETE][41] ([i915#61]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-hsw4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-hsw1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +5 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:
    - shard-tglb:         [SKIP][45] ([i915#668]) -> [PASS][46] +5 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-tglb8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-tglb7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][47] ([fdo#108145]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [FAIL][49] ([i915#899]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][51] ([fdo#109441]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_psr@suspend:
    - shard-skl:          [INCOMPLETE][53] ([i915#198]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-skl3/igt@kms_psr@suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-skl2/igt@kms_psr@suspend.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][55] ([i915#31]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-kbl4/igt@kms_setmode@basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-kbl7/igt@kms_setmode@basic.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][57] ([fdo#112080]) -> [PASS][58] +13 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-iclb6/igt@perf_pmu@init-busy-vcs1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-iclb2/igt@perf_pmu@init-busy-vcs1.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [FAIL][59] ([i915#831]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-hsw4/igt@prime_mmap_coherency@ioctl-errors.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-hsw4/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Warnings ####

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][61] ([i915#818]) -> [INCOMPLETE][62] ([i915#61])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-hsw2/igt@gem_tiled_blits@interruptible.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-hsw5/igt@gem_tiled_blits@interruptible.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][63] ([i915#818]) -> [FAIL][64] ([i915#694])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7904/shard-hsw1/igt@gem_tiled_blits@normal.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/shard-hsw5/igt@gem_tiled_blits@normal.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7904 -> Patchwork_16513

  CI-20190529: 20190529
  CI_DRM_7904: 5de757f49fb13a3c0e42626e7c4b47c2d82b14a1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5433: 6a96c17f3a1b4e1f90b1a0b0ce42a7219875d1a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16513: 81bec0c3bfd641ddef37583c43242ab63e7a573a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16513/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
