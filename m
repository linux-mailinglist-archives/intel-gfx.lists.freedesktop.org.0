Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B0F19934E
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 12:20:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 534736E5CD;
	Tue, 31 Mar 2020 10:20:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 121FC6E5CD;
 Tue, 31 Mar 2020 10:20:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 014B5A00E7;
 Tue, 31 Mar 2020 10:20:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Tue, 31 Mar 2020 10:20:12 -0000
Message-ID: <158565001297.5564.1186737879909814804@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200330183857.13270-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200330183857.13270-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgSW50?=
 =?utf-8?q?roduce_drm_scaling_filter_property_=28rev4=29?=
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

Series: Introduce drm scaling filter property (rev4)
URL   : https://patchwork.freedesktop.org/series/73883/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8219_full -> Patchwork_17140_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17140_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17140_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17140_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_ringsize@idle@bcs0:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl1/igt@gem_ctx_ringsize@idle@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/shard-skl9/igt@gem_ctx_ringsize@idle@bcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_17140_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#677]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [i915#677]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/shard-iclb7/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@pi-shared-iova-render:
    - shard-iclb:         [PASS][7] -> [INCOMPLETE][8] ([i915#1193])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-render.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/shard-iclb8/igt@gem_exec_schedule@pi-shared-iova-render.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +12 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +4 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][13] -> [FAIL][14] ([i915#454])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#300]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#31])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl3/igt@kms_setmode@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/shard-skl2/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#112080]) +9 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb2/igt@perf_pmu@busy-check-all-vcs1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/shard-iclb7/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@processes:
    - shard-kbl:          [FAIL][25] ([i915#1528]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl1/igt@gem_ctx_persistence@processes.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/shard-kbl4/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [SKIP][27] ([fdo#109276] / [i915#677]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd2.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][29] ([fdo#112146]) -> [PASS][30] +7 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/shard-iclb7/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][31] ([i915#677]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [SKIP][33] ([fdo#109276]) -> [PASS][34] +21 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb6/igt@gem_exec_schedule@promotion-bsd1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/shard-iclb2/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][35] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][41] ([fdo#108145]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][43] ([fdo#109441]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb7/igt@kms_psr@psr2_basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@kms_vblank@pipe-b-query-forked-busy-hang:
    - shard-tglb:         [INCOMPLETE][45] ([i915#1373]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-tglb6/igt@kms_vblank@pipe-b-query-forked-busy-hang.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/shard-tglb2/igt@kms_vblank@pipe-b-query-forked-busy-hang.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][47] ([fdo#112080]) -> [PASS][48] +12 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb7/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/shard-iclb2/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * {igt@sysfs_heartbeat_interval@mixed@vecs0}:
    - shard-skl:          [FAIL][49] ([i915#1459]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl2/igt@sysfs_heartbeat_interval@mixed@vecs0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/shard-skl9/igt@sysfs_heartbeat_interval@mixed@vecs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][51] ([i915#468]) -> [FAIL][52] ([i915#454])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-snb:          [SKIP][53] ([fdo#109271]) -> [INCOMPLETE][54] ([i915#82])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-snb5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/shard-snb5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1193]: https://gitlab.freedesktop.org/drm/intel/issues/1193
  [i915#1373]: https://gitlab.freedesktop.org/drm/intel/issues/1373
  [i915#1459]: https://gitlab.freedesktop.org/drm/intel/issues/1459
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8219 -> Patchwork_17140

  CI-20190529: 20190529
  CI_DRM_8219: 42de3b3c94078845ceed586199c039622561b522 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5545: 9e5bfd10d56f81b98e0229c6bb14670221fd0b54 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17140: 4cd83b86d4e228abf4ee582d8d48c52918be3aec @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17140/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
