Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3651956AA
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 12:58:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 473866EA0B;
	Fri, 27 Mar 2020 11:58:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7AE216E072;
 Fri, 27 Mar 2020 11:58:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 73BB4A432F;
 Fri, 27 Mar 2020 11:58:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Fri, 27 Mar 2020 11:58:35 -0000
Message-ID: <158531031544.17237.3820735129557901026@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200326181005.11775-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200326181005.11775-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgU0FH?=
 =?utf-8?q?V_support_for_Gen12+_=28rev3=29?=
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

Series: SAGV support for Gen12+ (rev3)
URL   : https://patchwork.freedesktop.org/series/75129/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8195_full -> Patchwork_17103_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_8195_full and Patchwork_17103_full:

### New IGT tests (1) ###

  * igt@gem_ctx_isolation@dirty-switch:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_17103_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_schedule@pi-ringfull-bsd2:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276]) +7 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb2/igt@gem_exec_schedule@pi-ringfull-bsd2.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-iclb3/igt@gem_exec_schedule@pi-ringfull-bsd2.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#677])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-snb:          [PASS][7] -> [TIMEOUT][8] ([i915#1526])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-snb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-snb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-kbl2/igt@i915_suspend@fence-restore-untiled.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-kbl7/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#54] / [i915#93] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-untiled:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#52] / [i915#54])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-glk2/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-glk3/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#52] / [i915#54])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-skl9/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180] / [i915#95])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#79])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#173])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb4/igt@kms_psr@no_drrs.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][27] -> [FAIL][28] ([i915#31])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-apl3/igt@kms_setmode@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-apl1/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#112080]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-iclb5/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@processes:
    - shard-tglb:         [FAIL][31] -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-tglb2/igt@gem_ctx_persistence@processes.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-tglb8/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_schedule@implicit-write-read-bsd:
    - shard-iclb:         [SKIP][33] ([i915#677]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb1/igt@gem_exec_schedule@implicit-write-read-bsd.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-iclb5/igt@gem_exec_schedule@implicit-write-read-bsd.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [SKIP][35] ([fdo#109276] / [i915#677]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb6/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-iclb2/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [SKIP][37] ([fdo#112146]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_selftest@live@hangcheck:
    - shard-iclb:         [DMESG-FAIL][41] ([i915#419]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb6/igt@i915_selftest@live@hangcheck.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-iclb6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-apl6/igt@i915_suspend@sysfs-reader.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-apl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [FAIL][45] ([i915#34]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl1/igt@kms_flip@plain-flip-fb-recreate.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-skl9/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][49] ([i915#648] / [i915#69]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][51] ([fdo#108145]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][53] ([fdo#109441]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-b-accuracy-idle:
    - shard-snb:          [SKIP][55] ([fdo#109271]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-snb1/igt@kms_vblank@pipe-b-accuracy-idle.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-snb2/igt@kms_vblank@pipe-b-accuracy-idle.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [SKIP][57] ([fdo#112080]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb5/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-iclb4/igt@perf_pmu@busy-accuracy-98-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][59] ([fdo#109276]) -> [PASS][60] +7 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb6/igt@prime_busy@hang-bsd2.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][61] ([i915#454]) -> [SKIP][62] ([i915#468])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-snb:          [SKIP][63] ([fdo#109271]) -> [INCOMPLETE][64] ([i915#82]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-snb1/igt@i915_pm_rpm@system-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-snb6/igt@i915_pm_rpm@system-suspend.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][65] ([fdo#109642] / [fdo#111068]) -> [FAIL][66] ([i915#608])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb1/igt@kms_psr2_su@page_flip.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/shard-iclb2/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1526]: https://gitlab.freedesktop.org/drm/intel/issues/1526
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#419]: https://gitlab.freedesktop.org/drm/intel/issues/419
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (9 -> 10)
------------------------------

  Additional (1): pig-skl-6260u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8195 -> Patchwork_17103

  CI-20190529: 20190529
  CI_DRM_8195: bcb3db890b651ee74ca510bbc4dacebdaa65d311 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5539: e7aae12e37771a8b7796ba252574eb832a5839c3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17103: 17b1ab4ef65f19f4159f1dcf8939b989d1cf83b9 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
