Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C9D199371
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 12:33:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C7FC6E5CF;
	Tue, 31 Mar 2020 10:32:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 476F36E5CF;
 Tue, 31 Mar 2020 10:32:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4014EA0BC6;
 Tue, 31 Mar 2020 10:32:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Tue, 31 Mar 2020 10:32:57 -0000
Message-ID: <158565077723.5564.4353449875592377740@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200330193208.15038-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200330193208.15038-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/todo=3A_Add_todo_to_make_i915_WARN*_calls_drm_device_specific_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/todo: Add todo to make i915 WARN* calls drm device specific (rev2)
URL   : https://patchwork.freedesktop.org/series/75265/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8219_full -> Patchwork_17141_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17141_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17141_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17141_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-snb:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-snb4/igt@i915_pm_rc6_residency@rc6-idle.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-snb1/igt@i915_pm_rc6_residency@rc6-idle.html

  
Known issues
------------

  Here are the changes found in Patchwork_17141_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +8 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-iclb5/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [i915#677]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-iclb6/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +5 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd2:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +11 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb2/igt@gem_exec_schedule@preempt-queue-chain-bsd2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-iclb6/igt@gem_exec_schedule@preempt-queue-chain-bsd2.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#1527])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-glk8/igt@i915_pm_rc6_residency@rc6-idle.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-glk2/igt@i915_pm_rc6_residency@rc6-idle.html
    - shard-hsw:          [PASS][15] -> [TIMEOUT][16] ([i915#1526])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-hsw6/igt@i915_pm_rc6_residency@rc6-idle.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-hsw4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl4/igt@i915_suspend@debugfs-reader.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-kbl4/igt@i915_suspend@debugfs-reader.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#72])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180] / [i915#95])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-iclb:         [PASS][25] -> [INCOMPLETE][26] ([i915#1185] / [i915#123])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb1/igt@kms_frontbuffer_tracking@psr-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-iclb1/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][31] -> [FAIL][32] ([i915#31])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl4/igt@kms_setmode@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-apl7/igt@kms_setmode@basic.html
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#31])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl3/igt@kms_setmode@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-skl9/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@processes:
    - shard-kbl:          [FAIL][35] ([i915#1528]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl1/igt@gem_ctx_persistence@processes.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-kbl3/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][37] ([fdo#109276] / [i915#677]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb6/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][39] ([fdo#112146]) -> [PASS][40] +6 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-iclb7/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][41] ([i915#677]) -> [PASS][42] +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [SKIP][43] ([fdo#109276]) -> [PASS][44] +21 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb6/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-iclb4/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][47] ([fdo#109349]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][49] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][51] ([i915#1188]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][53] ([fdo#109441]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-b-query-forked-busy-hang:
    - shard-tglb:         [INCOMPLETE][55] ([i915#1373]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-tglb6/igt@kms_vblank@pipe-b-query-forked-busy-hang.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-tglb2/igt@kms_vblank@pipe-b-query-forked-busy-hang.html

  * {igt@perf@polling-parameterized}:
    - shard-hsw:          [FAIL][57] ([i915#1542]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-hsw6/igt@perf@polling-parameterized.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-hsw2/igt@perf@polling-parameterized.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][59] ([fdo#112080]) -> [PASS][60] +11 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb5/igt@perf_pmu@init-busy-vcs1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-iclb1/igt@perf_pmu@init-busy-vcs1.html

  * {igt@sysfs_heartbeat_interval@mixed@vecs0}:
    - shard-skl:          [FAIL][61] ([i915#1459]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl2/igt@sysfs_heartbeat_interval@mixed@vecs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-skl7/igt@sysfs_heartbeat_interval@mixed@vecs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][63] ([i915#468]) -> [FAIL][64] ([i915#454])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-tglb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][65] ([i915#454]) -> [SKIP][66] ([i915#468])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-tglb1/igt@i915_pm_dc@dc6-psr.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1373]: https://gitlab.freedesktop.org/drm/intel/issues/1373
  [i915#1459]: https://gitlab.freedesktop.org/drm/intel/issues/1459
  [i915#1526]: https://gitlab.freedesktop.org/drm/intel/issues/1526
  [i915#1527]: https://gitlab.freedesktop.org/drm/intel/issues/1527
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8219 -> Patchwork_17141

  CI-20190529: 20190529
  CI_DRM_8219: 42de3b3c94078845ceed586199c039622561b522 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5545: 9e5bfd10d56f81b98e0229c6bb14670221fd0b54 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17141: e3dc4dcfa7f1577a0c488f90b2394aa895138cbc @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17141/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
