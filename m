Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA624179A89
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 21:57:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 214A66EB68;
	Wed,  4 Mar 2020 20:57:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 32AB06E0FF;
 Wed,  4 Mar 2020 20:57:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 29F72A363D;
 Wed,  4 Mar 2020 20:57:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Date: Wed, 04 Mar 2020 20:57:37 -0000
Message-ID: <158335545714.431.9699071389608272071@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200303220503.GA2663@embeddedor>
In-Reply-To: <20200303220503.GA2663@embeddedor>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Replace_zero-length_array_with_flexible-array_member?=
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

Series: drm/i915: Replace zero-length array with flexible-array member
URL   : https://patchwork.freedesktop.org/series/74226/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8061_full -> Patchwork_16810_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_16810_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16810_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16810_full:

### IGT changes ###

#### Warnings ####

  * igt@gem_exec_schedule@pi-userfault-bsd2:
    - shard-iclb:         [SKIP][1] ([fdo#109276]) -> [INCOMPLETE][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb7/igt@gem_exec_schedule@pi-userfault-bsd2.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd2.html

  
Known issues
------------

  Here are the changes found in Patchwork_16810_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +11 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-iclb8/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110854])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-iclb7/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [i915#677]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@pi-ringfull-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb8/igt@gem_exec_schedule@pi-ringfull-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-iclb4/igt@gem_exec_schedule@pi-ringfull-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([i915#677])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb8/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +23 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#644])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-iclb8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-iclb:         [PASS][17] -> [INCOMPLETE][18] ([i915#1185] / [i915#189])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb8/igt@i915_pm_rpm@system-suspend-execbuf.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-iclb2/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#69]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-skl8/igt@i915_suspend@sysfs-reader.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-skl9/igt@i915_suspend@sysfs-reader.html
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-apl1/igt@i915_suspend@sysfs-reader.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-apl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([IGT#5])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#52] / [i915#54])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-skl3/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-skl7/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-kbl6/igt@kms_flip@flip-vs-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-kbl3/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
    - shard-skl:          [PASS][33] -> [DMESG-WARN][34] ([IGT#6])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-skl3/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-skl2/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109642] / [fdo#111068])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-iclb1/igt@kms_psr2_su@page_flip.html

  
#### Possible fixes ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [SKIP][37] ([fdo#112080]) -> [PASS][38] +6 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb8/igt@gem_busy@extended-parallel-vcs1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-iclb4/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][39] ([fdo#109276] / [i915#677]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb7/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-common-bsd1:
    - shard-iclb:         [SKIP][41] ([fdo#109276]) -> [PASS][42] +11 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd1.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb1/igt@gem_exec_schedule@preempt-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-iclb6/igt@gem_exec_schedule@preempt-bsd.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][45] -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-iclb7/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-skl:          [INCOMPLETE][47] ([i915#151] / [i915#69]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-skl6/igt@i915_pm_rpm@system-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-skl1/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [INCOMPLETE][49] ([fdo#103665]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-kbl7/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - shard-glk:          [FAIL][51] ([i915#1119]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-glk2/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-glk4/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled:
    - shard-skl:          [FAIL][53] ([i915#52] / [i915#54]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][59] ([i915#899]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][63] ([i915#31]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-kbl2/igt@kms_setmode@basic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-kbl2/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][65] -> [SKIP][66] ([i915#468])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-tglb3/igt@i915_pm_dc@dc6-dpms.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8061 -> Patchwork_16810

  CI-20190529: 20190529
  CI_DRM_8061: e6398b7ae826a02206308a7e164bcf354bbf4993 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5490: f98b33cbd5b57bae52b8e2fae2039e89ac877822 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16810: a44e534af562650acb1e45585da1f4f0049dce17 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16810/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
