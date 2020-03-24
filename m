Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E7019128B
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 15:13:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 219616E2C4;
	Tue, 24 Mar 2020 14:13:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3122D6E2C0;
 Tue, 24 Mar 2020 14:13:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2E4B2A011B;
 Tue, 24 Mar 2020 14:13:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 24 Mar 2020 14:13:24 -0000
Message-ID: <158505920418.5745.13624269382273564841@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200324120718.977-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200324120718.977-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/execlists=3A_Pull_tasklet_?=
 =?utf-8?q?interrupt-bh_local_to_direct_submission?=
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

Series: series starting with [1/2] drm/i915/execlists: Pull tasklet interrupt-bh local to direct submission
URL   : https://patchwork.freedesktop.org/series/75008/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8182_full -> Patchwork_17065_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17065_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +10 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-iclb7/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@engines-mixed-process@bcs0:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#679])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-skl2/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-skl1/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#1239])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-skl2/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-skl1/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#110841])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@implicit-write-read-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-iclb5/igt@gem_exec_schedule@implicit-write-read-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +15 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-iclb2/igt@gem_exec_schedule@promotion-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-iclb7/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@i915_selftest@live@requests:
    - shard-iclb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#109644] / [fdo#110464])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-iclb4/igt@i915_selftest@live@requests.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-iclb8/igt@i915_selftest@live@requests.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#165] / [i915#180])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([IGT#5])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-hsw:          [PASS][23] -> [INCOMPLETE][24] ([i915#61])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-hsw8/igt@kms_flip@flip-vs-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-hsw5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#1188])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145] / [i915#265])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +5 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-iclb:         [PASS][35] -> [INCOMPLETE][36] ([i915#1185] / [i915#140])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-iclb7/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-iclb3/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@render:
    - shard-iclb:         [FAIL][37] ([i915#679]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-iclb2/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-iclb7/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [FAIL][39] ([i915#1277]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-tglb1/igt@gem_exec_balancer@hang.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-tglb6/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [SKIP][41] ([fdo#109276] / [i915#677]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][43] ([i915#677]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-iclb3/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#112146]) -> [PASS][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-hsw:          [FAIL][47] ([i915#1516]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-hsw6/igt@i915_pm_rc6_residency@rc6-idle.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-hsw4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_selftest@live@hangcheck:
    - shard-skl:          [INCOMPLETE][49] ([fdo#108744]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-skl7/igt@i915_selftest@live@hangcheck.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-skl7/igt@i915_selftest@live@hangcheck.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-glk:          [FAIL][55] ([i915#34]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-glk2/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-glk4/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][57] ([i915#1188]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][59] ([fdo#108145] / [i915#265]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-iclb6/igt@kms_psr@psr2_cursor_blt.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][63] ([fdo#112080]) -> [PASS][64] +6 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-iclb5/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][65] ([fdo#109276]) -> [PASS][66] +15 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][67] ([i915#468]) -> [FAIL][68] ([i915#454])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-snb:          [INCOMPLETE][69] ([i915#82]) -> [SKIP][70] ([fdo#109271])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/shard-snb4/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/shard-snb6/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108744]: https://bugs.freedesktop.org/show_bug.cgi?id=108744
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109644]: https://bugs.freedesktop.org/show_bug.cgi?id=109644
  [fdo#110464]: https://bugs.freedesktop.org/show_bug.cgi?id=110464
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#1516]: https://gitlab.freedesktop.org/drm/intel/issues/1516
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8182 -> Patchwork_17065

  CI-20190529: 20190529
  CI_DRM_8182: e5245084567cd7f6f93b07baaebf8a2b4d914620 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5531: 79e7382202c104b247a672c61a6186d1f51e4958 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17065: 6cfb39892bf9c0b2cfa57708bb6ae3276f9179fa @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
