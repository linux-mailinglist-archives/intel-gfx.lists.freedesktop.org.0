Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CD91403BD
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 07:02:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1590B6F3A6;
	Fri, 17 Jan 2020 06:02:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E6BD06F3A8;
 Fri, 17 Jan 2020 06:02:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DDDAAA011C;
 Fri, 17 Jan 2020 06:02:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Fri, 17 Jan 2020 06:02:20 -0000
Message-ID: <157924094087.26756.17967592415961334777@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200114174549.74643-1-akeem.g.abodunrin@intel.com>
In-Reply-To: <20200114174549.74643-1-akeem.g.abodunrin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgU2Vj?=
 =?utf-8?q?urity_mitigation_for_Intel_Gen7_HWs?=
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

Series: Security mitigation for Intel Gen7 HWs
URL   : https://patchwork.freedesktop.org/series/72028/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7746_full -> Patchwork_16101_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16101_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16101_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16101_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_create@create-clear:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb3/igt@gem_create@create-clear.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-tglb8/igt@gem_create@create-clear.html

  * igt@runner@aborted:
    - shard-apl:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-apl4/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16101_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][4] -> [SKIP][5] ([fdo#112080]) +9 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-iclb5/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][6] -> [DMESG-WARN][7] ([i915#180]) +6 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-iclb8/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-skl:          [PASS][10] -> [FAIL][11] ([i915#679])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl1/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-skl4/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_eio@reset-stress:
    - shard-tglb:         [PASS][12] -> [INCOMPLETE][13] ([i915#470])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb6/igt@gem_eio@reset-stress.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-tglb8/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#110854])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-iclb8/igt@gem_exec_balancer@smoke.html
    - shard-tglb:         [PASS][16] -> [INCOMPLETE][17] ([fdo#111593] / [i915#472])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb2/igt@gem_exec_balancer@smoke.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-tglb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][18] -> [SKIP][19] ([i915#677]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#109276]) +16 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd2:
    - shard-tglb:         [PASS][22] -> [INCOMPLETE][23] ([fdo#111677] / [i915#472]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb4/igt@gem_exec_schedule@preempt-queue-chain-bsd2.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-bsd2.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [PASS][24] -> [INCOMPLETE][25] ([i915#463] / [i915#472])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb8/igt@gem_exec_schedule@smoketest-bsd1.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][26] -> [SKIP][27] ([fdo#112146]) +3 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb8/igt@gem_exec_schedule@wide-bsd.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-iclb2/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-hsw:          [PASS][28] -> [TIMEOUT][29] ([fdo#112271] / [i915#530])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-hsw5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-kbl:          [PASS][30] -> [TIMEOUT][31] ([fdo#112271] / [i915#530])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-kbl:          [PASS][32] -> [INCOMPLETE][33] ([fdo#103665] / [i915#530])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-kbl6/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-kbl6/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][34] -> [FAIL][35] ([i915#644])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][36] -> [INCOMPLETE][37] ([i915#472])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb7/igt@gem_sync@basic-store-all.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-tglb8/igt@gem_sync@basic-store-all.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][38] -> [FAIL][39] ([i915#413])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@i915_pm_rps@waitboost.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-iclb2/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [PASS][40] -> [DMESG-FAIL][41] ([i915#553] / [i915#725])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-hsw7/igt@i915_selftest@live_blt.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-hsw2/igt@i915_selftest@live_blt.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [PASS][42] -> [DMESG-WARN][43] ([i915#109])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl1/igt@kms_color@pipe-a-ctm-0-75.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-skl4/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][44] -> [FAIL][45] ([i915#79])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [PASS][46] -> [FAIL][47] ([i915#49]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][48] -> [DMESG-WARN][49] ([i915#180]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][50] -> [SKIP][51] ([fdo#109642] / [fdo#111068])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-iclb4/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][52] -> [SKIP][53] ([fdo#109441]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][54] -> [FAIL][55] ([i915#31])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl6/igt@kms_setmode@basic.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-apl3/igt@kms_setmode@basic.html

  * igt@prime_vgem@basic-sync-default:
    - shard-iclb:         [PASS][56] -> [INCOMPLETE][57] ([i915#140])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb8/igt@prime_vgem@basic-sync-default.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-iclb2/igt@prime_vgem@basic-sync-default.html

  
#### Possible fixes ####

  * igt@gem_cs_tlb@vcs1:
    - shard-tglb:         [INCOMPLETE][58] ([i915#472]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb4/igt@gem_cs_tlb@vcs1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-tglb6/igt@gem_cs_tlb@vcs1.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-apl:          [FAIL][60] ([i915#679]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl3/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-apl6/igt@gem_ctx_persistence@bcs0-mixed-process.html
    - shard-skl:          [FAIL][62] ([i915#679]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl9/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-skl7/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [INCOMPLETE][64] ([i915#472] / [i915#476]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb7/igt@gem_exec_parallel@basic.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-tglb1/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][66] ([i915#470] / [i915#472]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb8/igt@gem_exec_parallel@contexts.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-tglb2/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [SKIP][68] ([fdo#109276]) -> [PASS][69] +15 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb8/igt@gem_exec_schedule@fifo-bsd1.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-iclb2/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][70] ([i915#677]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-tglb:         [INCOMPLETE][72] ([fdo#111677] / [i915#472]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb8/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-tglb7/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][74] ([fdo#112146]) -> [PASS][75] +4 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [DMESG-WARN][76] ([i915#180]) -> [PASS][77] +5 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-kbl6/igt@gem_exec_suspend@basic-s3.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-kbl6/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-hsw:          [INCOMPLETE][78] ([i915#530] / [i915#61]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-hsw1/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-hsw5/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-skl:          [TIMEOUT][80] ([fdo#112271] / [i915#530]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-skl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-tglb:         [FAIL][82] ([i915#520]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-tglb4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][84] ([i915#644]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [DMESG-WARN][86] ([i915#716]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-kbl7/igt@gen9_exec_parse@allowed-all.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-kbl4/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_selftest@live_hangcheck:
    - shard-tglb:         [INCOMPLETE][88] -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb5/igt@i915_selftest@live_hangcheck.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-tglb1/igt@i915_selftest@live_hangcheck.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [DMESG-WARN][90] ([i915#109]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl4/igt@kms_color@pipe-b-ctm-0-75.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-skl5/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [DMESG-WARN][92] ([i915#180]) -> [PASS][93] +3 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][94] ([i915#72]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [FAIL][96] ([i915#79]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][98] ([i915#79]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-glk:          [INCOMPLETE][100] ([i915#58] / [k.org#198133]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-glk8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-glk8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt:
    - shard-tglb:         [FAIL][102] ([i915#49]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][104] ([fdo#108145]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][106] ([fdo#109441]) -> [PASS][107] +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb5/igt@kms_psr@psr2_suspend.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][108] ([fdo#112080]) -> [PASS][109] +6 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb6/igt@perf_pmu@busy-vcs1.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-iclb4/igt@perf_pmu@busy-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][110] ([IGT#28]) -> [SKIP][111] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [TIMEOUT][112] ([fdo#112271] / [i915#530]) -> [TIMEOUT][113] ([fdo#112271])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-apl4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][114] ([fdo#107724]) -> [SKIP][115] ([fdo#109349])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-iclb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][116] ([i915#180]) -> [INCOMPLETE][117] ([fdo#103665])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/shard-kbl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7746 -> Patchwork_16101

  CI-20190529: 20190529
  CI_DRM_7746: 84d16aa256204bccaaf382504a69fe0822e67ba0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5365: e9ec0ed63b25c86861ffac3c8601cc4d1b910b65 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16101: eb1ef8928cfc94d5f6d363c0e8daf01da193a16c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16101/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
