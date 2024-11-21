Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 730109D49EF
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2024 10:24:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E0F010E8C8;
	Thu, 21 Nov 2024 09:24:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BAC710E038;
 Thu, 21 Nov 2024 09:24:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1467852856290223606=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915=3A_Fixed_NULL_p?=
 =?utf-8?q?ointer_dereference_in_capture=5Fengine_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Eugene Kobyak" <eugene.kobyak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Nov 2024 09:24:42 -0000
Message-ID: <173218108205.1068655.8428545205817031622@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <jpbxlab2hz4gozye45lcl635zc4nrfb7rsrvgk4jlfgww2yo6g@qriixepb57au>
In-Reply-To: <jpbxlab2hz4gozye45lcl635zc4nrfb7rsrvgk4jlfgww2yo6g@qriixepb57au>
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

--===============1467852856290223606==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fixed NULL pointer dereference in capture_engine (rev2)
URL   : https://patchwork.freedesktop.org/series/141559/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15724_full -> Patchwork_141559v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_141559v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_141559v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-kbl-iris 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_141559v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-dg1:          NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-dg2:          [PASS][2] -> [SKIP][3] +4 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-8/igt@gem_lmem_evict@dontneed-evict-race.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_pxp@hw-rejects-pxp-context:
    - shard-tglu-1:       NOTRUN -> [SKIP][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@gem_pxp@hw-rejects-pxp-context.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - shard-mtlp:         [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-mtlp-6/igt@i915_pm_rpm@system-suspend-devices.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-mtlp-4/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@kms_cursor_crc@cursor-dpms@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][7] +12 other tests dmesg-warn
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-2/igt@kms_cursor_crc@cursor-dpms@pipe-a-hdmi-a-1.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-rkl:          [PASS][8] -> [DMESG-WARN][9] +7 other tests dmesg-warn
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-rkl-7/igt@kms_fbcon_fbt@fbc.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-4/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:
    - shard-rkl:          NOTRUN -> [DMESG-FAIL][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-1/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html

  
#### Warnings ####

  * igt@kms_pm_rpm@pm-caching:
    - shard-dg2:          [SKIP][11] ([i915#4077]) -> [SKIP][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-8/igt@kms_pm_rpm@pm-caching.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_pm_rpm@pm-caching.html

  
New tests
---------

  New tests have been introduced between CI_DRM_15724_full and Patchwork_141559v2_full:

### New IGT tests (2) ###

  * igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [2.55] s

  * igt@kms_cursor_crc@cursor-random-64x21@pipe-a-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [4.34] s

  

Known issues
------------

  Here are the changes found in Patchwork_141559v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@crc32:
    - shard-dg1:          NOTRUN -> [SKIP][13] ([i915#6230])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@api_intel_bb@crc32.html

  * igt@debugfs_test@basic-hwmon:
    - shard-tglu-1:       NOTRUN -> [SKIP][14] ([i915#9318])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@debugfs_test@basic-hwmon.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-tglu-1:       NOTRUN -> [SKIP][15] ([i915#11078])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@busy-check-all@bcs0:
    - shard-dg1:          NOTRUN -> [SKIP][16] ([i915#8414]) +19 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@drm_fdinfo@busy-check-all@bcs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@vecs1:
    - shard-dg2:          NOTRUN -> [SKIP][17] ([i915#8414]) +13 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html

  * igt@drm_fdinfo@virtual-busy-idle:
    - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#12506])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@drm_fdinfo@virtual-busy-idle.html

  * igt@drm_fdinfo@virtual-idle:
    - shard-dg2:          [PASS][19] -> [SKIP][20] ([i915#12506]) +7 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-7/igt@drm_fdinfo@virtual-idle.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@drm_fdinfo@virtual-idle.html

  * igt@fbdev@read:
    - shard-dg2:          [PASS][21] -> [SKIP][22] ([i915#2582])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@fbdev@read.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@fbdev@read.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-dg1:          NOTRUN -> [SKIP][23] ([i915#3555] / [i915#9323])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          NOTRUN -> [SKIP][24] ([i915#9323])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-5/igt@gem_ccs@block-multicopy-compressed.html
    - shard-tglu:         NOTRUN -> [SKIP][25] ([i915#9323])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-9/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ctx_persistence@heartbeat-close:
    - shard-dg1:          NOTRUN -> [SKIP][26] ([i915#8555])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@gem_ctx_persistence@heartbeat-close.html

  * igt@gem_ctx_persistence@hostile:
    - shard-dg1:          NOTRUN -> [FAIL][27] ([i915#11980] / [i915#12580])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@gem_ctx_persistence@hostile.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt:
    - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#5882]) +7 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@gem_ctx_persistence@saturated-hostile-nopreempt.html

  * igt@gem_ctx_sseu@engines:
    - shard-tglu-1:       NOTRUN -> [SKIP][29] ([i915#280]) +1 other test skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@gem_ctx_sseu@engines.html

  * igt@gem_eio@kms:
    - shard-dg1:          NOTRUN -> [FAIL][30] ([i915#5784])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@gem_eio@kms.html

  * igt@gem_eio@unwedge-stress:
    - shard-dg1:          NOTRUN -> [FAIL][31] ([i915#12714] / [i915#5784])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg1:          NOTRUN -> [SKIP][32] ([i915#4771])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@bonded-semaphore:
    - shard-dg1:          NOTRUN -> [SKIP][33] ([i915#4812]) +2 other tests skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@gem_exec_balancer@bonded-semaphore.html

  * igt@gem_exec_capture@capture-invisible:
    - shard-tglu-1:       NOTRUN -> [SKIP][34] ([i915#6334]) +1 other test skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@gem_exec_capture@capture-invisible.html

  * igt@gem_exec_fence@submit3:
    - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#4812])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@gem_exec_fence@submit3.html

  * igt@gem_exec_flush@basic-batch-kernel-default-wb:
    - shard-dg1:          NOTRUN -> [SKIP][36] ([i915#3539] / [i915#4852]) +2 other tests skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@gem_exec_flush@basic-batch-kernel-default-wb.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg1:          NOTRUN -> [SKIP][37] ([i915#3539])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_flush@basic-wb-ro-before-default:
    - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#3539] / [i915#4852])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@gem_exec_flush@basic-wb-ro-before-default.html

  * igt@gem_exec_reloc@basic-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][39] ([i915#3281]) +4 other tests skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@gem_exec_reloc@basic-gtt.html

  * igt@gem_exec_reloc@basic-write-gtt-active:
    - shard-dg1:          NOTRUN -> [SKIP][40] ([i915#3281]) +14 other tests skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@gem_exec_reloc@basic-write-gtt-active.html

  * igt@gem_fence_thrash@bo-write-verify-none:
    - shard-dg1:          NOTRUN -> [SKIP][41] ([i915#4860]) +1 other test skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@gem_fence_thrash@bo-write-verify-none.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4860]) +1 other test skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-tglu:         NOTRUN -> [SKIP][43] ([i915#4613] / [i915#7582])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-dg2:          [PASS][44] -> [SKIP][45] ([i915#12936])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
    - shard-tglu-1:       NOTRUN -> [SKIP][46] ([i915#4613]) +2 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-tglu:         NOTRUN -> [SKIP][47] ([i915#4613])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][48] ([i915#12193])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][49] ([i915#4565])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-glk:          NOTRUN -> [SKIP][50] ([i915#4613])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-glk9/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap@bad-object:
    - shard-dg1:          NOTRUN -> [SKIP][51] ([i915#4083]) +6 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@gem_mmap@bad-object.html

  * igt@gem_mmap_gtt@zero-extend:
    - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#4077]) +2 other tests skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@gem_mmap_gtt@zero-extend.html

  * igt@gem_mmap_wc@close:
    - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#4083]) +1 other test skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@gem_mmap_wc@close.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#3282])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-dg1:          NOTRUN -> [SKIP][55] ([i915#3282]) +3 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_ppgtt@shrink-vs-evict-pinned:
    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#2575]) +19 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_ppgtt@shrink-vs-evict-pinned.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#4270]) +2 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#4270]) +1 other test skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#2575] / [i915#5190]) +1 other test skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#5190] / [i915#8428]) +1 other test skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html

  * igt@gem_render_tiled_blits@basic:
    - shard-dg1:          NOTRUN -> [SKIP][61] ([i915#4079])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@gem_render_tiled_blits@basic.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#4079]) +1 other test skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-dg1:          NOTRUN -> [SKIP][63] ([i915#4885])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@gem_softpin@evict-snoop.html

  * igt@gem_unfence_active_buffers:
    - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#4879])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#3297]) +1 other test skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@map-fixed-invalidate:
    - shard-dg1:          NOTRUN -> [SKIP][66] ([i915#3297] / [i915#4880])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@gem_userptr_blits@map-fixed-invalidate.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][67] ([i915#3297]) +1 other test skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@gem_userptr_blits@readonly-pwrite-unsync.html
    - shard-dg1:          NOTRUN -> [SKIP][68] ([i915#3297]) +1 other test skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [PASS][69] -> [ABORT][70] ([i915#5566])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-glk5/igt@gen9_exec_parse@allowed-single.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-glk3/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-tglu-1:       NOTRUN -> [SKIP][71] ([i915#2527] / [i915#2856]) +2 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@gen9_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-dg1:          NOTRUN -> [SKIP][72] ([i915#2527]) +5 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#2856]) +1 other test skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@gen9_exec_parse@bb-start-far.html
    - shard-tglu:         NOTRUN -> [SKIP][74] ([i915#2527] / [i915#2856]) +1 other test skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@gen9_exec_parse@bb-start-far.html

  * igt@i915_fb_tiling:
    - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#4881])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@i915_fb_tiling.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [PASS][76] -> [ABORT][77] ([i915#9820])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_module_load@resize-bar:
    - shard-dg1:          NOTRUN -> [SKIP][78] ([i915#7178])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@i915_module_load@resize-bar.html
    - shard-tglu:         NOTRUN -> [SKIP][79] ([i915#6412])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_freq_api@freq-reset:
    - shard-tglu:         NOTRUN -> [SKIP][80] ([i915#8399])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@i915_pm_freq_api@freq-reset.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-tglu-1:       NOTRUN -> [WARN][81] ([i915#2681]) +1 other test warn
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-dg1:          [PASS][82] -> [FAIL][83] ([i915#12548] / [i915#3591])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@i915_pm_rps@min-max-config-idle:
    - shard-dg1:          NOTRUN -> [SKIP][84] ([i915#11681] / [i915#6621]) +1 other test skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_pm_sseu@full-enable:
    - shard-dg1:          NOTRUN -> [SKIP][85] ([i915#4387])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@i915_pm_sseu@full-enable.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][86] ([i915#4212] / [i915#4215])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@clobberred-modifier:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#4212])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@kms_addfb_basic@clobberred-modifier.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-tglu-1:       NOTRUN -> [SKIP][88] ([i915#12454] / [i915#12712])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - shard-dg1:          NOTRUN -> [SKIP][89] ([i915#4212]) +1 other test skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#8709]) +7 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition:
    - shard-rkl:          [PASS][91] -> [FAIL][92] ([i915#11808]) +1 other test fail
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-rkl-2/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-2/igt@kms_atomic_transition@plane-toggle-modeset-transition.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#4538] / [i915#5286]) +6 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#5286])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][95] ([i915#5286]) +5 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglu:         NOTRUN -> [SKIP][96] ([i915#5286]) +2 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#5286])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][98] ([i915#3638]) +3 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#5190])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#4538] / [i915#5190]) +3 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][101] +39 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][102] ([i915#4538]) +5 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][103] ([i915#6095]) +189 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-4.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-d-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#10307] / [i915#6095]) +127 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-d-dp-4.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
    - shard-glk:          NOTRUN -> [SKIP][105] +54 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-glk3/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-4/igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#12313]) +1 other test skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][108] ([i915#12313]) +3 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#6095]) +70 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][110] ([i915#6095]) +54 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][111] ([i915#12805])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#6095]) +17 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-8/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][113] ([i915#12313])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][114] ([i915#6095]) +34 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg1:          NOTRUN -> [SKIP][115] ([i915#3742])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#7213]) +3 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_cdclk@plane-scaling:
    - shard-tglu:         NOTRUN -> [SKIP][117] ([i915#3742])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_cdclk@plane-scaling.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
    - shard-tglu-1:       NOTRUN -> [SKIP][118] ([i915#7828]) +5 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_hpd@dp-hpd-with-enabled-mode:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#7828]) +5 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@kms_chamelium_hpd@dp-hpd-with-enabled-mode.html

  * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
    - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#7828]) +5 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-dg1:          NOTRUN -> [SKIP][121] ([i915#7828]) +12 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#7828])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-5/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_content_protection@atomic:
    - shard-tglu-1:       NOTRUN -> [SKIP][123] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][124] ([i915#3116] / [i915#3299]) +2 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-2/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#3299])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#3299])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@mei-interface:
    - shard-tglu-1:       NOTRUN -> [SKIP][127] ([i915#6944] / [i915#9424])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@uevent:
    - shard-dg1:          NOTRUN -> [SKIP][128] ([i915#7116] / [i915#9424]) +1 other test skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-alpha-opaque:
    - shard-dg2:          [PASS][129] -> [SKIP][130] ([i915#2575]) +136 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@kms_cursor_crc@cursor-alpha-opaque.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_cursor_crc@cursor-alpha-opaque.html

  * igt@kms_cursor_crc@cursor-offscreen-32x32:
    - shard-tglu-1:       NOTRUN -> [SKIP][131] ([i915#3555]) +3 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-32x32.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-tglu-1:       NOTRUN -> [SKIP][132] ([i915#11453] / [i915#3359])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg1:          NOTRUN -> [SKIP][133] ([i915#11453] / [i915#3359])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@kms_cursor_crc@cursor-sliding-512x512.html
    - shard-tglu:         NOTRUN -> [SKIP][134] ([i915#11453] / [i915#3359])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-dg1:          NOTRUN -> [SKIP][135] ([i915#4103] / [i915#4213])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg1:          NOTRUN -> [SKIP][136] ([i915#9067])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
    - shard-tglu:         NOTRUN -> [SKIP][137] ([i915#9067])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-tglu-1:       NOTRUN -> [SKIP][138] ([i915#4103])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-tglu-1:       NOTRUN -> [SKIP][139] ([i915#9723])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_dp_aux_dev:
    - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#1257])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@kms_dp_aux_dev.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg1:          NOTRUN -> [SKIP][141] ([i915#3555] / [i915#3840]) +2 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-tglu-1:       NOTRUN -> [SKIP][142] ([i915#3840])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][143] ([i915#3469])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@chamelium:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#4854])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@psr1:
    - shard-tglu-1:       NOTRUN -> [SKIP][145] ([i915#658])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_feature_discovery@psr1.html

  * igt@kms_feature_discovery@psr2:
    - shard-dg1:          NOTRUN -> [SKIP][146] ([i915#658])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_feature_discovery@psr2.html

  * igt@kms_fence_pin_leak:
    - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#4881])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-plain-flip:
    - shard-tglu:         NOTRUN -> [SKIP][148] ([i915#3637]) +3 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][149] ([i915#9934]) +13 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][150] ([i915#3637])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank:
    - shard-dg1:          [PASS][151] -> [FAIL][152] ([i915#12517] / [i915#2122])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg1-13/igt@kms_flip@flip-vs-absolute-wf_vblank.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@kms_flip@flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1:
    - shard-glk:          [PASS][153] -> [FAIL][154] ([i915#2122]) +3 other tests fail
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-glk6/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-glk3/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4:
    - shard-dg1:          NOTRUN -> [FAIL][155] ([i915#2122])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1:
    - shard-rkl:          NOTRUN -> [FAIL][156] ([i915#2122])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-2/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#8381])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate@a-vga1:
    - shard-snb:          [PASS][158] -> [FAIL][159] ([i915#2122]) +3 other tests fail
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-snb7/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-snb4/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-mtlp:         [PASS][160] -> [FAIL][161] ([i915#2122]) +3 other tests fail
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-mtlp-6/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-mtlp-8/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1:
    - shard-tglu:         [PASS][162] -> [FAIL][163] ([i915#2122]) +7 other tests fail
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-tglu-10/igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-4/igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][164] ([i915#2587] / [i915#2672]) +2 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#2672] / [i915#3555]) +1 other test skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#2672]) +4 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][167] ([i915#2587] / [i915#2672] / [i915#3555])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][168] ([i915#2587] / [i915#2672]) +2 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][169] ([i915#2672] / [i915#3555]) +1 other test skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][170] ([i915#2672] / [i915#3555]) +2 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
    - shard-dg1:          NOTRUN -> [SKIP][171] ([i915#2672] / [i915#3555]) +5 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#2587] / [i915#2672]) +5 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#2672] / [i915#3555] / [i915#5190])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@basic:
    - shard-dg2:          [PASS][174] -> [SKIP][175] +27 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-7/igt@kms_frontbuffer_tracking@basic.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
    - shard-dg2:          [PASS][176] -> [FAIL][177] ([i915#6880])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
    - shard-tglu-1:       NOTRUN -> [SKIP][178] +61 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#8708]) +8 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][180] ([i915#4423])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#3458]) +5 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#1825])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#5354]) +23 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-dg1:          NOTRUN -> [SKIP][184] ([i915#9766])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][185] ([i915#8708]) +28 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff:
    - shard-dg1:          NOTRUN -> [SKIP][186] +58 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#8708])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][188] ([i915#3458]) +24 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-tglu-1:       NOTRUN -> [SKIP][189] ([i915#12713])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-mtlp:         NOTRUN -> [SKIP][190] ([i915#3555] / [i915#8228])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-mtlp-6/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-swap:
    - shard-tglu-1:       NOTRUN -> [SKIP][191] ([i915#3555] / [i915#8228]) +1 other test skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_hdr@static-swap.html
    - shard-dg2:          [PASS][192] -> [SKIP][193] ([i915#3555] / [i915#8228])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@kms_hdr@static-swap.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-1/igt@kms_hdr@static-swap.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][194] ([i915#3555] / [i915#8228]) +4 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][195] ([i915#12339])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-dg1:          NOTRUN -> [SKIP][196] ([i915#10656])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-dg1:          NOTRUN -> [SKIP][197] ([i915#12388])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#12339])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-dg1:          NOTRUN -> [SKIP][199] ([i915#6301])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][200] ([i915#12247]) +4 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-9/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:
    - shard-dg1:          NOTRUN -> [SKIP][201] ([i915#12247] / [i915#12504]) +6 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d:
    - shard-dg1:          NOTRUN -> [SKIP][202] ([i915#12247]) +1 other test skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-dg2:          [PASS][203] -> [SKIP][204] ([i915#2575] / [i915#9423]) +4 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:
    - shard-tglu-1:       NOTRUN -> [SKIP][205] ([i915#12247]) +13 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-dg1:          NOTRUN -> [SKIP][206] ([i915#12247] / [i915#6953])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#12247]) +7 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][208] ([i915#12343])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@kms_pm_backlight@brightness-with-dpms.html
    - shard-tglu:         NOTRUN -> [SKIP][209] ([i915#12343])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][210] ([i915#5354]) +1 other test skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-tglu-1:       NOTRUN -> [SKIP][211] ([i915#3828])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg1:          NOTRUN -> [SKIP][212] ([i915#9340])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-dg1:          NOTRUN -> [SKIP][213] ([i915#8430])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [PASS][214] -> [SKIP][215] ([i915#9519]) +1 other test skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-1/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-tglu:         NOTRUN -> [SKIP][216] ([i915#9519])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@fences:
    - shard-dg1:          NOTRUN -> [SKIP][217] ([i915#4077]) +14 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@kms_pm_rpm@fences.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-tglu-1:       NOTRUN -> [SKIP][218] ([i915#9519])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
    - shard-mtlp:         NOTRUN -> [SKIP][219] ([i915#9519])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-mtlp-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-tglu-1:       NOTRUN -> [SKIP][220] ([i915#6524])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@d3hot:
    - shard-dg1:          NOTRUN -> [SKIP][221] ([i915#6524])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][222] ([i915#11520]) +2 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area:
    - shard-tglu-1:       NOTRUN -> [SKIP][223] ([i915#11520]) +5 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#11520]) +4 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-glk:          NOTRUN -> [SKIP][225] ([i915#11520]) +1 other test skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-glk9/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:
    - shard-dg1:          NOTRUN -> [SKIP][226] ([i915#11520]) +12 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#9683])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@fbc-pr-primary-render:
    - shard-dg2:          NOTRUN -> [SKIP][228] ([i915#1072] / [i915#9732]) +9 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@kms_psr@fbc-pr-primary-render.html

  * igt@kms_psr@fbc-psr-primary-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][229] +13 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_psr@fbc-psr-primary-mmap-gtt.html

  * igt@kms_psr@psr2-cursor-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][230] ([i915#9732]) +10 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_psr@psr2-cursor-mmap-cpu.html

  * igt@kms_psr@psr2-primary-mmap-cpu:
    - shard-tglu-1:       NOTRUN -> [SKIP][231] ([i915#9732]) +16 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_psr@psr2-primary-mmap-cpu.html

  * igt@kms_psr@psr2-sprite-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][232] ([i915#1072] / [i915#9732]) +27 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@kms_psr@psr2-sprite-mmap-gtt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglu-1:       NOTRUN -> [SKIP][233] ([i915#9685])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-dg1:          NOTRUN -> [SKIP][234] ([i915#9685]) +1 other test skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-dg2:          NOTRUN -> [SKIP][235] ([i915#12755]) +2 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#12755] / [i915#5190]) +1 other test skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-tglu-1:       NOTRUN -> [SKIP][237] ([i915#5289])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_scaling_modes@scaling-mode-center:
    - shard-dg1:          NOTRUN -> [SKIP][238] ([i915#3555]) +8 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@kms_scaling_modes@scaling-mode-center.html
    - shard-tglu:         NOTRUN -> [SKIP][239] ([i915#3555]) +5 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_scaling_modes@scaling-mode-center.html

  * igt@kms_setmode@invalid-clone-single-crtc:
    - shard-dg2:          NOTRUN -> [SKIP][240] ([i915#3555]) +1 other test skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@kms_setmode@invalid-clone-single-crtc.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-tglu-1:       NOTRUN -> [SKIP][241] ([i915#8623])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-dg1:          NOTRUN -> [SKIP][242] ([i915#8623])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@max-min:
    - shard-dg1:          NOTRUN -> [SKIP][243] ([i915#9906]) +2 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@kms_vrr@max-min.html

  * igt@kms_vrr@negative-basic:
    - shard-dg1:          NOTRUN -> [SKIP][244] ([i915#3555] / [i915#9906])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_vrr@negative-basic.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-tglu:         NOTRUN -> [SKIP][245] ([i915#2437] / [i915#9412])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-dg1:          NOTRUN -> [SKIP][246] ([i915#2437] / [i915#9412]) +1 other test skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-dg1:          NOTRUN -> [SKIP][247] ([i915#2437])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@global-sseu-config-invalid:
    - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#7387])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@perf@global-sseu-config-invalid.html

  * igt@perf@mi-rpc:
    - shard-dg1:          NOTRUN -> [SKIP][249] ([i915#2434])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@perf@mi-rpc.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-dg1:          NOTRUN -> [SKIP][250] ([i915#2433])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@perf@per-context-mode-unprivileged.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [PASS][251] -> [FAIL][252] ([i915#4349]) +4 other tests fail
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-4/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-tglu-1:       NOTRUN -> [SKIP][253] ([i915#8850])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@perf_pmu@cpu-hotplug.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg1:          NOTRUN -> [FAIL][254] ([i915#12549] / [i915#6806]) +1 other test fail
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@perf_pmu@frequency@gt0.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg1:          NOTRUN -> [SKIP][255] ([i915#8516]) +1 other test skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_udl:
    - shard-rkl:          NOTRUN -> [SKIP][256]
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-5/igt@prime_udl.html

  * igt@prime_vgem@basic-fence-read:
    - shard-dg2:          NOTRUN -> [SKIP][257] ([i915#3291] / [i915#3708])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][258] ([i915#3708] / [i915#4077])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@prime_vgem@basic-gtt.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-tglu-1:       NOTRUN -> [FAIL][259] ([i915#12910])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  
#### Possible fixes ####

  * igt@core_getversion@basic:
    - shard-dg2:          [FAIL][260] ([i915#12866]) -> [PASS][261]
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@core_getversion@basic.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@core_getversion@basic.html

  * igt@fbdev@nullptr:
    - shard-dg2:          [SKIP][262] ([i915#2582]) -> [PASS][263]
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@fbdev@nullptr.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@fbdev@nullptr.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-rkl:          [FAIL][264] ([i915#12031]) -> [PASS][265]
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-rkl-7/igt@gem_ctx_engines@invalid-engines.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-4/igt@gem_ctx_engines@invalid-engines.html
    - shard-mtlp:         [FAIL][266] ([i915#12031]) -> [PASS][267]
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-mtlp-3/igt@gem_ctx_engines@invalid-engines.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-mtlp-4/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_isolation@preservation-s3:
    - shard-dg2:          [INCOMPLETE][268] ([i915#12353]) -> [PASS][269] +1 other test pass
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-1/igt@gem_ctx_isolation@preservation-s3.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@gem_ctx_isolation@preservation-s3.html

  * igt@gem_eio@unwedge-stress:
    - shard-dg2:          [FAIL][270] ([i915#12714] / [i915#5784]) -> [PASS][271]
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-3/igt@gem_eio@unwedge-stress.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - shard-rkl:          [DMESG-WARN][272] -> [PASS][273] +2 other tests pass
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-rkl-3/igt@gem_exec_whisper@basic-queues-priority-all.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-3/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-dg2:          [SKIP][274] ([i915#12936]) -> [PASS][275] +5 other tests pass
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_lmem_swapping@parallel-multi.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_watchdog@default-physical:
    - shard-tglu:         [SKIP][276] ([i915#12961]) -> [PASS][277] +1 other test pass
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-tglu-8/igt@gem_watchdog@default-physical.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-3/igt@gem_watchdog@default-physical.html
    - shard-glk:          [SKIP][278] -> [PASS][279]
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-glk8/igt@gem_watchdog@default-physical.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-glk9/igt@gem_watchdog@default-physical.html
    - shard-mtlp:         [SKIP][280] ([i915#12961]) -> [PASS][281] +1 other test pass
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-mtlp-2/igt@gem_watchdog@default-physical.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-mtlp-3/igt@gem_watchdog@default-physical.html
    - shard-rkl:          [SKIP][282] ([i915#12961]) -> [PASS][283] +1 other test pass
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-rkl-7/igt@gem_watchdog@default-physical.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-4/igt@gem_watchdog@default-physical.html
    - shard-dg1:          [SKIP][284] ([i915#12961]) -> [PASS][285]
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg1-18/igt@gem_watchdog@default-physical.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@gem_watchdog@default-physical.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [ABORT][286] ([i915#5566]) -> [PASS][287]
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-glk9/igt@gen9_exec_parse@allowed-all.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-glk9/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-dg1:          [FAIL][288] ([i915#12739] / [i915#3591]) -> [PASS][289] +1 other test pass
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-dg2:          [WARN][290] -> [PASS][291]
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@i915_suspend@basic-s3-without-i915.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-dg2:          [FAIL][292] ([i915#10991] / [i915#12766]) -> [PASS][293]
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-5/igt@kms_async_flips@alternate-sync-async-flip.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-3/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-3:
    - shard-dg2:          [FAIL][294] ([i915#12518]) -> [PASS][295]
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-5/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-3.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-3/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-3.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition:
    - shard-dg2:          [FAIL][296] ([i915#5956]) -> [PASS][297] +2 other tests pass
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-1/igt@kms_atomic_transition@plane-toggle-modeset-transition.html

  * igt@kms_cursor_edge_walk@128x128-right-edge:
    - shard-glk:          [DMESG-FAIL][298] ([i915#118]) -> [PASS][299] +1 other test pass
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-glk8/igt@kms_cursor_edge_walk@128x128-right-edge.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-glk9/igt@kms_cursor_edge_walk@128x128-right-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-mtlp:         [FAIL][300] ([i915#2346]) -> [PASS][301]
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-mtlp-4/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-mtlp-6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-rkl:          [FAIL][302] ([i915#2122]) -> [PASS][303]
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-rkl-5/igt@kms_flip@plain-flip-fb-recreate.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-7/igt@kms_flip@plain-flip-fb-recreate.html
    - shard-dg1:          [FAIL][304] ([i915#12517] / [i915#2122]) -> [PASS][305]
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg1-12/igt@kms_flip@plain-flip-fb-recreate.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a1:
    - shard-tglu:         [FAIL][306] ([i915#2122]) -> [PASS][307] +3 other tests pass
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-tglu-6/igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a1.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-2/igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-snb:          [FAIL][308] ([i915#2122]) -> [PASS][309] +3 other tests pass
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-snb5/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-snb5/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible:
    - shard-dg2:          [FAIL][310] ([i915#2122]) -> [PASS][311] +1 other test pass
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-4/igt@kms_flip@wf_vblank-ts-check-interruptible.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@kms_flip@wf_vblank-ts-check-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-glk:          [INCOMPLETE][312] -> [PASS][313]
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-glk5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-glk3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-dg2:          [SKIP][314] -> [PASS][315] +21 other tests pass
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          [SKIP][316] ([i915#3555] / [i915#8228]) -> [PASS][317]
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-2/igt@kms_hdr@static-toggle-suspend.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format:
    - shard-dg2:          [SKIP][318] ([i915#2575] / [i915#9423]) -> [PASS][319] +3 other tests pass
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu:         [SKIP][320] ([i915#4281]) -> [PASS][321]
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-tglu-8/igt@kms_pm_dc@dc9-dpms.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-10/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [SKIP][322] ([i915#9519]) -> [PASS][323] +1 other test pass
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_rotation_crc@bad-tiling:
    - shard-dg1:          [INCOMPLETE][324] -> [PASS][325]
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg1-17/igt@kms_rotation_crc@bad-tiling.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@kms_rotation_crc@bad-tiling.html

  * igt@kms_vblank@ts-continuation-modeset:
    - shard-dg2:          [SKIP][326] ([i915#2575]) -> [PASS][327] +143 other tests pass
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_vblank@ts-continuation-modeset.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@kms_vblank@ts-continuation-modeset.html

  * igt@kms_vrr@negative-basic:
    - shard-dg2:          [SKIP][328] ([i915#3555] / [i915#9906]) -> [PASS][329]
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-2/igt@kms_vrr@negative-basic.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@kms_vrr@negative-basic.html

  * igt@perf_pmu@all-busy-idle-check-all:
    - shard-dg2:          [SKIP][330] ([i915#12506]) -> [PASS][331] +4 other tests pass
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@perf_pmu@all-busy-idle-check-all.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@perf_pmu@all-busy-idle-check-all.html

  
#### Warnings ####

  * igt@drm_fdinfo@virtual-busy-all:
    - shard-dg2:          [SKIP][332] ([i915#12506]) -> [SKIP][333] ([i915#8414]) +2 other tests skip
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@drm_fdinfo@virtual-busy-all.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@drm_fdinfo@virtual-busy-all.html

  * igt@drm_fdinfo@virtual-busy-hang:
    - shard-dg2:          [SKIP][334] ([i915#8414]) -> [SKIP][335] ([i915#12506])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@drm_fdinfo@virtual-busy-hang.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@drm_fdinfo@virtual-busy-hang.html

  * igt@gem_busy@semaphore:
    - shard-dg2:          [SKIP][336] ([i915#2575]) -> [SKIP][337] ([i915#3936])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_busy@semaphore.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@gem_busy@semaphore.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-dg2:          [SKIP][338] ([i915#2575]) -> [SKIP][339] ([i915#7697])
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_close_race@multigpu-basic-threads.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          [SKIP][340] ([i915#2575]) -> [SKIP][341] ([i915#8562])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_create@create-ext-set-pat.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_persistence@hostile:
    - shard-dg2:          [SKIP][342] ([i915#2575]) -> [FAIL][343] ([i915#11980] / [i915#12580])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_ctx_persistence@hostile.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@gem_ctx_persistence@hostile.html

  * igt@gem_ctx_sseu@engines:
    - shard-dg2:          [SKIP][344] ([i915#280]) -> [SKIP][345] ([i915#2575])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@gem_ctx_sseu@engines.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_ctx_sseu@engines.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-dg2:          [SKIP][346] ([i915#2575]) -> [SKIP][347] ([i915#280])
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_ctx_sseu@invalid-sseu.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg2:          [SKIP][348] ([i915#4771]) -> [SKIP][349] ([i915#2575])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-7/igt@gem_exec_balancer@bonded-dual.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg2:          [SKIP][350] ([i915#2575]) -> [SKIP][351] ([i915#4812]) +2 other tests skip
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_exec_balancer@bonded-false-hang.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_capture@capture-invisible:
    - shard-dg2:          [SKIP][352] ([i915#6334]) -> [SKIP][353] ([i915#2575])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@gem_exec_capture@capture-invisible.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_exec_capture@capture-invisible.html

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - shard-dg2:          [SKIP][354] ([i915#2575]) -> [SKIP][355] ([i915#3539] / [i915#4852])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_exec_flush@basic-wb-rw-before-default.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@gem_exec_flush@basic-wb-rw-before-default.html

  * igt@gem_exec_flush@basic-wb-set-default:
    - shard-dg2:          [SKIP][356] ([i915#3539] / [i915#4852]) -> [SKIP][357] ([i915#2575]) +1 other test skip
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-8/igt@gem_exec_flush@basic-wb-set-default.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_exec_flush@basic-wb-set-default.html

  * igt@gem_exec_reloc@basic-active:
    - shard-dg2:          [SKIP][358] ([i915#3281]) -> [SKIP][359] ([i915#2575]) +8 other tests skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@gem_exec_reloc@basic-active.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_exec_reloc@basic-active.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg2:          [SKIP][360] ([i915#2575]) -> [SKIP][361] ([i915#3281]) +8 other tests skip
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-dg2:          [SKIP][362] ([i915#4537] / [i915#4812]) -> [SKIP][363] ([i915#2575])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@gem_exec_schedule@preempt-queue-contexts-chain.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-dg2:          [INCOMPLETE][364] -> [SKIP][365] ([i915#2575])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-8/igt@gem_exec_suspend@basic-s4-devices.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_fence_thrash@bo-write-verify-x:
    - shard-dg2:          [SKIP][366] ([i915#2575]) -> [SKIP][367] ([i915#4860]) +1 other test skip
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_fence_thrash@bo-write-verify-x.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@gem_fence_thrash@bo-write-verify-x.html

  * igt@gem_mmap_gtt@big-copy:
    - shard-dg2:          [SKIP][368] ([i915#2575]) -> [SKIP][369] ([i915#4077]) +6 other tests skip
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_mmap_gtt@big-copy.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@gem_mmap_gtt@big-copy.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-dg2:          [SKIP][370] ([i915#4077]) -> [SKIP][371] ([i915#2575]) +2 other tests skip
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-8/igt@gem_mmap_gtt@fault-concurrent-x.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@gem_mmap_wc@invalid-flags:
    - shard-dg2:          [SKIP][372] ([i915#2575]) -> [SKIP][373] ([i915#4083]) +4 other tests skip
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_mmap_wc@invalid-flags.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@gem_mmap_wc@invalid-flags.html

  * igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
    - shard-dg2:          [SKIP][374] ([i915#4083]) -> [SKIP][375] ([i915#2575])
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html

  * igt@gem_pread@display:
    - shard-dg2:          [SKIP][376] ([i915#3282]) -> [SKIP][377] ([i915#2575])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-7/igt@gem_pread@display.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_pread@display.html

  * igt@gem_pread@uncached:
    - shard-dg2:          [SKIP][378] ([i915#2575]) -> [SKIP][379] ([i915#3282]) +3 other tests skip
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_pread@uncached.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@gem_pread@uncached.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-dg2:          [SKIP][380] ([i915#4270]) -> [SKIP][381] ([i915#2575])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-7/igt@gem_pxp@create-protected-buffer.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_pxp@fail-invalid-protected-context:
    - shard-dg2:          [SKIP][382] ([i915#2575]) -> [SKIP][383] ([i915#4270]) +1 other test skip
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_pxp@fail-invalid-protected-context.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled:
    - shard-dg2:          [SKIP][384] ([i915#5190] / [i915#8428]) -> [SKIP][385] ([i915#2575] / [i915#5190]) +2 other tests skip
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@gem_render_copy@y-tiled-ccs-to-y-tiled.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_render_copy@y-tiled-ccs-to-y-tiled.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:
    - shard-dg2:          [SKIP][386] ([i915#2575] / [i915#5190]) -> [SKIP][387] ([i915#5190] / [i915#8428]) +3 other tests skip
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-dg2:          [SKIP][388] ([i915#2575]) -> [SKIP][389] ([i915#4079])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-dg2:          [SKIP][390] ([i915#3297]) -> [SKIP][391] ([i915#2575])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-8/igt@gem_userptr_blits@readonly-pwrite-unsync.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-dg2:          [SKIP][392] ([i915#2575]) -> [SKIP][393] ([i915#3297]) +1 other test skip
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_userptr_blits@unsync-unmap.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gem_watchdog@default-virtual:
    - shard-dg2:          [SKIP][394] ([i915#12961]) -> [SKIP][395] ([i915#2575])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-7/igt@gem_watchdog@default-virtual.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_watchdog@default-virtual.html

  * igt@gen3_mixed_blits:
    - shard-dg2:          [SKIP][396] -> [SKIP][397] ([i915#2575]) +4 other tests skip
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@gen3_mixed_blits.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gen3_mixed_blits.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-dg2:          [SKIP][398] ([i915#2856]) -> [SKIP][399] ([i915#2575]) +2 other tests skip
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-8/igt@gen9_exec_parse@secure-batches.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gen9_exec_parse@secure-batches.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-dg2:          [SKIP][400] ([i915#2575]) -> [SKIP][401] ([i915#2856]) +1 other test skip
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gen9_exec_parse@shadow-peek.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [ABORT][402] ([i915#10131] / [i915#10887] / [i915#9820]) -> [ABORT][403] ([i915#10131] / [i915#9820])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rps@min-max-config-idle:
    - shard-dg2:          [SKIP][404] ([i915#11681] / [i915#6621]) -> [SKIP][405] ([i915#2575])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-7/igt@i915_pm_rps@min-max-config-idle.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-dg2:          [SKIP][406] ([i915#2575]) -> [SKIP][407] ([i915#11681] / [i915#6621]) +1 other test skip
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@i915_pm_rps@min-max-config-loaded.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-dg2:          [SKIP][408] ([i915#2575]) -> [SKIP][409] ([i915#6188])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@i915_query@query-topology-coherent-slice-mask.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_selftest@mock:
    - shard-glk:          [DMESG-WARN][410] ([i915#1982] / [i915#9311]) -> [DMESG-WARN][411] ([i915#9311])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-glk6/igt@i915_selftest@mock.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-glk3/igt@i915_selftest@mock.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - shard-dg2:          [SKIP][412] ([i915#4212]) -> [SKIP][413] ([i915#2575])
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-dg2:          [SKIP][414] ([i915#2575]) -> [SKIP][415] ([i915#4212])
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_addfb_basic@basic-x-tiled-legacy.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - shard-dg2:          [SKIP][416] ([i915#4538] / [i915#5190]) -> [SKIP][417] ([i915#5190]) +6 other tests skip
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-7/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - shard-dg2:          [SKIP][418] ([i915#5190]) -> [SKIP][419] ([i915#4538] / [i915#5190]) +7 other tests skip
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs:
    - shard-dg2:          [SKIP][420] -> [SKIP][421] ([i915#10307] / [i915#6095]) +9 other tests skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc:
    - shard-dg2:          [SKIP][422] -> [SKIP][423] ([i915#6095])
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-dg2:          [SKIP][424] ([i915#12313]) -> [SKIP][425]
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:
    - shard-dg2:          [SKIP][426] ([i915#10307] / [i915#6095]) -> [SKIP][427] +8 other tests skip
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-dg2:          [SKIP][428] -> [SKIP][429] ([i915#12313])
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_chamelium_audio@hdmi-audio:
    - shard-dg2:          [SKIP][430] ([i915#7828]) -> [SKIP][431] ([i915#2575]) +7 other tests skip
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@kms_chamelium_audio@hdmi-audio.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_chamelium_audio@hdmi-audio.html

  * igt@kms_chamelium_color@ctm-0-25:
    - shard-dg2:          [SKIP][432] ([i915#2575]) -> [SKIP][433] +3 other tests skip
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_chamelium_color@ctm-0-25.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@kms_chamelium_color@ctm-0-25.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-dg2:          [SKIP][434] ([i915#2575]) -> [SKIP][435] ([i915#7828]) +6 other tests skip
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_chamelium_frames@hdmi-crc-fast.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          [SKIP][436] ([i915#7118] / [i915#9424]) -> [SKIP][437] ([i915#2575])
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-7/igt@kms_content_protection@atomic-dpms.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-dg2:          [SKIP][438] ([i915#3299]) -> [SKIP][439] ([i915#2575])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-8/igt@kms_content_protection@dp-mst-type-0.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][440] ([i915#2575]) -> [SKIP][441] ([i915#7118] / [i915#9424])
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_content_protection@type1.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          [SKIP][442] ([i915#2575]) -> [SKIP][443] ([i915#11453] / [i915#3359]) +1 other test skip
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_cursor_crc@cursor-random-512x170.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-dg2:          [SKIP][444] ([i915#2575]) -> [SKIP][445] ([i915#3555]) +2 other tests skip
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-dg2:          [SKIP][446] ([i915#11453] / [i915#3359]) -> [SKIP][447] ([i915#2575])
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@kms_cursor_crc@cursor-sliding-512x170.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-dg2:          [SKIP][448] ([i915#2575]) -> [SKIP][449] ([i915#4103] / [i915#4213])
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@kms_cursor_legacy@basic-b

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/index.html

--===============1467852856290223606==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fixed NULL pointer dereference in capture_engine (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/141559/">https://patchwork.freedesktop.org/series/141559/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15724_full -&gt; Patchwork_141559v2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_141559v2_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_141559v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (11 -&gt; 10)</h2>
<p>Missing    (1): pig-kbl-iris </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_141559v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-8/igt@gem_lmem_evict@dontneed-evict-race.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-context:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@gem_pxp@hw-rejects-pxp-context.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-devices:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-mtlp-6/igt@i915_pm_rpm@system-suspend-devices.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-mtlp-4/igt@i915_pm_rpm@system-suspend-devices.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-dpms@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-2/igt@kms_cursor_crc@cursor-dpms@pipe-a-hdmi-a-1.html">DMESG-WARN</a> +12 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-rkl-7/igt@kms_fbcon_fbt@fbc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-4/igt@kms_fbcon_fbt@fbc.html">DMESG-WARN</a> +7 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-1/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_pm_rpm@pm-caching:<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-8/igt@kms_pm_rpm@pm-caching.html">SKIP</a> ([i915#4077]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_pm_rpm@pm-caching.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_15724_full and Patchwork_141559v2_full:</p>
<h3>New IGT tests (2)</h3>
<ul>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.55] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-64x21@pipe-a-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [4.34] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_141559v2_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@api_intel_bb@crc32.html">SKIP</a> ([i915#6230])</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#9318])</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@bcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@drm_fdinfo@busy-check-all@bcs0.html">SKIP</a> ([i915#8414]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html">SKIP</a> ([i915#8414]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@drm_fdinfo@virtual-busy-idle.html">SKIP</a> ([i915#12506])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-idle:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-7/igt@drm_fdinfo@virtual-idle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@drm_fdinfo@virtual-idle.html">SKIP</a> ([i915#12506]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@fbdev@read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@fbdev@read.html">SKIP</a> ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@gem_ccs@block-copy-compressed.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-5/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> ([i915#9323])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-9/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-close:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@gem_ctx_persistence@heartbeat-close.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@gem_ctx_persistence@hostile.html">FAIL</a> ([i915#11980] / [i915#12580])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@gem_ctx_persistence@saturated-hostile-nopreempt.html">SKIP</a> ([i915#5882]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#280]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@gem_eio@kms.html">FAIL</a> ([i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#12714] / [i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@gem_exec_balancer@bonded-dual.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-semaphore:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@gem_exec_balancer@bonded-semaphore.html">SKIP</a> ([i915#4812]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@gem_exec_capture@capture-invisible.html">SKIP</a> ([i915#6334]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@gem_exec_fence@submit3.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-wb:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@gem_exec_flush@basic-batch-kernel-default-wb.html">SKIP</a> ([i915#3539] / [i915#4852]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@gem_exec_flush@basic-uc-prw-default.html">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-before-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@gem_exec_flush@basic-wb-ro-before-default.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@gem_exec_reloc@basic-gtt.html">SKIP</a> ([i915#3281]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@gem_exec_reloc@basic-write-gtt-active.html">SKIP</a> ([i915#3281]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-none:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@gem_fence_thrash@bo-write-verify-none.html">SKIP</a> ([i915#4860]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html">SKIP</a> ([i915#4860]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> ([i915#4613] / [i915#7582])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a> ([i915#12936])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@gem_lmem_swapping@heavy-verify-random.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> ([i915#12193])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0.html">SKIP</a> ([i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-glk9/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-object:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@gem_mmap@bad-object.html">SKIP</a> ([i915#4083]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@zero-extend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@gem_mmap_gtt@zero-extend.html">SKIP</a> ([i915#4077]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@gem_mmap_wc@close.html">SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a> ([i915#3282]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@shrink-vs-evict-pinned:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_ppgtt@shrink-vs-evict-pinned.html">SKIP</a> ([i915#2575]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@gem_pxp@create-protected-buffer.html">SKIP</a> ([i915#4270]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@gem_pxp@protected-raw-src-copy-not-readible.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html">SKIP</a> ([i915#2575] / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@gem_render_tiled_blits@basic.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> ([i915#4079]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@gem_softpin@evict-snoop.html">SKIP</a> ([i915#4885])</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@gem_unfence_active_buffers.html">SKIP</a> ([i915#4879])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@gem_userptr_blits@map-fixed-invalidate.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-glk5/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-glk3/igt@gen9_exec_parse@allowed-single.html">ABORT</a> ([i915#5566])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@gen9_exec_parse@batch-without-end.html">SKIP</a> ([i915#2527] / [i915#2856]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</a> ([i915#2527]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@gen9_exec_parse@bb-start-far.html">SKIP</a> ([i915#2856]) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@gen9_exec_parse@bb-start-far.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@i915_fb_tiling.html">SKIP</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@i915_module_load@resize-bar.html">SKIP</a> ([i915#7178])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@i915_module_load@resize-bar.html">SKIP</a> ([i915#6412])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@i915_pm_freq_api@freq-reset.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#2681]) +1 other test warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">FAIL</a> ([i915#12548] / [i915#3591])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@i915_pm_rps@min-max-config-idle.html">SKIP</a> ([i915#11681] / [i915#6621]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> ([i915#4212] / [i915#4215])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@clobberred-modifier:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@kms_addfb_basic@clobberred-modifier.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> ([i915#12454] / [i915#12712])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@kms_addfb_basic@tile-pitch-mismatch.html">SKIP</a> ([i915#4212]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html">SKIP</a> ([i915#8709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-rkl-2/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-2/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">FAIL</a> ([i915#11808]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#4538] / [i915#5286]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html">SKIP</a> ([i915#5286]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html">SKIP</a> ([i915#3638]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html">SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html">SKIP</a> ([i915#4538] / [i915#5190]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html">SKIP</a> +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html">SKIP</a> ([i915#4538]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-4.html">SKIP</a> ([i915#6095]) +189 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-d-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-d-dp-4.html">SKIP</a> ([i915#10307] / [i915#6095]) +127 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-glk3/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> +54 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-4/igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) +70 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs.html">SKIP</a> ([i915#6095]) +54 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12805])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-8/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#6095]) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#6095]) +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html">SKIP</a> ([i915#7213]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_cdclk@plane-scaling.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html">SKIP</a> ([i915#7828]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-with-enabled-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@kms_chamelium_hpd@dp-hpd-with-enabled-mode.html">SKIP</a> ([i915#7828]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html">SKIP</a> ([i915#7828]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> ([i915#7828]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-5/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_content_protection@atomic.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-2/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#3116] / [i915#3299]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#6944] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_content_protection@uevent.html">SKIP</a> ([i915#7116] / [i915#9424]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-alpha-opaque:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@kms_cursor_crc@cursor-alpha-opaque.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_cursor_crc@cursor-alpha-opaque.html">SKIP</a> ([i915#2575]) +136 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x32:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-32x32.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> ([i915#9723])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@kms_dp_aux_dev.html">SKIP</a> ([i915#1257])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#3840]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> ([i915#3469])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@kms_feature_discovery@chamelium.html">SKIP</a> ([i915#4854])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_feature_discovery@psr1.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_fence_pin_leak.html">SKIP</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_flip@2x-plain-flip.html">SKIP</a> ([i915#3637]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html">SKIP</a> ([i915#9934]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html">SKIP</a> ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg1-13/igt@kms_flip@flip-vs-absolute-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@kms_flip@flip-vs-absolute-wf_vblank.html">FAIL</a> ([i915#12517] / [i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-glk6/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-glk3/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html">FAIL</a> ([i915#2122]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-2/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@kms_flip@flip-vs-fences-interruptible.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-vga1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-snb7/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-snb4/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html">FAIL</a> ([i915#2122]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-mtlp-6/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-mtlp-8/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">FAIL</a> ([i915#2122]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-tglu-10/igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-4/igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1.html">FAIL</a> ([i915#2122]) +7 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#2587] / [i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-7/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html">FAIL</a> ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html">SKIP</a> +61 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html">SKIP</a> ([i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html">SKIP</a> ([i915#3458]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#1825])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-move.html">SKIP</a> ([i915#5354]) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> ([i915#9766])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +28 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff.html">SKIP</a> +58 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html">SKIP</a> ([i915#3458]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> ([i915#12713])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-mtlp-6/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_hdr@static-swap.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@kms_hdr@static-swap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-1/igt@kms_hdr@static-swap.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> ([i915#3555] / [i915#8228]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> ([i915#12339])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_joiner@invalid-modeset-force-big-joiner.html">SKIP</a> ([i915#12388])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@kms_joiner@invalid-modeset-ultra-joiner.html">SKIP</a> ([i915#12339])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-9/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c.html">SKIP</a> ([i915#12247]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html">SKIP</a> ([i915#12247] / [i915#12504]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d.html">SKIP</a> ([i915#12247]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> ([i915#2575] / [i915#9423]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html">SKIP</a> ([i915#12247]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_plane_scaling@planes-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c.html">SKIP</a> ([i915#12247]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> ([i915#12343])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> ([i915#12343])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_pm_backlight@fade-with-dpms.html">SKIP</a> ([i915#5354]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_pm_dc@dc5-retention-flops.html">SKIP</a> ([i915#3828])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> ([i915#9340])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> ([i915#8430])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-1/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#9519]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@kms_pm_rpm@fences.html">SKIP</a> ([i915#4077]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> ([i915#9519])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-mtlp-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_prime@d3hot.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf.html">SKIP</a> ([i915#11520]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> ([i915#11520]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-glk9/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html">SKIP</a> ([i915#11520]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-primary-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@kms_psr@fbc-pr-primary-render.html">SKIP</a> ([i915#1072] / [i915#9732]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_psr@fbc-psr-primary-mmap-gtt.html">SKIP</a> +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-mmap-cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_psr@psr2-cursor-mmap-cpu.html">SKIP</a> ([i915#9732]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-primary-mmap-cpu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_psr@psr2-primary-mmap-cpu.html">SKIP</a> ([i915#9732]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@kms_psr@psr2-sprite-mmap-gtt.html">SKIP</a> ([i915#1072] / [i915#9732]) +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> ([i915#9685]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@kms_rotation_crc@primary-rotation-270.html">SKIP</a> ([i915#12755]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html">SKIP</a> ([i915#12755] / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-center:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@kms_scaling_modes@scaling-mode-center.html">SKIP</a> ([i915#3555]) +8 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_scaling_modes@scaling-mode-center.html">SKIP</a> ([i915#3555]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@kms_setmode@invalid-clone-single-crtc.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@kms_vrr@max-min.html">SKIP</a> ([i915#9906]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_vrr@negative-basic.html">SKIP</a> ([i915#3555] / [i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-5/igt@kms_writeback@writeback-check-output-xrgb2101010.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-17/igt@kms_writeback@writeback-fb-id-xrgb2101010.html">SKIP</a> ([i915#2437] / [i915#9412]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config-invalid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@perf@global-sseu-config-invalid.html">SKIP</a> ([i915#7387])</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@perf@mi-rpc.html">SKIP</a> ([i915#2434])</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@perf@per-context-mode-unprivileged.html">SKIP</a> ([i915#2433])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-4/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</a> ([i915#4349]) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@cpu-hotplug:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@perf_pmu@cpu-hotplug.html">SKIP</a> ([i915#8850])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@perf_pmu@frequency@gt0.html">FAIL</a> ([i915#12549] / [i915#6806]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@perf_pmu@rc6-all-gts.html">SKIP</a> ([i915#8516]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_udl:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-5/igt@prime_udl.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@prime_vgem@basic-fence-read.html">SKIP</a> ([i915#3291] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@prime_vgem@basic-gtt.html">SKIP</a> ([i915#3708] / [i915#4077])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html">FAIL</a> ([i915#12910])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_getversion@basic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@core_getversion@basic.html">FAIL</a> ([i915#12866]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@core_getversion@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@fbdev@nullptr.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@fbdev@nullptr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-rkl-7/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12031]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-4/igt@gem_ctx_engines@invalid-engines.html">PASS</a></li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-mtlp-3/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12031]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-mtlp-4/igt@gem_ctx_engines@invalid-engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-1/igt@gem_ctx_isolation@preservation-s3.html">INCOMPLETE</a> ([i915#12353]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-6/igt@gem_ctx_isolation@preservation-s3.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-3/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#12714] / [i915#5784]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-2/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority-all:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-rkl-3/igt@gem_exec_whisper@basic-queues-priority-all.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-3/igt@gem_exec_whisper@basic-queues-priority-all.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> ([i915#12936]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@gem_lmem_swapping@parallel-multi.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_watchdog@default-physical:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-tglu-8/igt@gem_watchdog@default-physical.html">SKIP</a> ([i915#12961]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-3/igt@gem_watchdog@default-physical.html">PASS</a> +1 other test pass</li>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-glk8/igt@gem_watchdog@default-physical.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-glk9/igt@gem_watchdog@default-physical.html">PASS</a></li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-mtlp-2/igt@gem_watchdog@default-physical.html">SKIP</a> ([i915#12961]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-mtlp-3/igt@gem_watchdog@default-physical.html">PASS</a> +1 other test pass</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-rkl-7/igt@gem_watchdog@default-physical.html">SKIP</a> ([i915#12961]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-4/igt@gem_watchdog@default-physical.html">PASS</a> +1 other test pass</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg1-18/igt@gem_watchdog@default-physical.html">SKIP</a> ([i915#12961]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-12/igt@gem_watchdog@default-physical.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-glk9/igt@gen9_exec_parse@allowed-all.html">ABORT</a> ([i915#5566]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-glk9/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">FAIL</a> ([i915#12739] / [i915#3591]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@i915_suspend@basic-s3-without-i915.html">WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-5/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> ([i915#10991] / [i915#12766]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-3/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-5/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-3.html">FAIL</a> ([i915#12518]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-3/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">FAIL</a> ([i915#5956]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-1/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@128x128-right-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-glk8/igt@kms_cursor_edge_walk@128x128-right-edge.html">DMESG-FAIL</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-glk9/igt@kms_cursor_edge_walk@128x128-right-edge.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-mtlp-4/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-mtlp-6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-rkl-5/igt@kms_flip@plain-flip-fb-recreate.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-7/igt@kms_flip@plain-flip-fb-recreate.html">PASS</a></li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg1-12/igt@kms_flip@plain-flip-fb-recreate.html">FAIL</a> ([i915#12517] / [i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-14/igt@kms_flip@plain-flip-fb-recreate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-tglu-6/igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-2/igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a1.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-snb5/igt@kms_flip@plain-flip-ts-check-interruptible.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-snb5/igt@kms_flip@plain-flip-ts-check-interruptible.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-4/igt@kms_flip@wf_vblank-ts-check-interruptible.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@kms_flip@wf_vblank-ts-check-interruptible.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-glk5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-glk3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">PASS</a> +21 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-2/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> ([i915#3555] / [i915#8228]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html">SKIP</a> ([i915#2575] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-tglu-8/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-tglu-10/igt@kms_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-tiling:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg1-17/igt@kms_rotation_crc@bad-tiling.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg1-18/igt@kms_rotation_crc@bad-tiling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-modeset:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_vblank@ts-continuation-modeset.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@kms_vblank@ts-continuation-modeset.html">PASS</a> +143 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-2/igt@kms_vrr@negative-basic.html">SKIP</a> ([i915#3555] / [i915#9906]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@kms_vrr@negative-basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@all-busy-idle-check-all:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@perf_pmu@all-busy-idle-check-all.html">SKIP</a> ([i915#12506]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@perf_pmu@all-busy-idle-check-all.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@drm_fdinfo@virtual-busy-all:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@drm_fdinfo@virtual-busy-all.html">SKIP</a> ([i915#12506]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@drm_fdinfo@virtual-busy-all.html">SKIP</a> ([i915#8414]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-hang:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@drm_fdinfo@virtual-busy-hang.html">SKIP</a> ([i915#8414]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@drm_fdinfo@virtual-busy-hang.html">SKIP</a> ([i915#12506])</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_busy@semaphore.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@gem_busy@semaphore.html">SKIP</a> ([i915#3936])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_create@create-ext-set-pat.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@gem_create@create-ext-set-pat.html">SKIP</a> ([i915#8562])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_ctx_persistence@hostile.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@gem_ctx_persistence@hostile.html">FAIL</a> ([i915#11980] / [i915#12580])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#280]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-7/igt@gem_exec_balancer@bonded-dual.html">SKIP</a> ([i915#4771]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_exec_balancer@bonded-dual.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_exec_balancer@bonded-false-hang.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@gem_exec_balancer@bonded-false-hang.html">SKIP</a> ([i915#4812]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@gem_exec_capture@capture-invisible.html">SKIP</a> ([i915#6334]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_exec_capture@capture-invisible.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_exec_flush@basic-wb-rw-before-default.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@gem_exec_flush@basic-wb-rw-before-default.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-set-default:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-8/igt@gem_exec_flush@basic-wb-set-default.html">SKIP</a> ([i915#3539] / [i915#4852]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_exec_flush@basic-wb-set-default.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-active:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@gem_exec_reloc@basic-active.html">SKIP</a> ([i915#3281]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_exec_reloc@basic-active.html">SKIP</a> ([i915#2575]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SKIP</a> ([i915#3281]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@gem_exec_schedule@preempt-queue-contexts-chain.html">SKIP</a> ([i915#4537] / [i915#4812]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-contexts-chain.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-8/igt@gem_exec_suspend@basic-s4-devices.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-x:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_fence_thrash@bo-write-verify-x.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@gem_fence_thrash@bo-write-verify-x.html">SKIP</a> ([i915#4860]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_mmap_gtt@big-copy.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@gem_mmap_gtt@big-copy.html">SKIP</a> ([i915#4077]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-8/igt@gem_mmap_gtt@fault-concurrent-x.html">SKIP</a> ([i915#4077]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_mmap_gtt@fault-concurrent-x.html">SKIP</a> ([i915#2575]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@invalid-flags:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_mmap_wc@invalid-flags.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@gem_mmap_wc@invalid-flags.html">SKIP</a> ([i915#4083]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-cpu-read-wc-unflushed:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html">SKIP</a> ([i915#4083]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@display:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-7/igt@gem_pread@display.html">SKIP</a> ([i915#3282]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_pread@display.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@uncached:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_pread@uncached.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@gem_pread@uncached.html">SKIP</a> ([i915#3282]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-7/igt@gem_pxp@create-protected-buffer.html">SKIP</a> ([i915#4270]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_pxp@create-protected-buffer.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_pxp@fail-invalid-protected-context.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@gem_pxp@fail-invalid-protected-context.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@gem_render_copy@y-tiled-ccs-to-y-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_render_copy@y-tiled-ccs-to-y-tiled.html">SKIP</a> ([i915#2575] / [i915#5190]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html">SKIP</a> ([i915#2575] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html">SKIP</a> ([i915#5190] / [i915#8428]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-8/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> ([i915#3297]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gem_userptr_blits@unsync-unmap.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@gem_userptr_blits@unsync-unmap.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_watchdog@default-virtual:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-7/igt@gem_watchdog@default-virtual.html">SKIP</a> ([i915#12961]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gem_watchdog@default-virtual.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gen3_mixed_blits:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@gen3_mixed_blits.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gen3_mixed_blits.html">SKIP</a> ([i915#2575]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-8/igt@gen9_exec_parse@secure-batches.html">SKIP</a> ([i915#2856]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@gen9_exec_parse@secure-batches.html">SKIP</a> ([i915#2575]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> ([i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10131] / [i915#10887] / [i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10131] / [i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-7/igt@i915_pm_rps@min-max-config-idle.html">SKIP</a> ([i915#11681] / [i915#6621]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@i915_pm_rps@min-max-config-idle.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@i915_pm_rps@min-max-config-loaded.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@i915_pm_rps@min-max-config-loaded.html">SKIP</a> ([i915#11681] / [i915#6621]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@i915_query@query-topology-coherent-slice-mask.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@i915_query@query-topology-coherent-slice-mask.html">SKIP</a> ([i915#6188])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-glk6/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915#1982] / [i915#9311]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-glk3/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915#9311])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</a> ([i915#4212]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-7/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">SKIP</a> ([i915#4538] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">SKIP</a> ([i915#5190]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html">SKIP</a> ([i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html">SKIP</a> ([i915#4538] / [i915#5190]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> ([i915#6095])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> ([i915#10307] / [i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@kms_chamelium_audio@hdmi-audio.html">SKIP</a> ([i915#7828]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_chamelium_audio@hdmi-audio.html">SKIP</a> ([i915#2575]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_chamelium_color@ctm-0-25.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@kms_chamelium_color@ctm-0-25.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> ([i915#7828]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-7/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([i915#7118] / [i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-8/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> ([i915#3299]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_content_protection@type1.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-5/igt@kms_content_protection@type1.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> ([i915#11453] / [i915#3359]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-7/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-10/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> ([i915#11453] / [i915#3359]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141559v2/shard-dg2-10/igt@kms_cursor_legacy@basic-b">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============1467852856290223606==--
