Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3766F11F2BE
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Dec 2019 17:10:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E222E6E3E5;
	Sat, 14 Dec 2019 16:10:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 311C46E06E;
 Sat, 14 Dec 2019 16:10:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 28011A0091;
 Sat, 14 Dec 2019 16:10:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Sat, 14 Dec 2019 16:10:48 -0000
Message-ID: <157633984814.13805.5527365075030432631@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191210123050.8799-1-jani.nikula@intel.com>
In-Reply-To: <20191210123050.8799-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/8=5D_drm/print=3A_introduce_new_struct_d?=
 =?utf-8?q?rm=5Fdevice_based_logging_macros_=28rev3=29?=
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

Series: series starting with [1/8] drm/print: introduce new struct drm_device based logging macros (rev3)
URL   : https://patchwork.freedesktop.org/series/70685/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7561_full -> Patchwork_15749_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15749_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15749_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15749_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-hsw1/igt@gem_tiled_blits@interruptible.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-hsw6/igt@gem_tiled_blits@interruptible.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gen9_exec_parse@bb-start-out}:
    - shard-tglb:         NOTRUN -> [SKIP][3] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-tglb1/igt@gen9_exec_parse@bb-start-out.html

  * {igt@gen9_exec_parse@bb-start-param}:
    - shard-iclb:         NOTRUN -> [SKIP][4] +3 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-iclb8/igt@gen9_exec_parse@bb-start-param.html

  
Known issues
------------

  Here are the changes found in Patchwork_15749_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vcs1-hostile-preempt:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-iclb1/igt@gem_ctx_persistence@vcs1-hostile-preempt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-iclb8/igt@gem_ctx_persistence@vcs1-hostile-preempt.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111735])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-tglb8/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#110854])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-iclb2/igt@gem_exec_balancer@smoke.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-iclb8/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([fdo#108838] / [i915#435])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-tglb9/igt@gem_exec_create@forked.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-tglb6/igt@gem_exec_create@forked.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([fdo#111593])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-tglb3/igt@gem_exec_gttfill@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-tglb4/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_schedule@preempt-queue-blt:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111677])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-tglb1/igt@gem_exec_schedule@preempt-queue-blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-tglb6/igt@gem_exec_schedule@preempt-queue-blt.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +6 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-tglb:         [PASS][19] -> [TIMEOUT][20] ([i915#530])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-tglb5/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-tglb5/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-hsw:          [PASS][21] -> [TIMEOUT][22] ([i915#530])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-hsw4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-hsw4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-snb:          [PASS][23] -> [FAIL][24] ([i915#520])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-snb2/igt@gem_persistent_relocs@forked-thrashing.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-snb7/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-tglb:         [PASS][25] -> [FAIL][26] ([i915#644])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-tglb8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-tglb3/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [PASS][27] -> [FAIL][28] ([i915#644])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-kbl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#435] / [i915#472])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-tglb2/igt@gem_sync@basic-store-each.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-tglb7/igt@gem_sync@basic-store-each.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup:
    - shard-snb:          [PASS][31] -> [DMESG-WARN][32] ([fdo#111870])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-snb7/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-snb4/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][33] -> [FAIL][34] ([i915#454])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [PASS][35] -> [DMESG-WARN][36] ([i915#747])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-skl7/igt@i915_selftest@mock_sanitycheck.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-skl3/igt@i915_selftest@mock_sanitycheck.html
    - shard-snb:          [PASS][37] -> [DMESG-WARN][38] ([i915#747])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-snb7/igt@i915_selftest@mock_sanitycheck.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-snb5/igt@i915_selftest@mock_sanitycheck.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-apl1/igt@i915_suspend@fence-restore-untiled.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-apl1/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [PASS][41] -> [INCOMPLETE][42] ([i915#435] / [i915#456] / [i915#460])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-tglb5/igt@kms_fbcon_fbt@fbc-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-tglb5/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-tglb:         [PASS][43] -> [INCOMPLETE][44] ([i915#474] / [i915#667])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
    - shard-tglb:         [PASS][45] -> [FAIL][46] ([i915#49]) +4 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][47] -> [DMESG-WARN][48] ([i915#180]) +7 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-tglb:         [PASS][49] -> [INCOMPLETE][50] ([i915#456] / [i915#460]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-tglb6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-tglb1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([fdo#108145] / [i915#265])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#109441])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-iclb8/igt@kms_psr@psr2_dpms.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#112080]) +8 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][57] -> [SKIP][58] ([fdo#109276]) +12 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][59] ([fdo#109276] / [fdo#112080]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-iclb6/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [INCOMPLETE][61] ([i915#461]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-tglb7/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_eio@hibernate:
    - shard-tglb:         [INCOMPLETE][63] ([i915#456]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-tglb8/igt@gem_eio@hibernate.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-tglb9/igt@gem_eio@hibernate.html

  * {igt@gem_exec_schedule@pi-userfault-bsd}:
    - shard-iclb:         [SKIP][65] ([i915#677]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-iclb8/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][67] ([fdo#112146]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd2:
    - shard-iclb:         [SKIP][69] ([fdo#109276]) -> [PASS][70] +10 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd2.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd2.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-apl1/igt@gem_softpin@noreloc-s3.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-apl7/igt@gem_softpin@noreloc-s3.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][73] ([i915#818]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-hsw8/igt@gem_tiled_blits@normal.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-hsw8/igt@gem_tiled_blits@normal.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-snb:          [DMESG-WARN][75] ([fdo#111870]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-snb2/igt@gem_userptr_blits@dmabuf-unsync.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-snb5/igt@gem_userptr_blits@dmabuf-unsync.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-kbl:          [DMESG-WARN][77] -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-kbl3/igt@gen9_exec_parse@allowed-single.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-kbl1/igt@gen9_exec_parse@allowed-single.html
    - shard-skl:          [DMESG-WARN][79] -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-skl9/igt@gen9_exec_parse@allowed-single.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-skl5/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [INCOMPLETE][81] ([i915#455]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-tglb6/igt@i915_selftest@live_gt_timelines.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-tglb2/igt@i915_selftest@live_gt_timelines.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][83] ([i915#180]) -> [PASS][84] +5 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding:
    - shard-skl:          [FAIL][85] ([i915#54]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled:
    - shard-tglb:         [INCOMPLETE][87] ([i915#435] / [i915#667]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-tglb2/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-tglb9/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][89] ([i915#79]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:
    - shard-tglb:         [FAIL][91] ([i915#49]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-tglb:         [INCOMPLETE][93] ([i915#474] / [i915#667]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:
    - shard-skl:          [FAIL][95] ([i915#49]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][97] ([fdo#112347] / [i915#648] / [i915#667]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-skl4/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-skl4/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][99] ([fdo#109642] / [fdo#111068]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-iclb6/igt@kms_psr2_su@page_flip.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [DMESG-WARN][101] ([i915#402]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-tglb8/igt@kms_psr@psr2_suspend.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-tglb9/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][103] ([i915#31]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-apl8/igt@kms_setmode@basic.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-apl2/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [SKIP][105] ([fdo#112080]) -> [PASS][106] +3 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-iclb6/igt@perf_pmu@busy-check-all-vcs1.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-iclb2/igt@perf_pmu@busy-check-all-vcs1.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [FAIL][107] -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-hsw8/igt@prime_mmap_coherency@ioctl-errors.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-hsw6/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][109] ([fdo#109276] / [fdo#112080]) -> [FAIL][110] ([IGT#28])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_ctx_isolation@vcs2-s3:
    - shard-tglb:         [SKIP][111] ([fdo#111912] / [fdo#112080]) -> [SKIP][112] ([fdo#112080])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-tglb8/igt@gem_ctx_isolation@vcs2-s3.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-tglb9/igt@gem_ctx_isolation@vcs2-s3.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking:
    - shard-tglb:         [SKIP][113] ([fdo#112021]) -> [SKIP][114] ([fdo#112016] / [fdo#112021]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-tglb5/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][115] ([fdo#109349]) -> [DMESG-WARN][116] ([fdo#107724])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@runner@aborted:
    - shard-skl:          [FAIL][117] ([i915#69]) -> [FAIL][118] ([i915#69] / [k.org#204565])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7561/shard-skl9/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/shard-skl3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7561 -> Patchwork_15749

  CI-20190529: 20190529
  CI_DRM_7561: defef87d82a872aa888a857583a2a9d7245661af @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15749: 97cb51cfd41213d708cbde41a42c1fd64d18aa88 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15749/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
