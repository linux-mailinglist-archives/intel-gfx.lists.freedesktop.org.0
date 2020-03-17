Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4688D188EFD
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 21:30:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A5196E821;
	Tue, 17 Mar 2020 20:30:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1EB9A6E821;
 Tue, 17 Mar 2020 20:30:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 155B3A363B;
 Tue, 17 Mar 2020 20:30:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swati Sharma" <swati2.sharma@intel.com>
Date: Tue, 17 Mar 2020 20:30:51 -0000
Message-ID: <158447705105.5178.8780173931809831219@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200317135736.14305-1-swati2.sharma@intel.com>
In-Reply-To: <20200317135736.14305-1-swati2.sharma@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/color=3A_Extract_icl=5Fread=5Fluts=28=29?=
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

Series: drm/i915/color: Extract icl_read_luts()
URL   : https://patchwork.freedesktop.org/series/74777/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8142_full -> Patchwork_16995_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16995_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16995_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16995_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-iclb:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb3/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@perf_pmu@busy-no-semaphores-vecs0:
    - shard-skl:          [PASS][2] -> [FAIL][3] +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl7/igt@perf_pmu@busy-no-semaphores-vecs0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-skl8/igt@perf_pmu@busy-no-semaphores-vecs0.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8142_full and Patchwork_16995_full:

### New IGT tests (1) ###

  * igt@sysfs_preempt_timeout@idempotent:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_16995_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [PASS][4] -> [INCOMPLETE][5] ([i915#1402])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-tglb8/igt@gem_ctx_persistence@close-replace-race.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-tglb2/igt@gem_ctx_persistence@close-replace-race.html
    - shard-kbl:          [PASS][6] -> [INCOMPLETE][7] ([i915#1402])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-kbl2/igt@gem_ctx_persistence@close-replace-race.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-kbl4/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#110854])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb2/igt@gem_exec_balancer@smoke.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb5/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#112080]) +13 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#109276] / [i915#677]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd2.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([i915#677]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#112146]) +8 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][18] -> [SKIP][19] ([fdo#109276]) +23 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb4/igt@gem_exec_schedule@promotion-bsd1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb6/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][20] -> [FAIL][21] ([i915#644])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [PASS][22] -> [FAIL][23] ([i915#644])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-kbl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][24] -> [INCOMPLETE][25] ([i915#300])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][26] -> [FAIL][27] ([i915#79])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#79])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl4/igt@kms_flip@flip-vs-expired-vblank.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-snb:          [PASS][30] -> [DMESG-WARN][31] ([i915#42])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-snb2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-snb5/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#34])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl5/igt@kms_flip@plain-flip-ts-check.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-skl4/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][34] -> [DMESG-WARN][35] ([i915#180]) +3 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#1188])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-apl:          [PASS][38] -> [DMESG-WARN][39] ([i915#180]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl1/igt@kms_hdr@bpc-switch-suspend.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-apl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-skl:          [PASS][40] -> [INCOMPLETE][41] ([i915#69])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][42] -> [FAIL][43] ([fdo#108145]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][44] -> [SKIP][45] ([fdo#109441]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb1/igt@kms_psr@psr2_cursor_render.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][46] ([fdo#112080]) -> [PASS][47] +12 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb6/igt@gem_busy@busy-vcs1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb4/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-iclb:         [INCOMPLETE][48] ([i915#1402]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb8/igt@gem_ctx_persistence@close-replace-race.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb7/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][50] ([fdo#109276] / [i915#677]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb7/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][52] ([fdo#112146]) -> [PASS][53] +2 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb8/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [SKIP][54] ([fdo#109276]) -> [PASS][55] +8 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb8/igt@gem_exec_schedule@out-order-bsd2.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb2/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][56] ([i915#677]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_whisper@basic-fds-all:
    - shard-iclb:         [INCOMPLETE][58] ([i915#1401]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb6/igt@gem_exec_whisper@basic-fds-all.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb4/igt@gem_exec_whisper@basic-fds-all.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [FAIL][60] ([i915#644]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-skl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][62] ([i915#447]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb2/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][64] ([i915#454]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb7/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rps@reset:
    - shard-tglb:         [FAIL][66] ([i915#413]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-tglb7/igt@i915_pm_rps@reset.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-tglb6/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][68] ([i915#413]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb1/igt@i915_pm_rps@waitboost.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb6/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live@execlists:
    - shard-apl:          [INCOMPLETE][70] ([fdo#103927] / [i915#656]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl8/igt@i915_selftest@live@execlists.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-apl8/igt@i915_selftest@live@execlists.html

  * igt@kms_color@pipe-a-gamma:
    - shard-tglb:         [FAIL][72] ([i915#1149]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-tglb8/igt@kms_color@pipe-a-gamma.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-tglb1/igt@kms_color@pipe-a-gamma.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][74] ([i915#79]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][76] ([i915#34]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][78] ([fdo#108145]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][80] ([fdo#109441]) -> [PASS][81] +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][82] ([i915#180]) -> [PASS][83] +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
    - shard-apl:          [DMESG-WARN][84] ([i915#180]) -> [PASS][85] +2 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-wait-forked:
    - shard-snb:          [SKIP][86] ([fdo#109271]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-snb2/igt@kms_vblank@pipe-b-wait-forked.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-snb4/igt@kms_vblank@pipe-b-wait-forked.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-apl:          [INCOMPLETE][88] ([fdo#103927] / [i915#1402]) -> [TIMEOUT][89] ([i915#1340])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl7/igt@gem_ctx_persistence@close-replace-race.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-apl3/igt@gem_ctx_persistence@close-replace-race.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][90] ([i915#92]) -> ([FAIL][91], [FAIL][92]) ([i915#1389] / [i915#1402] / [i915#92])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-kbl1/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-kbl4/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-kbl2/igt@runner@aborted.html
    - shard-apl:          ([FAIL][93], [FAIL][94], [FAIL][95]) ([fdo#103927] / [i915#1402] / [i915#529]) -> [FAIL][96] ([fdo#103927])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl2/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl7/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl8/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-apl2/igt@runner@aborted.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1340]: https://gitlab.freedesktop.org/drm/intel/issues/1340
  [i915#1389]: https://gitlab.freedesktop.org/drm/intel/issues/1389
  [i915#1401]: https://gitlab.freedesktop.org/drm/intel/issues/1401
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8142 -> Patchwork_16995

  CI-20190529: 20190529
  CI_DRM_8142: 13dfeddee92ca6b9d134e036ae315e93b96023db @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5514: 921758a91a453e8148b3146ad874bbd4ae4364ec @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16995: af4d857eacf32bdd7d3599e4d6ba1711e385efb5 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
