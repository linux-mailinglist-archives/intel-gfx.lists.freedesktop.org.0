Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 827BD19D3DB
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 11:37:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEF636EB57;
	Fri,  3 Apr 2020 09:37:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C74496EB56;
 Fri,  3 Apr 2020 09:37:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C180AA0071;
 Fri,  3 Apr 2020 09:37:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 03 Apr 2020 09:37:45 -0000
Message-ID: <158590666578.13351.9276576448480929105@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200401210104.15907-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200401210104.15907-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915/gt=3A_Only_wait_for_G?=
 =?utf-8?q?PU_activity_before_unbinding_a_GGTT_fence?=
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

Series: series starting with [CI,1/3] drm/i915/gt: Only wait for GPU activity before unbinding a GGTT fence
URL   : https://patchwork.freedesktop.org/series/75383/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8234_full -> Patchwork_17172_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17172_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17172_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17172_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-skl10/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-skl2/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_mmap_gtt@hang:
    - shard-snb:          [PASS][3] -> [FAIL][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-snb2/igt@gem_mmap_gtt@hang.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-snb2/igt@gem_mmap_gtt@hang.html
    - shard-iclb:         [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-iclb1/igt@gem_mmap_gtt@hang.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-iclb2/igt@gem_mmap_gtt@hang.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-apl:          [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-apl3/igt@gem_tiled_swapping@non-threaded.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-apl4/igt@gem_tiled_swapping@non-threaded.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8234_full and Patchwork_17172_full:

### New IGT tests (27) ###

  * igt@gem_busy@busy:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_reloc@basic-spin:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_schedule@implicit-write-read:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_hangman@error-state-capture:
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

  * igt@perf_pmu@init-sema:
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

  Here are the changes found in Patchwork_17172_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_cs_tlb@vcs1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112080])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-iclb4/igt@gem_cs_tlb@vcs1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-iclb5/igt@gem_cs_tlb@vcs1.html

  * igt@gem_eio@in-flight-1us:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#1098])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-skl7/igt@gem_eio@in-flight-1us.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-skl8/igt@gem_eio@in-flight-1us.html

  * igt@i915_selftest@live@execlists:
    - shard-tglb:         [PASS][13] -> [DMESG-FAIL][14] ([i915#1314])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-tglb1/igt@i915_selftest@live@execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-tglb3/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:
    - shard-apl:          [PASS][15] -> [FAIL][16] ([i915#54] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([IGT#5])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#221])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-skl6/igt@kms_flip@flip-vs-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-skl7/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180] / [i915#93] / [i915#95])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-snb:          [PASS][27] -> [DMESG-WARN][28] ([i915#42])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-snb5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-snb1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-a-accuracy-idle:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#43])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-glk6/igt@kms_vblank@pipe-a-accuracy-idle.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-glk2/igt@kms_vblank@pipe-a-accuracy-idle.html

  * igt@prime_busy@wait-after-bsd2:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109276])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-iclb4/igt@prime_busy@wait-after-bsd2.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-iclb3/igt@prime_busy@wait-after-bsd2.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [FAIL][35] ([i915#1277]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-tglb7/igt@gem_exec_balancer@hang.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-tglb5/igt@gem_exec_balancer@hang.html

  * igt@i915_selftest@live@execlists:
    - shard-apl:          [INCOMPLETE][37] ([i915#656]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-apl6/igt@i915_selftest@live@execlists.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-apl7/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_crc@pipe-c-cursor-dpms:
    - shard-skl:          [FAIL][39] ([i915#54]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-dpms.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-dpms.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [INCOMPLETE][41] ([i915#69]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-skl8/igt@kms_fbcon_fbt@psr-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-skl4/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][43] ([i915#79]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-glk6/igt@kms_flip@flip-vs-expired-vblank.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-glk2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-apl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-apl1/igt@kms_hdr@bpc-switch-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-apl1/igt@kms_hdr@bpc-switch-suspend.html
    - shard-skl:          [FAIL][47] ([i915#1188]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +6 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][51] ([fdo#108145] / [i915#265]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][53] ([fdo#109441]) -> [PASS][54] +3 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][55] ([i915#1542]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-iclb3/igt@perf@blocking-parameterized.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-iclb3/igt@perf@blocking-parameterized.html

  * igt@prime_vgem@wait-bsd2:
    - shard-iclb:         [SKIP][57] ([fdo#109276]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-iclb3/igt@prime_vgem@wait-bsd2.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-iclb4/igt@prime_vgem@wait-bsd2.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][59] ([i915#468]) -> [FAIL][60] ([i915#454]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-tglb5/igt@i915_pm_dc@dc6-psr.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][61], [FAIL][62]) ([i915#1423] / [i915#529]) -> [FAIL][63] ([i915#1423])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-apl6/igt@runner@aborted.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8234/shard-apl2/igt@runner@aborted.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/shard-apl8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [i915#1098]: https://gitlab.freedesktop.org/drm/intel/issues/1098
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#1314]: https://gitlab.freedesktop.org/drm/intel/issues/1314
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#43]: https://gitlab.freedesktop.org/drm/intel/issues/43
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8234 -> Patchwork_17172

  CI-20190529: 20190529
  CI_DRM_8234: 5fef6faaa3ca8d62bc01e07c7737c2c6d6296817 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5556: 311cb1b360b7ae00fab80b822cd34fd512f08ce9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17172: 32e647fb1bc0e7fae2bbbf54703182a45b446047 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17172/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
