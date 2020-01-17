Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B6D14058E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 09:38:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 799656F499;
	Fri, 17 Jan 2020 08:38:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E11FA6F499;
 Fri, 17 Jan 2020 08:38:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D81F7A0019;
 Fri, 17 Jan 2020 08:38:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Fri, 17 Jan 2020 08:38:11 -0000
Message-ID: <157925029185.26757.2893817567862761449@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115013143.34961-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20200115013143.34961-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgQ29t?=
 =?utf-8?q?mit_early_to_GuC?=
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

Series: Commit early to GuC
URL   : https://patchwork.freedesktop.org/series/72031/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7746_full -> Patchwork_16103_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16103_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries_display_on:
    - shard-skl:          [PASS][1] -> [DMESG-WARN][2] ([i915#109]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl2/igt@debugfs_test@read_all_entries_display_on.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-skl7/igt@debugfs_test@read_all_entries_display_on.html

  * igt@gem_ctx_create@basic-files:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([fdo#111735])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb2/igt@gem_ctx_create@basic-files.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-tglb3/igt@gem_ctx_create@basic-files.html

  * igt@gem_ctx_persistence@processes:
    - shard-iclb:         [PASS][5] -> [FAIL][6] ([i915#570])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb8/igt@gem_ctx_persistence@processes.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-iclb2/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-iclb8/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#679])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-glk3/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-glk5/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_eio@reset-stress:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#470])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb6/igt@gem_eio@reset-stress.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-tglb8/igt@gem_eio@reset-stress.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          [PASS][13] -> [FAIL][14] ([i915#232])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-snb5/igt@gem_eio@unwedge-stress.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-snb7/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#110854])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-iclb6/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([i915#677]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd2:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([fdo#111606] / [fdo#111677] / [i915#472])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-bsd2.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-vebox:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([fdo#111677] / [i915#472])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb3/igt@gem_exec_schedule@preempt-queue-vebox.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-tglb3/igt@gem_exec_schedule@preempt-queue-vebox.html

  * igt@gem_exec_schedule@smoketest-blt:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#470] / [i915#472])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb5/igt@gem_exec_schedule@smoketest-blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-tglb3/igt@gem_exec_schedule@smoketest-blt.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#112146]) +5 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb8/igt@gem_exec_schedule@wide-bsd.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-iclb2/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-kbl:          [PASS][27] -> [TIMEOUT][28] ([fdo#112271] / [i915#530])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-kbl6/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-apl:          [PASS][29] -> [TIMEOUT][30] ([fdo#112271] / [i915#530])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-hsw:          [PASS][31] -> [TIMEOUT][32] ([fdo#112271] / [i915#530])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-tglb:         [PASS][33] -> [FAIL][34] ([i915#520])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb6/igt@gem_persistent_relocs@forked-thrashing.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-tglb8/igt@gem_persistent_relocs@forked-thrashing.html
    - shard-kbl:          [PASS][35] -> [INCOMPLETE][36] ([fdo#103665] / [i915#530])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-kbl1/igt@gem_persistent_relocs@forked-thrashing.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-kbl6/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [PASS][37] -> [INCOMPLETE][38] ([i915#707] / [i915#796])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb2/igt@gem_pipe_control_store_loop@reused-buffer.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-tglb3/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl1/igt@gem_softpin@noreloc-s3.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-apl1/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][41] -> [INCOMPLETE][42] ([i915#472])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb7/igt@gem_sync@basic-store-all.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-tglb6/igt@gem_sync@basic-store-all.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][43] -> [FAIL][44] ([i915#49]) +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [PASS][45] -> [DMESG-WARN][46] ([i915#180])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([fdo#108145]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#109642] / [fdo#111068])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-iclb1/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#109441]) +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][53] -> [FAIL][54] ([i915#31])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl6/igt@kms_setmode@basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-apl7/igt@kms_setmode@basic.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#112080]) +8 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@perf_pmu@init-busy-vcs1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-iclb8/igt@perf_pmu@init-busy-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][57] -> [SKIP][58] ([fdo#109276]) +16 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-iclb8/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@close-race:
    - shard-hsw:          [TIMEOUT][59] ([fdo#112271]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-hsw5/igt@gem_busy@close-race.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-hsw2/igt@gem_busy@close-race.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-apl:          [FAIL][61] ([i915#679]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl3/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-apl2/igt@gem_ctx_persistence@bcs0-mixed-process.html
    - shard-skl:          [FAIL][63] ([i915#679]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl9/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-skl2/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][65] ([fdo#109276] / [fdo#112080]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][67] ([fdo#110841]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [INCOMPLETE][69] ([i915#472]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb6/igt@gem_exec_nop@basic-sequential.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-tglb5/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][71] ([i915#470] / [i915#472]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb8/igt@gem_exec_parallel@contexts.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-tglb4/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][73] ([fdo#112080]) -> [PASS][74] +9 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][75] ([i915#677]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][77] ([fdo#112146]) -> [PASS][78] +4 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-blt:
    - shard-tglb:         [INCOMPLETE][79] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-blt.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-tglb7/igt@gem_exec_schedule@preempt-queue-chain-blt.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [SKIP][81] ([fdo#109276]) -> [PASS][82] +23 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb6/igt@gem_exec_schedule@promotion-bsd1.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-iclb4/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [DMESG-WARN][83] ([i915#180]) -> [PASS][84] +6 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-kbl6/igt@gem_exec_suspend@basic-s3.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-kbl2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [TIMEOUT][85] ([fdo#112271] / [i915#530]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-hsw:          [TIMEOUT][87] ([fdo#112271] / [i915#530]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-hsw5/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-skl:          [TIMEOUT][89] ([fdo#112271] / [i915#530]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-skl4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-tglb:         [FAIL][91] ([i915#520]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-tglb4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][93] ([i915#644]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][95] ([i915#472] / [i915#707]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb7/igt@gem_sync@basic-each.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-tglb1/igt@gem_sync@basic-each.html

  * igt@i915_selftest@live_hangcheck:
    - shard-tglb:         [INCOMPLETE][97] -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb5/igt@i915_selftest@live_hangcheck.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-tglb7/igt@i915_selftest@live_hangcheck.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [DMESG-WARN][99] ([i915#109]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl4/igt@kms_color@pipe-b-ctm-0-75.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-skl1/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][101] ([i915#72]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [FAIL][103] ([i915#79]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][105] ([i915#79]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-skl4/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-glk:          [INCOMPLETE][107] ([i915#58] / [k.org#198133]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-glk8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-glk7/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-apl:          [DMESG-WARN][109] ([i915#180]) -> [PASS][110] +4 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt:
    - shard-tglb:         [FAIL][111] ([i915#49]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][113] ([fdo#108145]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][115] ([fdo#109441]) -> [PASS][116] +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb6/igt@kms_psr@psr2_cursor_plane_move.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][117] ([IGT#28]) -> [SKIP][118] ([fdo#109276] / [fdo#112080])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][119] ([fdo#107724]) -> [SKIP][120] ([fdo#109349])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][121] ([i915#180]) -> [INCOMPLETE][122] ([fdo#103665])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7746 -> Patchwork_16103

  CI-20190529: 20190529
  CI_DRM_7746: 84d16aa256204bccaaf382504a69fe0822e67ba0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5365: e9ec0ed63b25c86861ffac3c8601cc4d1b910b65 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16103: 522c1abc9b0b19d9d332e20848cdde8f4a27839d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16103/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
