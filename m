Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFC119B4F3
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 19:55:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73F946E96D;
	Wed,  1 Apr 2020 17:55:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 647696E96B;
 Wed,  1 Apr 2020 17:55:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5E1DFA0071;
 Wed,  1 Apr 2020 17:55:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi@etezian.org>
Date: Wed, 01 Apr 2020 17:55:30 -0000
Message-ID: <158576373036.25627.5516899340607707941@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200331220432.55227-1-andi@etezian.org>
In-Reply-To: <20200331220432.55227-1-andi@etezian.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_move_remaining_debugfs_interfaces_into_gt_=28rev2?=
 =?utf-8?q?=29?=
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

Series: drm/i915/gt: move remaining debugfs interfaces into gt (rev2)
URL   : https://patchwork.freedesktop.org/series/75333/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8230_full -> Patchwork_17165_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17165_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17165_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17165_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@debugfs-forcewake-user:
    - shard-iclb:         [PASS][1] -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb5/igt@i915_pm_rpm@debugfs-forcewake-user.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-iclb5/igt@i915_pm_rpm@debugfs-forcewake-user.html
    - shard-tglb:         [PASS][3] -> [SKIP][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-tglb6/igt@i915_pm_rpm@debugfs-forcewake-user.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-tglb6/igt@i915_pm_rpm@debugfs-forcewake-user.html

  * igt@i915_suspend@forcewake:
    - shard-snb:          [PASS][5] -> [FAIL][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-snb5/igt@i915_suspend@forcewake.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-snb5/igt@i915_suspend@forcewake.html

  * igt@perf_pmu@rc6:
    - shard-apl:          [PASS][7] -> [FAIL][8] +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-apl3/igt@perf_pmu@rc6.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-apl7/igt@perf_pmu@rc6.html
    - shard-glk:          [PASS][9] -> [FAIL][10] +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-glk3/igt@perf_pmu@rc6.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-glk9/igt@perf_pmu@rc6.html
    - shard-tglb:         [PASS][11] -> [FAIL][12] +4 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-tglb5/igt@perf_pmu@rc6.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-tglb1/igt@perf_pmu@rc6.html
    - shard-kbl:          [PASS][13] -> [FAIL][14] +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-kbl2/igt@perf_pmu@rc6.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-kbl2/igt@perf_pmu@rc6.html

  * igt@perf_pmu@rc6-runtime-pm:
    - shard-skl:          [PASS][15] -> [FAIL][16] +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-skl10/igt@perf_pmu@rc6-runtime-pm.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-skl1/igt@perf_pmu@rc6-runtime-pm.html

  * igt@perf_pmu@rc6-runtime-pm-long:
    - shard-iclb:         [PASS][17] -> [FAIL][18] +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb7/igt@perf_pmu@rc6-runtime-pm-long.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-iclb4/igt@perf_pmu@rc6-runtime-pm-long.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8230_full and Patchwork_17165_full:

### New IGT tests (1) ###

  * igt@gem_exec_capture@capture:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_17165_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#110854])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-iclb5/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([i915#677])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb8/igt@gem_exec_schedule@pi-userfault-bsd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#112146]) +5 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109276]) +6 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][29] -> [FAIL][30] ([i915#454])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@debugfs-forcewake-user:
    - shard-skl:          [PASS][31] -> [SKIP][32] ([fdo#109271]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-skl1/igt@i915_pm_rpm@debugfs-forcewake-user.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-skl9/igt@i915_pm_rpm@debugfs-forcewake-user.html

  * igt@i915_pm_sseu@full-enable:
    - shard-apl:          [PASS][33] -> [SKIP][34] ([fdo#109271]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-apl6/igt@i915_pm_sseu@full-enable.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-apl1/igt@i915_pm_sseu@full-enable.html
    - shard-kbl:          [PASS][35] -> [SKIP][36] ([fdo#109271]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-kbl3/igt@i915_pm_sseu@full-enable.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-kbl3/igt@i915_pm_sseu@full-enable.html
    - shard-glk:          [PASS][37] -> [SKIP][38] ([fdo#109271]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-glk6/igt@i915_pm_sseu@full-enable.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-glk3/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [PASS][39] -> [INCOMPLETE][40] ([i915#1531])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-tglb3/igt@i915_selftest@live@requests.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-tglb5/igt@i915_selftest@live@requests.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180] / [i915#93] / [i915#95])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#79])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-apl:          [PASS][45] -> [DMESG-WARN][46] ([i915#180]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-apl2/igt@kms_hdr@bpc-switch-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-apl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([fdo#108145]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([fdo#108145] / [i915#265])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#109441])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][53] -> [FAIL][54] ([i915#31])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-apl2/igt@kms_setmode@basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-apl6/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#112080]) +7 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb1/igt@perf_pmu@busy-vcs1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-iclb3/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][57] ([fdo#112080]) -> [PASS][58] +8 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb8/igt@gem_busy@busy-vcs1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_schedule@implicit-write-read-bsd:
    - shard-iclb:         [SKIP][59] ([i915#677]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb1/igt@gem_exec_schedule@implicit-write-read-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-iclb7/igt@gem_exec_schedule@implicit-write-read-bsd.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [SKIP][61] ([fdo#109276] / [i915#677]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb3/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][63] ([fdo#112146]) -> [PASS][64] +4 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [DMESG-WARN][65] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-kbl7/igt@gem_softpin@noreloc-s3.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-kbl6/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][67] ([i915#454]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-iclb5/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-apl:          [FAIL][69] -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-apl1/igt@i915_pm_rc6_residency@rc6-idle.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-apl7/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-kbl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-kbl3/igt@i915_suspend@fence-restore-tiled2untiled.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-kbl4/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][73] ([i915#79]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-glk9/igt@kms_flip@flip-vs-expired-vblank.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-glk5/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-glk:          [FAIL][75] -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-glk4/igt@kms_flip@plain-flip-fb-recreate.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-glk9/igt@kms_flip@plain-flip-fb-recreate.html
    - shard-skl:          [FAIL][77] ([i915#34]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-skl7/igt@kms_flip@plain-flip-fb-recreate.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-skl5/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][79] ([i915#180] / [i915#95]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-apl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][81] ([i915#1188]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][83] ([i915#180]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][85] ([fdo#109276]) -> [PASS][86] +15 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8230/shard-iclb7/igt@prime_vgem@fence-wait-bsd2.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8230 -> Patchwork_17165

  CI-20190529: 20190529
  CI_DRM_8230: fa9f8453ffb88a4fc4e36d68b84a7ff9bf90f769 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5550: 98927dfde17aecaecfe67bb9853ceca326ca2b23 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17165: 7c03d498e02fff114ff636321ccd547efded19ff @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17165/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
