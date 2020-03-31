Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E8A199479
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 12:57:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D04A6E2E3;
	Tue, 31 Mar 2020 10:57:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 736F76E2E3;
 Tue, 31 Mar 2020 10:57:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6D636A0099;
 Tue, 31 Mar 2020 10:57:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Tue, 31 Mar 2020 10:57:18 -0000
Message-ID: <158565223841.5564.14028348085136367196@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200330233304.406215-1-jose.souza@intel.com>
In-Reply-To: <20200330233304.406215-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/psr=3A_Implement_WA_1110?=
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

Series: series starting with [1/3] drm/i915/psr: Implement WA 1110
URL   : https://patchwork.freedesktop.org/series/75277/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8219_full -> Patchwork_17145_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17145_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17145_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17145_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-apl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl8/igt@i915_pm_rc6_residency@rc6-idle.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-apl8/igt@i915_pm_rc6_residency@rc6-idle.html

  
Known issues
------------

  Here are the changes found in Patchwork_17145_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +8 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [i915#677]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb1/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-iclb7/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +5 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +13 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-iclb7/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@i915_selftest@live@execlists:
    - shard-glk:          [PASS][13] -> [INCOMPLETE][14] ([i915#1430] / [i915#58] / [i915#656] / [k.org#198133])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-glk7/igt@i915_selftest@live@execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-glk3/igt@i915_selftest@live@execlists.html
    - shard-apl:          [PASS][15] -> [INCOMPLETE][16] ([i915#656])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl4/igt@i915_selftest@live@execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-apl7/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#300])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#133])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-glk8/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-glk9/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([IGT#5])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#46])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-skl7/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-iclb1/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#31])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl3/igt@kms_setmode@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-skl5/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@processes:
    - shard-kbl:          [FAIL][35] ([i915#1528]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl1/igt@gem_ctx_persistence@processes.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-kbl3/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][37] ([fdo#109276] / [i915#677]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb6/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][39] ([i915#677]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [SKIP][41] ([fdo#112146]) -> [PASS][42] +5 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][49] ([fdo#109441]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-b-query-forked-busy-hang:
    - shard-tglb:         [INCOMPLETE][51] ([i915#1373]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-tglb6/igt@kms_vblank@pipe-b-query-forked-busy-hang.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-tglb7/igt@kms_vblank@pipe-b-query-forked-busy-hang.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [SKIP][53] ([fdo#112080]) -> [PASS][54] +10 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb6/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-iclb4/igt@perf_pmu@busy-accuracy-98-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][55] ([fdo#109276]) -> [PASS][56] +22 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html

  * {igt@sysfs_heartbeat_interval@mixed@vecs0}:
    - shard-skl:          [FAIL][57] ([i915#1459]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl2/igt@sysfs_heartbeat_interval@mixed@vecs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-skl2/igt@sysfs_heartbeat_interval@mixed@vecs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][59] ([i915#468]) -> [FAIL][60] ([i915#454])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-tglb5/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][61] ([i915#454]) -> [SKIP][62] ([i915#468])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-tglb1/igt@i915_pm_dc@dc6-psr.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@runner@aborted:
    - shard-apl:          [FAIL][63] ([i915#1423]) -> ([FAIL][64], [FAIL][65]) ([i915#1423] / [i915#529])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl6/igt@runner@aborted.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-apl6/igt@runner@aborted.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/shard-apl7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#133]: https://gitlab.freedesktop.org/drm/intel/issues/133
  [i915#1373]: https://gitlab.freedesktop.org/drm/intel/issues/1373
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#1430]: https://gitlab.freedesktop.org/drm/intel/issues/1430
  [i915#1459]: https://gitlab.freedesktop.org/drm/intel/issues/1459
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8219 -> Patchwork_17145

  CI-20190529: 20190529
  CI_DRM_8219: 42de3b3c94078845ceed586199c039622561b522 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5545: 9e5bfd10d56f81b98e0229c6bb14670221fd0b54 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17145: d2a368d90005125aadd021dbcbd4f3198ab3293e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17145/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
