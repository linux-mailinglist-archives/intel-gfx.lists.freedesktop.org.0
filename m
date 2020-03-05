Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C0B17AACA
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 17:46:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6506189FF6;
	Thu,  5 Mar 2020 16:46:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4213489DC0;
 Thu,  5 Mar 2020 16:46:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3A692A363D;
 Thu,  5 Mar 2020 16:46:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 05 Mar 2020 16:46:15 -0000
Message-ID: <158342677520.17237.10811991807345401012@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200304153144.10675-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200304153144.10675-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_WaDisableGPGPUMidThreadPreemption?=
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

Series: drm/i915/tgl: WaDisableGPGPUMidThreadPreemption
URL   : https://patchwork.freedesktop.org/series/74274/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8066_full -> Patchwork_16821_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16821_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +10 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-iclb5/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#679])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-skl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110854])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb2/igt@gem_exec_balancer@smoke.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-iclb3/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [i915#677]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb2/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-iclb5/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +17 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb2/igt@gem_exec_schedule@promotion-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-iclb3/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +7 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb7/igt@gem_exec_schedule@wide-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-iclb1/igt@gem_exec_schedule@wide-bsd.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +6 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-apl3/igt@i915_suspend@sysfs-reader.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-apl8/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#54])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html

  * igt@kms_flip@dpms-off-confusion:
    - shard-kbl:          [PASS][19] -> [INCOMPLETE][20] ([fdo#103665])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-kbl4/igt@kms_flip@dpms-off-confusion.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-kbl6/igt@kms_flip@dpms-off-confusion.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#221])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl10/igt@kms_flip@flip-vs-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-skl10/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip_tiling@flip-to-x-tiled:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#167])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl6/igt@kms_flip_tiling@flip-to-x-tiled.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-skl5/igt@kms_flip_tiling@flip-to-x-tiled.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#69]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][29] -> [FAIL][30] ([i915#899])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:
    - shard-skl:          [PASS][31] -> [DMESG-WARN][32] ([IGT#6])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl9/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-skl9/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][35] -> [FAIL][36] ([i915#31])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-apl6/igt@kms_setmode@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-apl6/igt@kms_setmode@basic.html
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#31])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl9/igt@kms_setmode@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-skl9/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][41] -> [INCOMPLETE][42] ([i915#146] / [i915#69])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl6/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-skl10/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [INCOMPLETE][43] -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-tglb1/igt@gem_ctx_persistence@close-replace-race.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-tglb7/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#110841]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][47] ([fdo#112080]) -> [PASS][48] +19 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-write-read-bsd2:
    - shard-iclb:         [SKIP][49] ([fdo#109276] / [i915#677]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb6/igt@gem_exec_schedule@implicit-write-read-bsd2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-iclb2/igt@gem_exec_schedule@implicit-write-read-bsd2.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][51] ([fdo#112146]) -> [PASS][52] +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-iclb6/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][53] ([i915#677]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-apl6/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_sseu@full-enable:
    - shard-skl:          [FAIL][57] -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl1/igt@i915_pm_sseu@full-enable.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-skl6/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@mock@buddy:
    - shard-skl:          [INCOMPLETE][59] ([i915#1310] / [i915#1360]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl2/igt@i915_selftest@mock@buddy.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-skl7/igt@i915_selftest@mock@buddy.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][63] ([i915#1188]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][65] ([fdo#108145]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][67] ([i915#899]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][69] ([fdo#109642] / [fdo#111068]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb8/igt@kms_psr2_su@page_flip.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][71] ([fdo#109441]) -> [PASS][72] +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][73] ([fdo#109276]) -> [PASS][74] +22 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][75] ([i915#677]) -> [INCOMPLETE][76] ([i915#1381])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/shard-iclb5/igt@gem_exec_schedule@pi-userfault-bsd.html

  
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1310]: https://gitlab.freedesktop.org/drm/intel/issues/1310
  [i915#1360]: https://gitlab.freedesktop.org/drm/intel/issues/1360
  [i915#1381]: https://gitlab.freedesktop.org/drm/intel/issues/1381
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#167]: https://gitlab.freedesktop.org/drm/intel/issues/167
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8066 -> Patchwork_16821

  CI-20190529: 20190529
  CI_DRM_8066: 9e1454777a07902c85ce3febcc9648837a2224fd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5491: d52794b426ae16630cc1e0354ae435ec98f6174b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16821: 770b14fbde2879037069c8ea3aa5d48a1d283fd4 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
