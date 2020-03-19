Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 454EF18BF42
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 19:20:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EE9B6EA5A;
	Thu, 19 Mar 2020 18:20:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6B98A6EA59;
 Thu, 19 Mar 2020 18:20:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5A65EA432F;
 Thu, 19 Mar 2020 18:20:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 19 Mar 2020 18:20:21 -0000
Message-ID: <158464202136.17935.17264455113849072686@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200319144228.7455-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200319144228.7455-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Allow_for_different_mod?=
 =?utf-8?q?es_of_interruptible_i915=5Factive=5Fwait?=
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

Series: series starting with [1/2] drm/i915: Allow for different modes of interruptible i915_active_wait
URL   : https://patchwork.freedesktop.org/series/74877/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8159_full -> Patchwork_17024_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17024_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17024_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17024_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_param@vm:
    - shard-skl:          [PASS][1] -> [FAIL][2] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-skl10/igt@gem_ctx_param@vm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-skl8/igt@gem_ctx_param@vm.html
    - shard-glk:          [PASS][3] -> [FAIL][4] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-glk3/igt@gem_ctx_param@vm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-glk5/igt@gem_ctx_param@vm.html
    - shard-apl:          [PASS][5] -> [FAIL][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-apl3/igt@gem_ctx_param@vm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-apl3/igt@gem_ctx_param@vm.html
    - shard-iclb:         [PASS][7] -> [FAIL][8] +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-iclb8/igt@gem_ctx_param@vm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-iclb2/igt@gem_ctx_param@vm.html

  * igt@gem_vm_create@async-destroy:
    - shard-kbl:          [PASS][9] -> [FAIL][10] +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-kbl1/igt@gem_vm_create@async-destroy.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-kbl6/igt@gem_vm_create@async-destroy.html
    - shard-tglb:         [PASS][11] -> [FAIL][12] +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-tglb7/igt@gem_vm_create@async-destroy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-tglb6/igt@gem_vm_create@async-destroy.html

  
Known issues
------------

  Here are the changes found in Patchwork_17024_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +7 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_eio@in-flight-suspend:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-apl7/igt@gem_eio@in-flight-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-apl4/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#110854])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-iclb8/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-write-read-bsd2:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109276] / [i915#677])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd2.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-iclb8/igt@gem_exec_schedule@implicit-write-read-bsd2.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([i915#677]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-iclb8/igt@gem_exec_schedule@pi-userfault-bsd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#112146]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@i915_selftest@live@blt:
    - shard-hsw:          [PASS][25] -> [DMESG-FAIL][26] ([i915#1409])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-hsw6/igt@i915_selftest@live@blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-hsw5/igt@i915_selftest@live@blt.html

  * igt@i915_selftest@live@execlists:
    - shard-apl:          [PASS][27] -> [INCOMPLETE][28] ([fdo#103927] / [i915#656])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-apl8/igt@i915_selftest@live@execlists.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-apl6/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-random:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#54])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#34])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-skl4/igt@kms_flip@plain-flip-ts-check.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-skl6/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145] / [i915#265])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-iclb1/igt@kms_psr@psr2_dpms.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#31])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-skl4/igt@kms_setmode@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-skl8/igt@kms_setmode@basic.html
    - shard-hsw:          [PASS][41] -> [FAIL][42] ([i915#31])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-hsw5/igt@kms_setmode@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-hsw6/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#112080]) +5 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-iclb1/igt@perf_pmu@busy-vcs1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-iclb3/igt@perf_pmu@busy-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109276]) +16 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-skl:          [INCOMPLETE][47] ([i915#1402]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-skl2/igt@gem_ctx_persistence@close-replace-race.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-skl4/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd1:
    - shard-iclb:         [SKIP][49] ([fdo#109276]) -> [PASS][50] +6 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd1.html

  * igt@gem_exec_parallel@vcs1:
    - shard-iclb:         [SKIP][51] ([fdo#112080]) -> [PASS][52] +5 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-iclb5/igt@gem_exec_parallel@vcs1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-iclb2/igt@gem_exec_parallel@vcs1.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][53] ([i915#677]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [SKIP][55] ([fdo#112146]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-iclb1/igt@gem_exec_schedule@preempt-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-iclb5/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-iclb:         [FAIL][57] ([i915#644]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-iclb8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-iclb2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +4 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][61] ([i915#716]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-skl4/igt@gen9_exec_parse@allowed-single.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-skl1/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][63] ([i915#454]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][65] ([i915#413]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-iclb2/igt@i915_pm_rps@waitboost.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-iclb5/igt@i915_pm_rps@waitboost.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [FAIL][67] ([i915#34]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-skl8/igt@kms_flip@plain-flip-fb-recreate.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-skl2/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][69] ([i915#1188]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][71] ([fdo#108145] / [i915#265]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-y:
    - shard-skl:          [DMESG-WARN][73] ([IGT#6]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-skl2/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-skl4/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][75] ([fdo#109441]) -> [PASS][76] +3 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][77] ([i915#588]) -> [SKIP][78] ([i915#658])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][79] ([i915#454]) -> [SKIP][80] ([i915#468])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][81], [FAIL][82]) ([fdo#103927] / [i915#1402]) -> ([FAIL][83], [FAIL][84], [FAIL][85]) ([fdo#103927] / [i915#1402] / [i915#529])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-apl8/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8159/shard-apl7/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-apl7/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-apl6/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/shard-apl6/igt@runner@aborted.html

  
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#1409]: https://gitlab.freedesktop.org/drm/intel/issues/1409
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8159 -> Patchwork_17024

  CI-20190529: 20190529
  CI_DRM_8159: 00b2e0f1e7b3ea36379d68855f46a86400935411 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5522: bd2b01af69c9720d54e68a8702a23e4ff3637746 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17024: 3403802550e2ee8def62ef99d583e1dc8b64c2a9 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17024/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
