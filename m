Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F141725B4
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 18:54:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DE0B6E959;
	Thu, 27 Feb 2020 17:54:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EA22F6E506;
 Thu, 27 Feb 2020 17:54:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E2E9BA0088;
 Thu, 27 Feb 2020 17:54:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 27 Feb 2020 17:54:51 -0000
Message-ID: <158282609190.29659.2058579757868601259@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200226153044.1547829-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200226153044.1547829-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Disable_heartbeat_around_manual_pulse_tests?=
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

Series: drm/i915/selftests: Disable heartbeat around manual pulse tests
URL   : https://patchwork.freedesktop.org/series/73958/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8010_full -> Patchwork_16718_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16718_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16718_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16718_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_await@wide-contexts:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl6/igt@gem_exec_await@wide-contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-skl1/igt@gem_exec_await@wide-contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_16718_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([i915#977])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-tglb1/igt@gem_busy@close-race.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-tglb8/igt@gem_busy@close-race.html

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112080]) +7 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb4/igt@gem_busy@extended-parallel-vcs1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-iclb8/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-kbl:          [PASS][7] -> [INCOMPLETE][8] ([fdo#103665] / [i915#1291])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-kbl2/igt@gem_ctx_persistence@close-replace-race.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-kbl7/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#1277])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-tglb5/igt@gem_exec_balancer@hang.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-tglb2/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276] / [i915#677]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@independent-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb3/igt@gem_exec_schedule@independent-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-iclb4/igt@gem_exec_schedule@independent-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([i915#677])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb8/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][17] -> [FAIL][18] ([i915#644])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#644])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-kbl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-iclb:         [PASS][21] -> [INCOMPLETE][22] ([fdo#109100])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb6/igt@gem_softpin@noreloc-s3.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-iclb3/igt@gem_softpin@noreloc-s3.html

  * igt@i915_selftest@live_active:
    - shard-skl:          [PASS][23] -> [DMESG-FAIL][24] ([i915#666])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl10/igt@i915_selftest@live_active.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-skl7/igt@i915_selftest@live_active.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([IGT#5] / [i915#697])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:
    - shard-tglb:         [PASS][29] -> [SKIP][30] ([i915#668]) +6 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-tglb2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-tglb5/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#1188])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180]) +4 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109276]) +14 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-iclb6/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][41] ([i915#677]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-iclb:         [INCOMPLETE][45] ([i915#1120]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb4/igt@gem_exec_whisper@basic-queues-forked.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-iclb8/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-iclb:         [FAIL][47] ([i915#644]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-iclb7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank:
    - shard-tglb:         [FAIL][49] ([i915#488]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-tglb2/igt@kms_flip@flip-vs-blocking-wf-vblank.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-tglb5/igt@kms_flip@flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][51] ([i915#79]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
    - shard-apl:          [FAIL][53] ([i915#79]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
    - shard-glk:          [FAIL][55] ([i915#79]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][57] ([i915#221]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl8/igt@kms_flip@flip-vs-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-skl1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][61] ([fdo#108145] / [i915#265]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][63] ([i915#899]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb3/igt@kms_psr@psr2_sprite_blt.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][67] ([fdo#112080]) -> [PASS][68] +10 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb5/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][69] ([fdo#109276]) -> [PASS][70] +18 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][71] ([IGT#28]) -> [SKIP][72] ([fdo#112080])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][73] ([i915#1319] / [i915#727]) -> [TIMEOUT][74] ([i915#1319]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-kbl2/igt@kms_content_protection@atomic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-kbl6/igt@kms_content_protection@atomic.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][75] ([i915#1226]) -> [SKIP][76] ([fdo#109349])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109100]: https://bugs.freedesktop.org/show_bug.cgi?id=109100
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1120]: https://gitlab.freedesktop.org/drm/intel/issues/1120
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#1291]: https://gitlab.freedesktop.org/drm/intel/issues/1291
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#488]: https://gitlab.freedesktop.org/drm/intel/issues/488
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#697]: https://gitlab.freedesktop.org/drm/intel/issues/697
  [i915#727]: https://gitlab.freedesktop.org/drm/intel/issues/727
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#977]: https://gitlab.freedesktop.org/drm/intel/issues/977


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8010 -> Patchwork_16718

  CI-20190529: 20190529
  CI_DRM_8010: 97bbec4d80df1c6573fc7063ad830e8beefe07c8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5471: 668afe52887a164ee6a12fd1c898bc1c9086cf3e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16718: d3762d90647846e01fafa8e5dfc5dd6cfbab0bcc @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16718/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
