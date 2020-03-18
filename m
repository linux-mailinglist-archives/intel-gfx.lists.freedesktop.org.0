Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBDB718A10C
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 18:01:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 387E189EA6;
	Wed, 18 Mar 2020 17:01:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B10B589EA6;
 Wed, 18 Mar 2020 17:01:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B85C3A00CC;
 Wed, 18 Mar 2020 17:01:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swati Sharma" <swati2.sharma@intel.com>
Date: Wed, 18 Mar 2020 17:01:34 -0000
Message-ID: <158455089472.25099.15929145227691134763@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200317135736.14305-1-swati2.sharma@intel.com>
In-Reply-To: <20200317135736.14305-1-swati2.sharma@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
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
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8142_full -> Patchwork_16995_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16995_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([i915#1402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-tglb8/igt@gem_ctx_persistence@close-replace-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-tglb2/igt@gem_ctx_persistence@close-replace-race.html
    - shard-kbl:          [PASS][3] -> [INCOMPLETE][4] ([i915#1402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-kbl2/igt@gem_ctx_persistence@close-replace-race.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-kbl4/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_persistence@legacy-engines-mixed@render:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#679])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed@render.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed@render.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#110854])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb2/igt@gem_exec_balancer@smoke.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb5/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112080]) +13 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276] / [i915#677]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([i915#677]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112146]) +8 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109276]) +23 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb4/igt@gem_exec_schedule@promotion-bsd1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb6/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][19] -> [FAIL][20] ([i915#644])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [PASS][21] -> [FAIL][22] ([i915#644])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-kbl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#300])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#79])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#79])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl4/igt@kms_flip@flip-vs-expired-vblank.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-snb:          [PASS][29] -> [DMESG-WARN][30] ([i915#42])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-snb2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-snb5/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#34])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl5/igt@kms_flip@plain-flip-ts-check.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-skl4/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#1188])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-apl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl1/igt@kms_hdr@bpc-switch-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-apl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-skl:          [PASS][39] -> [INCOMPLETE][40] ([i915#69])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([fdo#108145]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109441]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb1/igt@kms_psr@psr2_cursor_render.html

  * igt@perf_pmu@busy-no-semaphores-vecs0:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#1464])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl7/igt@perf_pmu@busy-no-semaphores-vecs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-skl8/igt@perf_pmu@busy-no-semaphores-vecs0.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][47] ([fdo#112080]) -> [PASS][48] +12 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb6/igt@gem_busy@busy-vcs1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb4/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-iclb:         [INCOMPLETE][49] ([i915#1402]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb8/igt@gem_ctx_persistence@close-replace-race.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb7/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][51] ([fdo#109276] / [i915#677]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb7/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][53] ([fdo#112146]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb8/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [SKIP][55] ([fdo#109276]) -> [PASS][56] +8 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb8/igt@gem_exec_schedule@out-order-bsd2.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb2/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][57] ([i915#677]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_whisper@basic-fds-all:
    - shard-iclb:         [INCOMPLETE][59] ([i915#1401]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb6/igt@gem_exec_whisper@basic-fds-all.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb4/igt@gem_exec_whisper@basic-fds-all.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [FAIL][61] ([i915#644]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-skl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][63] ([i915#447]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb2/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][65] ([i915#454]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb7/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rps@reset:
    - shard-tglb:         [FAIL][67] ([i915#413]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-tglb7/igt@i915_pm_rps@reset.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-tglb6/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][69] ([i915#413]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb1/igt@i915_pm_rps@waitboost.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb6/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live@execlists:
    - shard-apl:          [INCOMPLETE][71] ([fdo#103927] / [i915#656]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl8/igt@i915_selftest@live@execlists.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-apl8/igt@i915_selftest@live@execlists.html

  * igt@kms_color@pipe-a-gamma:
    - shard-tglb:         [FAIL][73] ([i915#1149]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-tglb8/igt@kms_color@pipe-a-gamma.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-tglb1/igt@kms_color@pipe-a-gamma.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][75] ([i915#79]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][77] ([i915#34]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][79] ([fdo#108145]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][81] ([fdo#109441]) -> [PASS][82] +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][83] ([i915#180]) -> [PASS][84] +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
    - shard-apl:          [DMESG-WARN][85] ([i915#180]) -> [PASS][86] +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-wait-forked:
    - shard-snb:          [SKIP][87] ([fdo#109271]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-snb2/igt@kms_vblank@pipe-b-wait-forked.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-snb4/igt@kms_vblank@pipe-b-wait-forked.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-apl:          [INCOMPLETE][89] ([fdo#103927] / [i915#1402]) -> [TIMEOUT][90] ([i915#1340])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl7/igt@gem_ctx_persistence@close-replace-race.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-apl3/igt@gem_ctx_persistence@close-replace-race.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][91] ([i915#92]) -> ([FAIL][92], [FAIL][93]) ([i915#1389] / [i915#1402] / [i915#92])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-kbl1/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-kbl4/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-kbl2/igt@runner@aborted.html
    - shard-apl:          ([FAIL][94], [FAIL][95], [FAIL][96]) ([fdo#103927] / [i915#1402] / [i915#529]) -> [FAIL][97] ([fdo#103927])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl2/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl7/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl8/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/shard-apl2/igt@runner@aborted.html

  
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
  [i915#1464]: https://gitlab.freedesktop.org/drm/intel/issues/1464
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
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
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
