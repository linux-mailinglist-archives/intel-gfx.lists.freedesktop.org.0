Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8D77E8098
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Nov 2023 19:16:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CF4A10E130;
	Fri, 10 Nov 2023 18:16:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E6CA210E130;
 Fri, 10 Nov 2023 18:16:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DD9C1A00E6;
 Fri, 10 Nov 2023 18:16:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7846453982908131492=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Date: Fri, 10 Nov 2023 18:16:14 -0000
Message-ID: <169964017485.31679.12069900890505751654@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231110082455.3061913-1-jouni.hogander@intel.com>
In-Reply-To: <20231110082455.3061913-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Remove_dead_code_around_intel=5Fatomic=5Fhelpe?=
 =?utf-8?q?r-=3Efree=5Flist?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============7846453982908131492==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Remove dead code around intel_atomic_helper->free_list
URL   : https://patchwork.freedesktop.org/series/126250/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13859_full -> Patchwork_126250v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126250v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126250v1_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/index.html

Participating hosts (9 -> 11)
------------------------------

  Additional (2): shard-mtlp0 shard-rkl0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126250v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_balancer@nop:
    - shard-glk:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-glk8/igt@gem_exec_balancer@nop.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-glk1/igt@gem_exec_balancer@nop.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-3.html

  
Known issues
------------

  Here are the changes found in Patchwork_126250v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][4] ([i915#5507])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@device_reset@unbind-reset-rebind.html

  * igt@drm_fdinfo@busy-hang@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][5] ([i915#8414]) +20 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@drm_fdinfo@busy-hang@bcs0.html

  * igt@drm_fdinfo@virtual-idle:
    - shard-rkl:          [PASS][6] -> [FAIL][7] ([i915#7742])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@drm_fdinfo@virtual-idle.html

  * igt@fbdev@info:
    - shard-rkl:          [PASS][8] -> [SKIP][9] ([i915#1849] / [i915#2582])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-2/igt@fbdev@info.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@fbdev@info.html

  * igt@gem_busy@semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][10] ([i915#3936])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@gem_busy@semaphore.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [PASS][11] -> [INCOMPLETE][12] ([i915#7297])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-dg2-2/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-dg2:          NOTRUN -> [SKIP][13] ([i915#7697]) +1 other test skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_ctx_isolation@preservation-s3@vcs1:
    - shard-dg2:          NOTRUN -> [FAIL][14] ([fdo#103375])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@gem_ctx_isolation@preservation-s3@vcs1.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#8555]) +1 other test skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:
    - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#5882]) +9 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0.html

  * igt@gem_exec_balancer@bonded-true-hang:
    - shard-dg2:          NOTRUN -> [SKIP][17] ([i915#4812]) +2 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@gem_exec_balancer@bonded-true-hang.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-rkl:          NOTRUN -> [SKIP][18] ([i915#4525])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_capture@many-4k-incremental:
    - shard-apl:          NOTRUN -> [FAIL][19] ([i915#9606])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-apl1/igt@gem_exec_capture@many-4k-incremental.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          [PASS][20] -> [FAIL][21] ([i915#2842]) +1 other test fail
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-glk6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglu:         [PASS][22] -> [FAIL][23] ([i915#2842])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle:
    - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#3539]) +2 other tests skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@gem_exec_fair@basic-throttle.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-dg2:          NOTRUN -> [SKIP][25] ([i915#3539] / [i915#4852]) +4 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_params@secure-non-master:
    - shard-dg2:          NOTRUN -> [SKIP][26] ([fdo#112283]) +1 other test skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-rkl:          NOTRUN -> [SKIP][27] ([i915#3281]) +5 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_exec_reloc@basic-wc-cpu:
    - shard-rkl:          [PASS][28] -> [SKIP][29] ([i915#3281]) +1 other test skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@gem_exec_reloc@basic-wc-cpu.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@gem_exec_reloc@basic-wc-cpu.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#3281]) +18 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#4537] / [i915#4812]) +1 other test skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-tglu:         [PASS][32] -> [ABORT][33] ([i915#7975] / [i915#8213])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-tglu-9/igt@gem_exec_suspend@basic-s4-devices@smem.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
    - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#4860]) +2 other tests skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html

  * igt@gem_lmem_swapping@basic:
    - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#4613]) +2 other tests skip
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-apl6/igt@gem_lmem_swapping@basic.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#4077]) +14 other tests skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_wc@close:
    - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#4083]) +4 other tests skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@gem_mmap_wc@close.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-rkl:          [PASS][38] -> [SKIP][39] ([i915#3282]) +2 other tests skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@gem_partial_pwrite_pread@reads-uncached.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-4/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          NOTRUN -> [SKIP][40] ([i915#3282]) +4 other tests skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_pread@snoop:
    - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#3282]) +10 other tests skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@gem_pread@snoop.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4270]) +3 other tests skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-rkl:          NOTRUN -> [SKIP][43] ([i915#768]) +1 other test skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#4079]) +3 other tests skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
    - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#8411])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-rkl:          NOTRUN -> [SKIP][46] ([fdo#109312])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@gem_softpin@evict-snoop.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#4885])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_spin_batch@spin-all-new:
    - shard-dg2:          NOTRUN -> [FAIL][48] ([i915#5889])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@gem_spin_batch@spin-all-new.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-rkl:          NOTRUN -> [SKIP][49] ([fdo#110542])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#3297]) +3 other tests skip
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#3297] / [i915#4880]) +2 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-rkl:          NOTRUN -> [SKIP][52] ([i915#3297])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gen3_render_linear_blits:
    - shard-dg2:          NOTRUN -> [SKIP][53] ([fdo#109289]) +9 other tests skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@gen3_render_linear_blits.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#2856]) +2 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@gen9_exec_parse@bb-start-param.html
    - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#2527]) +1 other test skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-rkl:          [PASS][56] -> [SKIP][57] ([i915#2527]) +1 other test skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@gen9_exec_parse@cmd-crossing-page.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_pipe_stress@stress-xrgb8888-untiled:
    - shard-apl:          NOTRUN -> [FAIL][58] ([i915#7036])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-apl1/igt@i915_pipe_stress@stress-xrgb8888-untiled.html

  * igt@i915_pm_freq_api@freq-reset:
    - shard-rkl:          NOTRUN -> [SKIP][59] ([i915#8399])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@i915_pm_freq_api@freq-reset.html

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - shard-rkl:          NOTRUN -> [SKIP][60] ([fdo#109289]) +4 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@i915_pm_rc6_residency@media-rc6-accuracy.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([fdo#109293] / [fdo#109506])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_sseu@full-enable:
    - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#4387])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#6188])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-apl:          [PASS][64] -> [DMESG-FAIL][65] ([i915#5334])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#4212]) +1 other test skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#4215] / [i915#5190])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_async_flips@crc@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][68] ([i915#8247]) +3 other tests fail
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg1-13/igt@kms_async_flips@crc@pipe-b-hdmi-a-3.html

  * igt@kms_async_flips@invalid-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#6228])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#9531])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#1769] / [i915#3555])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#5286]) +2 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         [PASS][73] -> [FAIL][74] ([i915#5138])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][75] ([fdo#111614] / [i915#3638])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][76] ([fdo#111614]) +6 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#5190]) +22 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         [PASS][78] -> [FAIL][79] ([i915#3743]) +2 other tests fail
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-tglu-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#4538] / [i915#5190]) +9 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][81] ([fdo#110723]) +2 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_joiner@basic:
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#2705])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_big_joiner@basic.html

  * igt@kms_busy@extended-modeset-hang-oldfb:
    - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#1845] / [i915#4098]) +9 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_busy@extended-modeset-hang-oldfb.html

  * igt@kms_cdclk@plane-scaling:
    - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#3742])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_cdclk@plane-scaling.html

  * igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#4087]) +3 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2.html

  * igt@kms_chamelium_color@gamma:
    - shard-dg2:          NOTRUN -> [SKIP][86] ([fdo#111827]) +3 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@kms_chamelium_color@gamma.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271]) +129 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-apl1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
    - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#7828]) +4 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html

  * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#7828]) +14 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#3299])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@lic@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][91] ([i915#7173])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_content_protection@lic@pipe-a-dp-4.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#7118])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][93] ([i915#1339])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-apl1/igt@kms_content_protection@uevent@pipe-a-dp-1.html

  * igt@kms_content_protection@uevent@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [FAIL][94] ([i915#1339])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-4.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#3555]) +9 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#3359]) +3 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [fdo#111767])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-apl1/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - shard-rkl:          [PASS][98] -> [SKIP][99] ([i915#1845] / [i915#4098]) +11 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([fdo#109274] / [i915#5354]) +5 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#4103] / [i915#4213]) +1 other test skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#9226] / [i915#9261]) +1 other test skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-2/igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#9227])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-2/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#8588])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#4098]) +4 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_draw_crc@draw-method-mmap-gtt.html
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#8812])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#3555] / [i915#3840])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_dsc@dsc-basic.html

  * igt@kms_fence_pin_leak:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#4881]) +1 other test skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([fdo#109274] / [fdo#111767]) +1 other test skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-rkl:          NOTRUN -> [SKIP][110] ([fdo#111825]) +5 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([fdo#109274]) +8 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@2x-nonexisting-fb-interruptible:
    - shard-snb:          NOTRUN -> [SKIP][112] ([fdo#109271]) +4 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-snb6/igt@kms_flip@2x-nonexisting-fb-interruptible.html

  * igt@kms_flip@bo-too-big:
    - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#3637] / [i915#4098]) +3 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_flip@bo-too-big.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#2672]) +2 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#3555]) +9 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#2672]) +7 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([fdo#109285])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#8708]) +35 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move:
    - shard-dg2:          [PASS][119] -> [FAIL][120] ([i915#6880])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][121] ([fdo#111825] / [i915#1825]) +18 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-rkl:          [PASS][122] -> [SKIP][123] ([i915#1849] / [i915#4098]) +4 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#5354]) +44 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#3023]) +7 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#3458]) +29 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#3555] / [i915#8228]) +2 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#6301]) +1 other test skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][129] ([i915#4573]) +1 other test fail
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-apl6/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#8806])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#3555] / [i915#8806])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20:
    - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#8152])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#5235]) +5 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#4098] / [i915#6953] / [i915#8152])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#5235]) +23 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html
    - shard-dg1:          NOTRUN -> [SKIP][136] ([i915#5235]) +15 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg1-13/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html

  * igt@kms_prime@basic-crc-vgem:
    - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#6524] / [i915#6805])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@kms_prime@basic-crc-vgem.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#6524])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-apl:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#658]) +2 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-apl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#658]) +5 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-rkl:          NOTRUN -> [SKIP][141] ([fdo#111068] / [i915#658])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@primary_render:
    - shard-rkl:          NOTRUN -> [SKIP][142] ([i915#1072]) +1 other test skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_psr@primary_render.html

  * igt@kms_psr@psr2_dpms:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#1072]) +15 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_psr@psr2_dpms.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#5461] / [i915#658])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#4235]) +2 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#4235] / [i915#5190])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#3555] / [i915#4098]) +1 other test skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_setmode@invalid-clone-single-crtc-stealing:
    - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#3555] / [i915#4098])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_setmode@invalid-clone-single-crtc-stealing.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#8623])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-apl:          NOTRUN -> [SKIP][150] ([fdo#109271] / [i915#2437])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-apl1/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#2437])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@enable-disable@0-rcs0:
    - shard-dg2:          NOTRUN -> [FAIL][152] ([i915#8724])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          NOTRUN -> [FAIL][153] ([i915#7484])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html

  * igt@perf_pmu@busy-double-start@ccs0:
    - shard-mtlp:         [PASS][154] -> [FAIL][155] ([i915#4349])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-mtlp-5/igt@perf_pmu@busy-double-start@ccs0.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-mtlp-5/igt@perf_pmu@busy-double-start@ccs0.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg2:          NOTRUN -> [FAIL][156] ([i915#6806])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@perf_pmu@frequency@gt0.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#8516])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][158] ([i915#5493])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  * igt@prime_udl:
    - shard-dg2:          NOTRUN -> [SKIP][159] ([fdo#109291])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@prime_udl.html

  * igt@prime_vgem@basic-fence-read:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#3291] / [i915#3708]) +2 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#3708] / [i915#4077])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@fence-read-hang:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#3708])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@prime_vgem@fence-read-hang.html

  * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted:
    - shard-rkl:          NOTRUN -> [FAIL][163] ([i915#9583])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted.html

  * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted:
    - shard-dg2:          NOTRUN -> [FAIL][164] ([i915#9583]) +1 other test fail
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#4818])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@tools_test@sysfs_l3_parity.html

  * igt@v3d/v3d_job_submission@array-job-submission:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#2575]) +18 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@v3d/v3d_job_submission@array-job-submission.html

  * igt@v3d/v3d_submit_csd@bad-multisync-in-sync:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([fdo#109315]) +3 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@v3d/v3d_submit_csd@bad-multisync-in-sync.html

  * igt@vc4/vc4_create_bo@create-bo-0:
    - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#7711]) +1 other test skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@vc4/vc4_create_bo@create-bo-0.html

  * igt@vc4/vc4_wait_seqno@bad-seqno-1ns:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#7711]) +15 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@vc4/vc4_wait_seqno@bad-seqno-1ns.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [FAIL][170] ([i915#7742]) -> [PASS][171]
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@drm_read@short-buffer-block:
    - shard-rkl:          [SKIP][172] ([i915#1845] / [i915#4098]) -> [PASS][173] +7 other tests pass
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@drm_read@short-buffer-block.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@drm_read@short-buffer-block.html

  * igt@fbdev@read:
    - shard-rkl:          [SKIP][174] ([i915#2582]) -> [PASS][175]
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@fbdev@read.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-4/igt@fbdev@read.html

  * igt@gem_ctx_persistence@engines-hang@bcs0:
    - shard-rkl:          [SKIP][176] ([i915#6252]) -> [PASS][177]
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@gem_ctx_persistence@engines-hang@bcs0.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [FAIL][178] ([i915#5784]) -> [PASS][179]
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-dg1-19/igt@gem_eio@reset-stress.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg1-13/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][180] ([i915#2842]) -> [PASS][181]
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-rkl:          [FAIL][182] ([i915#2842]) -> [PASS][183] +2 other tests pass
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@gem_exec_fair@basic-pace@vecs0.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-rkl:          [SKIP][184] ([fdo#109313]) -> [PASS][185]
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_reloc@basic-cpu-read-active:
    - shard-rkl:          [SKIP][186] ([i915#3281]) -> [PASS][187] +5 other tests pass
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-2/igt@gem_exec_reloc@basic-cpu-read-active.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-read-active.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg2:          [ABORT][188] ([i915#7975] / [i915#8213]) -> [PASS][189] +1 other test pass
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-dg2-6/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_madvise@dontneed-before-pwrite:
    - shard-rkl:          [SKIP][190] ([i915#3282]) -> [PASS][191] +3 other tests pass
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@gem_madvise@dontneed-before-pwrite.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@gem_madvise@dontneed-before-pwrite.html

  * igt@gem_userptr_blits@stress-purge:
    - shard-dg1:          [DMESG-WARN][192] ([i915#4423]) -> [PASS][193]
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-dg1-18/igt@gem_userptr_blits@stress-purge.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg1-13/igt@gem_userptr_blits@stress-purge.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-dg1:          [FAIL][194] ([i915#3591]) -> [PASS][195]
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          [SKIP][196] ([i915#4387]) -> [PASS][197]
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@i915_pm_sseu@full-enable.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@i915_pm_sseu@full-enable.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [FAIL][198] ([i915#5138]) -> [PASS][199]
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [FAIL][200] ([i915#3743]) -> [PASS][201]
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-tglu-4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * {igt@kms_ccs@pipe-a-crc-primary-rotation-180-y-tiled-gen12-rc-ccs}:
    - shard-rkl:          [SKIP][202] ([i915#4098]) -> [PASS][203] +2 other tests pass
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y-tiled-gen12-rc-ccs.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y-tiled-gen12-rc-ccs.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][204] ([i915#2346]) -> [PASS][205]
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@wf_vblank-ts-check@c-edp1:
    - shard-mtlp:         [DMESG-WARN][206] ([i915#9157]) -> [PASS][207]
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-mtlp-2/igt@kms_flip@wf_vblank-ts-check@c-edp1.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-mtlp-8/igt@kms_flip@wf_vblank-ts-check@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:
    - shard-rkl:          [SKIP][208] ([i915#1849] / [i915#4098]) -> [PASS][209] +5 other tests pass
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html

  * {igt@kms_plane@planar-pixel-format-settings}:
    - shard-rkl:          [SKIP][210] ([i915#9581]) -> [PASS][211]
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_plane@planar-pixel-format-settings.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-4/igt@kms_plane@planar-pixel-format-settings.html

  * igt@kms_plane_multiple@tiling-y@pipe-a-hdmi-a-2:
    - shard-rkl:          [INCOMPLETE][212] -> [PASS][213]
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-2/igt@kms_plane_multiple@tiling-y@pipe-a-hdmi-a-2.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_plane_multiple@tiling-y@pipe-a-hdmi-a-2.html

  * {igt@kms_pm_rpm@dpms-lpsp}:
    - shard-dg1:          [SKIP][214] ([i915#9519]) -> [PASS][215]
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-dg1-13/igt@kms_pm_rpm@dpms-lpsp.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg1-19/igt@kms_pm_rpm@dpms-lpsp.html

  * {igt@kms_pm_rpm@i2c}:
    - shard-rkl:          [SKIP][216] ([fdo#109308]) -> [PASS][217]
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_pm_rpm@i2c.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@kms_pm_rpm@i2c.html

  * {igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait}:
    - shard-rkl:          [SKIP][218] ([i915#9519]) -> [PASS][219] +1 other test pass
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:
    - shard-rkl:          [INCOMPLETE][220] ([i915#8875] / [i915#9569]) -> [PASS][221]
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-rkl:          [SKIP][222] ([fdo#109295] / [i915#3708] / [i915#4098]) -> [PASS][223]
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@prime_vgem@basic-fence-flip.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@prime_vgem@basic-fence-flip.html

  
#### Warnings ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-dg1:          [INCOMPLETE][224] ([i915#9408]) -> [ABORT][225] ([i915#9618])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-dg1-15/igt@device_reset@unbind-reset-rebind.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg1-13/igt@device_reset@unbind-reset-rebind.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          [SKIP][226] ([i915#7957]) -> [SKIP][227] ([i915#9323])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@gem_ccs@block-multicopy-compressed.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_create@hog-create@smem0:
    - shard-mtlp:         [FAIL][228] ([i915#8758]) -> [ABORT][229] ([i915#9414])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-mtlp-4/igt@gem_create@hog-create@smem0.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-mtlp-8/igt@gem_create@hog-create@smem0.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          [FAIL][230] ([i915#2842]) -> [SKIP][231] ([i915#9591]) +1 other test skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-2/igt@gem_exec_fair@basic-none@bcs0.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [INCOMPLETE][232] ([i915#5566]) -> [ABORT][233] ([i915#5566])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-apl1/igt@gen9_exec_parse@allowed-all.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-apl7/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
    - shard-rkl:          [SKIP][234] ([i915#1845] / [i915#4098]) -> [SKIP][235] ([i915#5286]) +2 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          [SKIP][236] ([i915#5286]) -> [SKIP][237] ([i915#1845] / [i915#4098]) +3 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@kms_big_fb@4-tiled-addfb.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-rkl:          [SKIP][238] ([i915#1845] / [i915#4098]) -> [SKIP][239] ([fdo#111614] / [i915#3638]) +2 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-270.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-rkl:          [SKIP][240] ([fdo#111614] / [i915#3638]) -> [SKIP][241] ([i915#1845] / [i915#4098]) +2 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-rkl:          [SKIP][242] ([fdo#110723]) -> [SKIP][243] ([i915#1845] / [i915#4098]) +1 other test skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-rkl:          [SKIP][244] ([i915#1845] / [i915#4098]) -> [SKIP][245] ([fdo#110723]) +2 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_color@deep-color:
    - shard-rkl:          [SKIP][246] ([i915#3555]) -> [SKIP][247] ([i915#9608])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-2/igt@kms_color@deep-color.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_color@deep-color.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-rkl:          [SKIP][248] ([i915#1845] / [i915#4098]) -> [SKIP][249] ([i915#3116])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-1.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-rkl:          [SKIP][250] ([i915#1845] / [i915#4098]) -> [SKIP][251] ([i915#3555]) +2 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-max-size.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-rkl:          [SKIP][252] ([i915#3555]) -> [SKIP][253] ([i915#1845] / [i915#4098]) +2 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-rkl:          [SKIP][254] ([i915#1845] / [i915#4098]) -> [SKIP][255] ([i915#3359])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-512x170.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-rkl:          [SKIP][256] ([i915#1845] / [i915#4098]) -> [SKIP][257] ([fdo#111767] / [fdo#111825])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          [SKIP][258] ([i915#4103]) -> [SKIP][259] ([i915#1845] / [i915#4098])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-rkl:          [SKIP][260] ([i915#1845] / [i915#4098]) -> [SKIP][261] ([fdo#111825]) +3 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][262] ([fdo#110189] / [i915#3955]) -> [SKIP][263] ([i915#3955])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@kms_fbcon_fbt@psr.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@kms_fbcon_fbt@psr.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][264] ([i915#3955]) -> [SKIP][265] ([fdo#110189] / [i915#3955])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-rkl:          [SKIP][266] ([i915#1849] / [i915#4098]) -> [SKIP][267] ([i915#3023]) +9 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][268] ([i915#1849] / [i915#4098]) -> [SKIP][269] ([fdo#111825])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-rkl:          [SKIP][270] ([i915#1849] / [i915#4098]) -> [SKIP][271] ([i915#5439])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - shard-rkl:          [SKIP][272] ([i915#3023]) -> [SKIP][273] ([i915#1849] / [i915#4098]) +11 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][274] ([fdo#111825] / [i915#1825]) -> [SKIP][275] ([i915#1849] / [i915#4098]) +16 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          [SKIP][276] ([i915#1849] / [i915#4098]) -> [SKIP][277] ([fdo#111825] / [i915#1825]) +15 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-rkl:          [SKIP][278] ([i915#3555] / [i915#8228]) -> [SKIP][279] ([i915#1845] / [i915#4098])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-2/igt@kms_hdr@bpc-switch.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-rkl:          [SKIP][280] ([i915#1845] / [i915#4098]) -> [SKIP][281] ([i915#3555] / [i915#8228])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_hdr@static-toggle-suspend.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          [SKIP][282] ([i915#1845] / [i915#4098]) -> [SKIP][283] ([i915#6301])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-4/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_panel_fitting@legacy:
    - shard-rkl:          [SKIP][284] ([i915#6301]) -> [SKIP][285] ([i915#1845] / [i915#4098])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@kms_panel_fitting@legacy.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_panel_fitting@legacy.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-rkl:          [SKIP][286] ([fdo#111615] / [i915#5289]) -> [SKIP][287] ([i915#1845] / [i915#4098])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1339]: https://gitlab.freedesktop.org/drm/intel/issues/1339
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5507]: https://gitlab.freedesktop.org/drm/intel/issues/5507
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5882]: https://gitlab.freedesktop.org/drm/intel/issues/5882
  [i915#5889]: https://gitlab.freedesktop.org/drm/intel/issues/5889
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6188]: https://gitlab.freedesktop.org/drm/intel/issues/6188
  [i915#6228]: https://gitlab.freedesktop.org/drm/intel/issues/6228
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
  [i915#6806]: https://gitlab.freedesktop.org/drm/intel/issues/6806
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7036]: https://gitlab.freedesktop.org/drm/intel/issues/7036
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
  [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
  [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8399]: https://gitlab.freedesktop.org/drm/intel/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8588]: https://gitlab.freedesktop.org/drm/intel/issues/8588
  [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8724]: https://gitlab.freedesktop.org/drm/intel/issues/8724
  [i915#8758]: https://gitlab.freedesktop.org/drm/intel/issues/8758
  [i915#8806]: https://gitlab.freedesktop.org/drm/intel/issues/8806
  [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
  [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
  [i915#9067]: https://gitlab.freedesktop.org/drm/intel/issues/9067
  [i915#9157]: https://gitlab.freedesktop.org/drm/intel/issues/9157
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
  [i915#9261]: https://gitlab.freedesktop.org/drm/intel/issues/9261
  [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
  [i915#9340]: https://gitlab.freedesktop.org/drm/intel/issues/9340
  [i915#9408]: https://gitlab.freedesktop.org/drm/intel/issues/9408
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9531]: https://gitlab.freedesktop.org/drm/intel/issues/9531
  [i915#9569]: https://gitlab.freedesktop.org/drm/intel/issues/9569
  [i915#9581]: https://gitlab.freedesktop.org/drm/intel/issues/9581
  [i915#9583]: https://gitlab.freedesktop.org/drm/intel/issues/9583
  [i915#9591]: https://gitlab.freedesktop.org/drm/intel/issues/9591
  [i915#9606]: https://gitlab.freedesktop.org/drm/intel/issues/9606
  [i915#9608]: https://gitlab.freedesktop.org/drm/intel/issues/9608
  [i915#9618]: https://gitlab.freedesktop.org/drm/intel/issues/9618
  [i915#9638]: https://gitlab.freedesktop.org/drm/intel/issues/9638


Build changes
-------------

  * Linux: CI_DRM_13859 -> Patchwork_126250v1

  CI-20190529: 20190529
  CI_DRM_13859: 9155ae0ae05f320d84eaf2c4e81413bf937a5f3c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7581: 7581
  Patchwork_126250v1: 9155ae0ae05f320d84eaf2c4e81413bf937a5f3c @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/index.html

--===============7846453982908131492==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915/display: Remove dead code around intel_atomic_helper-&gt;free_list</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126250/">https://patchwork.freedesktop.org/series/126250/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13859_full -&gt; Patchwork_126250v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126250v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_126250v1_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/index.html</p>
<h2>Participating hosts (9 -&gt; 11)</h2>
<p>Additional (2): shard-mtlp0 shard-rkl0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_126250v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@nop:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-glk8/igt@gem_exec_balancer@nop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-glk1/igt@gem_exec_balancer@nop.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-3.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126250v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@device_reset@unbind-reset-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5507">i915#5507</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@drm_fdinfo@busy-hang@bcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8414">i915#8414</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-idle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@drm_fdinfo@virtual-idle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-2/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@gem_busy@semaphore.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3936">i915#3936</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-dg2-2/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7297">i915#7297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7697">i915#7697</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@gem_ctx_isolation@preservation-s3@vcs1.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@gem_ctx_persistence@heartbeat-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8555">i915#8555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5882">i915#5882</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-true-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@gem_exec_balancer@bonded-true-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4812">i915#4812</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-incremental:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-apl1/igt@gem_exec_capture@many-4k-incremental.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9606">i915#9606</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-glk6/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@gem_exec_fair@basic-throttle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3539">i915#3539</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4852">i915#4852</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@gem_exec_params@secure-non-master.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=112283">fdo#112283</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent16:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@gem_exec_reloc@basic-concurrent16.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@gem_exec_reloc@basic-wc-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@gem_exec_reloc@basic-wc-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@gem_exec_reloc@basic-write-read-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@gem_exec_schedule@preempt-queue-contexts-chain.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4537">i915#4537</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-tglu-9/igt@gem_exec_suspend@basic-s4-devices@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4860">i915#4860</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-apl6/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@gem_mmap_gtt@cpuset-big-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@gem_mmap_wc@close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@gem_partial_pwrite_pread@reads-uncached.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-4/igt@gem_partial_pwrite_pread@reads-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@gem_pread@snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/768">i915#768</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +3 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8411">i915#8411</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@gem_softpin@evict-snoop.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109312">fdo#109312</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@gem_softpin@evict-snoop-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4885">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@spin-all-new:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@gem_spin_batch@spin-all-new.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5889">i915#5889</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110542">fdo#110542</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4880">i915#4880</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@gem_userptr_blits@unsync-unmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen3_render_linear_blits:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@gen3_render_linear_blits.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>) +2 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@gen9_exec_parse@cmd-crossing-page.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-untiled:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-apl1/igt@i915_pipe_stress@stress-xrgb8888-untiled.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7036">i915#7036</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@i915_pm_freq_api@freq-reset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@media-rc6-accuracy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@i915_pm_rc6_residency@media-rc6-accuracy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109293">fdo#109293</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@i915_query@query-topology-coherent-slice-mask.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6188">i915#6188</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg1-13/igt@kms_async_flips@crc@pipe-b-hdmi-a-3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8247">i915#8247</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_async_flips@invalid-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6228">i915#6228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_big_fb@linear-64bpp-rotate-270.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-tglu-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110723">fdo#110723</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_big_joiner@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@extended-modeset-hang-oldfb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_busy@extended-modeset-hang-oldfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_cdclk@plane-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@gamma:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@kms_chamelium_color@gamma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-apl1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +129 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_content_protection@lic@pipe-a-dp-4.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@kms_content_protection@srm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-apl1/igt@kms_content_protection@uevent@pipe-a-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1339">i915#1339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-4.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1339">i915#1339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-apl1/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111767">fdo#111767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-2/igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9226">i915#9226</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9261">i915#9261</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-2/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9227">i915#9227</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8588">i915#8588</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +4 other tests skip</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8812">i915#8812</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@kms_fence_pin_leak.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4881">i915#4881</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111767">fdo#111767</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_flip@2x-flip-vs-panning-vs-hang.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@kms_flip@2x-modeset-vs-vblank-race.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb-interruptible:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-snb6/igt@kms_flip@2x-nonexisting-fb-interruptible.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@bo-too-big:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_flip@bo-too-big.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +35 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +44 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6301">i915#6301</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-apl6/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4573">i915#4573</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_plane_multiple@tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8806">i915#8806</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8806">i915#8806</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +23 other tests skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg1-13/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +15 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-vgem:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@kms_prime@basic-crc-vgem.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6524">i915#6524</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6805">i915#6805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-apl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_psr@primary_render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_psr@psr2_dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5461">i915#5461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_rotation_crc@primary-rotation-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4235">i915#4235</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4235">i915#4235</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@kms_setmode@clone-exclusive-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc-stealing:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_setmode@invalid-clone-single-crtc-stealing.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@kms_tiled_display@basic-test-pattern.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-apl1/igt@kms_writeback@writeback-fb-id.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@enable-disable@0-rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8724">i915#8724</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7484">i915#7484</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-mtlp-5/igt@perf_pmu@busy-double-start@ccs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-mtlp-5/igt@perf_pmu@busy-double-start@ccs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@perf_pmu@frequency@gt0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6806">i915#6806</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-1/igt@perf_pmu@rc6@other-idle-gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_udl:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@prime_udl.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@prime_vgem@basic-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@prime_vgem@fence-read-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9583">i915#9583</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9583">i915#9583</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-6/igt@tools_test@sysfs_l3_parity.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4818">i915#4818</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_job_submission@array-job-submission:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@v3d/v3d_job_submission@array-job-submission.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-multisync-in-sync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@v3d/v3d_submit_csd@bad-multisync-in-sync.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_create_bo@create-bo-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@vc4/vc4_create_bo@create-bo-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_seqno@bad-seqno-1ns:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-2/igt@vc4/vc4_wait_seqno@bad-seqno-1ns.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>) +15 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@drm_read@short-buffer-block:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@drm_read@short-buffer-block.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@drm_read@short-buffer-block.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-4/igt@fbdev@read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hang@bcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6252">i915#6252</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@gem_ctx_persistence@engines-hang@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-dg1-19/igt@gem_eio@reset-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg1-13/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109313">fdo#109313</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-active:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-2/igt@gem_exec_reloc@basic-cpu-read-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-read-active.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-dg2-6/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-pwrite:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@gem_madvise@dontneed-before-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@gem_madvise@dontneed-before-pwrite.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@stress-purge:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-dg1-18/igt@gem_userptr_blits@stress-purge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg1-13/igt@gem_userptr_blits@stress-purge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4387">i915#4387</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@i915_pm_sseu@full-enable.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#5138</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-tglu-4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_ccs@pipe-a-crc-primary-rotation-180-y-tiled-gen12-rc-ccs}:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y-tiled-gen12-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y-tiled-gen12-rc-ccs.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check@c-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-mtlp-2/igt@kms_flip@wf_vblank-ts-check@c-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9157">i915#9157</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-mtlp-8/igt@kms_flip@wf_vblank-ts-check@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>{igt@kms_plane@planar-pixel-format-settings}:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_plane@planar-pixel-format-settings.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9581">i915#9581</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-4/igt@kms_plane@planar-pixel-format-settings.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-2/igt@kms_plane_multiple@tiling-y@pipe-a-hdmi-a-2.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_plane_multiple@tiling-y@pipe-a-hdmi-a-2.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@dpms-lpsp}:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-dg1-13/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg1-19/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@i2c}:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_pm_rpm@i2c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109308">fdo#109308</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@kms_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait}:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8875">i915#8875</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9569">i915#9569</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-1/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@prime_vgem@basic-fence-flip.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-dg1-15/igt@device_reset@unbind-reset-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9408">i915#9408</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-dg1-13/igt@device_reset@unbind-reset-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9618">i915#9618</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7957">i915#7957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@hog-create@smem0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-mtlp-4/igt@gem_create@hog-create@smem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8758">i915#8758</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-mtlp-8/igt@gem_create@hog-create@smem0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9414">i915#9414</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-2/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9591">i915#9591</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-apl1/igt@gen9_exec_parse@allowed-all.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-apl7/igt@gen9_exec_parse@allowed-all.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3638">i915#3638</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110723">fdo#110723</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110723">fdo#110723</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-2/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9608">i915#9608</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111767">fdo#111767</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-2/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-7/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-4/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-1/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6301">i915#6301</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13859/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5289">i915#5289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126250v1/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13859 -&gt; Patchwork_126250v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13859: 9155ae0ae05f320d84eaf2c4e81413bf937a5f3c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7581: 7581<br />
  Patchwork_126250v1: 9155ae0ae05f320d84eaf2c4e81413bf937a5f3c @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7846453982908131492==--
