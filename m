Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A13319D519
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 12:34:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8B706E0C9;
	Fri,  3 Apr 2020 10:34:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 210646E0C9;
 Fri,  3 Apr 2020 10:34:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 11692A00CC;
 Fri,  3 Apr 2020 10:34:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Fri, 03 Apr 2020 10:34:38 -0000
Message-ID: <158591007804.13350.11286542990752948164@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200402055241.24789-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200402055241.24789-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_WARN=5FON_and_WARN=5FON=5FONCE_overrides=2E?=
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

Series: drm/i915: Remove WARN_ON and WARN_ON_ONCE overrides.
URL   : https://patchwork.freedesktop.org/series/75390/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8236_full -> Patchwork_17174_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17174_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17174_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17174_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/shard-skl8/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/shard-skl1/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-apl:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/shard-apl8/igt@gem_tiled_swapping@non-threaded.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/shard-apl2/igt@gem_tiled_swapping@non-threaded.html
    - shard-iclb:         [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/shard-iclb6/igt@gem_tiled_swapping@non-threaded.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/shard-iclb2/igt@gem_tiled_swapping@non-threaded.html
    - shard-kbl:          [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/shard-kbl2/igt@gem_tiled_swapping@non-threaded.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/shard-kbl1/igt@gem_tiled_swapping@non-threaded.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8236_full and Patchwork_17174_full:

### New IGT tests (25) ###

  * igt@gem_busy@busy:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_reloc@basic-spin:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_schedule@implicit-write-read:
    - Statuses :
    - Exec time: [None] s

  * igt@perf_pmu@busy:
    - Statuses :
    - Exec time: [None] s

  * igt@perf_pmu@busy-accuracy-2:
    - Statuses :
    - Exec time: [None] s

  * igt@perf_pmu@busy-accuracy-50:
    - Statuses :
    - Exec time: [None] s

  * igt@perf_pmu@busy-accuracy-98:
    - Statuses :
    - Exec time: [None] s

  * igt@perf_pmu@busy-check-all:
    - Statuses :
    - Exec time: [None] s

  * igt@perf_pmu@busy-double-start:
    - Statuses :
    - Exec time: [None] s

  * igt@perf_pmu@busy-hang:
    - Statuses :
    - Exec time: [None] s

  * igt@perf_pmu@busy-idle:
    - Statuses :
    - Exec time: [None] s

  * igt@perf_pmu@busy-no-semaphores:
    - Statuses :
    - Exec time: [None] s

  * igt@perf_pmu@busy-start:
    - Statuses :
    - Exec time: [None] s

  * igt@perf_pmu@enable-race:
    - Statuses :
    - Exec time: [None] s

  * igt@perf_pmu@idle:
    - Statuses :
    - Exec time: [None] s

  * igt@perf_pmu@idle-no-semaphores:
    - Statuses :
    - Exec time: [None] s

  * igt@perf_pmu@init-wait:
    - Statuses :
    - Exec time: [None] s

  * igt@perf_pmu@most-busy-check-all:
    - Statuses :
    - Exec time: [None] s

  * igt@perf_pmu@most-busy-idle-check-all:
    - Statuses :
    - Exec time: [None] s

  * igt@perf_pmu@multi-client:
    - Statuses :
    - Exec time: [None] s

  * igt@perf_pmu@render-node-busy:
    - Statuses :
    - Exec time: [None] s

  * igt@perf_pmu@render-node-busy-idle:
    - Statuses :
    - Exec time: [None] s

  * igt@perf_pmu@semaphore-busy:
    - Statuses :
    - Exec time: [None] s

  * igt@perf_pmu@semaphore-wait:
    - Statuses :
    - Exec time: [None] s

  * igt@perf_pmu@semaphore-wait-idle:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_17174_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_cs_tlb@vcs1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112080])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/shard-iclb2/igt@gem_cs_tlb@vcs1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/shard-iclb5/igt@gem_cs_tlb@vcs1.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#79])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#221])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180] / [i915#93] / [i915#95]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145] / [i915#265])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/shard-iclb5/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][25] -> [FAIL][26] ([i915#31])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/shard-apl8/igt@kms_setmode@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/shard-apl2/igt@kms_setmode@basic.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109276]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:
    - shard-apl:          [FAIL][29] ([i915#54] / [i915#95]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][31] ([i915#180]) -> [PASS][32] +5 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-glk:          [FAIL][35] ([i915#52] / [i915#54]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/shard-glk7/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/shard-glk3/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][37] ([i915#79]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][39] ([i915#221]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/shard-skl4/igt@kms_flip@flip-vs-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/shard-skl5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][41] ([i915#1188]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][43] ([fdo#108145] / [i915#265]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][45] ([fdo#109441]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/shard-iclb6/igt@kms_psr@psr2_primary_page_flip.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][47] ([i915#588]) -> [SKIP][48] ([i915#658])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][49] ([i915#468]) -> [FAIL][50] ([i915#454])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/shard-tglb7/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-apl:          [FAIL][51] ([fdo#108145] / [i915#265]) -> [FAIL][52] ([fdo#108145] / [i915#265] / [i915#95])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8236 -> Patchwork_17174

  CI-20190529: 20190529
  CI_DRM_8236: 698ce59acca37b93bfcdee6899504be3eb113097 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5556: 311cb1b360b7ae00fab80b822cd34fd512f08ce9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17174: 2328c1f4d826c1ee018403f89587d61bbad177e3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
