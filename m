Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EFA18A9B3
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 01:19:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A64986E99D;
	Thu, 19 Mar 2020 00:19:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C7DF76E99D;
 Thu, 19 Mar 2020 00:19:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C0543A0094;
 Thu, 19 Mar 2020 00:19:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 19 Mar 2020 00:19:39 -0000
Message-ID: <158457717975.17935.11542145334540471352@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200313164831.5980-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200313164831.5980-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Port_sync_for_skl+_=28rev3=29?=
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

Series: drm/i915: Port sync for skl+ (rev3)
URL   : https://patchwork.freedesktop.org/series/74691/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8154_full -> Patchwork_17014_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17014_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +6 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][3] -> [FAIL][4] ([i915#1277])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-tglb2/igt@gem_exec_balancer@hang.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-tglb5/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110854])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-iclb3/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [i915#677]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-iclb7/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +29 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +6 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-iclb7/igt@gem_exec_schedule@reorder-wide-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-iclb:         [PASS][15] -> [INCOMPLETE][16] ([i915#1394] / [i915#1401])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-iclb6/igt@gem_exec_whisper@basic-fds-priority.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-iclb2/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][17] -> [FAIL][18] ([i915#644])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-apl2/igt@gem_workarounds@suspend-resume-context.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-apl4/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][21] -> [FAIL][22] ([i915#454])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#54])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#79])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#1188])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-skl5/igt@kms_hdr@bpc-switch.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-skl1/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#69])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-skl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#112080]) +11 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-iclb2/igt@perf_pmu@busy-vcs1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-iclb5/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-skl:          [INCOMPLETE][37] ([i915#69]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-skl8/igt@gem_ctx_isolation@rcs0-s3.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-skl1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-apl:          [INCOMPLETE][39] ([fdo#103927] / [i915#1402]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-apl3/igt@gem_ctx_persistence@close-replace-race.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-apl8/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [SKIP][41] ([i915#677]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [SKIP][43] ([fdo#109276] / [i915#677]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-iclb7/igt@gem_exec_schedule@implicit-both-bsd1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#112146]) -> [PASS][46] +5 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-iclb3/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-kbl:          [INCOMPLETE][47] ([i915#151] / [i915#155]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-kbl2/igt@i915_pm_rpm@system-suspend-modeset.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-kbl1/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_suspend@forcewake:
    - shard-apl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-apl4/igt@i915_suspend@forcewake.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-apl7/igt@i915_suspend@forcewake.html

  * igt@kms_atomic@plane_overlay_legacy:
    - shard-snb:          [SKIP][51] ([fdo#109271]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-snb6/igt@kms_atomic@plane_overlay_legacy.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-snb6/igt@kms_atomic@plane_overlay_legacy.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +3 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [FAIL][55] ([i915#57]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [FAIL][57] ([i915#79]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][59] ([i915#1188]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][61] ([fdo#109642] / [fdo#111068]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-iclb7/igt@kms_psr2_su@page_flip.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [SKIP][63] ([fdo#109441]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-iclb8/igt@kms_psr@psr2_dpms.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-iclb2/igt@kms_psr@psr2_dpms.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [FAIL][65] ([i915#31]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-hsw7/igt@kms_setmode@basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-hsw4/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][67] ([fdo#112080]) -> [PASS][68] +12 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][69] ([fdo#109276]) -> [PASS][70] +17 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][71] ([i915#468]) -> [FAIL][72] ([i915#454])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][73], [FAIL][74]) ([fdo#103927] / [i915#1402]) -> [FAIL][75] ([fdo#103927])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-apl3/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/shard-apl2/igt@runner@aborted.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/shard-apl7/igt@runner@aborted.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#1394]: https://gitlab.freedesktop.org/drm/intel/issues/1394
  [i915#1401]: https://gitlab.freedesktop.org/drm/intel/issues/1401
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8154 -> Patchwork_17014

  CI-20190529: 20190529
  CI_DRM_8154: 937a904e393752c47b8dfdeed993f04fd75af74d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5522: bd2b01af69c9720d54e68a8702a23e4ff3637746 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17014: eea643cabc5fb832cbdffe3f04546c82dfd034a6 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17014/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
