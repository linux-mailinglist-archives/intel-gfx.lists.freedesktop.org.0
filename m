Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E806E1431B2
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 19:42:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A5016EAE4;
	Mon, 20 Jan 2020 18:42:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 44B126EAE4;
 Mon, 20 Jan 2020 18:42:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3D3B4A0094;
 Mon, 20 Jan 2020 18:42:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 20 Jan 2020 18:42:38 -0000
Message-ID: <157954575824.680.2811973421005739661@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200117150235.22471-1-jani.nikula@intel.com>
In-Reply-To: <20200117150235.22471-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_debug_log_max_vswing_and_pre-emphasis?=
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

Series: drm/i915/dp: debug log max vswing and pre-emphasis
URL   : https://patchwork.freedesktop.org/series/72191/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7768_full -> Patchwork_16156_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16156_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16156_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16156_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-hsw:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-hsw2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-hsw2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  
Known issues
------------

  Here are the changes found in Patchwork_16156_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-iclb1/igt@gem_busy@extended-parallel-vcs1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-iclb6/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_persistence@processes:
    - shard-iclb:         [PASS][5] -> [FAIL][6] ([i915#570])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-iclb6/igt@gem_ctx_persistence@processes.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-iclb6/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs1-hostile:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [fdo#112080])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-iclb2/igt@gem_ctx_persistence@vcs1-hostile.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-iclb5/igt@gem_ctx_persistence@vcs1-hostile.html

  * igt@gem_exec_schedule@pi-userfault-bsd2:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +9 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd2.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-apl2/igt@i915_suspend@fence-restore-untiled.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-apl6/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_color@pipe-a-ctm-blue-to-red:
    - shard-skl:          [PASS][13] -> [DMESG-WARN][14] ([i915#109]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-skl7/igt@kms_color@pipe-a-ctm-blue-to-red.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-skl2/igt@kms_color@pipe-a-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +4 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109642] / [fdo#111068]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-iclb1/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-iclb1/igt@kms_psr@psr2_no_drrs.html

  * igt@prime_mmap_coherency@write:
    - shard-hsw:          [PASS][21] -> [FAIL][22] ([i915#914])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-hsw5/igt@prime_mmap_coherency@write.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-hsw8/igt@prime_mmap_coherency@write.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][23] ([i915#180]) -> [PASS][24] +5 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][25] ([fdo#109276] / [fdo#112080]) -> [PASS][26] +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [FAIL][27] ([i915#232]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-snb1/igt@gem_eio@reset-stress.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-snb5/igt@gem_eio@reset-stress.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [SKIP][29] ([fdo#109276]) -> [PASS][30] +7 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-iclb8/igt@gem_exec_schedule@out-order-bsd2.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-iclb2/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][31] ([fdo#112146]) -> [PASS][32] +6 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-hsw:          [TIMEOUT][33] ([fdo#112271] / [i915#530]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-kbl:          [TIMEOUT][35] ([fdo#112271] / [i915#530]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-kbl6/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-kbl2/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-skl:          [TIMEOUT][37] ([fdo#112271] / [i915#530]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-skl4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-skl10/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-apl6/igt@gem_workarounds@suspend-resume.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-apl1/igt@gem_workarounds@suspend-resume.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [DMESG-WARN][41] ([i915#716]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-glk2/igt@gen9_exec_parse@allowed-single.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-glk2/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][43] ([i915#454]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-iclb:         [DMESG-WARN][45] ([fdo#111764]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-iclb4/igt@i915_pm_rpm@system-suspend-execbuf.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-iclb1/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-skl:          [INCOMPLETE][47] ([i915#69]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-skl6/igt@i915_suspend@fence-restore-untiled.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-skl7/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][49] ([i915#72]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-glk:          [FAIL][51] ([i915#34]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][53] ([i915#79]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][55] ([i915#34]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][57] ([fdo#108145]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][59] ([fdo#108145] / [i915#265]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_scaling@pipe-b-scaler-with-rotation:
    - shard-glk:          [DMESG-WARN][61] ([i915#118] / [i915#95]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-glk4/igt@kms_plane_scaling@pipe-b-scaler-with-rotation.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-glk8/igt@kms_plane_scaling@pipe-b-scaler-with-rotation.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][63] ([fdo#109441]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][65] ([i915#31]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-kbl4/igt@kms_setmode@basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-kbl7/igt@kms_setmode@basic.html

  * igt@perf@oa-exponents:
    - shard-iclb:         [INCOMPLETE][67] ([i915#140]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-iclb4/igt@perf@oa-exponents.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-iclb2/igt@perf@oa-exponents.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [SKIP][69] ([fdo#112080]) -> [PASS][70] +5 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-iclb6/igt@perf_pmu@busy-check-all-vcs1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-iclb4/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][71] ([IGT#28]) -> [SKIP][72] ([fdo#109276] / [fdo#112080])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][73] ([i915#563]) -> [DMESG-FAIL][74] ([i915#725])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-hsw7/igt@i915_selftest@live_blt.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-hsw2/igt@i915_selftest@live_blt.html

  * igt@runner@aborted:
    - shard-glk:          [FAIL][75] ([k.org#202321]) -> ([FAIL][76], [FAIL][77]) ([i915#997] / [k.org#202321])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7768/shard-glk2/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-glk4/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/shard-glk8/igt@runner@aborted.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#914]: https://gitlab.freedesktop.org/drm/intel/issues/914
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#997]: https://gitlab.freedesktop.org/drm/intel/issues/997
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7768 -> Patchwork_16156

  CI-20190529: 20190529
  CI_DRM_7768: 7db45c7ebc9f6ce2c31c543f26ebdb385a7a52a0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5372: 0d00a27fbbd4d4a77d24499ea9811e07e65eb0ac @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16156: f1bdd3382e3f041e4c634f31616fabdd2292ab0a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16156/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
