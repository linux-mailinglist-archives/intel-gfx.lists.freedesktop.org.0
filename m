Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B302B19BF8B
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 12:44:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1452D6EA4A;
	Thu,  2 Apr 2020 10:44:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B93186EA49;
 Thu,  2 Apr 2020 10:43:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B2BA1A00FD;
 Thu,  2 Apr 2020 10:43:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 02 Apr 2020 10:43:59 -0000
Message-ID: <158582423972.24294.9109723004960025530@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200401111554.6279-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200401111554.6279-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Align_engine_dump_active/pending?=
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

Series: drm/i915/gt: Align engine dump active/pending
URL   : https://patchwork.freedesktop.org/series/75363/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8232_full -> Patchwork_17169_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_8232_full and Patchwork_17169_full:

### New IGT tests (3) ###

  * igt@gem_exec_reloc@basic-spin:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_store@dword:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_wait@busy:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_17169_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [i915#677]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276]) +12 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-iclb4/igt@gem_exec_schedule@out-order-bsd2.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-iclb8/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +5 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-iclb8/igt@gem_exec_schedule@reorder-wide-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#716])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-kbl6/igt@gen9_exec_parse@allowed-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-kbl1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-iclb:         [PASS][11] -> [FAIL][12] ([i915#370])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-iclb6/igt@i915_pm_rps@min-max-config-loaded.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-iclb6/igt@i915_pm_rps@min-max-config-loaded.html
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#39])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-glk6/igt@i915_pm_rps@min-max-config-loaded.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-glk3/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109349])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled:
    - shard-apl:          [PASS][17] -> [FAIL][18] ([i915#52] / [i915#54] / [i915#95])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-apl6/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-apl8/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180] / [i915#95])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#1188])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +5 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-128:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#1559])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-glk1/igt@kms_plane_cursor@pipe-a-overlay-size-128.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-glk2/igt@kms_plane_cursor@pipe-a-overlay-size-128.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#112080]) +6 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-iclb2/igt@perf_pmu@init-busy-vcs1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-iclb5/igt@perf_pmu@init-busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][33] ([fdo#110854]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-iclb3/igt@gem_exec_balancer@smoke.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [SKIP][35] ([i915#677]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [SKIP][37] ([fdo#109276] / [i915#677]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][39] ([fdo#112146]) -> [PASS][40] +9 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-iclb7/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][41] ([fdo#109276]) -> [PASS][42] +19 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-iclb3/igt@gem_exec_schedule@independent-bsd2.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-kbl7/igt@gem_exec_suspend@basic-s3.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-kbl7/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][45] ([i915#454]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-iclb8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-apl:          [FAIL][47] ([i915#1595]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-apl1/igt@i915_pm_rc6_residency@rc6-idle.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-apl3/igt@i915_pm_rc6_residency@rc6-idle.html
    - shard-glk:          [FAIL][49] ([i915#1527]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-glk8/igt@i915_pm_rc6_residency@rc6-idle.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-glk6/igt@i915_pm_rc6_residency@rc6-idle.html
    - shard-kbl:          [FAIL][51] ([i915#1593]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-kbl1/igt@i915_pm_rc6_residency@rc6-idle.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-kbl4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][53] ([i915#72]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][55] ([i915#1188]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-apl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-apl7/igt@kms_hdr@bpc-switch-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-apl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][59] ([fdo#108145] / [i915#265]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][63] ([fdo#112080]) -> [PASS][64] +7 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-iclb8/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-iclb2/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][65] ([i915#588]) -> [SKIP][66] ([i915#658])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
    - shard-apl:          [FAIL][67] ([i915#49] / [i915#95]) -> [FAIL][68] ([i915#49])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-apl8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-apl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][69] ([fdo#109642] / [fdo#111068]) -> [FAIL][70] ([i915#608])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-iclb8/igt@kms_psr2_su@page_flip.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][71] ([i915#1423] / [i915#92]) -> ([FAIL][72], [FAIL][73]) ([i915#1423] / [i915#716] / [i915#92])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/shard-kbl2/igt@runner@aborted.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-kbl1/igt@runner@aborted.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/shard-kbl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#1527]: https://gitlab.freedesktop.org/drm/intel/issues/1527
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1559]: https://gitlab.freedesktop.org/drm/intel/issues/1559
  [i915#1593]: https://gitlab.freedesktop.org/drm/intel/issues/1593
  [i915#1595]: https://gitlab.freedesktop.org/drm/intel/issues/1595
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#370]: https://gitlab.freedesktop.org/drm/intel/issues/370
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8232 -> Patchwork_17169

  CI-20190529: 20190529
  CI_DRM_8232: cade363a69762c57ffb58f91b47670df7ca520bf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5553: 60475d9b41c58b7d256e83c7d53eaf7c2f1f8ecc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17169: a8418e5a61084fde9a451c49a9351ef9df9039fa @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
