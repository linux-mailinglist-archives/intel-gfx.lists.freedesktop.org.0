Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD249DE8E6
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 15:47:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFD1210E4D2;
	Fri, 29 Nov 2024 14:47:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 962C110E4D2;
 Fri, 29 Nov 2024 14:47:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8022603323679601576=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/display=3A_repl?=
 =?utf-8?q?ace_dig=5Fport-=3Esaved=5Fport=5Fbits_with_flags?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Nov 2024 14:47:05 -0000
Message-ID: <173289162560.317225.15891191830781329766@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241129102503.452272-1-jani.nikula@intel.com>
In-Reply-To: <20241129102503.452272-1-jani.nikula@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============8022603323679601576==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: replace dig_port->saved_port_bits with flags
URL   : https://patchwork.freedesktop.org/series/141918/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15762_full -> Patchwork_141918v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_141918v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_141918v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-kbl-iris 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_141918v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@kms:
    - shard-tglu-1:       NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@gem_eio@kms.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-snb:          NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-snb5/igt@gem_tiled_swapping@non-threaded.html

  
#### Warnings ####

  * igt@i915_suspend@fence-restore-untiled:
    - shard-glk:          [INCOMPLETE][3] ([i915#4817]) -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-glk9/igt@i915_suspend@fence-restore-untiled.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-glk3/igt@i915_suspend@fence-restore-untiled.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_flip@flip-vs-expired-vblank@a-dp4:
    - {shard-dg2-9}:      NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-9/igt@kms_flip@flip-vs-expired-vblank@a-dp4.html

  
Known issues
------------

  Here are the changes found in Patchwork_141918v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - shard-tglu-1:       NOTRUN -> [SKIP][6] ([i915#9318])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@debugfs_test@basic-hwmon.html

  * igt@device_reset@cold-reset-bound:
    - shard-dg1:          NOTRUN -> [SKIP][7] ([i915#11078])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@device_reset@cold-reset-bound.html
    - shard-tglu:         NOTRUN -> [SKIP][8] ([i915#11078])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@device_reset@cold-reset-bound.html

  * igt@drm_fdinfo@virtual-busy-hang:
    - shard-dg1:          NOTRUN -> [SKIP][9] ([i915#8414])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@drm_fdinfo@virtual-busy-hang.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-dg1:          NOTRUN -> [SKIP][10] ([i915#9323])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@gem_ccs@block-multicopy-compressed.html
    - shard-tglu:         NOTRUN -> [SKIP][11] ([i915#9323])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-tglu-1:       NOTRUN -> [SKIP][12] ([i915#3555] / [i915#9323])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-tglu-1:       NOTRUN -> [SKIP][13] ([i915#13008])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][14] ([i915#7297]) +1 other test incomplete
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-5/igt@gem_ccs@suspend-resume.html

  * igt@gem_ctx_persistence@file:
    - shard-snb:          NOTRUN -> [SKIP][15] ([i915#1099]) +1 other test skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-snb5/igt@gem_ctx_persistence@file.html

  * igt@gem_ctx_persistence@hostile:
    - shard-dg1:          NOTRUN -> [FAIL][16] ([i915#11980] / [i915#12580])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@gem_ctx_persistence@hostile.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-tglu-1:       NOTRUN -> [SKIP][17] ([i915#280])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_eio@create:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][18] ([i915#4423])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@gem_eio@create.html

  * igt@gem_exec_await@wide-all:
    - shard-rkl:          [PASS][19] -> [DMESG-WARN][20] ([i915#12964]) +9 other tests dmesg-warn
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-rkl-3/igt@gem_exec_await@wide-all.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-3/igt@gem_exec_await@wide-all.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg1:          NOTRUN -> [SKIP][21] ([i915#4771])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@noheartbeat:
    - shard-dg1:          NOTRUN -> [SKIP][22] ([i915#8555]) +1 other test skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@gem_exec_balancer@noheartbeat.html

  * igt@gem_exec_capture@capture-invisible:
    - shard-dg1:          NOTRUN -> [SKIP][23] ([i915#6334]) +2 other tests skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@gem_exec_capture@capture-invisible.html
    - shard-tglu:         NOTRUN -> [SKIP][24] ([i915#6334]) +1 other test skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@gem_exec_capture@capture-invisible.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-dg1:          NOTRUN -> [SKIP][25] ([i915#3539] / [i915#4852]) +1 other test skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#3539])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_reloc@basic-cpu-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][27] ([i915#3281])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@gem_exec_reloc@basic-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-scanout:
    - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#3281])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@gem_exec_reloc@basic-scanout.html

  * igt@gem_exec_reloc@basic-write-gtt-active:
    - shard-dg1:          NOTRUN -> [SKIP][29] ([i915#3281]) +5 other tests skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@gem_exec_reloc@basic-write-gtt-active.html

  * igt@gem_exec_schedule@preempt-queue-contexts:
    - shard-dg1:          NOTRUN -> [SKIP][30] ([i915#4812])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@gem_exec_schedule@preempt-queue-contexts.html

  * igt@gem_fence_thrash@bo-write-verify-threaded-none:
    - shard-dg1:          NOTRUN -> [SKIP][31] ([i915#4860]) +1 other test skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@gem_fence_thrash@bo-write-verify-threaded-none.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][32] ([i915#4613]) +1 other test skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@massive:
    - shard-tglu-1:       NOTRUN -> [SKIP][33] ([i915#4613])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@gem_lmem_swapping@massive.html

  * igt@gem_mmap_gtt@basic-wc:
    - shard-dg1:          NOTRUN -> [SKIP][34] ([i915#4077]) +5 other tests skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@gem_mmap_gtt@basic-wc.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#4077])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_mmap_gtt@medium-copy-odd:
    - shard-mtlp:         NOTRUN -> [SKIP][36] ([i915#4077])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-mtlp-5/igt@gem_mmap_gtt@medium-copy-odd.html

  * igt@gem_mmap_wc@read:
    - shard-dg1:          NOTRUN -> [SKIP][37] ([i915#4083]) +3 other tests skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@gem_mmap_wc@read.html

  * igt@gem_partial_pwrite_pread@reads-display:
    - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#3282]) +1 other test skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@gem_partial_pwrite_pread@reads-display.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-dg1:          NOTRUN -> [SKIP][39] ([i915#3282]) +5 other tests skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@hw-rejects-pxp-context:
    - shard-tglu:         NOTRUN -> [SKIP][40] ([i915#13033])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@gem_pxp@hw-rejects-pxp-context.html

  * igt@gem_pxp@reject-modify-context-protection-off-2:
    - shard-dg1:          NOTRUN -> [SKIP][41] ([i915#4270]) +1 other test skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@gem_pxp@reject-modify-context-protection-off-2.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-tglu:         NOTRUN -> [SKIP][42] ([i915#4270])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#5190] / [i915#8428])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs.html

  * igt@gem_set_tiling_vs_gtt:
    - shard-dg1:          NOTRUN -> [SKIP][44] ([i915#4079])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@gem_set_tiling_vs_gtt.html
    - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#4079])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@gem_set_tiling_vs_gtt.html

  * igt@gem_softpin@32b-excludes-last-page:
    - shard-snb:          NOTRUN -> [SKIP][46] +64 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-snb5/igt@gem_softpin@32b-excludes-last-page.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][47] ([i915#3297]) +1 other test skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-tglu-1:       NOTRUN -> [SKIP][48] ([i915#3297]) +2 other tests skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-dg1:          NOTRUN -> [SKIP][49] ([i915#3297])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gen3_mixed_blits:
    - shard-dg2:          NOTRUN -> [SKIP][50]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@gen3_mixed_blits.html

  * igt@gen9_exec_parse@basic-rejected:
    - shard-tglu:         NOTRUN -> [SKIP][51] ([i915#2527] / [i915#2856]) +2 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@gen9_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-tglu-1:       NOTRUN -> [SKIP][52] ([i915#2527] / [i915#2856]) +2 other tests skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@bb-large:
    - shard-dg1:          NOTRUN -> [SKIP][53] ([i915#2527]) +2 other tests skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#2856])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          [PASS][55] -> [ABORT][56] ([i915#9820])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-rkl-1/igt@i915_module_load@reload-with-fault-injection.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-5/igt@i915_module_load@reload-with-fault-injection.html
    - shard-tglu:         [PASS][57] -> [ABORT][58] ([i915#12817] / [i915#9820])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg2:          [PASS][59] -> [ABORT][60] ([i915#9820])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg2-8/igt@i915_module_load@reload-with-fault-injection.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-8/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-basic-api:
    - shard-tglu:         NOTRUN -> [SKIP][61] ([i915#8399])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@i915_pm_freq_api@freq-basic-api.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
    - shard-dg1:          [PASS][62] -> [FAIL][63] ([i915#12739] / [i915#3591])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html

  * igt@i915_pm_rps@thresholds-park:
    - shard-dg1:          NOTRUN -> [SKIP][64] ([i915#11681])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@i915_pm_rps@thresholds-park.html

  * igt@i915_power@sanity:
    - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#7984])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@i915_power@sanity.html

  * igt@i915_selftest@live@sanitycheck:
    - shard-tglu-1:       NOTRUN -> [ABORT][66] ([i915#13010]) +1 other test abort
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [PASS][67] -> [ABORT][68] ([i915#12061]) +1 other test abort
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-mtlp-2/igt@i915_selftest@live@workarounds.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-mtlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-tglu-1:       NOTRUN -> [SKIP][69] ([i915#12454] / [i915#12712])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][70] ([i915#8709]) +7 other tests skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][71] ([i915#8709]) +7 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html

  * igt@kms_atomic_interruptible@legacy-setmode@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][72] ([i915#12964]) +1 other test dmesg-warn
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_atomic_interruptible@legacy-setmode@pipe-a-hdmi-a-2.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking:
    - shard-glk:          [PASS][73] -> [FAIL][74] ([i915#12177])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-glk2/igt@kms_atomic_transition@modeset-transition-nonblocking.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs:
    - shard-glk:          [PASS][75] -> [FAIL][76] ([i915#11859])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-glk2/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-dg1:          NOTRUN -> [SKIP][77] ([i915#1769] / [i915#3555])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition:
    - shard-dg1:          [PASS][78] -> [FAIL][79] ([i915#5956])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg1-13/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_atomic_transition@plane-toggle-modeset-transition.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][80] ([i915#5956])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][81] ([i915#5286]) +1 other test skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#5286]) +1 other test skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-tglu:         NOTRUN -> [SKIP][83] ([i915#5286]) +4 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-dg1:          NOTRUN -> [SKIP][84] ([i915#4538] / [i915#5286]) +5 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         [PASS][85] -> [DMESG-FAIL][86] ([i915#11627] / [i915#1982])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-90:
    - shard-mtlp:         NOTRUN -> [SKIP][87]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-mtlp-5/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][88] ([i915#3638]) +2 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#4538] / [i915#5190]) +2 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#4538]) +3 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][91] ([i915#12313]) +1 other test skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][92] ([i915#12313]) +1 other test skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#6095]) +165 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-13/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#12313])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][95] ([i915#6095]) +59 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#6095]) +51 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#10307] / [i915#10434] / [i915#6095]) +2 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-8/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#6095]) +7 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-2/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#10307] / [i915#6095]) +128 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-c-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][100] ([i915#6095]) +29 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-tglu-1:       NOTRUN -> [SKIP][101] ([i915#3742])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#4087]) +3 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-2.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
    - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#7828])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#7828]) +4 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_chamelium_hpd@dp-hpd-storm:
    - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#7828])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_chamelium_hpd@dp-hpd-storm.html

  * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#7828])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-mtlp-5/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-tglu-1:       NOTRUN -> [SKIP][107] ([i915#7828]) +6 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
    - shard-tglu:         NOTRUN -> [SKIP][108] ([i915#7828]) +5 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html

  * igt@kms_color@deep-color:
    - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#3555])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_color@deep-color.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-dg1:          NOTRUN -> [SKIP][110] ([i915#3299]) +1 other test skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_content_protection@dp-mst-type-1.html
    - shard-tglu:         NOTRUN -> [SKIP][111] ([i915#3116] / [i915#3299])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@srm:
    - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#7118])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@type1:
    - shard-dg1:          NOTRUN -> [SKIP][113] ([i915#7116] / [i915#9424])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-tglu-1:       NOTRUN -> [SKIP][114] ([i915#13049]) +1 other test skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-32x10:
    - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#3555])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_cursor_crc@cursor-random-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-mtlp:         NOTRUN -> [SKIP][116] ([i915#13049])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#3555]) +1 other test skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-5/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-tglu:         NOTRUN -> [SKIP][118] ([i915#4103])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-tglu:         NOTRUN -> [SKIP][119] ([i915#9723])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dp_aux_dev:
    - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#1257])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_dp_aux_dev.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-tglu-1:       NOTRUN -> [SKIP][121] ([i915#12402])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg1:          NOTRUN -> [SKIP][122] ([i915#3555] / [i915#3840]) +1 other test skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_dsc@dsc-with-bpc-formats.html
    - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#3555] / [i915#3840])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-tglu-1:       NOTRUN -> [SKIP][124] ([i915#3555] / [i915#3840])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#3840] / [i915#9053])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-dg2:          [PASS][126] -> [INCOMPLETE][127] ([i915#9878])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg2-6/igt@kms_fbcon_fbt@fbc-suspend.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-10/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_fbcon_fbt@psr:
    - shard-tglu-1:       NOTRUN -> [SKIP][128] ([i915#3469])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_fbcon_fbt@psr.html

  * igt@kms_feature_discovery@display-2x:
    - shard-tglu:         NOTRUN -> [SKIP][129] ([i915#1839])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@psr2:
    - shard-tglu:         NOTRUN -> [SKIP][130] ([i915#658])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-busy-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#3637])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-mtlp-5/igt@kms_flip@2x-busy-flip.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
    - shard-tglu:         NOTRUN -> [SKIP][132] ([i915#3637]) +4 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
    - shard-dg1:          NOTRUN -> [SKIP][133] ([i915#9934]) +5 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#9934])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#9934])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][136] ([i915#3637]) +5 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@blocking-wf_vblank@d-hdmi-a1:
    - shard-tglu-1:       NOTRUN -> [FAIL][137] ([i915#11989]) +2 other tests fail
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_flip@blocking-wf_vblank@d-hdmi-a1.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1:
    - shard-tglu:         NOTRUN -> [FAIL][138] ([i915#11989]) +4 other tests fail
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][139] ([i915#2587] / [i915#2672]) +2 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#2672]) +1 other test skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][141] ([i915#2587] / [i915#2672]) +1 other test skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
    - shard-tglu:         NOTRUN -> [SKIP][142] ([i915#2587] / [i915#2672]) +2 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][143] ([i915#2672] / [i915#3555]) +2 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
    - shard-dg1:          NOTRUN -> [SKIP][144] ([i915#2672] / [i915#3555]) +1 other test skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#2672] / [i915#3555]) +1 other test skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][146] ([i915#2672] / [i915#3555]) +2 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-rkl:          NOTRUN -> [SKIP][147] +2 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#5354]) +4 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt:
    - shard-snb:          [PASS][149] -> [SKIP][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg1:          NOTRUN -> [SKIP][151] +23 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#1825]) +1 other test skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:
    - shard-tglu-1:       NOTRUN -> [SKIP][153] +48 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#4423] / [i915#8708])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#8708]) +1 other test skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][156] ([i915#8708])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
    - shard-dg1:          NOTRUN -> [SKIP][157] ([i915#3458]) +12 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][158] ([i915#8708]) +8 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen:
    - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#3458]) +2 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff:
    - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#3023]) +5 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#1825]) +5 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
    - shard-tglu:         NOTRUN -> [SKIP][162] +62 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html

  * igt@kms_hdmi_inject@inject-audio:
    - shard-glk:          [PASS][163] -> [SKIP][164]
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-glk3/igt@kms_hdmi_inject@inject-audio.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-glk4/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][165] ([i915#3555] / [i915#8228])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#3555] / [i915#8228])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-dg1:          NOTRUN -> [SKIP][167] ([i915#12339]) +1 other test skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-dg2:          [PASS][168] -> [SKIP][169] ([i915#12388])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg2-10/igt@kms_joiner@invalid-modeset-force-big-joiner.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-2/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][170] ([i915#12394])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][171] ([i915#12339])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:
    - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#12247]) +23 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#12247]) +9 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d:
    - shard-tglu-1:       NOTRUN -> [SKIP][174] ([i915#12247]) +4 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
    - shard-dg1:          NOTRUN -> [SKIP][175] ([i915#12247] / [i915#3555])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#5354])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-tglu:         NOTRUN -> [SKIP][177] ([i915#9685]) +1 other test skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-dg1:          NOTRUN -> [SKIP][178] ([i915#9685])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-tglu-1:       NOTRUN -> [SKIP][179] ([i915#3828])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-tglu-1:       NOTRUN -> [SKIP][180] ([i915#8430])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-dg2:          [PASS][181] -> [SKIP][182] ([i915#9519]) +1 other test skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg2-11/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
    - shard-tglu-1:       NOTRUN -> [SKIP][183] ([i915#9519])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-tglu:         NOTRUN -> [SKIP][184] ([i915#9519])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#6524] / [i915#6805])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-5/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
    - shard-dg1:          NOTRUN -> [SKIP][186] ([i915#11520]) +2 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][187] ([i915#11520]) +4 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#11520]) +1 other test skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][189] ([i915#9808])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area@pipe-a-edp-1.html

  * igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][190] ([i915#12316]) +1 other test skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area@pipe-b-edp-1.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-sf:
    - shard-dg1:          NOTRUN -> [SKIP][191] ([i915#11520] / [i915#4423])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-tglu:         NOTRUN -> [SKIP][192] ([i915#11520]) +5 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#11520])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@psr2-cursor-plane-update-sf:
    - shard-snb:          NOTRUN -> [SKIP][194] ([i915#11520]) +1 other test skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-snb5/igt@kms_psr2_sf@psr2-cursor-plane-update-sf.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-tglu-1:       NOTRUN -> [SKIP][195] ([i915#9683])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@fbc-psr-cursor-plane-move:
    - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#1072] / [i915#9732]) +3 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-5/igt@kms_psr@fbc-psr-cursor-plane-move.html

  * igt@kms_psr@fbc-psr2-no-drrs:
    - shard-tglu:         NOTRUN -> [SKIP][197] ([i915#9732]) +16 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@kms_psr@fbc-psr2-no-drrs.html

  * igt@kms_psr@fbc-psr2-sprite-mmap-gtt:
    - shard-tglu-1:       NOTRUN -> [SKIP][198] ([i915#9732]) +14 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_psr@fbc-psr2-sprite-mmap-gtt.html

  * igt@kms_psr@psr2-cursor-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#1072] / [i915#9732]) +4 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_psr@psr2-cursor-mmap-gtt.html

  * igt@kms_psr@psr2-primary-mmap-cpu:
    - shard-dg1:          NOTRUN -> [SKIP][200] ([i915#1072] / [i915#9732]) +13 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_psr@psr2-primary-mmap-cpu.html

  * igt@kms_rotation_crc@exhaust-fences:
    - shard-dg1:          NOTRUN -> [SKIP][201] ([i915#4884])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_rotation_crc@exhaust-fences.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-tglu-1:       NOTRUN -> [SKIP][202] ([i915#5289]) +1 other test skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_scaling_modes@scaling-mode-center:
    - shard-tglu:         NOTRUN -> [SKIP][203] ([i915#3555]) +2 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_scaling_modes@scaling-mode-center.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-tglu-1:       NOTRUN -> [SKIP][204] ([i915#3555]) +6 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-dg1:          NOTRUN -> [SKIP][205] ([i915#8623])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@lobf:
    - shard-tglu-1:       NOTRUN -> [SKIP][206] ([i915#11920])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_vrr@lobf.html

  * igt@kms_writeback@writeback-check-output:
    - shard-tglu-1:       NOTRUN -> [SKIP][207] ([i915#2437])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-dg1:          NOTRUN -> [SKIP][208] ([i915#2437])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_writeback@writeback-invalid-parameters.html
    - shard-tglu:         NOTRUN -> [SKIP][209] ([i915#2437])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-dg1:          NOTRUN -> [SKIP][210] ([i915#8850])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@perf_pmu@cpu-hotplug.html
    - shard-tglu:         NOTRUN -> [SKIP][211] ([i915#8850])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@perf_pmu@cpu-hotplug.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-tglu:         NOTRUN -> [SKIP][212] ([i915#8516])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_vgem@basic-fence-mmap:
    - shard-dg1:          NOTRUN -> [SKIP][213] ([i915#3708] / [i915#4077])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@fence-write-hang:
    - shard-dg1:          NOTRUN -> [SKIP][214] ([i915#3708])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@prime_vgem@fence-write-hang.html

  * igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-5:
    - shard-tglu-1:       NOTRUN -> [FAIL][215] ([i915#12910]) +9 other tests fail
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-5.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-tglu:         NOTRUN -> [FAIL][216] ([i915#12910])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  
#### Possible fixes ####

  * igt@gem_create@hog-create:
    - shard-dg1:          [INCOMPLETE][217] -> [PASS][218] +1 other test pass
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg1-12/igt@gem_create@hog-create.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@gem_create@hog-create.html

  * igt@gem_eio@hibernate:
    - shard-dg1:          [ABORT][219] ([i915#7975] / [i915#8213]) -> [PASS][220]
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg1-14/igt@gem_eio@hibernate.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@gem_eio@hibernate.html

  * igt@gem_eio@kms:
    - shard-dg1:          [FAIL][221] ([i915#5784]) -> [PASS][222]
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg1-13/igt@gem_eio@kms.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@gem_eio@kms.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-dg2:          [ABORT][223] ([i915#7975] / [i915#8213]) -> [PASS][224] +1 other test pass
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg2-8/igt@gem_exec_suspend@basic-s4-devices.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [ABORT][225] ([i915#10131] / [i915#10887] / [i915#9820]) -> [PASS][226]
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-dg1:          [FAIL][227] ([i915#12739] / [i915#3591]) -> [PASS][228]
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][229] ([i915#7790]) -> [PASS][230]
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-snb2/igt@i915_pm_rps@reset.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-snb5/igt@i915_pm_rps@reset.html

  * igt@kms_atomic@crtc-invalid-params-fence:
    - shard-rkl:          [DMESG-WARN][231] ([i915#12964]) -> [PASS][232] +11 other tests pass
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-rkl-4/igt@kms_atomic@crtc-invalid-params-fence.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-7/igt@kms_atomic@crtc-invalid-params-fence.html

  * igt@kms_color@deep-color:
    - shard-dg2:          [SKIP][233] ([i915#3555]) -> [PASS][234]
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg2-3/igt@kms_color@deep-color.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-10/igt@kms_color@deep-color.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [FAIL][235] ([i915#11989]) -> [PASS][236] +1 other test pass
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-snb7/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ab-vga1-hdmi-a1.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-snb7/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a1:
    - shard-tglu:         [FAIL][237] ([i915#13027]) -> [PASS][238] +1 other test pass
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-tglu-9/igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a1.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-7/igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:
    - shard-dg2:          [FAIL][239] ([i915#6880]) -> [PASS][240] +1 other test pass
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [SKIP][241] ([i915#9519]) -> [PASS][242]
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-rkl-1/igt@kms_pm_rpm@dpms-lpsp.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@perf_pmu@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [FAIL][243] ([i915#4349]) -> [PASS][244] +2 other tests pass
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-rkl-3/igt@perf_pmu@most-busy-idle-check-all@rcs0.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-3/igt@perf_pmu@most-busy-idle-check-all@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-accuracy:
    - shard-rkl:          [FAIL][245] ([i915#12942]) -> [DMESG-FAIL][246] ([i915#12964]) +1 other test dmesg-fail
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-rkl-3/igt@i915_pm_rc6_residency@rc6-accuracy.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-3/igt@i915_pm_rc6_residency@rc6-accuracy.html

  * igt@kms_async_flips@async-flip-suspend-resume:
    - shard-rkl:          [INCOMPLETE][247] -> [DMESG-FAIL][248] ([i915#12964]) +1 other test dmesg-fail
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-rkl-5/igt@kms_async_flips@async-flip-suspend-resume.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_async_flips@async-flip-suspend-resume.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          [SKIP][249] ([i915#9424]) -> [SKIP][250] ([i915#9433])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg1-14/igt@kms_content_protection@mei-interface.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-12/igt@kms_content_protection@mei-interface.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:
    - shard-dg2:          [SKIP][251] ([i915#10433] / [i915#3458]) -> [SKIP][252] ([i915#3458]) +2 other tests skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][253] ([i915#3458]) -> [SKIP][254] ([i915#10433] / [i915#3458]) +4 other tests skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-dg1:          [SKIP][255] ([i915#12713]) -> [SKIP][256] ([i915#1187] / [i915#12713])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg1-18/igt@kms_hdr@brightness-with-hdr.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html
    - shard-tglu:         [SKIP][257] ([i915#1187] / [i915#12713]) -> [SKIP][258] ([i915#12713])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-8/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][259] ([i915#4816]) -> [SKIP][260] ([i915#4070] / [i915#4816])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format@pipe-a:
    - shard-rkl:          [DMESG-WARN][261] ([i915#12964]) -> [DMESG-WARN][262] ([i915#12964] / [i915#1982]) +1 other test dmesg-warn
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format@pipe-a.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format@pipe-a.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          [SKIP][263] ([i915#3828]) -> [SKIP][264] ([i915#9340])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          [DMESG-WARN][265] ([i915#12964]) -> [SKIP][266] ([i915#9519])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@perf_pmu@most-busy-check-all:
    - shard-rkl:          [DMESG-FAIL][267] ([i915#12964]) -> [DMESG-WARN][268] ([i915#12964])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-rkl-2/igt@perf_pmu@most-busy-check-all.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@perf_pmu@most-busy-check-all.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
  [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10887]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
  [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11527
  [i915#11627]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11627
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#11859]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859
  [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
  [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
  [i915#11980]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11980
  [i915#11989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12177]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12177
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
  [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
  [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
  [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
  [i915#12402]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12402
  [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
  [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
  [i915#12580]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12580
  [i915#12591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12591
  [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#12739]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12739
  [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#12817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12817
  [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
  [i915#12942]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12942
  [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
  [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
  [i915#13010]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13010
  [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
  [i915#13033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13033
  [i915#13045]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13045
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4881]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881
  [i915#4884]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4884
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
  [i915#5882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5882
  [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
  [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297
  [i915#7790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7790
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
  [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
  [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
  [i915#8850]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8850
  [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
  [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
  [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
  [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
  [i915#9878]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_15762 -> Patchwork_141918v1

  CI-20190529: 20190529
  CI_DRM_15762: 4f5b3a832a6480c82639b5500d731d7222b7eee7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8130: 52c84deb5f45bcbd3c2b22d1fcff01d4c522cb62 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_141918v1: 4f5b3a832a6480c82639b5500d731d7222b7eee7 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/index.html

--===============8022603323679601576==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: replace dig_port-&gt;saved_port_bits with flags</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/141918/">https://patchwork.freedesktop.org/series/141918/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15762_full -&gt; Patchwork_141918v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_141918v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_141918v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (11 -&gt; 10)</h2>
<p>Missing    (1): pig-kbl-iris </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_141918v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@gem_eio@kms.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-snb5/igt@gem_tiled_swapping@non-threaded.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_suspend@fence-restore-untiled:<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-glk9/igt@i915_suspend@fence-restore-untiled.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-glk3/igt@i915_suspend@fence-restore-untiled.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_flip@flip-vs-expired-vblank@a-dp4:<ul>
<li>{shard-dg2-9}:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-9/igt@kms_flip@flip-vs-expired-vblank@a-dp4.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_141918v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@device_reset@cold-reset-bound.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">i915#11078</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@device_reset@cold-reset-bound.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@drm_fdinfo@virtual-busy-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414">i915#8414</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008">i915#13008</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-5/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297">i915#7297</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@file:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-snb5/igt@gem_ctx_persistence@file.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099">i915#1099</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@gem_ctx_persistence@hostile.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11980">i915#11980</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12580">i915#12580</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@create:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@gem_eio@create.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_await@wide-all:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-rkl-3/igt@gem_exec_await@wide-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-3/igt@gem_exec_await@wide-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +9 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@gem_exec_balancer@bonded-dual.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@noheartbeat:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@gem_exec_balancer@noheartbeat.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555">i915#8555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@gem_exec_capture@capture-invisible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334">i915#6334</a>) +2 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@gem_exec_capture@capture-invisible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334">i915#6334</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@gem_exec_flush@basic-uc-prw-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@gem_exec_reloc@basic-cpu-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@gem_exec_reloc@basic-scanout.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@gem_exec_reloc@basic-write-gtt-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@gem_exec_schedule@preempt-queue-contexts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-threaded-none:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@gem_fence_thrash@bo-write-verify-threaded-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@gem_lmem_swapping@heavy-verify-random-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@gem_lmem_swapping@massive.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@gem_mmap_gtt@basic-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-odd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-mtlp-5/igt@gem_mmap_gtt@medium-copy-odd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@gem_mmap_wc@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-display:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@gem_partial_pwrite_pread@reads-display.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@gem_pwrite@basic-exhaustion.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-context:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@gem_pxp@hw-rejects-pxp-context.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13033">i915#13033</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-2:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@gem_pxp@reject-modify-context-protection-off-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@gem_set_tiling_vs_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@gem_set_tiling_vs_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@32b-excludes-last-page:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-snb5/igt@gem_softpin@32b-excludes-last-page.html">SKIP</a> +64 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@gem_userptr_blits@dmabuf-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@gem_userptr_blits@unsync-unmap-after-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen3_mixed_blits:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@gen3_mixed_blits.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@gen9_exec_parse@basic-rejected.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@gen9_exec_parse@bb-large.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@gen9_exec_parse@unaligned-jump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-rkl-1/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>)</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12817">i915#12817</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>)</li>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg2-8/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-8/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-basic-api:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@i915_pm_freq_api@freq-basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12739">i915#12739</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591">i915#3591</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@i915_pm_rps@thresholds-park.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@i915_power@sanity.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984">i915#7984</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@i915_selftest@live@sanitycheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13010">i915#13010</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-mtlp-2/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-mtlp-6/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454">i915#12454</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712">i915#12712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709">i915#8709</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709">i915#8709</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-setmode@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_atomic_interruptible@legacy-setmode@pipe-a-hdmi-a-2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-glk2/igt@kms_atomic_transition@modeset-transition-nonblocking.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12177">i915#12177</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-glk2/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859">i915#11859</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg1-13/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11627">i915#11627</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-mtlp-5/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-13/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +165 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-c-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +59 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +51 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-8/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-2/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +128 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-c-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_chamelium_frames@dp-crc-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_chamelium_hpd@dp-hpd-storm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-mtlp-5/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_content_protection@srm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_cursor_crc@cursor-random-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-5/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_dp_aux_dev.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12402">i915#12402</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_dsc@dsc-with-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_dsc@dsc-with-output-formats-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053">i915#9053</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg2-6/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-10/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878">i915#9878</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469">i915#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_feature_discovery@display-2x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-busy-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-mtlp-5/igt@kms_flip@2x-busy-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@d-hdmi-a1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_flip@blocking-wf_vblank@d-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989">i915#11989</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989">i915#11989</a>) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> +48 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html">SKIP</a> +62 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-glk3/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-glk4/igt@kms_hdmi_inject@inject-audio.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339">i915#12339</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg2-10/igt@kms_joiner@invalid-modeset-force-big-joiner.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-2/igt@kms_joiner@invalid-modeset-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388">i915#12388</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394">i915#12394</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@kms_joiner@invalid-modeset-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339">i915#12339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_pm_backlight@fade-with-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_pm_dc@dc6-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg2-11/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-5/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805">i915#6805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area@pipe-a-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808">i915#9808</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area@pipe-b-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316">i915#12316</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-update-sf:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-snb5/igt@kms_psr2_sf@psr2-cursor-plane-update-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-plane-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-5/igt@kms_psr@fbc-psr-cursor-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-no-drrs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@kms_psr@fbc-psr2-no-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_psr@fbc-psr2-sprite-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_psr@psr2-cursor-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-primary-mmap-cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_psr@psr2-primary-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@exhaust-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_rotation_crc@exhaust-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4884">i915#4884</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-center:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@kms_scaling_modes@scaling-mode-center.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_setmode@clone-exclusive-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@lobf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_vrr@lobf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920">i915#11920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@kms_writeback@writeback-check-output.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@cpu-hotplug:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@perf_pmu@cpu-hotplug.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8850">i915#8850</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-4/igt@perf_pmu@cpu-hotplug.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8850">i915#8850</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@prime_vgem@fence-write-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-5:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-1/igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-5.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910">i915#12910</a>) +9 other tests fail</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-10/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910">i915#12910</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_create@hog-create:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg1-12/igt@gem_create@hog-create.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@gem_create@hog-create.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg1-14/igt@gem_eio@hibernate.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-18/igt@gem_eio@hibernate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg1-13/igt@gem_eio@kms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784">i915#5784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-17/igt@gem_eio@kms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg2-8/igt@gem_exec_suspend@basic-s4-devices.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131">i915#10131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887">i915#10887</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12739">i915#12739</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-snb2/igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7790">i915#7790</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-snb5/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic@crtc-invalid-params-fence:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-rkl-4/igt@kms_atomic@crtc-invalid-params-fence.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-7/igt@kms_atomic@crtc-invalid-params-fence.html">PASS</a> +11 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg2-3/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-10/igt@kms_color@deep-color.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-snb7/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ab-vga1-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989">i915#11989</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-snb7/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ab-vga1-hdmi-a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-tglu-9/igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027">i915#13027</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-7/igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880">i915#6880</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-rkl-1/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-rkl-3/igt@perf_pmu@most-busy-idle-check-all@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#4349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-3/igt@perf_pmu@most-busy-idle-check-all@rcs0.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-accuracy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-rkl-3/igt@i915_pm_rc6_residency@rc6-accuracy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12942">i915#12942</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-3/igt@i915_pm_rc6_residency@rc6-accuracy.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-rkl-5/igt@kms_async_flips@async-flip-suspend-resume.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_async_flips@async-flip-suspend-resume.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg1-14/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-12/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433">i915#9433</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-dg1-18/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187">i915#1187</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>)</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187">i915#1187</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-tglu-8/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format@pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format@pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-check-all:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15762/shard-rkl-2/igt@perf_pmu@most-busy-check-all.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141918v1/shard-rkl-1/igt@perf_pmu@most-busy-check-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15762 -&gt; Patchwork_141918v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15762: 4f5b3a832a6480c82639b5500d731d7222b7eee7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8130: 52c84deb5f45bcbd3c2b22d1fcff01d4c522cb62 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_141918v1: 4f5b3a832a6480c82639b5500d731d7222b7eee7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============8022603323679601576==--
