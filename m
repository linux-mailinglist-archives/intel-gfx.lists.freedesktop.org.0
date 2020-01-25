Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F080149469
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Jan 2020 11:43:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D97A6E7EC;
	Sat, 25 Jan 2020 10:43:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 43D736E0C4;
 Sat, 25 Jan 2020 10:43:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3B818A0019;
 Sat, 25 Jan 2020 10:43:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Sat, 25 Jan 2020 10:43:39 -0000
Message-ID: <157994901921.29038.13019563819654629353@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200123124801.14958-1-jani.nikula@intel.com>
In-Reply-To: <20200123124801.14958-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv4=2C1/2=5D_drm=3A_add_drm=5Fcore=5Fcheck?=
 =?utf-8?q?=5Fall=5Ffeatures=28=29_to_check_for_a_mask_of_features?=
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

Series: series starting with [v4,1/2] drm: add drm_core_check_all_features() to check for a mask of features
URL   : https://patchwork.freedesktop.org/series/72466/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7804_full -> Patchwork_16233_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16233_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16233_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16233_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-skl4/igt@gen9_exec_parse@allowed-single.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-skl4/igt@gen9_exec_parse@allowed-single.html

  
Known issues
------------

  Here are the changes found in Patchwork_16233_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +14 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-iclb5/igt@gem_busy@busy-vcs1.html

  * igt@gem_busy@close-race:
    - shard-hsw:          [PASS][5] -> [TIMEOUT][6] ([fdo#112271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-hsw1/igt@gem_busy@close-race.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-hsw5/igt@gem_busy@close-race.html

  * igt@gem_ctx_persistence@vcs1-mixed:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-iclb3/igt@gem_ctx_persistence@vcs1-mixed.html

  * igt@gem_ctx_shared@exec-shared-gtt-default:
    - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#616])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-tglb2/igt@gem_ctx_shared@exec-shared-gtt-default.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-tglb6/igt@gem_ctx_shared@exec-shared-gtt-default.html

  * igt@gem_eio@kms:
    - shard-snb:          [PASS][11] -> [INCOMPLETE][12] ([i915#82])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-snb1/igt@gem_eio@kms.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-snb2/igt@gem_eio@kms.html

  * igt@gem_exec_reloc@basic-cpu-gtt-active:
    - shard-skl:          [PASS][13] -> [DMESG-WARN][14] ([i915#109]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-skl7/igt@gem_exec_reloc@basic-cpu-gtt-active.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-skl1/igt@gem_exec_reloc@basic-cpu-gtt-active.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112146]) +4 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb5/igt@gem_exec_schedule@in-order-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([i915#677])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb8/igt@gem_exec_schedule@pi-userfault-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-kbl:          [PASS][19] -> [INCOMPLETE][20] ([fdo#103665])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-kbl1/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-kbl3/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-apl:          [PASS][21] -> [INCOMPLETE][22] ([fdo#103927]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
    - shard-kbl:          [PASS][23] -> [INCOMPLETE][24] ([fdo#103665] / [i915#530] / [i915#640])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-hsw:          [PASS][25] -> [INCOMPLETE][26] ([i915#530] / [i915#61])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-hsw6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-hsw:          [PASS][27] -> [INCOMPLETE][28] ([i915#61]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-hsw5/igt@gem_persistent_relocs@forked-thrashing.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-hsw7/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#644])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-skl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-skl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#644])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-iclb6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [PASS][33] -> [FAIL][34] ([i915#694])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-hsw1/igt@gem_tiled_blits@normal.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-hsw1/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][35] -> [FAIL][36] ([i915#454])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@mock_requests:
    - shard-glk:          [PASS][37] -> [INCOMPLETE][38] ([i915#58] / [k.org#198133])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-glk4/igt@i915_selftest@mock_requests.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-glk2/igt@i915_selftest@mock_requests.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-glk:          [PASS][39] -> [FAIL][40] ([i915#34])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-glk1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#79])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][43] -> [INCOMPLETE][44] ([i915#221])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-skl8/igt@kms_flip@flip-vs-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-skl3/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#34])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-tglb:         [PASS][47] -> [FAIL][48] ([i915#49]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([fdo#108145])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#109642] / [fdo#111068])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-iclb4/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#109441])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][55] -> [DMESG-WARN][56] ([i915#180]) +4 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][57] -> [SKIP][58] ([fdo#109276]) +20 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb1/igt@prime_busy@hang-bsd2.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-iclb6/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][59] ([fdo#109276] / [fdo#112080]) -> [PASS][60] +5 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb5/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-iclb1/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-glk:          [FAIL][61] ([i915#679]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-glk3/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-glk9/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-tglb:         [FAIL][63] ([i915#679]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-tglb5/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-tglb1/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [SKIP][65] ([fdo#112146]) -> [PASS][66] +6 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb4/igt@gem_exec_async@concurrent-writes-bsd.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-iclb3/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][67] ([fdo#112080]) -> [PASS][68] +4 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][69] ([i915#677]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd2:
    - shard-iclb:         [SKIP][71] ([fdo#109276]) -> [PASS][72] +12 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb5/igt@gem_exec_schedule@preempt-queue-chain-bsd2.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-iclb1/igt@gem_exec_schedule@preempt-queue-chain-bsd2.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-iclb:         [INCOMPLETE][73] ([i915#140]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb4/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-iclb2/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-hsw:          [INCOMPLETE][75] ([i915#530] / [i915#61]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-hsw1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-hsw1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-glk:          [INCOMPLETE][77] ([i915#58] / [k.org#198133]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-glk7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-glk4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][79] ([i915#644]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_selftest@mock_requests:
    - shard-tglb:         [INCOMPLETE][81] ([i915#472]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-tglb4/igt@i915_selftest@mock_requests.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-tglb2/igt@i915_selftest@mock_requests.html
    - shard-kbl:          [INCOMPLETE][83] ([fdo#103665]) -> [PASS][84] +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-kbl7/igt@i915_selftest@mock_requests.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-kbl3/igt@i915_selftest@mock_requests.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][85] ([i915#180]) -> [PASS][86] +3 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [DMESG-WARN][87] ([i915#109]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-skl2/igt@kms_color@pipe-b-ctm-0-75.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-skl5/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent:
    - shard-skl:          [FAIL][89] ([i915#54]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled:
    - shard-skl:          [FAIL][91] ([i915#52] / [i915#54]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-skl3/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-skl8/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][93] ([i915#79]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
    - shard-tglb:         [FAIL][95] ([i915#49]) -> [PASS][96] +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [DMESG-WARN][97] ([i915#180]) -> [PASS][98] +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][99] ([fdo#108145]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][101] ([fdo#108145] / [i915#265]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][103] ([fdo#109441]) -> [PASS][104] +2 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][105] ([i915#31]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-glk2/igt@kms_setmode@basic.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-glk4/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][107] ([fdo#109276] / [fdo#112080]) -> [FAIL][108] ([IGT#28])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][109] ([i915#818]) -> [FAIL][110] ([i915#694])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-hsw7/igt@gem_tiled_blits@interruptible.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-hsw2/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-snb:          [SKIP][111] ([fdo#109271]) -> [INCOMPLETE][112] ([i915#82])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-snb4/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-snb5/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_atomic_transition@3x-modeset-transitions:
    - shard-hsw:          [SKIP][113] ([fdo#109271] / [i915#439]) -> [SKIP][114] ([fdo#109271])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-hsw2/igt@kms_atomic_transition@3x-modeset-transitions.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-hsw7/igt@kms_atomic_transition@3x-modeset-transitions.html

  * igt@kms_atomic_transition@3x-modeset-transitions-fencing:
    - shard-hsw:          [SKIP][115] ([fdo#109271]) -> [SKIP][116] ([fdo#109271] / [i915#439])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-hsw7/igt@kms_atomic_transition@3x-modeset-transitions-fencing.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-hsw2/igt@kms_atomic_transition@3x-modeset-transitions-fencing.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][117] ([fdo#109349]) -> [DMESG-WARN][118] ([fdo#107724])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7804/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#439]: https://gitlab.freedesktop.org/drm/intel/issues/439
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#616]: https://gitlab.freedesktop.org/drm/intel/issues/616
  [i915#640]: https://gitlab.freedesktop.org/drm/intel/issues/640
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7804 -> Patchwork_16233

  CI-20190529: 20190529
  CI_DRM_7804: 74ed9d57007ab848a57ec6d785de4187b70acd9b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5382: 8dbe5ce61baa2d563d4dd7c56a018bb1e1077467 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16233: e98170f60c437e2b7b5f4bad02c01d0e3ba35b4a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16233/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
