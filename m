Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D35217A09F
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 08:43:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C0AB6E156;
	Thu,  5 Mar 2020 07:43:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 640066E075;
 Thu,  5 Mar 2020 07:43:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5BDFDA0019;
 Thu,  5 Mar 2020 07:43:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lukas Bulwahn" <lukas.bulwahn@gmail.com>
Date: Thu, 05 Mar 2020 07:43:00 -0000
Message-ID: <158339418034.17236.6908006943358650286@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200304120711.12117-1-lukas.bulwahn@gmail.com>
In-Reply-To: <20200304120711.12117-1-lukas.bulwahn@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgTUFJ?=
 =?utf-8?q?NTAINERS=3A_adjust_to_reservation=2Eh_renaming?=
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

Series: MAINTAINERS: adjust to reservation.h renaming
URL   : https://patchwork.freedesktop.org/series/74262/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8063_full -> Patchwork_16815_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_16815_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16815_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16815_full:

### IGT changes ###

#### Warnings ####

  * igt@gem_exec_schedule@pi-userfault-bsd2:
    - shard-iclb:         [SKIP][1] ([fdo#109276]) -> [INCOMPLETE][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd2.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd2.html

  
Known issues
------------

  Here are the changes found in Patchwork_16815_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +6 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-iclb8/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [i915#677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb1/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-iclb8/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd2:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +14 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb1/igt@gem_exec_schedule@in-order-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-iclb8/igt@gem_exec_schedule@in-order-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb8/igt@gem_exec_schedule@preempt-queue-contexts-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-iclb4/igt@gem_exec_schedule@preempt-queue-contexts-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [PASS][15] -> [INCOMPLETE][16] ([fdo#103665])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-kbl7/igt@i915_suspend@fence-restore-untiled.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-kbl3/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#54])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-apl8/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-apl8/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#1188])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +4 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109642] / [fdo#111068])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-iclb3/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][33] ([fdo#112080]) -> [PASS][34] +7 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_shared@q-smoketest-bsd2:
    - shard-iclb:         [SKIP][35] ([fdo#109276]) -> [PASS][36] +10 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb5/igt@gem_ctx_shared@q-smoketest-bsd2.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-iclb2/igt@gem_ctx_shared@q-smoketest-bsd2.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][37] ([fdo#109276] / [i915#677]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb6/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][39] ([fdo#112146]) -> [PASS][40] +6 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-iclb8/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +4 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-kbl6/igt@gem_exec_suspend@basic-s3.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-kbl7/igt@gem_exec_suspend@basic-s3.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [INCOMPLETE][43] ([i915#716]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl10/igt@gen9_exec_parse@allowed-single.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-skl2/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][45] ([i915#413]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb1/igt@i915_pm_rps@reset.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-iclb2/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-apl1/igt@i915_suspend@sysfs-reader.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-apl8/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][49] ([i915#72]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:
    - shard-skl:          [FAIL][51] ([i915#52] / [i915#54]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl3/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-skl5/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][53] ([i915#79]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-glk4/igt@kms_flip@flip-vs-expired-vblank.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-glk9/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][55] ([i915#221]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl8/igt@kms_flip@flip-vs-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-skl9/igt@kms_flip@flip-vs-suspend.html
    - shard-snb:          [DMESG-WARN][57] ([i915#42]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-snb6/igt@kms_flip@flip-vs-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-snb6/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][59] ([i915#1188]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][61] ([fdo#108145]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
    - shard-skl:          [DMESG-WARN][63] ([IGT#6]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl10/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-skl5/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb1/igt@kms_psr@psr2_cursor_render.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][67] -> [SKIP][68] ([i915#588])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][69] ([fdo#109349]) -> [DMESG-WARN][70] ([i915#1226])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8063 -> Patchwork_16815

  CI-20190529: 20190529
  CI_DRM_8063: cbce60ed8bb473eb6cdbdba9fc4e005a39a6926e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5490: f98b33cbd5b57bae52b8e2fae2039e89ac877822 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16815: 9c2ef98e6a0e4d42b62f03b8f6c752c9d58b8196 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16815/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
