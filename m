Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BF819B50B
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 20:04:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E6AE6E970;
	Wed,  1 Apr 2020 18:04:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AC3A46E96E;
 Wed,  1 Apr 2020 18:04:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A5DC8A011B;
 Wed,  1 Apr 2020 18:04:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Date: Wed, 01 Apr 2020 18:04:09 -0000
Message-ID: <158576424964.25625.3946549150950968406@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200331231432.2850-1-ashutosh.dixit@intel.com>
In-Reply-To: <20200331231432.2850-1-ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/perf=3A_Do_not_clear_pollin_for_small_user_read_buffers_?=
 =?utf-8?b?KHJldjYp?=
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

Series: drm/i915/perf: Do not clear pollin for small user read buffers (rev6)
URL   : https://patchwork.freedesktop.org/series/75085/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8230_full -> Patchwork_17166_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_8230_full and Patchwork_17166_full:

### New IGT tests (1) ###

  * igt@gem_exec_capture@capture:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_17166_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [i915#677])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-iclb5/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276]) +7 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb4/igt@gem_exec_schedule@out-order-bsd2.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-iclb3/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +6 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-kbl6/igt@gem_exec_suspend@basic-s3.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-kbl6/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][11] -> [FAIL][12] ([i915#454])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-random:
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#54] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#300])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([IGT#5] / [i915#697])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#34])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][27] -> [FAIL][28] ([i915#31])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-apl2/igt@kms_setmode@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-apl1/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-accuracy-2-vcs1:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#112080]) +7 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb2/igt@perf_pmu@busy-accuracy-2-vcs1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-iclb7/igt@perf_pmu@busy-accuracy-2-vcs1.html

  
#### Possible fixes ####

  * igt@gem_exec_schedule@implicit-read-write-bsd:
    - shard-iclb:         [SKIP][31] ([i915#677]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-iclb7/igt@gem_exec_schedule@implicit-read-write-bsd.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][33] ([fdo#109276] / [i915#677]) -> [PASS][34] +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][35] ([fdo#112146]) -> [PASS][36] +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-apl:          [FAIL][37] -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-apl1/igt@i915_pm_rc6_residency@rc6-idle.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-apl6/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-kbl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-kbl3/igt@i915_suspend@fence-restore-tiled2untiled.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-kbl1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][41] ([i915#79]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-glk9/igt@kms_flip@flip-vs-expired-vblank.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-glk3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-glk:          [FAIL][43] -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-glk4/igt@kms_flip@plain-flip-fb-recreate.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-glk9/igt@kms_flip@plain-flip-fb-recreate.html
    - shard-skl:          [FAIL][45] ([i915#34]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-skl7/igt@kms_flip@plain-flip-fb-recreate.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-skl7/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-kbl:          [FAIL][47] ([i915#699] / [i915#93] / [i915#95]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-kbl2/igt@kms_flip_tiling@flip-changes-tiling.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-kbl4/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][49] ([i915#180] / [i915#95]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-apl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][53] ([fdo#109441]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][55] ([i915#31]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-skl2/igt@kms_setmode@basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-skl3/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][57] ([fdo#112080]) -> [PASS][58] +6 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb7/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][59] ([fdo#109276]) -> [PASS][60] +16 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb7/igt@prime_vgem@fence-wait-bsd2.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][61] ([i915#180]) -> [INCOMPLETE][62] ([i915#155] / [i915#600])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#600]: https://gitlab.freedesktop.org/drm/intel/issues/600
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#697]: https://gitlab.freedesktop.org/drm/intel/issues/697
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8230 -> Patchwork_17166

  CI-20190529: 20190529
  CI_DRM_8230: fa9f8453ffb88a4fc4e36d68b84a7ff9bf90f769 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5550: 98927dfde17aecaecfe67bb9853ceca326ca2b23 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17166: db60a6358595b602a7eaae13fb3c579af95f8da6 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17166/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
