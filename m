Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEFFB1407A0
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 11:12:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 014DB6F4CE;
	Fri, 17 Jan 2020 10:12:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8A31E6F4CE;
 Fri, 17 Jan 2020 10:12:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 82222A010F;
 Fri, 17 Jan 2020 10:12:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: John.C.Harrison@Intel.com
Date: Fri, 17 Jan 2020 10:12:13 -0000
Message-ID: <157925593352.26756.8798821077520101031@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115024053.11333-1-John.C.Harrison@Intel.com>
In-Reply-To: <20200115024053.11333-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Update_to_GuC_FW_v40?=
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

Series: drm/i915/guc: Update to GuC FW v40
URL   : https://patchwork.freedesktop.org/series/72032/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7746_full -> Patchwork_16104_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16104_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +10 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-iclb5/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_create@basic-files:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([fdo#111735])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb2/igt@gem_ctx_create@basic-files.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-tglb3/igt@gem_ctx_create@basic-files.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +6 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-kbl3/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb1/igt@gem_ctx_isolation@vcs1-none.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-iclb6/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#679])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-glk4/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-glk4/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [PASS][11] -> [FAIL][12] ([i915#232])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-snb4/igt@gem_eio@reset-stress.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-snb7/igt@gem_eio@reset-stress.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([i915#677])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb5/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-render:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111677] / [i915#472])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb2/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#463] / [i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb8/igt@gem_exec_schedule@smoketest-bsd1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-tglb6/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112146]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb8/igt@gem_exec_schedule@wide-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-iclb2/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-kbl:          [PASS][21] -> [TIMEOUT][22] ([fdo#112271] / [i915#530])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-kbl2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-kbl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-tglb:         [PASS][23] -> [TIMEOUT][24] ([fdo#112126] / [fdo#112271] / [i915#530])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb3/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-tglb3/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-apl:          [PASS][25] -> [TIMEOUT][26] ([fdo#112271] / [i915#530])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-apl8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-kbl:          [PASS][27] -> [INCOMPLETE][28] ([fdo#103665] / [i915#530])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-kbl1/igt@gem_persistent_relocs@forked-thrashing.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-kbl3/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#644])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-skl9/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [PASS][31] -> [INCOMPLETE][32] ([i915#69])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl1/igt@gem_softpin@noreloc-s3.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-skl4/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-many-each:
    - shard-tglb:         [PASS][33] -> [INCOMPLETE][34] ([i915#472] / [i915#707])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb5/igt@gem_sync@basic-many-each.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-tglb5/igt@gem_sync@basic-many-each.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][35] -> [FAIL][36] ([i915#413]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb1/igt@i915_pm_rps@reset.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-iclb5/igt@i915_pm_rps@reset.html

  * igt@kms_color@pipe-c-ctm-blue-to-red:
    - shard-kbl:          [PASS][37] -> [DMESG-WARN][38] ([i915#62] / [i915#92]) +32 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-kbl1/igt@kms_color@pipe-c-ctm-blue-to-red.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-kbl4/igt@kms_color@pipe-c-ctm-blue-to-red.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][39] -> [INCOMPLETE][40] ([i915#221]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl4/igt@kms_flip@flip-vs-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-skl3/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-stridechange:
    - shard-tglb:         [PASS][41] -> [FAIL][42] ([i915#49]) +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-apl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([fdo#108145]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109642] / [fdo#111068])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-iclb6/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][49] -> [FAIL][50] ([i915#173])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@kms_psr@no_drrs.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#109441]) +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][53] -> [FAIL][54] ([i915#31])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl6/igt@kms_setmode@basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-apl7/igt@kms_setmode@basic.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#109276]) +19 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-iclb6/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@drm_import_export@prime:
    - shard-hsw:          [INCOMPLETE][57] ([CI#80] / [i915#61]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-hsw5/igt@drm_import_export@prime.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-hsw2/igt@drm_import_export@prime.html

  * igt@gem_busy@close-race:
    - shard-hsw:          [TIMEOUT][59] ([fdo#112271]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-hsw5/igt@gem_busy@close-race.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-hsw5/igt@gem_busy@close-race.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-apl:          [FAIL][61] ([i915#679]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl3/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-apl8/igt@gem_ctx_persistence@bcs0-mixed-process.html
    - shard-skl:          [FAIL][63] ([i915#679]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl9/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-skl6/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed:
    - shard-iclb:         [SKIP][65] ([fdo#109276] / [fdo#112080]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb5/igt@gem_ctx_persistence@vcs1-mixed.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][67] ([fdo#110841]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][69] ([i915#470] / [i915#472]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb8/igt@gem_exec_parallel@contexts.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-tglb5/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][71] ([fdo#112080]) -> [PASS][72] +11 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][73] ([fdo#112146]) -> [PASS][74] +7 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-tglb:         [INCOMPLETE][75] ([fdo#111677] / [i915#472]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb8/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-tglb4/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-chain-blt:
    - shard-tglb:         [INCOMPLETE][77] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-blt.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-tglb5/igt@gem_exec_schedule@preempt-queue-chain-blt.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +4 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-kbl6/igt@gem_exec_suspend@basic-s3.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-kbl2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [TIMEOUT][81] ([fdo#112271] / [i915#530]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-hsw:          [TIMEOUT][83] ([fdo#112271] / [i915#530]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-hsw5/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-skl:          [TIMEOUT][85] ([fdo#112271] / [i915#530]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-skl4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][87] ([i915#644]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [DMESG-WARN][89] ([i915#716]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-kbl7/igt@gen9_exec_parse@allowed-all.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-kbl3/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_selftest@live_hangcheck:
    - shard-tglb:         [INCOMPLETE][91] -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb5/igt@i915_selftest@live_hangcheck.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-tglb8/igt@i915_selftest@live_hangcheck.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [DMESG-WARN][93] ([i915#109]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl4/igt@kms_color@pipe-b-ctm-0-75.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-skl6/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [DMESG-WARN][95] ([i915#180]) -> [PASS][96] +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][97] ([i915#72]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [FAIL][99] ([i915#79]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][101] ([i915#79]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-skl7/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt:
    - shard-tglb:         [FAIL][103] ([i915#49]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_plane@plane-position-covered-pipe-c-planes:
    - shard-skl:          [FAIL][105] ([i915#247]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl8/igt@kms_plane@plane-position-covered-pipe-c-planes.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-skl1/igt@kms_plane@plane-position-covered-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][107] ([fdo#108145] / [i915#265]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][109] ([fdo#109441]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb8/igt@kms_psr@psr2_basic.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][111] ([fdo#109276]) -> [PASS][112] +22 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][113] ([IGT#28]) -> [SKIP][114] ([fdo#109276] / [fdo#112080])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][115] ([i915#468]) -> [FAIL][116] ([i915#454])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb6/igt@i915_pm_dc@dc6-psr.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-tglb4/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][117] ([fdo#107724]) -> [SKIP][118] ([fdo#109349])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
    - shard-kbl:          [FAIL][119] ([fdo#108145]) -> [DMESG-FAIL][120] ([fdo#108145] / [i915#62])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][121] ([i915#180]) -> [INCOMPLETE][122] ([fdo#103665])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#247]: https://gitlab.freedesktop.org/drm/intel/issues/247
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7746 -> Patchwork_16104

  CI-20190529: 20190529
  CI_DRM_7746: 84d16aa256204bccaaf382504a69fe0822e67ba0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5365: e9ec0ed63b25c86861ffac3c8601cc4d1b910b65 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16104: de48c2fe7caafa728dea69252f8ee998131c43eb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16104/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
