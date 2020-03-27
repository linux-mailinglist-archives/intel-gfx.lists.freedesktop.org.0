Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8CB195691
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 12:49:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4874B6EA12;
	Fri, 27 Mar 2020 11:49:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6548D6EA0A;
 Fri, 27 Mar 2020 11:49:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5E711A47E1;
 Fri, 27 Mar 2020 11:49:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Fri, 27 Mar 2020 11:49:53 -0000
Message-ID: <158530979335.17236.14780456525474928866@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200326181121.16869-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20200326181121.16869-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgUmUt?=
 =?utf-8?q?org_uC_debugfs_files_and_move_them_under_GT_=28rev3=29?=
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

Series: Re-org uC debugfs files and move them under GT (rev3)
URL   : https://patchwork.freedesktop.org/series/74051/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8195_full -> Patchwork_17102_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17102_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([i915#1492])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-tglb5/igt@gem_ctx_persistence@close-replace-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-tglb6/igt@gem_ctx_persistence@close-replace-race.html
    - shard-iclb:         [PASS][3] -> [INCOMPLETE][4] ([i915#1492])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb5/igt@gem_ctx_persistence@close-replace-race.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-iclb4/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +8 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb3/igt@gem_exec_async@concurrent-writes-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-iclb2/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [i915#677]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-iclb7/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +21 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#69]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl6/igt@gem_exec_suspend@basic-s3.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-skl6/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_ringfill@basic-default-hang:
    - shard-hsw:          [PASS][13] -> [INCOMPLETE][14] ([i915#61])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-hsw5/igt@gem_ringfill@basic-default-hang.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-hsw5/igt@gem_ringfill@basic-default-hang.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-snb:          [PASS][15] -> [TIMEOUT][16] ([i915#1526])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-snb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-snb4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#1531])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-tglb1/igt@i915_selftest@live@requests.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-tglb6/igt@i915_selftest@live@requests.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#129])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl3/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-skl9/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:
    - shard-kbl:          [PASS][21] -> [FAIL][22] ([i915#54] / [i915#93] / [i915#95])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-untiled:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#52] / [i915#54])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-glk2/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-glk2/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#52] / [i915#54])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-skl8/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180] / [i915#93] / [i915#95])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#34])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-glk4/igt@kms_flip@plain-flip-fb-recreate.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-glk9/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180] / [i915#95])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#1188])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl3/igt@kms_hdr@bpc-switch.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-skl8/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([fdo#108145])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([fdo#108145] / [i915#265])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109441]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-apl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-apl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#112080]) +10 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-iclb8/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][47] ([fdo#112080]) -> [PASS][48] +12 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb7/igt@gem_busy@busy-vcs1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@processes:
    - shard-tglb:         [FAIL][49] -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-tglb2/igt@gem_ctx_persistence@processes.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-tglb1/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][51] ([fdo#110854]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb7/igt@gem_exec_balancer@smoke.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [SKIP][53] ([fdo#109276] / [i915#677]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][55] ([i915#677]) -> [PASS][56] +3 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [SKIP][57] ([fdo#112146]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_selftest@live@hangcheck:
    - shard-iclb:         [DMESG-FAIL][61] ([i915#419]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb6/igt@i915_selftest@live@hangcheck.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-iclb1/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-apl6/igt@i915_suspend@sysfs-reader.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-apl1/igt@i915_suspend@sysfs-reader.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][65] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][67] ([i915#648] / [i915#69]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_vblank@pipe-b-accuracy-idle:
    - shard-snb:          [SKIP][71] ([fdo#109271]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-snb1/igt@kms_vblank@pipe-b-accuracy-idle.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-snb2/igt@kms_vblank@pipe-b-accuracy-idle.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][73] ([fdo#109276]) -> [PASS][74] +22 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
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
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#1492]: https://gitlab.freedesktop.org/drm/intel/issues/1492
  [i915#1526]: https://gitlab.freedesktop.org/drm/intel/issues/1526
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#419]: https://gitlab.freedesktop.org/drm/intel/issues/419
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (9 -> 10)
------------------------------

  Additional (1): pig-skl-6260u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8195 -> Patchwork_17102

  CI-20190529: 20190529
  CI_DRM_8195: bcb3db890b651ee74ca510bbc4dacebdaa65d311 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5539: e7aae12e37771a8b7796ba252574eb832a5839c3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17102: 209216ba5e1f65dfed02f205abefae348e040176 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17102/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
