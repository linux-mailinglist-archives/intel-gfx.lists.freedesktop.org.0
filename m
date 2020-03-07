Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F7717CB57
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Mar 2020 03:53:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97E7F6E239;
	Sat,  7 Mar 2020 02:53:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 615686E239;
 Sat,  7 Mar 2020 02:53:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 58879A00C7;
 Sat,  7 Mar 2020 02:53:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Sat, 07 Mar 2020 02:53:12 -0000
Message-ID: <158354959233.20975.1417589762911769202@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200306014220.20029-1-manasi.d.navare@intel.com>
In-Reply-To: <20200306014220.20029-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv4=2C1/2=5D_drm/edid=3A_Name_the_detailed_?=
 =?utf-8?q?monitor_range_flags?=
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

Series: series starting with [v4,1/2] drm/edid: Name the detailed monitor range flags
URL   : https://patchwork.freedesktop.org/series/74364/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8074_full -> Patchwork_16855_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16855_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16855_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16855_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb2/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-iclb5/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  
Known issues
------------

  Here are the changes found in Patchwork_16855_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-iclb:         [PASS][3] -> [FAIL][4] ([i915#679])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb2/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-iclb5/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110854])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb2/igt@gem_exec_balancer@smoke.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-iclb5/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +13 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb1/igt@gem_exec_schedule@independent-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-iclb5/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +5 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb8/igt@gem_exec_schedule@wide-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-iclb4/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-kbl6/igt@gem_exec_suspend@basic-s3.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-kbl2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#69]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-skl6/igt@gem_workarounds@suspend-resume-context.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-skl8/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#447])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb7/igt@i915_pm_dc@dc5-dpms.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_selftest@mock@buddy:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#1310] / [i915#1360])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-skl2/igt@i915_selftest@mock@buddy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-skl1/igt@i915_selftest@mock@buddy.html

  * igt@kms_frontbuffer_tracking@fbc-tilingchange:
    - shard-snb:          [PASS][21] -> [SKIP][22] ([fdo#109271])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-snb2/igt@kms_frontbuffer_tracking@fbc-tilingchange.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-snb4/igt@kms_frontbuffer_tracking@fbc-tilingchange.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#49])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145] / [i915#265])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][33] -> [FAIL][34] ([i915#31])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-apl1/igt@kms_setmode@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-apl2/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#112080]) +8 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb1/igt@perf_pmu@busy-check-all-vcs1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-iclb5/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][37] ([fdo#112080]) -> [PASS][38] +9 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb3/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-iclb4/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_exec_schedule@implicit-write-read-bsd:
    - shard-iclb:         [SKIP][39] ([i915#677]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-iclb7/igt@gem_exec_schedule@implicit-write-read-bsd.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [SKIP][41] ([fdo#109276] / [i915#677]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb5/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][43] ([fdo#109276]) -> [PASS][44] +16 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@promotion-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#112146]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb4/igt@gem_exec_schedule@promotion-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-iclb7/igt@gem_exec_schedule@promotion-bsd.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-glk:          [DMESG-WARN][47] ([i915#118] / [i915#95]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-glk5/igt@gem_exec_whisper@basic-queues-priority.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-glk3/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][49] ([i915#644]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-skl:          [INCOMPLETE][51] ([i915#198]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-skl9/igt@i915_pm_dc@dc5-dpms.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-skl5/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-kbl2/igt@i915_suspend@debugfs-reader.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-kbl6/igt@i915_suspend@debugfs-reader.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge:
    - shard-snb:          [SKIP][55] ([fdo#109271]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-snb6/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-snb5/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][57] ([fdo#108145] / [i915#265]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][59] ([fdo#109642] / [fdo#111068]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb3/igt@kms_psr2_su@page_flip.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb1/igt@kms_psr@psr2_suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][63] ([i915#31]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-skl8/igt@kms_setmode@basic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-skl8/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_exec_schedule@pi-userfault-bsd1:
    - shard-iclb:         [SKIP][65] ([fdo#109276]) -> [INCOMPLETE][66] ([i915#1381])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8074/shard-iclb3/igt@gem_exec_schedule@pi-userfault-bsd1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd1.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1310]: https://gitlab.freedesktop.org/drm/intel/issues/1310
  [i915#1360]: https://gitlab.freedesktop.org/drm/intel/issues/1360
  [i915#1381]: https://gitlab.freedesktop.org/drm/intel/issues/1381
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8074 -> Patchwork_16855

  CI-20190529: 20190529
  CI_DRM_8074: 0dd63259839ca847514d9999749219635f311015 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5495: 22df72de8affcec22d9f354bb6148d77f60cc580 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16855: 1a34fea554d6ab46b313d6cef1670a292b72e616 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16855/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
