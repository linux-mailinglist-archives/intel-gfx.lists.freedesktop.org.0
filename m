Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C3D9D6D83
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Nov 2024 11:06:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CD6010E02E;
	Sun, 24 Nov 2024 10:06:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57CAE10E02E;
 Sun, 24 Nov 2024 10:06:18 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0149478397213519627=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_use_hw_support_for_min/i?=
 =?utf-8?q?nterim_ddb_allocation_for_async_flip_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sun, 24 Nov 2024 10:06:18 -0000
Message-ID: <173244277836.2400440.488374641444547847@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241121112726.510220-1-vinod.govindapillai@intel.com>
In-Reply-To: <20241121112726.510220-1-vinod.govindapillai@intel.com>
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

--===============0149478397213519627==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: use hw support for min/interim ddb allocation for async flip (rev2)
URL   : https://patchwork.freedesktop.org/series/140926/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15725_full -> Patchwork_140926v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_140926v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_140926v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_140926v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@core_setmaster@master-drop-set-root:
    - shard-dg2:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-8/igt@core_setmaster@master-drop-set-root.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@core_setmaster@master-drop-set-root.html

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-tglu-1:       NOTRUN -> [SKIP][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_ctx_persistence@engines-hostile@rcs0:
    - shard-rkl:          [PASS][4] -> [DMESG-WARN][5] +2 other tests dmesg-warn
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-rkl-2/igt@gem_ctx_persistence@engines-hostile@rcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-rkl-7/igt@gem_ctx_persistence@engines-hostile@rcs0.html

  * igt@gem_eio@in-flight-internal-1us:
    - shard-mtlp:         ([PASS][6], [PASS][7], [PASS][8], [PASS][9]) -> [ABORT][10]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-4/igt@gem_eio@in-flight-internal-1us.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-8/igt@gem_eio@in-flight-internal-1us.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-6/igt@gem_eio@in-flight-internal-1us.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-2/igt@gem_eio@in-flight-internal-1us.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-mtlp-4/igt@gem_eio@in-flight-internal-1us.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-snb:          [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-snb7/igt@gem_tiled_swapping@non-threaded.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-snb4/igt@gem_tiled_swapping@non-threaded.html
    - shard-tglu:         [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-tglu-6/igt@gem_tiled_swapping@non-threaded.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-8/igt@gem_tiled_swapping@non-threaded.html

  * igt@i915_module_load@reload-no-display:
    - shard-tglu-1:       NOTRUN -> [ABORT][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@i915_module_load@reload-no-display.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          NOTRUN -> [ABORT][16]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-glk5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@gem-execbuf-stress:
    - shard-dg2:          [PASS][17] -> [SKIP][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@i915_pm_rpm@gem-execbuf-stress.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@i915_pm_rpm@gem-execbuf-stress.html

  * igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][19] +2 other tests dmesg-warn
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-rkl-3/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@pipe-b-hdmi-a-2.html

  * igt@kms_big_fb@linear-8bpp-rotate-0:
    - shard-rkl:          [PASS][20] -> [ABORT][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-rkl-1/igt@kms_big_fb@linear-8bpp-rotate-0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-rkl-2/igt@kms_big_fb@linear-8bpp-rotate-0.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-dg2:          NOTRUN -> [SKIP][22] +4 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_plane@pixel-format-source-clamping:
    - shard-tglu:         [PASS][23] -> [ABORT][24] +1 other test abort
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-tglu-6/igt@kms_plane@pixel-format-source-clamping.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-8/igt@kms_plane@pixel-format-source-clamping.html

  * igt@syncobj_wait@invalid-multi-wait-all-unsubmitted-signaled:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-rkl-4/igt@syncobj_wait@invalid-multi-wait-all-unsubmitted-signaled.html

  
#### Warnings ####

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-dg2:          [SKIP][26] ([i915#11078]) -> [SKIP][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@device_reset@unbind-cold-reset-rebind.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-dg2:          [SKIP][28] ([i915#2575]) -> [SKIP][29] +1 other test skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - {shard-dg2-9}:      NOTRUN -> [SKIP][30] +2 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  
New tests
---------

  New tests have been introduced between CI_DRM_15725_full and Patchwork_140926v2_full:

### New IGT tests (1) ###

  * igt@kms_cursor_crc@cursor-random-64x21@pipe-a-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [4.36] s

  

Known issues
------------

  Here are the changes found in Patchwork_140926v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_allocator@default-alignment:
    - shard-dg2:          [PASS][31] -> [SKIP][32] +21 other tests skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-8/igt@api_intel_allocator@default-alignment.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@api_intel_allocator@default-alignment.html

  * igt@device_reset@cold-reset-bound:
    - shard-tglu:         NOTRUN -> [SKIP][33] ([i915#11078])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@device_reset@cold-reset-bound.html

  * igt@drm_fdinfo@most-busy-check-all:
    - shard-dg1:          NOTRUN -> [SKIP][34] ([i915#8414]) +14 other tests skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@drm_fdinfo@most-busy-check-all.html

  * igt@drm_fdinfo@most-busy-idle-check-all@vecs1:
    - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#8414]) +8 other tests skip
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html

  * igt@drm_fdinfo@virtual-busy:
    - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#12506]) +1 other test skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@drm_fdinfo@virtual-busy.html

  * igt@fbdev@nullptr:
    - shard-dg2:          [PASS][37] -> [SKIP][38] ([i915#2582]) +1 other test skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-6/igt@fbdev@nullptr.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@fbdev@nullptr.html

  * igt@gem_busy@semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][39] ([i915#3936])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_busy@semaphore.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          NOTRUN -> [SKIP][40] ([i915#9323])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-rkl-7/igt@gem_ccs@block-multicopy-compressed.html
    - shard-tglu:         NOTRUN -> [SKIP][41] ([i915#9323])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][42] ([i915#12392] / [i915#7297])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-3/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-tglu:         NOTRUN -> [SKIP][43] ([i915#7697])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#7697])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#8562])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-dg2:          [PASS][46] -> [SKIP][47] ([i915#2575]) +117 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-8/igt@gem_ctx_exec@basic-nohangcheck.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@heartbeat-close:
    - shard-dg1:          NOTRUN -> [SKIP][48] ([i915#8555])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@gem_ctx_persistence@heartbeat-close.html

  * igt@gem_ctx_sseu@engines:
    - shard-dg1:          NOTRUN -> [SKIP][49] ([i915#280])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@gem_ctx_sseu@engines.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#280])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_balancer@bonded-semaphore:
    - shard-dg1:          NOTRUN -> [SKIP][51] ([i915#4812]) +2 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@gem_exec_balancer@bonded-semaphore.html

  * igt@gem_exec_basic@basic:
    - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#2575]) +46 other tests skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@gem_exec_basic@basic.html

  * igt@gem_exec_capture@capture-invisible:
    - shard-dg1:          NOTRUN -> [SKIP][53] ([i915#6334]) +2 other tests skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@gem_exec_capture@capture-invisible.html

  * igt@gem_exec_capture@capture-invisible@lmem0:
    - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#6334]) +1 other test skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-10/igt@gem_exec_capture@capture-invisible@lmem0.html

  * igt@gem_exec_fence@submit67:
    - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#4812]) +1 other test skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_exec_fence@submit67.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#3539])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_flush@basic-wb-ro-default:
    - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#3539] / [i915#4852])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@gem_exec_flush@basic-wb-ro-default.html

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#3539] / [i915#4852])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_exec_flush@basic-wb-rw-before-default.html

  * igt@gem_exec_reloc@basic-cpu-wc:
    - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#3281]) +12 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-14/igt@gem_exec_reloc@basic-cpu-wc.html

  * igt@gem_exec_reloc@basic-wc-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#3281]) +5 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_exec_reloc@basic-wc-cpu.html

  * igt@gem_fence_thrash@bo-write-verify-x:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#4860])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_fence_thrash@bo-write-verify-x.html

  * igt@gem_lmem_swapping@massive:
    - shard-tglu-1:       NOTRUN -> [SKIP][62] ([i915#4613]) +1 other test skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@gem_lmem_swapping@massive.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-dg2:          [PASS][63] -> [SKIP][64] ([i915#12936]) +2 other tests skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-6/igt@gem_lmem_swapping@parallel-multi.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#12936])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][66] ([i915#4613]) +2 other tests skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][67] ([i915#12193]) +1 other test skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-12/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_lmem_swapping@verify-random-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][68] ([i915#4565]) +1 other test skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-12/igt@gem_lmem_swapping@verify-random-ccs@lmem0.html

  * igt@gem_mmap_gtt@big-copy:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#4077]) +3 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_mmap_gtt@big-copy.html

  * igt@gem_mmap_wc@bad-object:
    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#4083]) +1 other test skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_mmap_wc@bad-object.html

  * igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
    - shard-dg1:          NOTRUN -> [SKIP][71] ([i915#4083]) +2 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html

  * igt@gem_pread@bench:
    - shard-dg1:          NOTRUN -> [SKIP][72] ([i915#3282]) +1 other test skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@gem_pread@bench.html

  * igt@gem_pread@uncached:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#3282]) +2 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_pread@uncached.html

  * igt@gem_pxp@create-regular-buffer:
    - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#4270])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-12/igt@gem_pxp@create-regular-buffer.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-tglu:         NOTRUN -> [SKIP][75] ([i915#4270])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@fail-invalid-protected-context:
    - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#4270])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - shard-tglu-1:       NOTRUN -> [SKIP][77] ([i915#12975])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@gem_pxp@hw-rejects-pxp-buffer.html

  * igt@gem_render_copy@linear-to-vebox-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#5190] / [i915#8428]) +1 other test skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_render_copy@linear-to-vebox-y-tiled.html

  * igt@gem_render_copy@linear-to-vebox-yf-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#2575] / [i915#5190]) +1 other test skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@gem_render_copy@linear-to-vebox-yf-tiled.html

  * igt@gem_render_tiled_blits@basic:
    - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#4079]) +1 other test skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@gem_render_tiled_blits@basic.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#4079])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
    - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#4077]) +6 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-12/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][83] ([i915#3297]) +1 other test skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#3297]) +1 other test skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-dg1:          NOTRUN -> [SKIP][85] ([i915#2527]) +1 other test skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-large:
    - shard-tglu-1:       NOTRUN -> [SKIP][86] ([i915#2527] / [i915#2856]) +1 other test skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-tglu:         NOTRUN -> [SKIP][87] ([i915#2527] / [i915#2856])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@gen9_exec_parse@unaligned-jump.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#2856])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_fb_tiling:
    - shard-dg1:          NOTRUN -> [SKIP][89] ([i915#4881])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-12/igt@i915_fb_tiling.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglu-1:       NOTRUN -> [ABORT][90] ([i915#10887] / [i915#12817] / [i915#9820])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-dg1:          [PASS][91] -> [FAIL][92] ([i915#12548] / [i915#3591])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
    - shard-dg1:          [PASS][93] -> [FAIL][94] ([i915#12739] / [i915#3591])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html

  * igt@i915_pm_rps@basic-api:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#11681] / [i915#6621])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglu-1:       NOTRUN -> [SKIP][96] ([i915#4387])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#6188])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#5723])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_selftest@mock:
    - shard-glk:          NOTRUN -> [DMESG-WARN][99] ([i915#1982] / [i915#9311])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-glk8/igt@i915_selftest@mock.html

  * igt@i915_selftest@mock@memory_region:
    - shard-glk:          NOTRUN -> [DMESG-WARN][100] ([i915#9311])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-glk8/igt@i915_selftest@mock@memory_region.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#4212])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - shard-dg1:          NOTRUN -> [SKIP][102] ([i915#4212]) +1 other test skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_addfb_basic@unused-handle:
    - shard-dg1:          [PASS][103] -> [DMESG-WARN][104] ([i915#4423]) +1 other test dmesg-warn
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-13/igt@kms_addfb_basic@unused-handle.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_addfb_basic@unused-handle.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#8709]) +7 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-14/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-tglu:         NOTRUN -> [SKIP][106] ([i915#9531])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [FAIL][107] ([i915#11808]) +1 other test fail
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-270:
    - shard-tglu-1:       NOTRUN -> [SKIP][108] ([i915#5286]) +1 other test skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#4538] / [i915#5286]) +3 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-tglu:         NOTRUN -> [SKIP][110] ([i915#5286]) +1 other test skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#5286])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][112] ([i915#3638]) +1 other test skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#5190]) +2 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#4538] / [i915#5190]) +4 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][115] ([i915#4538]) +3 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][116]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-mtlp-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-4/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][118] ([i915#12313]) +1 other test skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#10307] / [i915#6095]) +120 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][120] ([i915#6095]) +29 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_ccs@crc-primary-basic-y-tiled-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][121] ([i915#12313]) +1 other test skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][122] ([i915#6095]) +39 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][123] ([i915#6095]) +127 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-17/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-a-hdmi-a-4.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][124] ([i915#12805])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#6095]) +20 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-2/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#6095]) +54 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-rkl-7/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_chamelium_color@ctm-0-50:
    - shard-dg1:          NOTRUN -> [SKIP][127] +33 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-12/igt@kms_chamelium_color@ctm-0-50.html

  * igt@kms_chamelium_edid@dp-edid-resolution-list:
    - shard-tglu:         NOTRUN -> [SKIP][128] ([i915#7828]) +3 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_chamelium_edid@dp-edid-resolution-list.html

  * igt@kms_chamelium_frames@vga-frame-dump:
    - shard-dg1:          NOTRUN -> [SKIP][129] ([i915#7828]) +6 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-17/igt@kms_chamelium_frames@vga-frame-dump.html

  * igt@kms_chamelium_hpd@hdmi-hpd-fast:
    - shard-tglu-1:       NOTRUN -> [SKIP][130] ([i915#7828]) +3 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_chamelium_hpd@hdmi-hpd-fast.html

  * igt@kms_chamelium_hpd@vga-hpd-after-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#7828]) +4 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_chamelium_hpd@vga-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#7828])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_content_protection@content-type-change:
    - shard-tglu-1:       NOTRUN -> [SKIP][133] ([i915#6944] / [i915#9424])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][134] ([i915#3116] / [i915#3299])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-2/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#7118] / [i915#9424])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_content_protection@type1.html

  * igt@kms_content_protection@uevent:
    - shard-tglu-1:       NOTRUN -> [SKIP][136] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][137] ([i915#12976])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-offscreen-64x21@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][138] ([i915#12964]) +5 other tests dmesg-warn
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-64x21@pipe-b-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-dg1:          NOTRUN -> [SKIP][139] ([i915#3555]) +3 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#12976]) +1 other test skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#3555]) +1 other test skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-tglu:         NOTRUN -> [SKIP][142] ([i915#3555])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg1:          NOTRUN -> [SKIP][143] ([i915#12976]) +2 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-tglu:         NOTRUN -> [SKIP][144] ([i915#4103])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_dirtyfb@default-dirtyfb-ioctl:
    - shard-dg2:          NOTRUN -> [SKIP][145] +23 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@kms_dirtyfb@default-dirtyfb-ioctl.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-dg1:          NOTRUN -> [SKIP][146] ([i915#9723])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-mtlp:         NOTRUN -> [SKIP][147] ([i915#3555] / [i915#8827])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-mtlp-1/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-tglu:         NOTRUN -> [SKIP][148] ([i915#8588])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-tglu-1:       NOTRUN -> [SKIP][149] ([i915#1769] / [i915#3555] / [i915#3804])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#3804])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
    - shard-tglu-1:       NOTRUN -> [SKIP][151] ([i915#3804])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][152] ([i915#8812])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_draw_crc@draw-method-render@xrgb2101010-ytiled:
    - shard-rkl:          [PASS][153] -> [DMESG-WARN][154] ([i915#12964]) +1 other test dmesg-warn
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-rkl-7/igt@kms_draw_crc@draw-method-render@xrgb2101010-ytiled.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-rkl-3/igt@kms_draw_crc@draw-method-render@xrgb2101010-ytiled.html

  * igt@kms_dsc@dsc-basic:
    - shard-tglu-1:       NOTRUN -> [SKIP][155] ([i915#3555] / [i915#3840]) +1 other test skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg1:          NOTRUN -> [SKIP][156] ([i915#3555] / [i915#3840])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-tglu:         NOTRUN -> [SKIP][157] ([i915#3555] / [i915#3840])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#3840] / [i915#9053])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_feature_discovery@display-3x:
    - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#1839])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@psr2:
    - shard-dg1:          NOTRUN -> [SKIP][160] ([i915#658])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][161] ([i915#3637])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-mtlp-1/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@2x-flip-vs-fences:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#8381])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_flip@2x-flip-vs-fences.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][163] ([i915#3637]) +1 other test skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
    - shard-tglu-1:       NOTRUN -> [SKIP][164] ([i915#3637]) +6 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][165] ([i915#9934]) +6 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][166] ([i915#8381])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-12/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:
    - shard-rkl:          NOTRUN -> [DMESG-FAIL][167] ([i915#12964])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-rkl-2/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a4:
    - shard-dg1:          NOTRUN -> [FAIL][168] ([i915#2122]) +1 other test fail
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-17/igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a4.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a3:
    - shard-dg2:          NOTRUN -> [FAIL][169] ([i915#2122])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-2/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a3.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#2672]) +5 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][171] ([i915#2672] / [i915#3555])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][172] ([i915#2587] / [i915#2672])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][174] ([i915#2587] / [i915#2672] / [i915#3555])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][175] ([i915#2587] / [i915#2672]) +2 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][176] ([i915#2672] / [i915#3555]) +1 other test skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-dg1:          NOTRUN -> [SKIP][177] ([i915#2672] / [i915#3555]) +2 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][178] ([i915#2587] / [i915#2672]) +2 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite:
    - shard-dg2:          [PASS][179] -> [FAIL][180] ([i915#6880])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][181] +35 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:
    - shard-mtlp:         NOTRUN -> [SKIP][182] ([i915#1825])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-2p-rte:
    - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#5354]) +18 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-2p-rte.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:
    - shard-snb:          [PASS][184] -> [SKIP][185] +4 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-tglu-1:       NOTRUN -> [SKIP][186] +40 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-dg1:          NOTRUN -> [SKIP][187] ([i915#5439])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][188] ([i915#3458]) +7 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][189] ([i915#8708]) +9 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#8708]) +8 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#1825])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#3458]) +8 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-dg1:          NOTRUN -> [SKIP][193] ([i915#1187] / [i915#12713])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][194] ([i915#3555] / [i915#8228])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][195] ([i915#3555] / [i915#8228])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#12388])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-dg1:          NOTRUN -> [SKIP][197] ([i915#12339]) +1 other test skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][198] ([i915#12388])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-tglu-1:       NOTRUN -> [SKIP][199] ([i915#1839])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-tglu-1:       NOTRUN -> [SKIP][200] ([i915#6953])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][201] ([i915#12247]) +4 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format:
    - shard-dg2:          [PASS][202] -> [SKIP][203] ([i915#2575] / [i915#9423]) +3 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:
    - shard-dg1:          NOTRUN -> [SKIP][204] ([i915#12247]) +8 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-tglu-1:       NOTRUN -> [SKIP][205] ([i915#12247] / [i915#6953])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#12247]) +2 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-rkl-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b:
    - shard-tglu-1:       NOTRUN -> [SKIP][207] ([i915#12247]) +3 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
    - shard-dg2:          NOTRUN -> [SKIP][208] ([i915#12247] / [i915#6953] / [i915#9423])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c:
    - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#12247]) +7 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
    - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#12247] / [i915#3555] / [i915#9423])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#2575] / [i915#9423])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-tglu:         NOTRUN -> [SKIP][212] ([i915#9812])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][213] ([i915#5354])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-tglu:         NOTRUN -> [SKIP][214] ([i915#9685])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-dg1:          NOTRUN -> [SKIP][215] ([i915#3828])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#5978])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-tglu-1:       NOTRUN -> [SKIP][217] ([i915#3828])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@cursor-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][218] ([i915#12937]) +1 other test skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@kms_pm_rpm@cursor-dpms.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#9519])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [PASS][220] -> [SKIP][221] ([i915#9519]) +1 other test skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#6524] / [i915#6805])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_prime@d3hot:
    - shard-tglu-1:       NOTRUN -> [SKIP][223] ([i915#6524])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#11520]) +3 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][225] ([i915#11520])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-glk5/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][226] ([i915#11520]) +4 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][227] ([i915#11520]) +3 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:
    - shard-dg1:          NOTRUN -> [SKIP][228] ([i915#11520]) +6 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-12/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-dg1:          NOTRUN -> [SKIP][229] ([i915#9683])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-12/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@psr-cursor-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][230] ([i915#1072] / [i915#9732]) +8 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_psr@psr-cursor-mmap-cpu.html

  * igt@kms_psr@psr-primary-render:
    - shard-tglu:         NOTRUN -> [SKIP][231] ([i915#9732]) +11 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_psr@psr-primary-render.html

  * igt@kms_psr@psr2-primary-mmap-cpu:
    - shard-dg1:          NOTRUN -> [SKIP][232] ([i915#1072] / [i915#9732]) +13 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_psr@psr2-primary-mmap-cpu.html

  * igt@kms_psr@psr2-suspend:
    - shard-tglu-1:       NOTRUN -> [SKIP][233] ([i915#9732]) +9 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_psr@psr2-suspend.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglu-1:       NOTRUN -> [SKIP][234] ([i915#9685])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg1:          NOTRUN -> [SKIP][235] ([i915#5289]) +1 other test skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#12755])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-tglu-1:       NOTRUN -> [SKIP][237] ([i915#3555]) +3 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-dg1:          NOTRUN -> [SKIP][238] ([i915#8623]) +1 other test skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-tglu-1:       NOTRUN -> [SKIP][239] ([i915#9906])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@lobf:
    - shard-tglu-1:       NOTRUN -> [SKIP][240] ([i915#11920])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_vrr@lobf.html

  * igt@kms_vrr@negative-basic:
    - shard-dg1:          NOTRUN -> [SKIP][241] ([i915#3555] / [i915#9906])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_vrr@negative-basic.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#9906])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#2437])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-dg1:          NOTRUN -> [SKIP][244] ([i915#2437] / [i915#9412])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@perf@blocking@0-rcs0:
    - shard-tglu:         [PASS][245] -> [FAIL][246] ([i915#10538]) +1 other test fail
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-tglu-5/igt@perf@blocking@0-rcs0.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-2/igt@perf@blocking@0-rcs0.html

  * igt@perf_pmu@busy:
    - shard-dg2:          [PASS][247] -> [SKIP][248] ([i915#12506]) +4 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@perf_pmu@busy.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@perf_pmu@busy.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-dg1:          NOTRUN -> [SKIP][249] ([i915#8850])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@perf_pmu@cpu-hotplug.html

  * igt@prime_udl:
    - shard-rkl:          NOTRUN -> [SKIP][250]
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-rkl-7/igt@prime_udl.html

  * igt@sriov_basic@bind-unbind-vf@vf-1:
    - shard-tglu-1:       NOTRUN -> [FAIL][251] ([i915#12910]) +9 other tests fail
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@sriov_basic@bind-unbind-vf@vf-1.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-glk:          NOTRUN -> [SKIP][252] +12 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-glk8/igt@sriov_basic@enable-vfs-autoprobe-on.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-dg1:          NOTRUN -> [SKIP][253] ([i915#9917])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  * igt@syncobj_wait@invalid-wait-zero-handles:
    - shard-tglu:         NOTRUN -> [FAIL][254] ([i915#12564] / [i915#9781])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@syncobj_wait@invalid-wait-zero-handles.html

  * igt@tools_test@tools_test:
    - shard-dg2:          [PASS][255] -> [FAIL][256] ([i915#12875])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-8/igt@tools_test@tools_test.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@tools_test@tools_test.html

  
#### Possible fixes ####

  * igt@fbdev@eof:
    - shard-dg2:          [SKIP][257] ([i915#2582]) -> [PASS][258] +1 other test pass
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@fbdev@eof.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-5/igt@fbdev@eof.html

  * igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [INCOMPLETE][259] ([i915#12392] / [i915#7297]) -> [PASS][260]
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-3/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-smem-lmem0.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-3/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-smem-lmem0.html

  * igt@gem_eio@wait-wedge-1us:
    - shard-mtlp:         ([PASS][261], [ABORT][262], [PASS][263], [PASS][264], [PASS][265], [PASS][266], [PASS][267]) -> [PASS][268]
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-7/igt@gem_eio@wait-wedge-1us.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-4/igt@gem_eio@wait-wedge-1us.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-3/igt@gem_eio@wait-wedge-1us.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-8/igt@gem_eio@wait-wedge-1us.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-1/igt@gem_eio@wait-wedge-1us.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-5/igt@gem_eio@wait-wedge-1us.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-2/igt@gem_eio@wait-wedge-1us.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-mtlp-1/igt@gem_eio@wait-wedge-1us.html

  * igt@gem_exec_gttfill@engines@rcs0:
    - shard-mtlp:         ([INCOMPLETE][269], [INCOMPLETE][270]) -> [PASS][271]
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-2/igt@gem_exec_gttfill@engines@rcs0.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-5/igt@gem_exec_gttfill@engines@rcs0.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-mtlp-1/igt@gem_exec_gttfill@engines@rcs0.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg1:          [ABORT][272] ([i915#7975] / [i915#8213]) -> [PASS][273] +1 other test pass
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_linear_blits@interruptible:
    - shard-dg2:          [INCOMPLETE][274] -> [PASS][275]
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-2/igt@gem_linear_blits@interruptible.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-5/igt@gem_linear_blits@interruptible.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-dg2:          [SKIP][276] ([i915#12936]) -> [PASS][277] +1 other test pass
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gem_lmem_swapping@random-engines.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-5/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_mmap_offset@clear:
    - shard-mtlp:         ([PASS][278], [ABORT][279], [ABORT][280]) ([i915#10729]) -> [PASS][281] +1 other test pass
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-8/igt@gem_mmap_offset@clear.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-5/igt@gem_mmap_offset@clear.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-2/igt@gem_mmap_offset@clear.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-mtlp-4/igt@gem_mmap_offset@clear.html

  * igt@i915_hangman@engine-engine-error@vecs0:
    - shard-rkl:          [DMESG-WARN][282] -> [PASS][283]
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-rkl-5/igt@i915_hangman@engine-engine-error@vecs0.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-rkl-5/igt@i915_hangman@engine-engine-error@vecs0.html

  * igt@i915_power@sanity:
    - shard-mtlp:         ([PASS][284], [PASS][285], [PASS][286], [PASS][287], [SKIP][288], [PASS][289]) ([i915#7984]) -> [PASS][290]
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-6/igt@i915_power@sanity.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-8/igt@i915_power@sanity.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-3/igt@i915_power@sanity.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-1/igt@i915_power@sanity.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-7/igt@i915_power@sanity.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-2/igt@i915_power@sanity.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-mtlp-6/igt@i915_power@sanity.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         ([ABORT][291], [ABORT][292], [PASS][293], [ABORT][294], [ABORT][295]) ([i915#12061]) -> [PASS][296] +1 other test pass
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-5/igt@i915_selftest@live@workarounds.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-7/igt@i915_selftest@live@workarounds.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-6/igt@i915_selftest@live@workarounds.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-8/igt@i915_selftest@live@workarounds.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-1/igt@i915_selftest@live@workarounds.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-mtlp-2/igt@i915_selftest@live@workarounds.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         ([PASS][297], [DMESG-FAIL][298], [PASS][299], [PASS][300], [PASS][301], [PASS][302]) ([i915#11627]) -> [PASS][303]
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs:
    - shard-dg2:          [SKIP][304] -> [PASS][305] +24 other tests pass
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-snb:          [FAIL][306] ([i915#2346]) -> [PASS][307] +1 other test pass
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-snb1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-snb2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-render@rgb565-ytiled:
    - shard-rkl:          [DMESG-WARN][308] ([i915#12964]) -> [PASS][309] +2 other tests pass
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-rkl-7/igt@kms_draw_crc@draw-method-render@rgb565-ytiled.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-rkl-3/igt@kms_draw_crc@draw-method-render@rgb565-ytiled.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-dg1:          [DMESG-WARN][310] ([i915#4423]) -> [PASS][311] +2 other tests pass
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg1-12/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1:
    - shard-glk:          [FAIL][312] ([i915#2122]) -> [PASS][313] +1 other test pass
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-glk5/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-glk8/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a2:
    - shard-rkl:          [FAIL][314] ([i915#11989]) -> [PASS][315]
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-rkl-3/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a2.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-rkl-1/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-mtlp:         [INCOMPLETE][316] ([i915#6113]) -> [PASS][317]
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-mtlp-6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-rkl:          [FAIL][318] ([i915#2122]) -> [PASS][319] +2 other tests pass
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-rkl-4/igt@kms_flip@plain-flip-fb-recreate.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-rkl-4/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-mtlp:         ([FAIL][320], [PASS][321], [FAIL][322], [FAIL][323]) ([i915#2122]) -> [PASS][324] +2 other tests pass
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-3/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-1/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-6/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-4/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-mtlp-7/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@d-edp1:
    - shard-mtlp:         ([FAIL][325], [PASS][326], [PASS][327], [PASS][328]) ([i915#2122]) -> [PASS][329]
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-4/igt@kms_flip@plain-flip-fb-recreate@d-edp1.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-6/igt@kms_flip@plain-flip-fb-recreate@d-edp1.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-1/igt@kms_flip@plain-flip-fb-recreate@d-edp1.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-3/igt@kms_flip@plain-flip-fb-recreate@d-edp1.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-mtlp-7/igt@kms_flip@plain-flip-fb-recreate@d-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a1:
    - shard-tglu:         [FAIL][330] ([i915#2122]) -> [PASS][331] +13 other tests pass
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-tglu-10/igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a1.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-9/igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible:
    - shard-tglu:         [FAIL][332] ([i915#10826]) -> [PASS][333]
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-tglu-8/igt@kms_flip@wf_vblank-ts-check-interruptible.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-4/igt@kms_flip@wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@a-vga1:
    - shard-snb:          [FAIL][334] ([i915#2122]) -> [PASS][335] +9 other tests pass
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-snb6/igt@kms_flip@wf_vblank-ts-check-interruptible@a-vga1.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-snb7/igt@kms_flip@wf_vblank-ts-check-interruptible@a-vga1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1:
    - shard-tglu:         [FAIL][336] -> [PASS][337]
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-tglu-8/igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-tglu-4/igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1.html

  * igt@kms_getfb@getfb-handle-closed:
    - shard-dg2:          [SKIP][338] ([i915#2575]) -> [PASS][339] +130 other tests pass
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@kms_getfb@getfb-handle-closed.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-5/igt@kms_getfb@getfb-handle-closed.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          [SKIP][340] ([i915#3555] / [i915#8228]) -> [PASS][341]
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@kms_hdr@static-toggle-suspend.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-dg2:          [SKIP][342] ([i915#2575] / [i915#9423]) -> [PASS][343] +5 other tests pass
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-10/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-dg2:          [SKIP][344] ([i915#9519]) -> [PASS][345]
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-6/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          [SKIP][346] ([i915#9519]) -> [PASS][347] +2 other tests pass
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_vrr@negative-basic:
    - shard-dg2:          [SKIP][348] ([i915#3555] / [i915#9906]) -> [PASS][349]
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@kms_vrr@negative-basic.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-10/igt@kms_vrr@negative-basic.html

  * igt@perf@gen12-group-concurrent-oa-buffer-read:
    - shard-mtlp:         ([PASS][350], [PASS][351], [PASS][352], [PASS][353], [FAIL][354]) ([i915#10538]) -> [PASS][355]
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-2/igt@perf@gen12-group-concurrent-oa-buffer-read.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-5/igt@perf@gen12-group-concurrent-oa-buffer-read.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-3/igt@perf@gen12-group-concurrent-oa-buffer-read.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-1/igt@perf@gen12-group-concurrent-oa-buffer-read.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-8/igt@perf@gen12-group-concurrent-oa-buffer-read.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-mtlp-3/igt@perf@gen12-group-concurrent-oa-buffer-read.html

  * igt@perf_pmu@enable-race:
    - shard-dg2:          [SKIP][356] ([i915#12506]) -> [PASS][357] +5 other tests pass
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@perf_pmu@enable-race.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-6/igt@perf_pmu@enable-race.html

  
#### Warnings ####

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-dg2:          [SKIP][358] ([i915#2575]) -> [SKIP][359] ([i915#8411])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@api_intel_bb@object-reloc-purge-cache.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-5/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@drm_fdinfo@virtual-busy-hang:
    - shard-dg2:          [SKIP][360] ([i915#12506]) -> [SKIP][361] ([i915#8414])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@drm_fdinfo@virtual-busy-hang.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-10/igt@drm_fdinfo@virtual-busy-hang.html

  * igt@gem_ctx_persistence@hostile:
    - shard-dg2:          [FAIL][362] ([i915#11980] / [i915#12580]) -> [SKIP][363] ([i915#2575])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-6/igt@gem_ctx_persistence@hostile.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@gem_ctx_persistence@hostile.html

  * igt@gem_ctx_sseu@engines:
    - shard-dg2:          [SKIP][364] ([i915#2575]) -> [SKIP][365] ([i915#280])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gem_ctx_sseu@engines.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-10/igt@gem_ctx_sseu@engines.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg2:          [SKIP][366] ([i915#4812]) -> [SKIP][367] ([i915#2575])
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-6/igt@gem_exec_balancer@bonded-false-hang.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          [SKIP][368] ([i915#2575]) -> [SKIP][369] ([i915#4771])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gem_exec_balancer@bonded-sync.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-5/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_capture@capture-invisible:
    - shard-dg2:          [SKIP][370] ([i915#2575]) -> [SKIP][371] ([i915#6334])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gem_exec_capture@capture-invisible.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-10/igt@gem_exec_capture@capture-invisible.html

  * igt@gem_exec_flush@basic-uc-ro-default:
    - shard-dg2:          [SKIP][372] ([i915#3539] / [i915#4852]) -> [SKIP][373] ([i915#2575])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-8/igt@gem_exec_flush@basic-uc-ro-default.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@gem_exec_flush@basic-uc-ro-default.html

  * igt@gem_exec_flush@basic-uc-set-default:
    - shard-dg2:          [SKIP][374] ([i915#2575]) -> [SKIP][375] ([i915#3539])
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gem_exec_flush@basic-uc-set-default.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-5/igt@gem_exec_flush@basic-uc-set-default.html

  * igt@gem_exec_flush@basic-wb-set-default:
    - shard-dg2:          [SKIP][376] ([i915#2575]) -> [SKIP][377] ([i915#3539] / [i915#4852]) +1 other test skip
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gem_exec_flush@basic-wb-set-default.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-6/igt@gem_exec_flush@basic-wb-set-default.html

  * igt@gem_exec_reloc@basic-active:
    - shard-dg2:          [SKIP][378] ([i915#2575]) -> [SKIP][379] ([i915#3281]) +7 other tests skip
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gem_exec_reloc@basic-active.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-10/igt@gem_exec_reloc@basic-active.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg2:          [SKIP][380] ([i915#3281]) -> [SKIP][381] ([i915#2575]) +5 other tests skip
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-dg2:          [SKIP][382] ([i915#2575]) -> [SKIP][383] ([i915#4537] / [i915#4812]) +1 other test skip
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-contexts-chain.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-10/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_exec_schedule@reorder-wide:
    - shard-dg2:          [SKIP][384] ([i915#4537] / [i915#4812]) -> [SKIP][385] ([i915#2575])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-8/igt@gem_exec_schedule@reorder-wide.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@gem_exec_schedule@reorder-wide.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
    - shard-dg2:          [SKIP][386] ([i915#2575]) -> [SKIP][387] ([i915#4860])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-5/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html

  * igt@gem_media_fill@media-fill:
    - shard-dg2:          [SKIP][388] ([i915#2575]) -> [SKIP][389] ([i915#8289])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gem_media_fill@media-fill.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-5/igt@gem_media_fill@media-fill.html

  * igt@gem_mmap_gtt@big-copy-xy:
    - shard-dg2:          [SKIP][390] ([i915#4077]) -> [SKIP][391] ([i915#2575]) +4 other tests skip
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@gem_mmap_gtt@big-copy-xy.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@gem_mmap_gtt@big-copy-xy.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-dg2:          [SKIP][392] ([i915#2575]) -> [SKIP][393] ([i915#4077]) +4 other tests skip
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gem_mmap_gtt@fault-concurrent-x.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-6/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@gem_mmap_wc@invalid-flags:
    - shard-dg2:          [SKIP][394] ([i915#4083]) -> [SKIP][395] ([i915#2575]) +4 other tests skip
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-6/igt@gem_mmap_wc@invalid-flags.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@gem_mmap_wc@invalid-flags.html

  * igt@gem_mmap_wc@read:
    - shard-dg2:          [SKIP][396] ([i915#2575]) -> [SKIP][397] ([i915#4083]) +2 other tests skip
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gem_mmap_wc@read.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-5/igt@gem_mmap_wc@read.html

  * igt@gem_partial_pwrite_pread@write-uncached:
    - shard-dg2:          [SKIP][398] ([i915#2575]) -> [SKIP][399] ([i915#3282]) +2 other tests skip
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gem_partial_pwrite_pread@write-uncached.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-5/igt@gem_partial_pwrite_pread@write-uncached.html

  * igt@gem_pread@self:
    - shard-dg2:          [SKIP][400] ([i915#3282]) -> [SKIP][401] ([i915#2575]) +2 other tests skip
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@gem_pread@self.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@gem_pread@self.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-dg2:          [SKIP][402] ([i915#2575]) -> [SKIP][403] ([i915#4270])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gem_pxp@create-regular-context-1.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-5/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-dg2:          [SKIP][404] ([i915#4270]) -> [SKIP][405] ([i915#2575]) +1 other test skip
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-8/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled:
    - shard-dg2:          [SKIP][406] ([i915#2575] / [i915#5190]) -> [SKIP][407] ([i915#5190] / [i915#8428]) +1 other test skip
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gem_render_copy@y-tiled-ccs-to-y-tiled.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-10/igt@gem_render_copy@y-tiled-ccs-to-y-tiled.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:
    - shard-dg2:          [SKIP][408] ([i915#5190] / [i915#8428]) -> [SKIP][409] ([i915#2575] / [i915#5190]) +1 other test skip
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-6/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html

  * igt@gem_userptr_blits@map-fixed-invalidate:
    - shard-dg2:          [SKIP][410] ([i915#3297] / [i915#4880]) -> [SKIP][411] ([i915#2575])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-8/igt@gem_userptr_blits@map-fixed-invalidate.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-dg2:          [SKIP][412] ([i915#2575]) -> [SKIP][413] ([i915#3297])
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gem_userptr_blits@readonly-pwrite-unsync.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-6/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gen3_mixed_blits:
    - shard-dg2:          [SKIP][414] ([i915#2575]) -> [SKIP][415] +5 other tests skip
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gen3_mixed_blits.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-10/igt@gen3_mixed_blits.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-dg2:          [SKIP][416] ([i915#2575]) -> [SKIP][417] ([i915#2856]) +2 other tests skip
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@gen9_exec_parse@secure-batches.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-6/igt@gen9_exec_parse@secure-batches.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-dg2:          [SKIP][418] ([i915#2856]) -> [SKIP][419] ([i915#2575]) +2 other tests skip
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-6/igt@gen9_exec_parse@shadow-peek.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         ([ABORT][420], [ABORT][421], [ABORT][422], [PASS][423]) ([i915#10131] / [i915#10887] / [i915#9820]) -> [ABORT][424] ([i915#10131] / [i915#9820])
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg2:          [DMESG-WARN][425] -> [ABORT][426] ([i915#9820])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-8/igt@i915_module_load@reload-with-fault-injection.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-8/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-dg2:          [SKIP][427] ([i915#11681] / [i915#6621]) -> [SKIP][428] ([i915#2575])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-6/igt@i915_pm_rps@min-max-config-loaded.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_pm_sseu@full-enable:
    - shard-dg2:          [SKIP][429] ([i915#4387]) -> [SKIP][430] ([i915#2575])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-8/igt@i915_pm_sseu@full-enable.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@i915_pm_sseu@full-enable.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - shard-dg2:          [SKIP][431] ([i915#2575]) -> [SKIP][432] ([i915#4212])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-10/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg2:          [SKIP][433] ([i915#4215] / [i915#5190]) -> [SKIP][434] ([i915#2575] / [i915#5190])
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         ([PASS][435], [DMESG-FAIL][436], [PASS][437], [PASS][438], [PASS][439]) ([i915#11627]) -> [DMESG-FAIL][440] ([i915#11627])
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
    - shard-dg2:          [SKIP][441] ([i915#5190]) -> [SKIP][442] ([i915#4538] / [i915#5190]) +7 other tests skip
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-5/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
    - shard-dg2:          [SKIP][443] ([i915#4538] / [i915#5190]) -> [SKIP][444] ([i915#5190]) +6 other tests skip
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs:
    - shard-dg2:          [SKIP][445] ([i915#6095]) -> [SKIP][446]
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-dg2:          [SKIP][447] ([i915#12313]) -> [SKIP][448] +1 other test skip
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs:
    - shard-dg2:          [SKIP][449] ([i915#10307] / [i915#6095]) -> [SKIP][450] +5 other tests skip
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:
    - shard-dg2:          [SKIP][451] -> [SKIP][452] ([i915#10307] / [i915#6095]) +8 other tests skip
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_chamelium_audio@hdmi-audio:
    - shard-dg2:          [SKIP][453] ([i915#2575]) -> [SKIP][454] ([i915#7828]) +7 other tests skip
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@kms_chamelium_audio@hdmi-audio.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-10/igt@kms_chamelium_audio@hdmi-audio.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-dg2:          [SKIP][455] ([i915#7828]) -> [SKIP][456] ([i915#2575]) +3 other tests skip
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-6/igt@kms_chamelium_frames@hdmi-crc-fast.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-dg2:          [SKIP][457] ([i915#2575]) -> [SKIP][458] ([i915#3299]) +1 other test skip
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-dg2-11/igt@kms_content_protection@dp-mst-type-1.html
   [458]: https://intel-gfx-ci.01.org/tr

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/index.html

--===============0149478397213519627==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>use hw support for min/interim ddb allocatio=
n for async flip (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/140926/">https://patchwork.freedesktop.org/series/140926/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_140926v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140926v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15725_full -&gt; Patchwork_140926v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_140926v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_140926v2_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
140926v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_setmaster@master-drop-set-root:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-8/igt@core_setmaster@master-drop-set-root.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
40926v2/shard-dg2-11/igt@core_setmaster@master-drop-set-root.html">FAIL</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@gem_ccs@large-ctrl-surf-c=
opy.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hostile@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-rkl-2/igt@gem_ctx_persistence@engines-hostile@rcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_140926v2/shard-rkl-7/igt@gem_ctx_persistence@engines-hostile@rcs0.html"=
>DMESG-WARN</a> +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-internal-1us:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-mtlp-4/igt@gem_eio@in-flight-internal-1us.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-=
mtlp-8/igt@gem_eio@in-flight-internal-1us.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-6/igt@gem_eio@in=
-flight-internal-1us.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_15725/shard-mtlp-2/igt@gem_eio@in-flight-internal-1us.=
html">PASS</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_140926v2/shard-mtlp-4/igt@gem_eio@in-flight-internal-1us.html">ABO=
RT</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-snb7/igt@gem_tiled_swapping@non-threaded.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926=
v2/shard-snb4/igt@gem_tiled_swapping@non-threaded.html">FAIL</a></li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-tglu-6/igt@gem_tiled_swapping@non-threaded.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1409=
26v2/shard-tglu-8/igt@gem_tiled_swapping@non-threaded.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@i915_module_load@reload-n=
o-display.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-glk5/igt@i915_module_load@reload-wit=
h-fault-injection.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@i915_pm_rpm@gem-execbuf-stress.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926=
v2/shard-dg2-11/igt@i915_pm_rpm@gem-execbuf-stress.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@pipe-=
b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-rkl-3/igt@kms_atomic_transition@plan=
e-all-transition-nonblocking-fencing@pipe-b-hdmi-a-2.html">DMESG-WARN</a> +=
2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-rkl-1/igt@kms_big_fb@linear-8bpp-rotate-0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14092=
6v2/shard-rkl-2/igt@kms_big_fb@linear-8bpp-rotate-0.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_flip@2x-modeset-vs-vbl=
ank-race.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-tglu-6/igt@kms_plane@pixel-format-source-clamping.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_140926v2/shard-tglu-8/igt@kms_plane@pixel-format-source-clamping.html">A=
BORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-multi-wait-all-unsubmitted-signaled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-rkl-4/igt@syncobj_wait@invalid-multi=
-wait-all-unsubmitted-signaled.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@device_reset@unbind-cold-reset-rebind.html">S=
KIP</a> ([i915#11078]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_140926v2/shard-dg2-11/igt@device_reset@unbind-cold-reset-re=
bind.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@kms_flip@2x-flip-vs-suspend-interruptible.ht=
ml">SKIP</a> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140926v2/shard-dg2-6/igt@kms_flip@2x-flip-vs-suspend-in=
terruptible.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:<ul>
<li>{shard-dg2-9}:      NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-9/igt@kms_flip@2x-flip-vs-expire=
d-vblank-interruptible.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_15725_full and Patchwork_1=
40926v2_full:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@kms_cursor_crc@cursor-random-64x21@pipe-a-dp-4:<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [4.36] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_140926v2_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_allocator@default-alignment:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-8/igt@api_intel_allocator@default-alignment.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_140926v2/shard-dg2-11/igt@api_intel_allocator@default-alignment.html">SKIP=
</a> +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@device_reset@cold-reset-b=
ound.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@drm_fdinfo@most-busy-chec=
k-all.html">SKIP</a> ([i915#8414]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@drm_fdinfo@most-busy-idle-=
check-all@vecs1.html">SKIP</a> ([i915#8414]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@drm_fdinfo@virtual-busy.h=
tml">SKIP</a> ([i915#12506]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-6/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/i=
gt@fbdev@nullptr.html">SKIP</a> ([i915#2582]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_busy@semaphore.html">S=
KIP</a> ([i915#3936])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-rkl-7/igt@gem_ccs@block-multicopy-co=
mpressed.html">SKIP</a> ([i915#9323])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@gem_ccs@block-multicopy-c=
ompressed.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-3/igt@gem_ccs@suspend-resume@til=
e64-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#12392] / [i=
915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@gem_close_race@multigpu-b=
asic-process.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_close_race@multigpu-ba=
sic-threads.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> ([i915#8562])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-8/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926=
v2/shard-dg2-11/igt@gem_ctx_exec@basic-nohangcheck.html">SKIP</a> ([i915#25=
75]) +117 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-close:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@gem_ctx_persistence@heart=
beat-close.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@gem_ctx_sseu@engines.html=
">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_ctx_sseu@invalid-sseu.=
html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-semaphore:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@gem_exec_balancer@bonded-=
semaphore.html">SKIP</a> ([i915#4812]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_basic@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@gem_exec_basic@basic.html=
">SKIP</a> ([i915#2575]) +46 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@gem_exec_capture@capture-=
invisible.html">SKIP</a> ([i915#6334]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-10/igt@gem_exec_capture@capture-=
invisible@lmem0.html">SKIP</a> ([i915#6334]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit67:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_exec_fence@submit67.ht=
ml">SKIP</a> ([i915#4812]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@gem_exec_flush@basic-uc-p=
rw-default.html">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@gem_exec_flush@basic-wb-r=
o-default.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_exec_flush@basic-wb-rw=
-before-default.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-14/igt@gem_exec_reloc@basic-cpu-=
wc.html">SKIP</a> ([i915#3281]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_exec_reloc@basic-wc-cp=
u.html">SKIP</a> ([i915#3281]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_fence_thrash@bo-write-=
verify-x.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@gem_lmem_swapping@massive=
.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-6/igt@gem_lmem_swapping@parallel-multi.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1409=
26v2/shard-dg2-11/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> ([i91=
5#12936]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@gem_lmem_swapping@smem-oo=
m.html">SKIP</a> ([i915#12936])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@gem_lmem_swapping@verify-=
ccs.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-12/igt@gem_lmem_swapping@verify-=
random-ccs.html">SKIP</a> ([i915#12193]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-12/igt@gem_lmem_swapping@verify-=
random-ccs@lmem0.html">SKIP</a> ([i915#4565]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_mmap_gtt@big-copy.html=
">SKIP</a> ([i915#4077]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-object:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_mmap_wc@bad-object.htm=
l">SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-cpu-read-wc-unflushed:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@gem_mmap_wc@write-cpu-rea=
d-wc-unflushed.html">SKIP</a> ([i915#4083]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@bench:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@gem_pread@bench.html">SKI=
P</a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@uncached:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_pread@uncached.html">S=
KIP</a> ([i915#3282]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-buffer:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-12/igt@gem_pxp@create-regular-bu=
ffer.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@gem_pxp@dmabuf-shared-pro=
tected-dst-is-context-refcounted.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_pxp@fail-invalid-prote=
cted-context.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@gem_pxp@hw-rejects-pxp-bu=
ffer.html">SKIP</a> ([i915#12975])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_render_copy@linear-to-=
vebox-y-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@gem_render_copy@linear-to=
-vebox-yf-tiled.html">SKIP</a> ([i915#2575] / [i915#5190]) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@gem_render_tiled_blits@ba=
sic.html">SKIP</a> ([i915#4079]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_set_tiling_vs_blt@unti=
led-to-tiled.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-12/igt@gem_tiled_partial_pwrite_=
pread@writes-after-reads.html">SKIP</a> ([i915#4077]) +6 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@gem_userptr_blits@create-=
destroy-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gem_userptr_blits@unsync-u=
nmap.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@gen9_exec_parse@allowed-s=
ingle.html">SKIP</a> ([i915#2527]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@gen9_exec_parse@bb-large.=
html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@gen9_exec_parse@unaligned=
-jump.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@gen9_exec_parse@valid-regi=
sters.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-12/igt@i915_fb_tiling.html">SKIP=
</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@i915_module_load@reload-w=
ith-fault-injection.html">ABORT</a> ([i915#10887] / [i915#12817] / [i915#98=
20])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14092=
6v2/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> ([i915#1=
2548] / [i915#3591])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_140926v2/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html"=
>FAIL</a> ([i915#12739] / [i915#3591])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@i915_pm_rps@basic-api.html=
">SKIP</a> ([i915#11681] / [i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@i915_pm_sseu@full-enable.=
html">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@i915_query@query-topology-=
coherent-slice-mask.html">SKIP</a> ([i915#6188])</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@i915_query@test-query-geo=
metry-subslices.html">SKIP</a> ([i915#5723])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-glk8/igt@i915_selftest@mock.html">DM=
ESG-WARN</a> ([i915#1982] / [i915#9311])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-glk8/igt@i915_selftest@mock@memory_r=
egion.html">DMESG-WARN</a> ([i915#9311])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_addfb_basic@basic-x-ti=
led-legacy.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_addfb_basic@tile-pitc=
h-mismatch.html">SKIP</a> ([i915#4212]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@unused-handle:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg1-13/igt@kms_addfb_basic@unused-handle.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926=
v2/shard-dg1-13/igt@kms_addfb_basic@unused-handle.html">DMESG-WARN</a> ([i9=
15#4423]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-r=
c-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-14/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html">SKIP</a> ([i915#8709=
]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_atomic@plane-primary-=
overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_atomic_transition@pla=
ne-all-modeset-transition@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#11808]) +1 =
other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_big_fb@4-tiled-64bpp-=
rotate-270.html">SKIP</a> ([i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-180-async-flip.html">SKIP</a> ([i915#4538] / [i915#528=
6]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([i915#5286]) +1 other test ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_big_fb@linear-64bpp-r=
otate-270.html">SKIP</a> ([i915#3638]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_big_fb@y-tiled-addfb-s=
ize-offset-overflow.html">SKIP</a> ([i915#5190]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_big_fb@yf-tiled-64bpp-=
rotate-270.html">SKIP</a> ([i915#4538] / [i915#5190]) +4 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_big_fb@yf-tiled-max-h=
w-stride-32bpp-rotate-180-async-flip.html">SKIP</a> ([i915#4538]) +3 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-mtlp-1/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-180-async-flip.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-4/igt@kms_ccs@ccs-on-another-bo-=
4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#104=
34] / [i915#6095]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_ccs@crc-primary-basic=
-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_ccs@crc-primary-basic-=
4-tiled-mtl-rc-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) +120 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_ccs@crc-primary-basic=
-y-tiled-ccs.html">SKIP</a> ([i915#6095]) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_ccs@crc-primary-rotat=
ion-180-y-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#6095]) +39 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-17/igt@kms_ccs@crc-primary-rotat=
ion-180-yf-tiled-ccs@pipe-a-hdmi-a-4.html">SKIP</a> ([i915#6095]) +127 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_ccs@crc-primary-suspe=
nd-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12805])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-2/igt@kms_ccs@crc-primary-suspen=
d-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3.html">SKIP</a> ([i915#6095]) +20 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-rkl-7/igt@kms_ccs@random-ccs-data-y-=
tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) +54 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-50:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-12/igt@kms_chamelium_color@ctm-0=
-50.html">SKIP</a> +33 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-resolution-list:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_chamelium_edid@dp-edi=
d-resolution-list.html">SKIP</a> ([i915#7828]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@vga-frame-dump:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-17/igt@kms_chamelium_frames@vga-=
frame-dump.html">SKIP</a> ([i915#7828]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-fast:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_chamelium_hpd@hdmi-hp=
d-fast.html">SKIP</a> ([i915#7828]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-after-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_chamelium_hpd@vga-hpd-=
after-suspend.html">SKIP</a> ([i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-=
for-each-pipe.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_content_protection@co=
ntent-type-change.html">SKIP</a> ([i915#6944] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-2/igt@kms_content_protection@dp=
-mst-lic-type-0.html">SKIP</a> ([i915#3116] / [i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_content_protection@typ=
e1.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_content_protection@ue=
vent.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_cursor_crc@cursor-off=
screen-512x170.html">SKIP</a> ([i915#12976])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-64x21@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-rkl-4/igt@kms_cursor_crc@cursor-offs=
creen-64x21@pipe-b-hdmi-a-1.html">DMESG-WARN</a> ([i915#12964]) +5 other te=
sts dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_cursor_crc@cursor-ons=
creen-32x32.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_cursor_crc@cursor-rand=
om-512x170.html">SKIP</a> ([i915#12976]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_cursor_crc@cursor-rapi=
d-movement-max-size.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_cursor_crc@cursor-sli=
ding-32x10.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_cursor_crc@cursor-sli=
ding-512x512.html">SKIP</a> ([i915#12976]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@default-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@kms_dirtyfb@default-dirty=
fb-ioctl.html">SKIP</a> +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_dirtyfb@psr-dirtyfb-i=
octl.html">SKIP</a> ([i915#9723])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-mtlp-1/igt@kms_display_modes@extende=
d-mode-basic.html">SKIP</a> ([i915#3555] / [i915#8827])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_display_modes@mst-ext=
ended-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_dither@fb-8bpc-vs-pan=
el-6bpc.html">SKIP</a> ([i915#1769] / [i915#3555] / [i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#3804])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_dither@fb-8bpc-vs-pan=
el-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_draw_crc@draw-method-=
mmap-wc.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-render@xrgb2101010-ytiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-rkl-7/igt@kms_draw_crc@draw-method-render@xrgb2101010-y=
tiled.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_140926v2/shard-rkl-3/igt@kms_draw_crc@draw-method-render@xrgb=
2101010-ytiled.html">DMESG-WARN</a> ([i915#12964]) +1 other test dmesg-warn=
</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_dsc@dsc-basic.html">S=
KIP</a> ([i915#3555] / [i915#3840]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_dsc@dsc-with-bpc-form=
ats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_dsc@dsc-with-output-f=
ormats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_dsc@dsc-with-output-fo=
rmats-with-bpc.html">SKIP</a> ([i915#3840] / [i915#9053])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_feature_discovery@disp=
lay-3x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_feature_discovery@psr=
2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-mtlp-1/igt@kms_flip@2x-flip-vs-dpms-=
off-vs-modeset-interruptible.html">SKIP</a> ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_flip@2x-flip-vs-fences=
.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_flip@2x-flip-vs-fence=
s-interruptible.html">SKIP</a> ([i915#3637]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_flip@2x-flip-vs-modes=
et-vs-hang.html">SKIP</a> ([i915#3637]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_flip@2x-plain-flip-fb=
-recreate-interruptible.html">SKIP</a> ([i915#9934]) +6 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-12/igt@kms_flip@flip-vs-fences-i=
nterruptible.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-rkl-2/igt@kms_flip@flip-vs-suspend-i=
nterruptible@a-hdmi-a1.html">DMESG-FAIL</a> ([i915#12964])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-17/igt@kms_flip@plain-flip-fb-re=
create@c-hdmi-a4.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-2/igt@kms_flip@plain-flip-ts-che=
ck-interruptible@b-hdmi-a3.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-10/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a=
> ([i915#2672]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-64bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#=
3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i=
915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#2672] / [i91=
5#3555] / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytileccs-upscaling.html">SKIP</a> ([i915#2587] / [i915=
#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> ([=
i915#2587] / [i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-16bpp-4tile-downscaling.html">SKIP</a> ([i915#2672] / [i915#=
3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#=
3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i=
915#2587] / [i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-=
indfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_140926v2/shard-dg2-10/igt@kms_frontbuffer_trackin=
g@fbc-1p-offscren-pri-indfb-draw-pwrite.html">FAIL</a> ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> +35 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-spr-indfb-onoff.html">SKIP</a> ([i915#1825])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bc-2p-rte.html">SKIP</a> ([i915#5354]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-i=
ndfb-draw-mmap-wc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_140926v2/shard-snb4/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> +4 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> +40 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-12/igt@kms_frontbuffer_tracking@=
fbc-tiling-4.html">SKIP</a> ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-pri-indfb-draw-render.html">SKIP</a> ([i915#3458]) +7 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#8708]) +9 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +8 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#1825])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_frontbuffer_tracking@p=
sr-1p-offscren-pri-shrfb-draw-pwrite.html">SKIP</a> ([i915#3458]) +8 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_hdr@brightness-with-h=
dr.html">SKIP</a> ([i915#1187] / [i915#12713])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_hdr@static-toggle-dpm=
s.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_hdr@static-toggle-sus=
pend.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_joiner@basic-force-big=
-joiner.html">SKIP</a> ([i915#12388])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_joiner@basic-ultra-jo=
iner.html">SKIP</a> ([i915#12339]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_joiner@invalid-modese=
t-force-big-joiner.html">SKIP</a> ([i915#12388])</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_multipipe_modeset@bas=
ic-max-pipe-crc-check.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_plane_scaling@intel-m=
ax-src-size.html">SKIP</a> ([i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c:=
</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-25-with-modifiers@pipe-c.html">SKIP</a> ([i915#12247]) +4=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-=
with-pixel-format.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@kms_plane_scaling@plane=
-scaler-unity-scaling-with-pixel-format.html">SKIP</a> ([i915#2575] / [i915=
#9423]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_plane_scaling@plane-u=
pscale-factor-0-25-with-rotation@pipe-d.html">SKIP</a> ([i915#12247]) +8 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_plane_scaling@planes-=
downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-rkl-4/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-20x20.html">SKIP</a> ([i915#12247]) +2 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_plane_scaling@planes-=
downscale-factor-0-25@pipe-b.html">SKIP</a> ([i915#12247]) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#695=
3] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-25@pipe-c.html">SKIP</a> ([i915#12247]) +7 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#355=
5] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-5.html">SKIP</a> ([i915#2575] / [i915#9423=
])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_pm_backlight@basic-br=
ightness.html">SKIP</a> ([i915#9812])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_pm_backlight@fade-wit=
h-dpms.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_pm_dc@dc3co-vpb-simul=
ation.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_pm_dc@dc5-retention-f=
lops.html">SKIP</a> ([i915#3828])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_pm_dc@dc6-dpms.html">S=
KIP</a> ([i915#5978])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_pm_lpsp@kms-lpsp.html=
">SKIP</a> ([i915#3828])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@cursor-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@kms_pm_rpm@cursor-dpms.ht=
ml">SKIP</a> ([i915#12937]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_pm_rpm@dpms-lpsp.html"=
>SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926=
v2/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> ([i915#951=
9]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_prime@basic-modeset-hy=
brid.html">SKIP</a> ([i915#6524] / [i915#6805])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_prime@d3hot.html">SKI=
P</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_psr2_sf@fbc-pr-cursor-=
plane-move-continuous-exceed-sf.html">SKIP</a> ([i915#11520]) +3 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-glk5/igt@kms_psr2_sf@fbc-psr2-overla=
y-plane-move-continuous-sf.html">SKIP</a> ([i915#11520])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_psr2_sf@pr-cursor-pla=
ne-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +4 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_psr2_sf@pr-cursor-pla=
ne-move-continuous-sf.html">SKIP</a> ([i915#11520]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-12/igt@kms_psr2_sf@psr2-cursor-p=
lane-move-continuous-exceed-sf.html">SKIP</a> ([i915#11520]) +6 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-12/igt@kms_psr2_su@page_flip-nv1=
2.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_psr@psr-cursor-mmap-cp=
u.html">SKIP</a> ([i915#1072] / [i915#9732]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@kms_psr@psr-primary-rende=
r.html">SKIP</a> ([i915#9732]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-primary-mmap-cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_psr@psr2-primary-mmap=
-cpu.html">SKIP</a> ([i915#1072] / [i915#9732]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-suspend:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_psr@psr2-suspend.html=
">SKIP</a> ([i915#9732]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_psr_stress_test@inval=
idate-primary-flip-overlay.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-270.html">SKIP</a> ([i915#5289]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_rotation_crc@sprite-ro=
tation-90-pos-100-0.html">SKIP</a> ([i915#12755])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_setmode@clone-exclusi=
ve-crtc.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_tiled_display@basic-t=
est-pattern.html">SKIP</a> ([i915#8623]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_vrr@flip-basic-fastse=
t.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@lobf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@kms_vrr@lobf.html">SKIP</=
a> ([i915#11920])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_vrr@negative-basic.ht=
ml">SKIP</a> ([i915#3555] / [i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_vrr@seamless-rr-switch=
-vrr.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg2-1/igt@kms_writeback@writeback-fb=
-id.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@kms_writeback@writeback-f=
b-id-xrgb2101010.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@perf@blocking@0-rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-tglu-5/igt@perf@blocking@0-rcs0.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-=
tglu-2/igt@perf@blocking@0-rcs0.html">FAIL</a> ([i915#10538]) +1 other test=
 fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@perf_pmu@busy.html">PASS</a> -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/i=
gt@perf_pmu@busy.html">SKIP</a> ([i915#12506]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@cpu-hotplug:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@perf_pmu@cpu-hotplug.html=
">SKIP</a> ([i915#8850])</li>
</ul>
</li>
<li>
<p>igt@prime_udl:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-rkl-7/igt@prime_udl.html">SKIP</a></=
li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf@vf-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-1/igt@sriov_basic@bind-unbind-v=
f@vf-1.html">FAIL</a> ([i915#12910]) +9 other tests fail</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-glk8/igt@sriov_basic@enable-vfs-auto=
probe-on.html">SKIP</a> +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@sriov_basic@enable-vfs-bi=
nd-unbind-each-numvfs-all.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-tglu-6/igt@syncobj_wait@invalid-wait=
-zero-handles.html">FAIL</a> ([i915#12564] / [i915#9781])</li>
</ul>
</li>
<li>
<p>igt@tools_test@tools_test:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-8/igt@tools_test@tools_test.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-=
dg2-11/igt@tools_test@tools_test.html">FAIL</a> ([i915#12875])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@fbdev@eof.html">SKIP</a> ([i915#2582]) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/sha=
rd-dg2-5/igt@fbdev@eof.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-3/igt@gem_ccs@suspend-resume@tile64-compressed-comp=
fmt0-smem-lmem0.html">INCOMPLETE</a> ([i915#12392] / [i915#7297]) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-d=
g2-3/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-smem-lmem0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-wedge-1us:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-mtlp-7/igt@gem_eio@wait-wedge-1us.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-4/i=
gt@gem_eio@wait-wedge-1us.html">ABORT</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-3/igt@gem_eio@wait-wedge-1us.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15=
725/shard-mtlp-8/igt@gem_eio@wait-wedge-1us.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-1/igt@gem_eio@=
wait-wedge-1us.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_15725/shard-mtlp-5/igt@gem_eio@wait-wedge-1us.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mt=
lp-2/igt@gem_eio@wait-wedge-1us.html">PASS</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-mtlp-1/igt@gem_eio@=
wait-wedge-1us.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@engines@rcs0:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-mtlp-2/igt@gem_exec_gttfill@engines@rcs0.html">INCOMPL=
ETE</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/s=
hard-mtlp-5/igt@gem_exec_gttfill@engines@rcs0.html">INCOMPLETE</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard=
-mtlp-1/igt@gem_exec_gttfill@engines@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices@lmem0.html=
">ABORT</a> ([i915#7975] / [i915#8213]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-18/igt@gem_exec_suspend=
@basic-s4-devices@lmem0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@interruptible:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-2/igt@gem_linear_blits@interruptible.html">INCOMPLE=
TE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
140926v2/shard-dg2-5/igt@gem_linear_blits@interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gem_lmem_swapping@random-engines.html">SKIP<=
/a> ([i915#12936]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_140926v2/shard-dg2-5/igt@gem_lmem_swapping@random-engines.html"=
>PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-mtlp-8/igt@gem_mmap_offset@clear.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-5/ig=
t@gem_mmap_offset@clear.html">ABORT</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-2/igt@gem_mmap_offset@clear.html"=
>ABORT</a>) ([i915#10729]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140926v2/shard-mtlp-4/igt@gem_mmap_offset@clear.html">P=
ASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-engine-error@vecs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-rkl-5/igt@i915_hangman@engine-engine-error@vecs0.html">=
DMESG-WARN</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_140926v2/shard-rkl-5/igt@i915_hangman@engine-engine-error@vecs0.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-mtlp-6/igt@i915_power@sanity.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-8/igt@=
i915_power@sanity.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_15725/shard-mtlp-3/igt@i915_power@sanity.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp=
-1/igt@i915_power@sanity.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-7/igt@i915_power@sanity.html">SKI=
P</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/sha=
rd-mtlp-2/igt@i915_power@sanity.html">PASS</a>) ([i915#7984]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-mtlp-=
6/igt@i915_power@sanity.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-mtlp-5/igt@i915_selftest@live@workarounds.html">ABORT<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard=
-mtlp-7/igt@i915_selftest@live@workarounds.html">ABORT</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-6/igt@i915_sel=
ftest@live@workarounds.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_15725/shard-mtlp-8/igt@i915_selftest@live@workaround=
s.html">ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15725/shard-mtlp-1/igt@i915_selftest@live@workarounds.html">ABORT</a>) (=
[i915#12061]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_140926v2/shard-mtlp-2/igt@i915_selftest@live@workarounds.html">PASS<=
/a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rota=
te-180-hflip.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_15725/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-=
rotate-180-hflip.html">DMESG-FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_15725/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-str=
ide-64bpp-rotate-180-hflip.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-180-hflip.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-1/igt@kms_big_fb@4-tiled-ma=
x-hw-stride-64bpp-rotate-180-hflip.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-5/igt@kms_big_fb@4-tile=
d-max-hw-stride-64bpp-rotate-180-hflip.html">PASS</a>) ([i915#11627]) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/sha=
rd-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2=
-rc-ccs.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_140926v2/shard-dg2-5/igt@kms_ccs@crc-primary-rotation-180-4=
-tiled-dg2-rc-ccs.html">PASS</a> +24 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-snb1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-snb2/igt@kms_cursor=
_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> +1 ot=
her test pass</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-render@rgb565-ytiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-rkl-7/igt@kms_draw_crc@draw-method-render@rgb565-ytiled=
.html">DMESG-WARN</a> ([i915#12964]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_140926v2/shard-rkl-3/igt@kms_draw_crc@draw-me=
thod-render@rgb565-ytiled.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg1-12/igt@kms_flip@flip-vs-absolute-wf_vblank-interrup=
tible.html">DMESG-WARN</a> ([i915#4423]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg1-13/igt@kms_flip@flip-v=
s-absolute-wf_vblank-interruptible.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-glk5/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.=
html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_140926v2/shard-glk8/igt@kms_flip@flip-vs-absolute-wf_=
vblank@b-hdmi-a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-rkl-3/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a2=
.html">FAIL</a> ([i915#11989]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140926v2/shard-rkl-1/igt@kms_flip@flip-vs-absolute-=
wf_vblank@b-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-mtlp-2/igt@kms_flip@flip-vs-expired-vblank-interruptibl=
e@b-edp1.html">INCOMPLETE</a> ([i915#6113]) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-mtlp-6/igt@kms_flip@fli=
p-vs-expired-vblank-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-rkl-4/igt@kms_flip@plain-flip-fb-recreate.html">FAIL</a=
> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_140926v2/shard-rkl-4/igt@kms_flip@plain-flip-fb-recreate.html">PAS=
S</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-mtlp-3/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1572=
5/shard-mtlp-1/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-=
6/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-4/igt@kms_fli=
p@plain-flip-fb-recreate@c-edp1.html">FAIL</a>) ([i915#2122]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-mtlp-=
7/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">PASS</a> +2 other tests =
pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@d-edp1:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-mtlp-4/igt@kms_flip@plain-flip-fb-recreate@d-edp1.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1572=
5/shard-mtlp-6/igt@kms_flip@plain-flip-fb-recreate@d-edp1.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-=
1/igt@kms_flip@plain-flip-fb-recreate@d-edp1.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-3/igt@kms_fli=
p@plain-flip-fb-recreate@d-edp1.html">PASS</a>) ([i915#2122]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-mtlp-=
7/igt@kms_flip@plain-flip-fb-recreate@d-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-tglu-10/igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a1.h=
tml">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_140926v2/shard-tglu-9/igt@kms_flip@plain-flip-fb-recre=
ate@d-hdmi-a1.html">PASS</a> +13 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-tglu-8/igt@kms_flip@wf_vblank-ts-check-interruptible.ht=
ml">FAIL</a> ([i915#10826]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_140926v2/shard-tglu-4/igt@kms_flip@wf_vblank-ts-check-=
interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@a-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-snb6/igt@kms_flip@wf_vblank-ts-check-interruptible@a-vg=
a1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_140926v2/shard-snb7/igt@kms_flip@wf_vblank-ts-chec=
k-interruptible@a-vga1.html">PASS</a> +9 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-tglu-8/igt@kms_flip@wf_vblank-ts-check-interruptible@d-=
hdmi-a1.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_140926v2/shard-tglu-4/igt@kms_flip@wf_vblank-ts-check-inter=
ruptible@d-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_getfb@getfb-handle-closed:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@kms_getfb@getfb-handle-closed.html">SKIP</a>=
 ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_140926v2/shard-dg2-5/igt@kms_getfb@getfb-handle-closed.html">PASS</=
a> +130 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> =
([i915#3555] / [i915#8228]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_140926v2/shard-dg2-10/igt@kms_hdr@static-toggle-suspen=
d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@kms_plane_scaling@plane-scaler-with-clipping=
-clamping-rotation.html">SKIP</a> ([i915#2575] / [i915#9423]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-1=
0/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">=
PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-6/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a=
> ([i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_140926v2/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP=
</a> ([i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_140926v2/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.htm=
l">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@kms_vrr@negative-basic.html">SKIP</a> ([i915#=
3555] / [i915#9906]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_140926v2/shard-dg2-10/igt@kms_vrr@negative-basic.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-concurrent-oa-buffer-read:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-mtlp-2/igt@perf@gen12-group-concurrent-oa-buffer-read.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15725/shard-mtlp-5/igt@perf@gen12-group-concurrent-oa-buffer-read.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/sha=
rd-mtlp-3/igt@perf@gen12-group-concurrent-oa-buffer-read.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-1=
/igt@perf@gen12-group-concurrent-oa-buffer-read.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/shard-mtlp-8/igt@perf=
@gen12-group-concurrent-oa-buffer-read.html">FAIL</a>) ([i915#10538]) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/sha=
rd-mtlp-3/igt@perf@gen12-group-concurrent-oa-buffer-read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@enable-race:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@perf_pmu@enable-race.html">SKIP</a> ([i915#1=
2506]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
140926v2/shard-dg2-6/igt@perf_pmu@enable-race.html">PASS</a> +5 other tests=
 pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@api_intel_bb@object-reloc-purge-cache.html">=
SKIP</a> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_140926v2/shard-dg2-5/igt@api_intel_bb@object-reloc-purge-ca=
che.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-hang:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@drm_fdinfo@virtual-busy-hang.html">SKIP</a> =
([i915#12506]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_140926v2/shard-dg2-10/igt@drm_fdinfo@virtual-busy-hang.html">SKIP</=
a> ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-6/igt@gem_ctx_persistence@hostile.html">FAIL</a> ([=
i915#11980] / [i915#12580]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@gem_ctx_persistence@hostile.=
html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#2=
575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
40926v2/shard-dg2-10/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#280])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-6/igt@gem_exec_balancer@bonded-false-hang.html">SKI=
P</a> ([i915#4812]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_140926v2/shard-dg2-11/igt@gem_exec_balancer@bonded-false-hang.=
html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gem_exec_balancer@bonded-sync.html">SKIP</a>=
 ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_140926v2/shard-dg2-5/igt@gem_exec_balancer@bonded-sync.html">SKIP</=
a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gem_exec_capture@capture-invisible.html">SKI=
P</a> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_140926v2/shard-dg2-10/igt@gem_exec_capture@capture-invisible.h=
tml">SKIP</a> ([i915#6334])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-ro-default:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-8/igt@gem_exec_flush@basic-uc-ro-default.html">SKIP=
</a> ([i915#3539] / [i915#4852]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@gem_exec_flush@basic-uc=
-ro-default.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gem_exec_flush@basic-uc-set-default.html">SK=
IP</a> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_140926v2/shard-dg2-5/igt@gem_exec_flush@basic-uc-set-default.=
html">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-set-default:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gem_exec_flush@basic-wb-set-default.html">SK=
IP</a> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_140926v2/shard-dg2-6/igt@gem_exec_flush@basic-wb-set-default.=
html">SKIP</a> ([i915#3539] / [i915#4852]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-active:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gem_exec_reloc@basic-active.html">SKIP</a> (=
[i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_140926v2/shard-dg2-10/igt@gem_exec_reloc@basic-active.html">SKIP</a> =
([i915#3281]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SK=
IP</a> ([i915#3281]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_140926v2/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-gtt-norelo=
c.html">SKIP</a> ([i915#2575]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-contexts-cha=
in.html">SKIP</a> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_140926v2/shard-dg2-10/igt@gem_exec_schedule@preemp=
t-queue-contexts-chain.html">SKIP</a> ([i915#4537] / [i915#4812]) +1 other =
test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@reorder-wide:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-8/igt@gem_exec_schedule@reorder-wide.html">SKIP</a>=
 ([i915#4537] / [i915#4812]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@gem_exec_schedule@reorder-w=
ide.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gem_fenced_exec_thrash@no-spare-fences-busy-=
interruptible.html">SKIP</a> ([i915#2575]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-5/igt@gem_fenced_exe=
c_thrash@no-spare-fences-busy-interruptible.html">SKIP</a> ([i915#4860])</l=
i>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gem_media_fill@media-fill.html">SKIP</a> ([i=
915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_140926v2/shard-dg2-5/igt@gem_media_fill@media-fill.html">SKIP</a> ([i91=
5#8289])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-xy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@gem_mmap_gtt@big-copy-xy.html">SKIP</a> ([i91=
5#4077]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_140926v2/shard-dg2-11/igt@gem_mmap_gtt@big-copy-xy.html">SKIP</a> ([i915#=
2575]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gem_mmap_gtt@fault-concurrent-x.html">SKIP</=
a> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_140926v2/shard-dg2-6/igt@gem_mmap_gtt@fault-concurrent-x.html">SK=
IP</a> ([i915#4077]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@invalid-flags:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-6/igt@gem_mmap_wc@invalid-flags.html">SKIP</a> ([i9=
15#4083]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_140926v2/shard-dg2-11/igt@gem_mmap_wc@invalid-flags.html">SKIP</a> ([i91=
5#2575]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gem_mmap_wc@read.html">SKIP</a> ([i915#2575]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14092=
6v2/shard-dg2-5/igt@gem_mmap_wc@read.html">SKIP</a> ([i915#4083]) +2 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-uncached:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gem_partial_pwrite_pread@write-uncached.html=
">SKIP</a> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_140926v2/shard-dg2-5/igt@gem_partial_pwrite_pread@write-u=
ncached.html">SKIP</a> ([i915#3282]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@self:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@gem_pread@self.html">SKIP</a> ([i915#3282]) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2=
/shard-dg2-11/igt@gem_pread@self.html">SKIP</a> ([i915#2575]) +2 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gem_pxp@create-regular-context-1.html">SKIP<=
/a> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_140926v2/shard-dg2-5/igt@gem_pxp@create-regular-context-1.html">=
SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-8/igt@gem_pxp@verify-pxp-execution-after-suspend-re=
sume.html">SKIP</a> ([i915#4270]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@gem_pxp@verify-pxp-exe=
cution-after-suspend-resume.html">SKIP</a> ([i915#2575]) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gem_render_copy@y-tiled-ccs-to-y-tiled.html"=
>SKIP</a> ([i915#2575] / [i915#5190]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-10/igt@gem_render_copy@y-=
tiled-ccs-to-y-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) +1 other te=
st skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-6/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-cc=
s.html">SKIP</a> ([i915#5190] / [i915#8428]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@gem_render_=
copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html">SKIP</a> ([i915#2575] / [i915#519=
0]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-8/igt@gem_userptr_blits@map-fixed-invalidate.html">=
SKIP</a> ([i915#3297] / [i915#4880]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@gem_userptr_blits@m=
ap-fixed-invalidate.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gem_userptr_blits@readonly-pwrite-unsync.htm=
l">SKIP</a> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_140926v2/shard-dg2-6/igt@gem_userptr_blits@readonly-pwri=
te-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen3_mixed_blits:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gen3_mixed_blits.html">SKIP</a> ([i915#2575]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14092=
6v2/shard-dg2-10/igt@gen3_mixed_blits.html">SKIP</a> +5 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@gen9_exec_parse@secure-batches.html">SKIP</a=
> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_140926v2/shard-dg2-6/igt@gen9_exec_parse@secure-batches.html">SKIP=
</a> ([i915#2856]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-6/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> ([=
i915#2856]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140926v2/shard-dg2-11/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (=
[i915#2575]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injectio=
n.html">ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15725/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html=
">ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_157=
25/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html">ABOR=
T</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15725/sha=
rd-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html">PASS</a>) =
([i915#10131] / [i915#10887] / [i915#9820]) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-mtlp-2/igt@i915_module_=
load@reload-with-fault-injection.html">ABORT</a> ([i915#10131] / [i915#9820=
])</li>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-8/igt@i915_module_load@reload-with-fault-injection.=
html">DMESG-WARN</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_140926v2/shard-dg2-8/igt@i915_module_load@reload-with-fault-i=
njection.html">ABORT</a> ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-6/igt@i915_pm_rps@min-max-config-loaded.html">SKIP<=
/a> ([i915#11681] / [i915#6621]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@i915_pm_rps@min-max-con=
fig-loaded.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-8/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([i91=
5#4387]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_140926v2/shard-dg2-11/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([i915#=
2575])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-leg=
acy.html">SKIP</a> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_140926v2/shard-dg2-10/igt@kms_addfb_basic@addfb25=
-x-tiled-mismatch-legacy.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SK=
IP</a> ([i915#4215] / [i915#5190]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@kms_addfb_basic@basic=
-y-tiled-legacy.html">SKIP</a> ([i915#2575] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15725/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rota=
te-0-hflip.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_15725/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-ro=
tate-0-hflip.html">DMESG-FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_15725/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-=
64bpp-rotate-0-hflip.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_15725/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-strid=
e-64bpp-rotate-0-hflip.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_15725/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-str=
ide-64bpp-rotate-0-hflip.html">PASS</a>) ([i915#11627]) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-mtlp-4/igt@=
kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">DMESG-FAIL</a> =
([i915#11627])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html">SKI=
P</a> ([i915#5190]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_140926v2/shard-dg2-5/igt@kms_big_fb@y-tiled-32bpp-rotate-90.ht=
ml">SKIP</a> ([i915#4538] / [i915#5190]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html">SK=
IP</a> ([i915#4538] / [i915#5190]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@kms_big_fb@yf-tiled-3=
2bpp-rotate-180.html">SKIP</a> ([i915#5190]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-=
ccs.html">SKIP</a> ([i915#6095]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@kms_ccs@crc-primary-sus=
pend-y-tiled-gen12-mc-ccs.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-c=
cs.html">SKIP</a> ([i915#12313]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@kms_ccs@crc-sprite-plan=
es-basic-4-tiled-bmg-ccs.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-r=
c-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140926v2/shard-dg2-11/igt@kms_cc=
s@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs.html">SKIP</a> +5 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-=
rc-ccs-cc.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_140926v2/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic=
-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> ([i915#10307] / [i915#6095]) +8 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@kms_chamelium_audio@hdmi-audio.html">SKIP</a=
> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_140926v2/shard-dg2-10/igt@kms_chamelium_audio@hdmi-audio.html">SKI=
P</a> ([i915#7828]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-6/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP=
</a> ([i915#7828]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_140926v2/shard-dg2-11/igt@kms_chamelium_frames@hdmi-crc-fast.ht=
ml">SKIP</a> ([i915#2575]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15725/shard-dg2-11/igt@kms_content_protection@dp-mst-type-1.html">S=
KIP</a> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr">SKIP=
</a> ([i915#3299]) +1 other test skip</li>
</ul>
</li>
</ul>

</body>
</html>

--===============0149478397213519627==--
