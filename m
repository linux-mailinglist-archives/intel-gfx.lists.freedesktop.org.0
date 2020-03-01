Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6B4174D9A
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Mar 2020 15:06:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09E046E432;
	Sun,  1 Mar 2020 14:06:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8AAA76E432;
 Sun,  1 Mar 2020 14:06:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8302BA47DA;
 Sun,  1 Mar 2020 14:06:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Sun, 01 Mar 2020 14:06:00 -0000
Message-ID: <158307156050.22450.10651557338678522145@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200226203455.23032-1-imre.deak@intel.com>
In-Reply-To: <20200226203455.23032-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Clean_up_DPLL_output/refclock_tracking_=28rev2=29?=
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

Series: drm/i915: Clean up DPLL output/refclock tracking (rev2)
URL   : https://patchwork.freedesktop.org/series/73977/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8032_full -> Patchwork_16764_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16764_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16764_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16764_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:
    - shard-hsw:          NOTRUN -> [TIMEOUT][1] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@perf@stress-open-close}:
    - shard-hsw:          [INCOMPLETE][2] ([i915#61]) -> [TIMEOUT][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-hsw6/igt@perf@stress-open-close.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-hsw1/igt@perf@stress-open-close.html

  
Known issues
------------

  Here are the changes found in Patchwork_16764_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-skl:          [PASS][4] -> [TIMEOUT][5] ([i915#1340])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-skl1/igt@gem_ctx_persistence@close-replace-race.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-skl5/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#110841])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#112146]) +5 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb5/igt@gem_exec_async@concurrent-writes-bsd.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-iclb4/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#110854])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-iclb6/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#109276] / [i915#677]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#109276]) +15 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-iclb8/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([i915#677]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-tglb:         [PASS][18] -> [INCOMPLETE][19] ([i915#750])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-tglb2/igt@gem_exec_whisper@basic-queues-forked.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-tglb7/igt@gem_exec_whisper@basic-queues-forked.html
    - shard-iclb:         [PASS][20] -> [INCOMPLETE][21] ([i915#1120])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb1/igt@gem_exec_whisper@basic-queues-forked.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-iclb5/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_wait@busy-vcs1:
    - shard-iclb:         [PASS][22] -> [SKIP][23] ([fdo#112080]) +3 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb2/igt@gem_wait@busy-vcs1.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-iclb3/igt@gem_wait@busy-vcs1.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][24] -> [FAIL][25] ([i915#454])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][26] -> [FAIL][27] ([i915#413])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb5/igt@i915_pm_rps@waitboost.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-iclb8/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][28] -> [DMESG-WARN][29] ([i915#180]) +5 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][30] -> [FAIL][31] ([i915#72])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-glk1/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-glk8/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][32] -> [INCOMPLETE][33] ([i915#69])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-skl10/igt@kms_fbcon_fbt@psr-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-skl8/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][34] -> [FAIL][35] ([i915#79])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][36] -> [FAIL][37] ([i915#79])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][38] -> [INCOMPLETE][39] ([i915#221])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-skl8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-glk:          [PASS][40] -> [FAIL][41] ([i915#34])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-glk9/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-glk6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
    - shard-skl:          [PASS][42] -> [FAIL][43] ([i915#34])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][44] -> [FAIL][45] ([i915#1188])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][46] -> [FAIL][47] ([fdo#108145] / [i915#265]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][48] -> [FAIL][49] ([i915#899])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-y:
    - shard-skl:          [PASS][50] -> [DMESG-WARN][51] ([IGT#6])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-skl3/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-skl2/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][52] -> [SKIP][53] ([fdo#109642] / [fdo#111068])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-iclb1/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][54] -> [FAIL][55] ([i915#173])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb2/igt@kms_psr@no_drrs.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][56] -> [SKIP][57] ([fdo#109441]) +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][58] -> [DMESG-WARN][59] ([i915#180]) +5 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-apl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-iclb:         [INCOMPLETE][60] ([i915#1291]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb8/igt@gem_ctx_persistence@close-replace-race.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-iclb7/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][62] ([fdo#112080]) -> [PASS][63] +17 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-write-read-bsd2:
    - shard-iclb:         [SKIP][64] ([fdo#109276] / [i915#677]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb5/igt@gem_exec_schedule@implicit-write-read-bsd2.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][66] ([i915#677]) -> [PASS][67] +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][68] ([fdo#112146]) -> [PASS][69] +7 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [FAIL][70] ([i915#644]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-kbl2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_atomic_transition@2x-modeset-transitions-nonblocking:
    - shard-hsw:          [TIMEOUT][72] -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-hsw7/igt@kms_atomic_transition@2x-modeset-transitions-nonblocking.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-hsw6/igt@kms_atomic_transition@2x-modeset-transitions-nonblocking.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][74] ([IGT#5]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][76] ([fdo#103665]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][78] ([i915#1188]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][80] ([i915#180]) -> [PASS][81] +5 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][82] ([i915#180]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane@plane-panning-top-left-pipe-a-planes:
    - shard-skl:          [FAIL][84] -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-skl9/igt@kms_plane@plane-panning-top-left-pipe-a-planes.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-skl5/igt@kms_plane@plane-panning-top-left-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][86] ([fdo#108145]) -> [PASS][87] +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [FAIL][88] ([i915#899]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
    - shard-skl:          [DMESG-WARN][90] ([IGT#6]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-skl10/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-skl8/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][92] ([fdo#109441]) -> [PASS][93] +4 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][94] ([fdo#109276]) -> [PASS][95] +21 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb5/igt@prime_busy@hang-bsd2.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-iclb1/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][96] ([fdo#112080]) -> [FAIL][97] ([IGT#28])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@i915_pm_rpm@debugfs-forcewake-user:
    - shard-snb:          [SKIP][98] ([fdo#109271]) -> [INCOMPLETE][99] ([i915#82])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/shard-snb4/igt@i915_pm_rpm@debugfs-forcewake-user.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/shard-snb6/igt@i915_pm_rpm@debugfs-forcewake-user.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1120]: https://gitlab.freedesktop.org/drm/intel/issues/1120
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1291]: https://gitlab.freedesktop.org/drm/intel/issues/1291
  [i915#1340]: https://gitlab.freedesktop.org/drm/intel/issues/1340
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8032 -> Patchwork_16764

  CI-20190529: 20190529
  CI_DRM_8032: e61f34133ad908d4b455344daa7b4edb9fcf680c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5477: 3fe5828f45fc533ba4d9ee84dbb5aea320ce61bc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16764: 8ab21b812217008f9addcd71af53a833e04e76f4 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
