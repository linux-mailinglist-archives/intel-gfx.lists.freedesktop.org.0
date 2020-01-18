Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 462E51416C4
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2020 10:25:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99A156F9DB;
	Sat, 18 Jan 2020 09:25:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B0FEC6F9DB;
 Sat, 18 Jan 2020 09:25:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7DD42A0087;
 Sat, 18 Jan 2020 09:25:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: John.C.Harrison@Intel.com
Date: Sat, 18 Jan 2020 09:25:11 -0000
Message-ID: <157933951148.11511.4176286081502926077@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115024053.11333-1-John.C.Harrison@Intel.com>
In-Reply-To: <20200115024053.11333-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Update_to_GuC_FW_v40_=28rev2=29?=
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

Series: drm/i915/guc: Update to GuC FW v40 (rev2)
URL   : https://patchwork.freedesktop.org/series/72032/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7751_full -> Patchwork_16117_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16117_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16117_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16117_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-kbl:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-kbl4/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16117_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [PASS][2] -> [INCOMPLETE][3] ([i915#472] / [i915#977])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb7/igt@gem_busy@close-race.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-tglb3/igt@gem_busy@close-race.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][4] -> [DMESG-WARN][5] ([i915#180]) +5 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-kbl3/igt@gem_ctx_isolation@rcs0-s3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#109276] / [fdo#112080]) +5 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb1/igt@gem_ctx_persistence@vcs1-queued.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-iclb5/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [PASS][8] -> [INCOMPLETE][9] ([fdo#111735] / [i915#472])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb5/igt@gem_ctx_shared@q-smoketest-all.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-tglb1/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([i915#472] / [i915#476]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb7/igt@gem_exec_parallel@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-tglb6/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#109276]) +24 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-render:
    - shard-tglb:         [PASS][14] -> [INCOMPLETE][15] ([fdo#111606] / [fdo#111677] / [i915#472])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb8/igt@gem_exec_schedule@preempt-queue-render.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-tglb3/igt@gem_exec_schedule@preempt-queue-render.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#112146]) +8 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb8/igt@gem_exec_schedule@reorder-wide-bsd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-apl:          [PASS][18] -> [INCOMPLETE][19] ([fdo#103927] / [i915#530])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-apl6/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-apl3/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-glk:          [PASS][20] -> [TIMEOUT][21] ([fdo#112271] / [i915#530])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-glk4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-glk2/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
    - shard-kbl:          [PASS][22] -> [TIMEOUT][23] ([fdo#112271])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-kbl6/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-kbl4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
    - shard-hsw:          [PASS][24] -> [TIMEOUT][25] ([fdo#112271] / [i915#530])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-hsw5/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-hsw5/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-apl:          [PASS][26] -> [TIMEOUT][27] ([fdo#112271] / [i915#530])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-apl2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][28] -> [FAIL][29] ([i915#644])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][30] -> [INCOMPLETE][31] ([i915#472]) +3 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb1/igt@gem_sync@basic-store-all.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-tglb5/igt@gem_sync@basic-store-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][32] -> [FAIL][33] ([i915#454])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][34] -> [FAIL][35] ([i915#413])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb2/igt@i915_pm_rps@reset.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-iclb4/igt@i915_pm_rps@reset.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt:
    - shard-tglb:         [PASS][36] -> [FAIL][37] ([i915#49])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-apl:          [PASS][38] -> [DMESG-WARN][39] ([i915#180])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][40] -> [SKIP][41] ([fdo#109642] / [fdo#111068])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-iclb8/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][42] -> [SKIP][43] ([fdo#109441])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-iclb4/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][44] -> [FAIL][45] ([i915#31])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl1/igt@kms_setmode@basic.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-skl10/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][46] -> [SKIP][47] ([fdo#112080]) +14 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb1/igt@perf_pmu@busy-vcs1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-iclb6/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [SKIP][48] ([fdo#109276] / [fdo#112080]) -> [PASS][49] +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb5/igt@gem_ctx_isolation@vcs1-none.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-iclb1/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-apl:          [FAIL][50] ([i915#679]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-apl4/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-apl7/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][52] ([fdo#110841]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][54] ([fdo#110854]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [INCOMPLETE][56] ([i915#472]) -> [PASS][57] +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb5/igt@gem_exec_nop@basic-sequential.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-tglb8/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][58] ([fdo#112080]) -> [PASS][59] +17 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][60] ([i915#677]) -> [PASS][61] +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [SKIP][62] ([fdo#112146]) -> [PASS][63] +5 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb1/igt@gem_exec_schedule@preempt-bsd.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-iclb5/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd1:
    - shard-tglb:         [INCOMPLETE][64] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-tglb4/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-kbl:          [TIMEOUT][66] ([fdo#112271] / [i915#530]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-kbl2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-skl:          [TIMEOUT][68] ([fdo#112271] / [i915#530]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl6/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-skl4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
    - shard-snb:          [TIMEOUT][70] ([fdo#112271] / [i915#530]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-snb7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-snb5/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-kbl:          [INCOMPLETE][72] ([fdo#103665] / [i915#530]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-kbl4/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-kbl3/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [DMESG-WARN][74] ([i915#180]) -> [PASS][75] +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-apl6/igt@gem_workarounds@suspend-resume.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-apl6/igt@gem_workarounds@suspend-resume.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][76] ([i915#109]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl2/igt@kms_color@pipe-a-ctm-0-75.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][78] ([i915#300]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [FAIL][80] ([i915#49]) -> [PASS][81] +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][82] ([fdo#108145]) -> [PASS][83] +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
    - shard-skl:          [DMESG-WARN][84] ([IGT#6]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl2/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-skl2/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][86] ([fdo#109642] / [fdo#111068]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb8/igt@kms_psr2_su@frontbuffer.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][88] ([fdo#109441]) -> [PASS][89] +2 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][90] ([i915#180]) -> [PASS][91] +5 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][92] ([fdo#109276]) -> [PASS][93] +27 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb8/igt@prime_busy@hang-bsd2.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][94] ([IGT#28]) -> [SKIP][95] ([fdo#109276] / [fdo#112080])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][96] ([fdo#109276] / [fdo#112080]) -> [FAIL][97] ([IGT#28])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][98] ([i915#82]) -> [DMESG-WARN][99] ([i915#444])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-snb5/igt@gem_eio@kms.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-snb1/igt@gem_eio@kms.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-iclb:         [FAIL][100] ([i915#520]) -> [TIMEOUT][101] ([fdo#112271])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-iclb2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][102] ([i915#468]) -> [FAIL][103] ([i915#454])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb3/igt@i915_pm_dc@dc6-dpms.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-tglb4/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][104] ([i915#454]) -> [SKIP][105] ([i915#468])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb5/igt@i915_pm_dc@dc6-psr.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-tglb1/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][106] ([i915#56]) -> [DMESG-WARN][107] ([i915#180])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
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
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#977]: https://gitlab.freedesktop.org/drm/intel/issues/977


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7751 -> Patchwork_16117

  CI-20190529: 20190529
  CI_DRM_7751: bffb5bf41a2e3d84ee5043dcccad49578656a012 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5367: 94af6de4f07487b93c4f5008f3ed04b5fc045200 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16117: d9ad0ee5cbb2843eef7aedbc0d04c9ac07668dba @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
