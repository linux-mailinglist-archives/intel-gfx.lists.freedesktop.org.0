Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4629C0E5A
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 20:07:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AACD610E8C1;
	Thu,  7 Nov 2024 19:07:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E3EF10E8BC;
 Thu,  7 Nov 2024 19:07:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8189418625635158952=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/pps=3A_Some_PPS_cl?=
 =?utf-8?q?eanups_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 07 Nov 2024 19:07:00 -0000
Message-ID: <173100642004.1423752.9028408621351607522@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241106215859.25446-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241106215859.25446-1-ville.syrjala@linux.intel.com>
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

--===============8189418625635158952==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pps: Some PPS cleanups (rev2)
URL   : https://patchwork.freedesktop.org/series/141029/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15651_full -> Patchwork_141029v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_141029v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_141029v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 9)
------------------------------

  Missing    (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_141029v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_spin_batch@engines@rcs0:
    - shard-snb:          NOTRUN -> [INCOMPLETE][1] +1 other test incomplete
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-snb4/igt@gem_spin_batch@engines@rcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_141029v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-dg2:          NOTRUN -> [SKIP][2] ([i915#8411])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-4/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@drm_fdinfo@isolation:
    - shard-dg2:          NOTRUN -> [SKIP][3] ([i915#8414]) +9 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@drm_fdinfo@isolation.html

  * igt@drm_fdinfo@virtual-busy-hang-all:
    - shard-mtlp:         NOTRUN -> [SKIP][4] ([i915#8414])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@drm_fdinfo@virtual-busy-hang-all.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-tglu-1:       NOTRUN -> [SKIP][5] ([i915#6335])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-tglu:         NOTRUN -> [FAIL][6] ([i915#12031])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_persistence@heartbeat-stop:
    - shard-mtlp:         NOTRUN -> [SKIP][7] ([i915#8555])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@gem_ctx_persistence@heartbeat-stop.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-tglu-1:       NOTRUN -> [SKIP][8] ([i915#280])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_eio@in-flight-10ms:
    - shard-dg1:          [PASS][9] -> [DMESG-WARN][10] ([i915#4423])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg1-18/igt@gem_eio@in-flight-10ms.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-19/igt@gem_eio@in-flight-10ms.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg2:          NOTRUN -> [SKIP][11] ([i915#4771])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-rkl:          [PASS][12] -> [FAIL][13] ([i915#2846])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-rkl-2/igt@gem_exec_fair@basic-deadline.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-rkl-4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none:
    - shard-tglu:         NOTRUN -> [FAIL][14] ([i915#2842]) +7 other tests fail
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@gem_exec_fair@basic-none.html

  * igt@gem_exec_fair@basic-none-share:
    - shard-rkl:          [PASS][15] -> [FAIL][16] ([i915#2842]) +1 other test fail
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-rkl-4/igt@gem_exec_fair@basic-none-share.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-rkl-5/igt@gem_exec_fair@basic-none-share.html
    - shard-tglu-1:       NOTRUN -> [FAIL][17] ([i915#2842]) +1 other test fail
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@gem_exec_fair@basic-none-share.html

  * igt@gem_exec_fence@submit3:
    - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#4812])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@gem_exec_fence@submit3.html

  * igt@gem_exec_flush@basic-wb-rw-default:
    - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#3539] / [i915#4852]) +1 other test skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@gem_exec_flush@basic-wb-rw-default.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#5107])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_reloc@basic-scanout:
    - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#3281])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@gem_exec_reloc@basic-scanout.html

  * igt@gem_exec_reloc@basic-wc-cpu-active:
    - shard-dg1:          NOTRUN -> [SKIP][22] ([i915#3281]) +2 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-12/igt@gem_exec_reloc@basic-wc-cpu-active.html

  * igt@gem_exec_reloc@basic-write-cpu-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][23] ([i915#3281]) +1 other test skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-4/igt@gem_exec_reloc@basic-write-cpu-noreloc.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-mtlp:         NOTRUN -> [SKIP][24] ([i915#4537] / [i915#4812])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-dg2:          [PASS][25] -> [ABORT][26] ([i915#7975] / [i915#8213]) +1 other test abort
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-3/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][27] ([i915#4613])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-tglu:         NOTRUN -> [SKIP][28] ([i915#4613]) +1 other test skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_media_vme:
    - shard-tglu:         NOTRUN -> [SKIP][29] ([i915#284])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@gem_media_vme.html

  * igt@gem_mmap@big-bo:
    - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#4083]) +3 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@gem_mmap@big-bo.html

  * igt@gem_mmap_gtt@basic-small-bo-tiledx:
    - shard-dg1:          NOTRUN -> [SKIP][31] ([i915#4077])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-18/igt@gem_mmap_gtt@basic-small-bo-tiledx.html
    - shard-mtlp:         NOTRUN -> [SKIP][32] ([i915#4077])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-2/igt@gem_mmap_gtt@basic-small-bo-tiledx.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#4077]) +6 other tests skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_wc@write-prefaulted:
    - shard-dg1:          NOTRUN -> [SKIP][34] ([i915#4083])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-18/igt@gem_mmap_wc@write-prefaulted.html
    - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#4083])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-2/igt@gem_mmap_wc@write-prefaulted.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-dg1:          NOTRUN -> [SKIP][36] ([i915#3282])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-18/igt@gem_partial_pwrite_pread@writes-after-reads.html
    - shard-mtlp:         NOTRUN -> [SKIP][37] ([i915#3282])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-4/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_pread@self:
    - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#3282])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-4/igt@gem_pread@self.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-dg2:          NOTRUN -> [SKIP][39] ([i915#4270]) +1 other test skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-tglu:         NOTRUN -> [SKIP][40] ([i915#4270]) +2 other tests skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-tglu-1:       NOTRUN -> [SKIP][41] ([i915#4270])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][42] ([i915#8428])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#5190] / [i915#8428]) +3 other tests skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#4079])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#3297]) +2 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@gem_userptr_blits@dmabuf-unsync.html
    - shard-tglu:         NOTRUN -> [SKIP][46] ([i915#3297]) +1 other test skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg1:          NOTRUN -> [SKIP][47] ([i915#3297] / [i915#4880])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-12/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-tglu:         NOTRUN -> [SKIP][48] ([i915#2527] / [i915#2856]) +1 other test skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-tglu-1:       NOTRUN -> [SKIP][49] ([i915#2527] / [i915#2856]) +1 other test skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#2856]) +2 other tests skip
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          [PASS][51] -> [ABORT][52] ([i915#9820])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-glk1/igt@i915_module_load@reload-with-fault-injection.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html
    - shard-tglu:         [PASS][53] -> [ABORT][54] ([i915#9820])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-tglu-6/igt@i915_module_load@reload-with-fault-injection.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-tglu-1:       NOTRUN -> [WARN][55] ([i915#2681]) +1 other test warn
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - shard-snb:          NOTRUN -> [SKIP][56] +46 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-snb5/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@i915_pm_rps@thresholds-idle:
    - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#11681])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@i915_pm_rps@thresholds-idle.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglu:         NOTRUN -> [SKIP][58] ([i915#4387])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-5/igt@i915_pm_sseu@full-enable.html
    - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#8437])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-6/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-mtlp:         NOTRUN -> [SKIP][60]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@i915_query@query-topology-known-pci-ids.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-tglu-1:       NOTRUN -> [INCOMPLETE][61] ([i915#7443])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][62] ([i915#8709]) +7 other tests skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-18/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-tglu:         NOTRUN -> [SKIP][63] ([i915#1769] / [i915#3555])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [FAIL][64] ([i915#5956]) +1 other test fail
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-dp-4.html

  * igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:
    - shard-tglu:         NOTRUN -> [SKIP][65] ([i915#5286]) +4 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][66] ([i915#5286]) +1 other test skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#4538] / [i915#5190]) +4 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#10307] / [i915#6095]) +125 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-8/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][69] ([i915#12313])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-17/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][70] ([i915#6095]) +49 other tests skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][71] ([i915#6095]) +34 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#10307] / [i915#10434] / [i915#6095])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-8/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][73] ([i915#12313])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#6095]) +65 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-rkl-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#6095]) +68 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-18/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-4.html

  * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#6095]) +4 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-edp-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][77] ([i915#12313])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#11616] / [i915#7213])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-1/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#7213]) +3 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-1/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_chamelium_frames@dp-frame-dump:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#7828]) +4 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_chamelium_frames@dp-frame-dump.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-tglu:         NOTRUN -> [SKIP][81] ([i915#7828]) +4 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-tglu-1:       NOTRUN -> [SKIP][82] ([i915#7828]) +4 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
    - shard-mtlp:         NOTRUN -> [SKIP][83] ([i915#7828]) +1 other test skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html

  * igt@kms_color@deep-color:
    - shard-tglu:         NOTRUN -> [SKIP][84] ([i915#3555] / [i915#9979])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_color@deep-color.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#3299])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_content_protection@dp-mst-type-1.html
    - shard-tglu:         NOTRUN -> [SKIP][86] ([i915#3116] / [i915#3299])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-tglu-1:       NOTRUN -> [SKIP][87] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@legacy@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][88] ([i915#7173])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@kms_content_protection@legacy@pipe-a-dp-4.html

  * igt@kms_content_protection@mei-interface:
    - shard-tglu:         NOTRUN -> [SKIP][89] ([i915#6944] / [i915#9424])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@kms_content_protection@mei-interface.html

  * igt@kms_cursor_crc@cursor-onscreen-32x10:
    - shard-tglu-1:       NOTRUN -> [SKIP][90] ([i915#3555])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][91] ([i915#3555] / [i915#8814])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-tglu-1:       NOTRUN -> [SKIP][92] ([i915#11453] / [i915#3359])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          NOTRUN -> [FAIL][93] ([i915#2346])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#4103] / [i915#4213])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-tglu:         NOTRUN -> [SKIP][95] ([i915#9723])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#3804])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#3555]) +2 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_feature_discovery@chamelium:
    - shard-tglu-1:       NOTRUN -> [SKIP][98] ([i915#2065] / [i915#4854])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@psr2:
    - shard-tglu-1:       NOTRUN -> [SKIP][99] ([i915#658]) +1 other test skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][100] -> [FAIL][101] ([i915#2122]) +1 other test fail
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-snb4/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-snb7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][102] ([i915#3637]) +4 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][103] ([i915#3637] / [i915#3966])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@2x-flip-vs-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][104] ([i915#8381])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_flip@2x-flip-vs-fences.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-mtlp:         NOTRUN -> [SKIP][105] ([i915#3637])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][106] ([i915#3637]) +2 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a3:
    - shard-dg2:          [PASS][107] -> [FAIL][108] ([i915#2122]) +4 other tests fail
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg2-7/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a3.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-2/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a3.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][109] ([i915#4839] / [i915#6113])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-12/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend@b-hdmi-a3:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][110] ([i915#6113])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-12/igt@kms_flip@flip-vs-suspend@b-hdmi-a3.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][111] ([i915#4839])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-glk5/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html

  * igt@kms_flip@wf_vblank-ts-check:
    - shard-rkl:          [PASS][112] -> [FAIL][113] ([i915#11989] / [i915#2122])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-rkl-2/igt@kms_flip@wf_vblank-ts-check.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-rkl-4/igt@kms_flip@wf_vblank-ts-check.html

  * igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1:
    - shard-dg2:          NOTRUN -> [FAIL][114] ([i915#2122]) +1 other test fail
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-8/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1.html
    - shard-rkl:          [PASS][115] -> [FAIL][116] ([i915#2122])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-rkl-2/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-rkl-4/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1.html

  * igt@kms_flip@wf_vblank-ts-check@d-hdmi-a1:
    - shard-tglu:         [PASS][117] -> [FAIL][118] ([i915#2122]) +5 other tests fail
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-tglu-7/igt@kms_flip@wf_vblank-ts-check@d-hdmi-a1.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-9/igt@kms_flip@wf_vblank-ts-check@d-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][119] ([i915#2587] / [i915#2672]) +3 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#2672] / [i915#3555]) +2 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][121] ([i915#2587] / [i915#2672] / [i915#3555])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:
    - shard-mtlp:         NOTRUN -> [SKIP][122] ([i915#1825]) +8 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
    - shard-snb:          [PASS][123] -> [SKIP][124] +7 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-dg1:          NOTRUN -> [SKIP][125] ([i915#3458]) +1 other test skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#10433] / [i915#3458]) +1 other test skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#8708]) +8 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#5354]) +27 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][129] ([i915#8708])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglu:         NOTRUN -> [SKIP][130] +61 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][131] +1 other test skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#3458]) +9 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_getfb@getfb-reject-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#6118])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_getfb@getfb-reject-ccs.html

  * igt@kms_hdr@static-swap:
    - shard-tglu:         NOTRUN -> [SKIP][134] ([i915#3555] / [i915#8228])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@kms_hdr@static-swap.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-tglu-1:       NOTRUN -> [SKIP][135] ([i915#3555] / [i915#8228])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-mtlp:         NOTRUN -> [SKIP][136] ([i915#10656])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][137] ([i915#12339])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
    - shard-tglu-1:       NOTRUN -> [SKIP][138] +40 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a:
    - shard-tglu-1:       NOTRUN -> [SKIP][139] ([i915#12247]) +8 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#12247] / [i915#9423])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#12247]) +7 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#12247] / [i915#6953] / [i915#9423])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html
    - shard-tglu:         NOTRUN -> [SKIP][143] ([i915#12247] / [i915#6953])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d:
    - shard-tglu:         NOTRUN -> [SKIP][144] ([i915#12247]) +3 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
    - shard-tglu-1:       NOTRUN -> [SKIP][145] ([i915#12247] / [i915#3555])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#12343])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-1/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_backlight@fade:
    - shard-tglu-1:       NOTRUN -> [SKIP][147] ([i915#9812])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_pm_backlight@fade.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-tglu:         NOTRUN -> [SKIP][148] ([i915#3828])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu:         [PASS][149] -> [FAIL][150] ([i915#9295])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-tglu-5/igt@kms_pm_dc@dc6-dpms.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-mtlp:         NOTRUN -> [SKIP][151] ([i915#10139])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#8430])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_pm_lpsp@screens-disabled.html
    - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#8430])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-dg2:          [PASS][154] -> [SKIP][155] ([i915#9519])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg2-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@i2c:
    - shard-dg2:          [PASS][156] -> [FAIL][157] ([i915#8717])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg2-7/igt@kms_pm_rpm@i2c.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-2/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [PASS][158] -> [SKIP][159] ([i915#9519]) +1 other test skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#9519])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@pc8-residency:
    - shard-dg2:          NOTRUN -> [SKIP][161] +2 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@kms_pm_rpm@pc8-residency.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-tglu-1:       NOTRUN -> [SKIP][162] ([i915#6524])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@d3hot:
    - shard-tglu:         NOTRUN -> [SKIP][163] ([i915#6524])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:
    - shard-snb:          NOTRUN -> [SKIP][164] ([i915#11520]) +2 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-snb5/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html
    - shard-mtlp:         NOTRUN -> [SKIP][165] ([i915#12316])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][166] ([i915#11520]) +6 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][167] ([i915#11520]) +1 other test skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-glk4/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][168] ([i915#11520]) +4 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#11520]) +3 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#4348])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-7/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@fbc-pr-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#1072] / [i915#9732]) +11 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_psr@fbc-pr-suspend.html

  * igt@kms_psr@fbc-psr-cursor-mmap-cpu:
    - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#1072] / [i915#9732]) +2 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-18/igt@kms_psr@fbc-psr-cursor-mmap-cpu.html

  * igt@kms_psr@fbc-psr-no-drrs:
    - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#9732]) +15 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_psr@fbc-psr-no-drrs.html

  * igt@kms_psr@fbc-psr2-cursor-blt@edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][174] ([i915#9688]) +3 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_psr@fbc-psr2-cursor-blt@edp-1.html

  * igt@kms_psr@psr-sprite-mmap-cpu:
    - shard-tglu-1:       NOTRUN -> [SKIP][175] ([i915#9732]) +10 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_psr@psr-sprite-mmap-cpu.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#9685])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#5190]) +1 other test skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_setmode@basic:
    - shard-glk:          NOTRUN -> [FAIL][178] ([i915#12527] / [i915#5465])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-glk4/igt@kms_setmode@basic.html

  * igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2:
    - shard-glk:          NOTRUN -> [FAIL][179] ([i915#5465])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-glk4/igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglu-1:       NOTRUN -> [SKIP][180] ([i915#8623])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-tglu-1:       NOTRUN -> [SKIP][181] ([i915#9906])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@flip-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][182] ([i915#3555]) +2 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@kms_vrr@flip-suspend.html

  * igt@kms_vrr@max-min:
    - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#9906]) +1 other test skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_vrr@max-min.html
    - shard-tglu:         NOTRUN -> [SKIP][184] ([i915#9906]) +1 other test skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_vrr@max-min.html

  * igt@kms_vrr@negative-basic:
    - shard-glk:          NOTRUN -> [SKIP][185] +60 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-glk4/igt@kms_vrr@negative-basic.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-tglu:         NOTRUN -> [SKIP][186] ([i915#2437] / [i915#9412])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@perf@mi-rpc:
    - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#2434])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@perf@mi-rpc.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-tglu:         NOTRUN -> [SKIP][188] ([i915#8516]) +1 other test skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@perf_pmu@rc6-all-gts.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-dg2:          NOTRUN -> [SKIP][189] ([i915#8516])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@fence-write-hang:
    - shard-mtlp:         NOTRUN -> [SKIP][190] ([i915#3708])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@prime_vgem@fence-write-hang.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#9917])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@sriov_basic@enable-vfs-autoprobe-on.html

  
#### Possible fixes ####

  * igt@api_intel_allocator@alloc-simple:
    - shard-dg2:          [INCOMPLETE][192] -> [PASS][193]
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg2-10/igt@api_intel_allocator@alloc-simple.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-1/igt@api_intel_allocator@alloc-simple.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [FAIL][194] ([i915#12543] / [i915#5784]) -> [PASS][195]
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg1-18/igt@gem_eio@reset-stress.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-14/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][196] ([i915#2842]) -> [PASS][197] +1 other test pass
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [ABORT][198] ([i915#9820]) -> [PASS][199]
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         [ABORT][200] ([i915#10131] / [i915#9820]) -> [PASS][201]
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
    - shard-dg1:          [FAIL][202] ([i915#3591]) -> [PASS][203]
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html

  * igt@i915_pm_rps@engine-order:
    - shard-glk:          [FAIL][204] ([i915#12308]) -> [PASS][205]
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-glk7/igt@i915_pm_rps@engine-order.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-glk7/igt@i915_pm_rps@engine-order.html

  * igt@i915_selftest@live:
    - shard-glk:          [DMESG-FAIL][206] -> [PASS][207] +1 other test pass
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-glk4/igt@i915_selftest@live.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-glk8/igt@i915_selftest@live.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1:
    - shard-mtlp:         [FAIL][208] ([i915#11808] / [i915#5956]) -> [PASS][209] +1 other test pass
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-mtlp-4/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html

  * igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][210] ([i915#2122]) -> [PASS][211]
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-tglu:         [ABORT][212] -> [PASS][213] +1 other test pass
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-tglu-4/igt@kms_flip@flip-vs-suspend.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend@a-hdmi-a2:
    - shard-glk:          [INCOMPLETE][214] ([i915#4839]) -> [PASS][215]
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-glk3/igt@kms_flip@flip-vs-suspend@a-hdmi-a2.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-glk5/igt@kms_flip@flip-vs-suspend@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-mtlp:         [INCOMPLETE][216] ([i915#6113]) -> [PASS][217] +1 other test pass
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-mtlp-8/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-6/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@b-hdmi-a1:
    - shard-snb:          [INCOMPLETE][218] ([i915#4839]) -> [PASS][219] +1 other test pass
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-snb6/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-snb4/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-vga1:
    - shard-snb:          [FAIL][220] ([i915#2122]) -> [PASS][221] +7 other tests pass
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-snb1/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-snb1/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-mtlp:         [FAIL][222] ([i915#12457] / [i915#2122]) -> [PASS][223]
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-mtlp-7/igt@kms_flip@plain-flip-ts-check.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-2/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_flip@plain-flip-ts-check@a-hdmi-a3:
    - shard-dg2:          [FAIL][224] ([i915#2122]) -> [PASS][225] +2 other tests pass
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg2-3/igt@kms_flip@plain-flip-ts-check@a-hdmi-a3.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-1/igt@kms_flip@plain-flip-ts-check@a-hdmi-a3.html

  * igt@kms_flip@plain-flip-ts-check@b-hdmi-a1:
    - shard-tglu:         [FAIL][226] ([i915#2122]) -> [PASS][227] +2 other tests pass
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-tglu-7/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-7/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html

  * igt@kms_flip@wf_vblank-ts-check:
    - shard-dg1:          [FAIL][228] ([i915#11989] / [i915#12517] / [i915#2122]) -> [PASS][229]
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg1-14/igt@kms_flip@wf_vblank-ts-check.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-19/igt@kms_flip@wf_vblank-ts-check.html

  * igt@kms_flip@wf_vblank-ts-check@a-hdmi-a4:
    - shard-dg1:          [FAIL][230] ([i915#2122]) -> [PASS][231]
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg1-14/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a4.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-19/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a4.html

  * igt@kms_flip@wf_vblank-ts-check@c-edp1:
    - shard-mtlp:         [FAIL][232] ([i915#2122]) -> [PASS][233] +2 other tests pass
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-mtlp-8/igt@kms_flip@wf_vblank-ts-check@c-edp1.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_flip@wf_vblank-ts-check@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt:
    - shard-dg2:          [FAIL][234] ([i915#6880]) -> [PASS][235]
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render:
    - shard-snb:          [SKIP][236] -> [PASS][237] +2 other tests pass
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-rkl:          [SKIP][238] ([i915#9519]) -> [PASS][239] +2 other tests pass
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [SKIP][240] ([i915#9519]) -> [PASS][241]
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
    - shard-snb:          [FAIL][242] ([i915#9196]) -> [PASS][243] +1 other test pass
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-snb5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-snb2/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html

  
#### Warnings ####

  * igt@gem_ctx_engines@invalid-engines:
    - shard-glk:          [FAIL][244] ([i915#12031]) -> [FAIL][245] ([i915#12031] / [i915#12458])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-glk8/igt@gem_ctx_engines@invalid-engines.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-glk7/igt@gem_ctx_engines@invalid-engines.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          [TIMEOUT][246] ([i915#7173]) -> [SKIP][247] ([i915#7118] / [i915#9424])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg2-10/igt@kms_content_protection@atomic-dpms.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          [SKIP][248] ([i915#7118] / [i915#9424]) -> [TIMEOUT][249] ([i915#7173])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg2-4/igt@kms_content_protection@legacy.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          [SKIP][250] ([i915#9433]) -> [SKIP][251] ([i915#9424])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg1-13/igt@kms_content_protection@mei-interface.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-18/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@uevent:
    - shard-dg2:          [FAIL][252] ([i915#1339] / [i915#7173]) -> [SKIP][253] ([i915#7118] / [i915#9424])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg2-10/igt@kms_content_protection@uevent.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-1/igt@kms_content_protection@uevent.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg1:          [SKIP][254] ([i915#8812]) -> [SKIP][255] ([i915#4423] / [i915#8812])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg1-18/igt@kms_draw_crc@draw-method-mmap-wc.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-19/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:
    - shard-dg2:          [SKIP][256] ([i915#3458]) -> [SKIP][257] ([i915#10433] / [i915#3458]) +2 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:
    - shard-dg2:          [SKIP][258] ([i915#10433] / [i915#3458]) -> [SKIP][259] ([i915#3458]) +1 other test skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-rkl:          [SKIP][260] ([i915#1187] / [i915#12713]) -> [SKIP][261] ([i915#12713])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-rkl-3/igt@kms_hdr@brightness-with-hdr.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-rkl-7/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][262] ([i915#4816]) -> [SKIP][263] ([i915#4070] / [i915#4816])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          [SKIP][264] ([i915#3828]) -> [SKIP][265] ([i915#9340])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
  [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
  [i915#10139]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10139
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11453]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11616]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#11808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11808
  [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
  [i915#11989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989
  [i915#12031]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12031
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12308]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12308
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
  [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#12457]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12457
  [i915#12458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12458
  [i915#12517]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12517
  [i915#12527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12527
  [i915#12543]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12543
  [i915#12564]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12564
  [i915#12653]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12653
  [i915#12701]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12701
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#1339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#2065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065
  [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
  [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#3966]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3966
  [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4348]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4348
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
  [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
  [i915#5107]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5107
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5465]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465
  [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
  [i915#5882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5882
  [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
  [i915#6118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6118
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
  [i915#7443]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
  [i915#8437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8437
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
  [i915#8717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8717
  [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
  [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
  [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
  [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
  [i915#9311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
  [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9979]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9979


Build changes
-------------

  * Linux: CI_DRM_15651 -> Patchwork_141029v2

  CI-20190529: 20190529
  CI_DRM_15651: fce38995f74a8acb149e428bb83c93dddf19979a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8100: 84e42580f918da926481fd2fb37be01451d6ee9a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_141029v2: fce38995f74a8acb149e428bb83c93dddf19979a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/index.html

--===============8189418625635158952==
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
<tr><td><b>Series:</b></td><td>drm/i915/pps: Some PPS cleanups (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/141029/">https://patchwork.freedesktop.org/series/141029/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15651_full -&gt; Patchwork_141029v2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_141029v2_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_141029v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 9)</h2>
<p>Missing    (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_141029v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_spin_batch@engines@rcs0:<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-snb4/igt@gem_spin_batch@engines@rcs0.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_141029v2_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-4/igt@api_intel_bb@object-reloc-keep-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@isolation:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@drm_fdinfo@isolation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414">i915#8414</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-hang-all:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@drm_fdinfo@virtual-busy-hang-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414">i915#8414</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@gem_create@create-ext-cpu-access-sanity-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12031">i915#12031</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-stop:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@gem_ctx_persistence@heartbeat-stop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-10ms:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg1-18/igt@gem_eio@in-flight-10ms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-19/igt@gem_eio@in-flight-10ms.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@gem_exec_balancer@bonded-dual.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-rkl-2/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-rkl-4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@gem_exec_fair@basic-none.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) +7 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-rkl-4/igt@gem_exec_fair@basic-none-share.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-rkl-5/igt@gem_exec_fair@basic-none-share.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) +1 other test fail</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@gem_exec_fair@basic-none-share.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@gem_exec_fence@submit3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@gem_exec_flush@basic-wb-rw-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@gem_exec_params@rsvd2-dirt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5107">i915#5107</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@gem_exec_reloc@basic-scanout.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-12/igt@gem_exec_reloc@basic-wc-cpu-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-4/igt@gem_exec_reloc@basic-write-cpu-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@gem_exec_schedule@preempt-queue-chain.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537">i915#4537</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-3/igt@gem_exec_suspend@basic-s4-devices.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213">i915#8213</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@gem_media_vme.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284">i915#284</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@big-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@gem_mmap@big-bo.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo-tiledx:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-18/igt@gem_mmap_gtt@basic-small-bo-tiledx.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-2/igt@gem_mmap_gtt@basic-small-bo-tiledx.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@gem_mmap_gtt@cpuset-big-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-prefaulted:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-18/igt@gem_mmap_wc@write-prefaulted.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-2/igt@gem_mmap_wc@write-prefaulted.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-18/igt@gem_partial_pwrite_pread@writes-after-reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-4/igt@gem_partial_pwrite_pread@writes-after-reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@self:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-4/igt@gem_pread@self.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@gem_pxp@create-protected-buffer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@gem_userptr_blits@dmabuf-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +2 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@gem_userptr_blits@dmabuf-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-12/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@gen9_exec_parse@batch-zero-length.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@gen9_exec_parse@secure-batches.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-glk1/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>)</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-tglu-6/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-6/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681">i915#2681</a>) +1 other test warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-devices:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-snb5/igt@i915_pm_rpm@system-suspend-devices.html">SKIP</a> +46 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@i915_pm_rps@thresholds-idle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-5/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-6/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8437">i915#8437</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@i915_query@query-topology-known-pci-ids.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443">i915#7443</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-18/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709">i915#8709</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-dp-4.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-8/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +125 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-17/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +49 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-8/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-rkl-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +65 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-18/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +68 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-1/igt@kms_cdclk@mode-transition.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616">i915#11616</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213">i915#7213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-1/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213">i915#7213</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-frame-dump:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_chamelium_frames@dp-frame-dump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-without-ddc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9979">i915#9979</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@kms_content_protection@legacy@pipe-a-dp-4.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x10:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_feature_discovery@chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065">i915#2065</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-snb4/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-snb7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3966">i915#3966</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_flip@2x-flip-vs-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_flip@2x-modeset-vs-vblank-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_flip@2x-plain-flip-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg2-7/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-2/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-12/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-hdmi-a3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-12/igt@kms_flip@flip-vs-suspend@b-hdmi-a3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-glk5/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-rkl-2/igt@kms_flip@wf_vblank-ts-check.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-rkl-4/igt@kms_flip@wf_vblank-ts-check.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989">i915#11989</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-8/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) +1 other test fail</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-rkl-2/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-rkl-4/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-tglu-7/igt@kms_flip@wf_vblank-ts-check@d-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-9/igt@kms_flip@wf_vblank-ts-check@d-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> +61 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_getfb@getfb-reject-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_getfb@getfb-reject-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6118">i915#6118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@kms_hdr@static-swap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_joiner@basic-force-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_joiner@invalid-modeset-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339">i915#12339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html">SKIP</a> +40 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-1/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_pm_backlight@fade.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_pm_dc@dc5-retention-flops.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-tglu-5/igt@kms_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295">i915#9295</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_pm_dc@dc6-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10139">i915#10139</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430">i915#8430</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg2-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg2-7/igt@kms_pm_rpm@i2c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-2/igt@kms_pm_rpm@i2c.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8717">i915#8717</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@pc8-residency:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@kms_pm_rpm@pc8-residency.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_prime@d3hot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-snb5/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316">i915#12316</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-glk4/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-7/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4348">i915#4348</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_psr@fbc-pr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-mmap-cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-18/igt@kms_psr@fbc-psr-cursor-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-no-drrs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_psr@fbc-psr-no-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-cursor-blt@edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_psr@fbc-psr2-cursor-blt@edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-mmap-cpu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_psr@psr-sprite-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-glk4/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12527">i915#12527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465">i915#5465</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-glk4/igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465">i915#5465</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-1/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@kms_vrr@flip-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_vrr@max-min.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@kms_vrr@max-min.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-glk4/igt@kms_vrr@negative-basic.html">SKIP</a> +60 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-4/igt@kms_writeback@writeback-check-output-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@perf@mi-rpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434">i915#2434</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-3/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@perf_pmu@rc6@other-idle-gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@prime_vgem@fence-write-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_allocator@alloc-simple:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg2-10/igt@api_intel_allocator@alloc-simple.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-1/igt@api_intel_allocator@alloc-simple.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg1-18/igt@gem_eio@reset-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12543">i915#12543</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784">i915#5784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-14/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131">i915#10131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-glk7/igt@i915_pm_rps@engine-order.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12308">i915#12308</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-glk7/igt@i915_pm_rps@engine-order.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-glk4/igt@i915_selftest@live.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-glk8/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-mtlp-4/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11808">i915#11808</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-tglu-4/igt@kms_flip@flip-vs-suspend.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-5/igt@kms_flip@flip-vs-suspend.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-glk3/igt@kms_flip@flip-vs-suspend@a-hdmi-a2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-glk5/igt@kms_flip@flip-vs-suspend@a-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-mtlp-8/igt@kms_flip@flip-vs-suspend@b-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-6/igt@kms_flip@flip-vs-suspend@b-edp1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-snb6/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-snb4/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-vga1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-snb1/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-snb1/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-mtlp-7/igt@kms_flip@plain-flip-ts-check.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12457">i915#12457</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-2/igt@kms_flip@plain-flip-ts-check.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-hdmi-a3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg2-3/igt@kms_flip@plain-flip-ts-check@a-hdmi-a3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-1/igt@kms_flip@plain-flip-ts-check@a-hdmi-a3.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@b-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-tglu-7/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-tglu-7/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg1-14/igt@kms_flip@wf_vblank-ts-check.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989">i915#11989</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12517">i915#12517</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-19/igt@kms_flip@wf_vblank-ts-check.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check@a-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg1-14/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a4.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-19/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a4.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check@c-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-mtlp-8/igt@kms_flip@wf_vblank-ts-check@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-mtlp-1/igt@kms_flip@wf_vblank-ts-check@c-edp1.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880">i915#6880</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-snb5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196">i915#9196</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-snb2/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-glk8/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12031">i915#12031</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-glk7/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12031">i915#12031</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12458">i915#12458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg2-10/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-1/igt@kms_content_protection@atomic-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg2-4/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-10/igt@kms_content_protection@legacy.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg1-13/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433">i915#9433</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-18/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg2-10/igt@kms_content_protection@uevent.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339">i915#1339</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-1/igt@kms_content_protection@uevent.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg1-18/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812">i915#8812</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg1-19/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812">i915#8812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-rkl-3/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187">i915#1187</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-rkl-7/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15651/shard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141029v2/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15651 -&gt; Patchwork_141029v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15651: fce38995f74a8acb149e428bb83c93dddf19979a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8100: 84e42580f918da926481fd2fb37be01451d6ee9a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_141029v2: fce38995f74a8acb149e428bb83c93dddf19979a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============8189418625635158952==--
