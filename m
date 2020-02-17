Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF498161B34
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2020 20:04:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97B386E086;
	Mon, 17 Feb 2020 19:04:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 62DE289E01;
 Mon, 17 Feb 2020 19:04:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5A6CCA0009;
 Mon, 17 Feb 2020 19:04:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi@etezian.org>
Date: Mon, 17 Feb 2020 19:04:50 -0000
Message-ID: <158196629034.16570.5767825006092779193@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200214110308.2268-1-andi.shyti@intel.com>
In-Reply-To: <20200214110308.2268-1-andi.shyti@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_make_a_gt_sysfs_group_and_move_power_management_fil?=
 =?utf-8?b?ZXMgKHJldjMp?=
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

Series: drm/i915/gt: make a gt sysfs group and move power management files (rev3)
URL   : https://patchwork.freedesktop.org/series/73190/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7939_full -> Patchwork_16569_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16569_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16569_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16569_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-tglb:         [PASS][1] -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-tglb3/igt@i915_pm_rc6_residency@rc6-idle.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-tglb3/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@perf@rc6-disable:
    - shard-iclb:         [PASS][3] -> [SKIP][4] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-iclb1/igt@perf@rc6-disable.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-iclb4/igt@perf@rc6-disable.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - shard-iclb:         [SKIP][5] ([fdo#109289]) -> [SKIP][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-iclb3/igt@i915_pm_rc6_residency@media-rc6-accuracy.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-iclb1/igt@i915_pm_rc6_residency@media-rc6-accuracy.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_ctx_persistence@close-replace-race}:
    - shard-iclb:         [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-iclb5/igt@gem_ctx_persistence@close-replace-race.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-iclb5/igt@gem_ctx_persistence@close-replace-race.html

  
Known issues
------------

  Here are the changes found in Patchwork_16569_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#570] / [i915#679])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-skl1/igt@gem_ctx_persistence@processes.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-skl6/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_await@wide-contexts:
    - shard-kbl:          [PASS][11] -> [INCOMPLETE][12] ([fdo#103665])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-kbl6/igt@gem_exec_await@wide-contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-kbl3/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +6 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-iclb8/igt@gem_exec_schedule@in-order-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([i915#677])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-iclb3/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_linear_blits@normal:
    - shard-hsw:          [PASS][17] -> [FAIL][18] ([i915#694])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-hsw6/igt@gem_linear_blits@normal.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-hsw1/igt@gem_linear_blits@normal.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([i915#716])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-skl1/igt@gen9_exec_parse@allowed-single.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-skl6/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rc6_residency@rc6-accuracy:
    - shard-tglb:         [PASS][21] -> [SKIP][22] ([fdo#111719])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-tglb3/igt@i915_pm_rc6_residency@rc6-accuracy.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-tglb6/igt@i915_pm_rc6_residency@rc6-accuracy.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-snb:          [PASS][23] -> [SKIP][24] ([fdo#109271]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-snb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-snb4/igt@i915_pm_rc6_residency@rc6-idle.html
    - shard-skl:          [PASS][25] -> [SKIP][26] ([fdo#109271]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-skl6/igt@i915_pm_rc6_residency@rc6-idle.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-skl9/igt@i915_pm_rc6_residency@rc6-idle.html
    - shard-apl:          [PASS][27] -> [SKIP][28] ([fdo#109271]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-apl7/igt@i915_pm_rc6_residency@rc6-idle.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-apl3/igt@i915_pm_rc6_residency@rc6-idle.html
    - shard-glk:          [PASS][29] -> [SKIP][30] ([fdo#109271]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-glk1/igt@i915_pm_rc6_residency@rc6-idle.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-glk2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-kbl4/igt@i915_suspend@forcewake.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-kbl2/igt@i915_suspend@forcewake.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#79])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][35] -> [SKIP][36] ([i915#668]) +5 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
    - shard-iclb:         [PASS][39] -> [INCOMPLETE][40] ([i915#250])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-iclb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([fdo#108145] / [i915#265])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][43] -> [FAIL][44] ([i915#173])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-iclb6/igt@kms_psr@no_drrs.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109441]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][47] -> [FAIL][48] ([i915#31])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-kbl7/igt@kms_setmode@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-kbl3/igt@kms_setmode@basic.html

  * igt@perf@rc6-disable:
    - shard-hsw:          [PASS][49] -> [SKIP][50] ([fdo#109271]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-hsw4/igt@perf@rc6-disable.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-hsw5/igt@perf@rc6-disable.html
    - shard-kbl:          [PASS][51] -> [SKIP][52] ([fdo#109271]) +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-kbl3/igt@perf@rc6-disable.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-kbl4/igt@perf@rc6-disable.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#112080]) +12 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-iclb1/igt@perf_pmu@busy-vcs1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-iclb3/igt@perf_pmu@busy-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#109276]) +19 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-iclb7/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +7 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html

  * {igt@gem_ctx_persistence@close-replace-race}:
    - shard-glk:          [FAIL][59] -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-glk8/igt@gem_ctx_persistence@close-replace-race.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-glk4/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_schedule@pi-common-bsd1:
    - shard-iclb:         [SKIP][61] ([fdo#109276]) -> [PASS][62] +20 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd1.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][63] ([fdo#112146]) -> [PASS][64] +8 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][65] ([i915#180]) -> [PASS][66] +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-apl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-kbl:          [FAIL][67] ([i915#34]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-kbl4/igt@kms_flip@plain-flip-fb-recreate.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-kbl2/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:
    - shard-tglb:         [SKIP][69] ([i915#668]) -> [PASS][70] +9 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][71] ([fdo#109441]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-iclb3/igt@kms_psr@psr2_suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][73] ([i915#31]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-apl1/igt@kms_setmode@basic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-apl1/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [SKIP][75] ([fdo#112080]) -> [PASS][76] +12 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-iclb6/igt@perf_pmu@busy-check-all-vcs1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-iclb2/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][77] ([fdo#112080]) -> [FAIL][78] ([IGT#28]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][79] ([i915#818]) -> [FAIL][80] ([i915#694])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-hsw8/igt@gem_tiled_blits@interruptible.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-hsw8/igt@gem_tiled_blits@interruptible.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][81] ([i915#694]) -> [FAIL][82] ([i915#818])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-hsw1/igt@gem_tiled_blits@normal.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-hsw7/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][83] ([i915#468]) -> [FAIL][84] ([i915#454])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-tglb1/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - shard-tglb:         [SKIP][85] ([fdo#109289] / [fdo#111719]) -> [SKIP][86] ([fdo#111719])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/shard-tglb1/igt@i915_pm_rc6_residency@media-rc6-accuracy.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/shard-tglb7/igt@i915_pm_rc6_residency@media-rc6-accuracy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111719]: https://bugs.freedesktop.org/show_bug.cgi?id=111719
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7939 -> Patchwork_16569

  CI-20190529: 20190529
  CI_DRM_7939: cceb0c30a34af6ca96e35211ecdc5ca198d44e7e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5441: 534ca091fe4ffed916752165bc5becd7ff56cd84 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16569: 2bb6ef6acc00a99d609b52064cf9baa76bb79004 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16569/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
