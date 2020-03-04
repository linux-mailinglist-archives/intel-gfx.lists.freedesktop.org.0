Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DEC0179C79
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 00:31:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 737D46E132;
	Wed,  4 Mar 2020 23:31:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 68B9D6E130;
 Wed,  4 Mar 2020 23:31:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 61157A011B;
 Wed,  4 Mar 2020 23:31:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swathi Dhanavanthri" <swathi.dhanavanthri@intel.com>
Date: Wed, 04 Mar 2020 23:31:24 -0000
Message-ID: <158336468439.429.13224166490771497605@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200304052409.25501-1-swathi.dhanavanthri@intel.com>
In-Reply-To: <20200304052409.25501-1-swathi.dhanavanthri@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Make_wa=5F1606700617_permanent?=
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

Series: drm/i915/tgl: Make wa_1606700617 permanent
URL   : https://patchwork.freedesktop.org/series/74240/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8061_full -> Patchwork_16813_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16813_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +18 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-iclb7/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#110854])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-iclb5/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-read-write-render:
    - shard-snb:          [PASS][5] -> [INCOMPLETE][6] ([i915#82])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-snb2/igt@gem_exec_schedule@implicit-read-write-render.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-snb5/igt@gem_exec_schedule@implicit-read-write-render.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [i915#677]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-iclb5/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +8 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-apl8/igt@gem_workarounds@suspend-resume-context.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-apl6/igt@gem_workarounds@suspend-resume-context.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +5 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#413])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb4/igt@i915_pm_rps@reset.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-iclb5/igt@i915_pm_rps@reset.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#221])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-skl2/igt@kms_flip@flip-vs-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-skl7/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145] / [i915#265])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109642] / [fdo#111068])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-iclb6/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109276]) +28 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [SKIP][29] ([fdo#112080]) -> [PASS][30] +8 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb8/igt@gem_busy@extended-parallel-vcs1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-iclb1/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][31] ([fdo#110841]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [SKIP][33] ([fdo#109276] / [i915#677]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd2.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@implicit-read-write-bsd:
    - shard-iclb:         [SKIP][35] ([i915#677]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-iclb5/igt@gem_exec_schedule@implicit-read-write-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [SKIP][37] ([fdo#112146]) -> [PASS][38] +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-iclb7/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][39] ([i915#644]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-apl3/igt@gem_softpin@noreloc-s3.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-apl8/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][43] -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-skl:          [INCOMPLETE][45] ([i915#151] / [i915#69]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-skl6/igt@i915_pm_rpm@system-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-skl8/igt@i915_pm_rpm@system-suspend.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - shard-glk:          [FAIL][47] ([i915#1119]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-glk2/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-glk4/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled:
    - shard-skl:          [FAIL][49] ([i915#52] / [i915#54]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-skl6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][53] ([fdo#108145]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][55] ([i915#899]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][57] ([fdo#109441]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb5/igt@kms_psr@psr2_suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][59] ([fdo#109276]) -> [PASS][60] +19 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-iclb8/igt@prime_busy@hang-bsd2.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-iclb1/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][61] -> [SKIP][62] ([i915#468])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/shard-tglb8/igt@i915_pm_dc@dc6-psr.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8061 -> Patchwork_16813

  CI-20190529: 20190529
  CI_DRM_8061: e6398b7ae826a02206308a7e164bcf354bbf4993 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5490: f98b33cbd5b57bae52b8e2fae2039e89ac877822 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16813: b199da0f9692646c24ed85bb22ab3ce133b7cc28 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16813/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
