Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BDF13FC3C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 23:35:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 969C86EE8A;
	Thu, 16 Jan 2020 22:35:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 86CB36EE76;
 Thu, 16 Jan 2020 22:35:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7E521A0094;
 Thu, 16 Jan 2020 22:35:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 16 Jan 2020 22:35:29 -0000
Message-ID: <157921412948.12912.15801776231483618181@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200114160030.2468927-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200114160030.2468927-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Add_a_mock_i915=5Fvma_to_the_mock=5Fring_=28?=
 =?utf-8?q?rev2=29?=
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

Series: drm/i915/selftests: Add a mock i915_vma to the mock_ring (rev2)
URL   : https://patchwork.freedesktop.org/series/72005/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7740_full -> Patchwork_16096_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16096_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb1/igt@gem_ctx_isolation@vcs1-clean.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-iclb8/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#570])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-skl2/igt@gem_ctx_persistence@processes.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-skl4/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_create@forked:
    - shard-glk:          [PASS][5] -> [TIMEOUT][6] ([fdo#112271] / [i915#940])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-glk3/igt@gem_exec_create@forked.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-glk8/igt@gem_exec_create@forked.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#472])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-tglb1/igt@gem_exec_nop@basic-sequential.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-tglb5/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112080]) +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([i915#677])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +13 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb1/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-iclb8/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-render:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111677] / [i915#472])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-tglb2/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html

  * igt@gem_exec_schedule@preempt-queue-contexts-render:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111606] / [fdo#111677] / [i915#472]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-render.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-render.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112146]) +5 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb8/igt@gem_exec_schedule@reorder-wide-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-kbl:          [PASS][21] -> [TIMEOUT][22] ([fdo#112271] / [i915#530])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-kbl1/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-kbl1/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-kbl:          [PASS][23] -> [INCOMPLETE][24] ([fdo#103665] / [i915#530])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-kbl4/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-kbl4/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-glk:          [PASS][25] -> [TIMEOUT][26] ([fdo#112271] / [i915#530])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-glk1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-glk2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
    - shard-hsw:          [PASS][27] -> [TIMEOUT][28] ([fdo#112271] / [i915#530])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-hsw1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-tglb:         [PASS][29] -> [FAIL][30] ([i915#520])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-tglb1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-tglb4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [PASS][31] -> [INCOMPLETE][32] ([i915#707] / [i915#796])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-tglb7/igt@gem_pipe_control_store_loop@reused-buffer.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-tglb3/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [PASS][33] -> [INCOMPLETE][34] ([i915#472] / [i915#707])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-tglb2/igt@gem_sync@basic-each.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-tglb4/igt@gem_sync@basic-each.html

  * igt@gem_wait@write-wait-vcs0:
    - shard-skl:          [PASS][35] -> [DMESG-WARN][36] ([i915#109]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-skl8/igt@gem_wait@write-wait-vcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-skl10/igt@gem_wait@write-wait-vcs0.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - shard-iclb:         [PASS][37] -> [INCOMPLETE][38] ([i915#140] / [i915#189])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb1/igt@i915_pm_rpm@drm-resources-equal.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-iclb2/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [PASS][39] -> [INCOMPLETE][40] ([i915#69])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-skl3/igt@i915_suspend@forcewake.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-skl8/igt@i915_suspend@forcewake.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-apl4/igt@kms_flip@flip-vs-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-apl4/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-glk:          [PASS][43] -> [INCOMPLETE][44] ([i915#58] / [k.org#198133])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-glk7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-glk9/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][45] -> [FAIL][46] ([i915#49]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([fdo#108145]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-y:
    - shard-skl:          [PASS][49] -> [DMESG-WARN][50] ([IGT#6])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-skl6/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-skl5/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][51] -> [FAIL][52] ([i915#173])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb2/igt@kms_psr@no_drrs.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#109441]) +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][55] -> [DMESG-WARN][56] ([i915#180]) +6 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-glk:          [FAIL][57] ([i915#679]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-glk4/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-glk8/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-hostile-preempt:
    - shard-iclb:         [SKIP][59] ([fdo#109276] / [fdo#112080]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb8/igt@gem_ctx_persistence@vcs1-hostile-preempt.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-iclb1/igt@gem_ctx_persistence@vcs1-hostile-preempt.html

  * igt@gem_eio@reset-stress:
    - shard-tglb:         [INCOMPLETE][61] ([i915#470]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-tglb6/igt@gem_eio@reset-stress.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-tglb3/igt@gem_eio@reset-stress.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [SKIP][63] ([fdo#109276]) -> [PASS][64] +9 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb5/igt@gem_exec_schedule@fifo-bsd1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-iclb4/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [SKIP][65] ([fdo#112146]) -> [PASS][66] +3 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb4/igt@gem_exec_schedule@wide-bsd.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-iclb6/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-iclb:         [TIMEOUT][67] ([fdo#112271] / [i915#530]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb2/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-iclb1/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-kbl:          [TIMEOUT][69] ([fdo#112271] / [i915#530]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-snb:          [FAIL][71] ([i915#520]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-snb2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-snb4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-iclb:         [FAIL][73] ([i915#520]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-iclb4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][75] ([i915#644]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [INCOMPLETE][77] ([i915#472]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-tglb6/igt@gem_sync@basic-store-all.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-tglb7/igt@gem_sync@basic-store-all.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [DMESG-WARN][79] ([i915#716]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-kbl4/igt@gen9_exec_parse@allowed-all.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-kbl3/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_hangman@error-state-capture-vcs0:
    - shard-tglb:         [INCOMPLETE][81] -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-tglb1/igt@i915_hangman@error-state-capture-vcs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-tglb4/igt@i915_hangman@error-state-capture-vcs0.html

  * igt@i915_selftest@mock_timelines:
    - shard-glk:          [INCOMPLETE][83] ([i915#58] / [i915#974] / [k.org#198133]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-glk9/igt@i915_selftest@mock_timelines.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-glk2/igt@i915_selftest@mock_timelines.html
    - shard-hsw:          [INCOMPLETE][85] ([i915#61]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-hsw5/igt@i915_selftest@mock_timelines.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-hsw7/igt@i915_selftest@mock_timelines.html
    - shard-kbl:          [INCOMPLETE][87] ([fdo#103665] / [i915#974]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-kbl2/igt@i915_selftest@mock_timelines.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-kbl7/igt@i915_selftest@mock_timelines.html
    - shard-iclb:         [INCOMPLETE][89] ([i915#140]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb1/igt@i915_selftest@mock_timelines.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-iclb8/igt@i915_selftest@mock_timelines.html
    - shard-snb:          [INCOMPLETE][91] ([i915#82]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-snb1/igt@i915_selftest@mock_timelines.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-snb5/igt@i915_selftest@mock_timelines.html
    - shard-skl:          [INCOMPLETE][93] ([i915#974]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-skl9/igt@i915_selftest@mock_timelines.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-skl4/igt@i915_selftest@mock_timelines.html
    - shard-tglb:         [INCOMPLETE][95] ([i915#974]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-tglb4/igt@i915_selftest@mock_timelines.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-tglb7/igt@i915_selftest@mock_timelines.html
    - shard-apl:          [INCOMPLETE][97] ([fdo#103927] / [i915#974]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-apl8/igt@i915_selftest@mock_timelines.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-apl3/igt@i915_selftest@mock_timelines.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100] +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-kbl6/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [DMESG-WARN][101] ([i915#109]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-skl3/igt@kms_color@pipe-a-ctm-0-5.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-skl8/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:
    - shard-skl:          [FAIL][103] ([i915#54]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
    - shard-hsw:          [DMESG-FAIL][105] ([i915#44] / [i915#54]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-hsw5/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-hsw5/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [INCOMPLETE][107] ([i915#69]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-skl10/igt@kms_fbcon_fbt@psr-suspend.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-skl10/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][109] ([i915#79]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][111] ([i915#180]) -> [PASS][112] +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-glk:          [FAIL][113] ([i915#34]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-glk2/igt@kms_flip@plain-flip-ts-check.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-glk3/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-tglb:         [FAIL][115] ([i915#49]) -> [PASS][116] +2 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][117] ([i915#123] / [i915#69]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-skl3/igt@kms_frontbuffer_tracking@psr-suspend.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-skl1/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][119] ([fdo#108145] / [i915#265]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][121] ([fdo#109441]) -> [PASS][122] +2 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [SKIP][123] ([fdo#112080]) -> [PASS][124] +8 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb6/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-iclb2/igt@perf_pmu@busy-accuracy-98-vcs1.html

  
#### Warnings ####

  * igt@kms_plane@pixel-format-pipe-c-planes-source-clamping:
    - shard-tglb:         [FAIL][125] ([i915#598]) -> [FAIL][126] ([i915#576] / [i915#598])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-tglb8/igt@kms_plane@pixel-format-pipe-c-planes-source-clamping.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-tglb1/igt@kms_plane@pixel-format-pipe-c-planes-source-clamping.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [INCOMPLETE][127] ([fdo#103665]) -> [DMESG-WARN][128] ([i915#180])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-kbl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@runner@aborted:
    - shard-glk:          [FAIL][129] ([i915#974] / [k.org#202321]) -> [FAIL][130] ([i915#940] / [k.org#202321])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-glk9/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/shard-glk8/igt@runner@aborted.html

  
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#576]: https://gitlab.freedesktop.org/drm/intel/issues/576
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#598]: https://gitlab.freedesktop.org/drm/intel/issues/598
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#940]: https://gitlab.freedesktop.org/drm/intel/issues/940
  [i915#974]: https://gitlab.freedesktop.org/drm/intel/issues/974
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7740 -> Patchwork_16096

  CI-20190529: 20190529
  CI_DRM_7740: a31eba35b99535ec8c9b5b22b53800b8ba82aae7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5365: e9ec0ed63b25c86861ffac3c8601cc4d1b910b65 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16096: 44d15e0588c1173db7d5e3b348761f9ec1b6fd93 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16096/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
