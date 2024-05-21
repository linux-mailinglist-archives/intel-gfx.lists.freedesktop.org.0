Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 512B58CA7A2
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 07:29:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 574E110EAB6;
	Tue, 21 May 2024 05:29:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55A1810EAB6;
 Tue, 21 May 2024 05:29:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7681882186745148431=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915=3A_Plane_register_?=
 =?utf-8?q?cleanups_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 21 May 2024 05:29:14 -0000
Message-ID: <171626935433.2162015.14946002207709823049@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
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

--===============7681882186745148431==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Plane register cleanups (rev3)
URL   : https://patchwork.freedesktop.org/series/133701/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14785_full -> Patchwork_133701v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_133701v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_133701v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 10)
------------------------------

  Additional (1): shard-snb-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_133701v3_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-dg2:          [PASS][1] -> [WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@i915_suspend@basic-s3-without-i915.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render:
    - shard-snb:          [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-snb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-snb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-tglu:         NOTRUN -> [SKIP][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-7/igt@kms_vrr@seamless-rr-switch-virtual.html

  
New tests
---------

  New tests have been introduced between CI_DRM_14785_full and Patchwork_133701v3_full:

### New IGT tests (5) ###

  * igt@kms_plane_lowres@tiling-4@pipe-a-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [7.74] s

  * igt@kms_plane_lowres@tiling-4@pipe-b-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [7.37] s

  * igt@kms_plane_lowres@tiling-4@pipe-c-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [7.38] s

  * igt@kms_plane_lowres@tiling-4@pipe-d-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [7.60] s

  * igt@perf@blocking@1-vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [10.02] s

  

Known issues
------------

  Here are the changes found in Patchwork_133701v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][6] ([i915#9408])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@device_reset@unbind-reset-rebind.html

  * igt@drm_fdinfo@busy-check-all:
    - shard-dg2:          NOTRUN -> [SKIP][7] ([i915#5608]) +3 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@drm_fdinfo@busy-check-all.html

  * igt@drm_fdinfo@busy-hang@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][8] ([i915#8414]) +6 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@drm_fdinfo@busy-hang@bcs0.html

  * igt@drm_fdinfo@virtual-busy-idle-all:
    - shard-dg1:          NOTRUN -> [SKIP][9] ([i915#8414]) +1 other test skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@drm_fdinfo@virtual-busy-idle-all.html

  * igt@drm_fdinfo@virtual-idle:
    - shard-rkl:          NOTRUN -> [FAIL][10] ([i915#7742])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@drm_fdinfo@virtual-idle.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          NOTRUN -> [SKIP][11] ([i915#8562])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          [PASS][12] -> [FAIL][13] ([i915#6268])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-rkl-3/igt@gem_ctx_exec@basic-nohangcheck.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-dg2:          NOTRUN -> [SKIP][14] ([i915#280])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_eio@kms:
    - shard-tglu:         [PASS][15] -> [INCOMPLETE][16] ([i915#10513])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-tglu-6/igt@gem_eio@kms.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-4/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg1:          NOTRUN -> [SKIP][17] ([i915#4771])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@hog:
    - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#4812])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@gem_exec_balancer@hog.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-rkl:          NOTRUN -> [SKIP][19] ([i915#4525])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-6/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_capture@many-4k-incremental:
    - shard-dg1:          NOTRUN -> [FAIL][20] ([i915#9606])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@gem_exec_capture@many-4k-incremental.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-dg1:          NOTRUN -> [SKIP][21] ([i915#3539] / [i915#4852]) +2 other tests skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglu:         NOTRUN -> [FAIL][22] ([i915#2842]) +4 other tests fail
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-7/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-rkl:          [PASS][23] -> [FAIL][24] ([i915#2842]) +3 other tests fail
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-3/igt@gem_exec_fair@basic-pace@rcs0.html
    - shard-tglu:         NOTRUN -> [FAIL][25] ([i915#2876])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-7/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#3539])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_reloc@basic-scanout:
    - shard-rkl:          NOTRUN -> [SKIP][27] ([i915#3281]) +4 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@gem_exec_reloc@basic-scanout.html

  * igt@gem_exec_reloc@basic-write-gtt-active:
    - shard-dg1:          NOTRUN -> [SKIP][28] ([i915#3281]) +1 other test skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@gem_exec_reloc@basic-write-gtt-active.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#3281]) +5 other tests skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_schedule@pi-distinct-iova:
    - shard-snb:          NOTRUN -> [SKIP][30] +25 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-snb5/igt@gem_exec_schedule@pi-distinct-iova.html

  * igt@gem_exec_schedule@reorder-wide:
    - shard-dg1:          NOTRUN -> [SKIP][31] ([i915#4812])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@gem_exec_schedule@reorder-wide.html

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#4860])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@gem_fenced_exec_thrash@2-spare-fences.html

  * igt@gem_lmem_swapping@heavy-multi@lmem0:
    - shard-dg1:          [PASS][33] -> [FAIL][34] ([i915#10378])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg1-16/igt@gem_lmem_swapping@heavy-multi@lmem0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@gem_lmem_swapping@heavy-multi@lmem0.html

  * igt@gem_lmem_swapping@heavy-random@lmem0:
    - shard-dg1:          NOTRUN -> [FAIL][35] ([i915#10378])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@gem_lmem_swapping@heavy-random@lmem0.html

  * igt@gem_lmem_swapping@heavy-verify-random@lmem0:
    - shard-dg2:          [PASS][36] -> [FAIL][37] ([i915#10378])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-11/igt@gem_lmem_swapping@heavy-verify-random@lmem0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-3/igt@gem_lmem_swapping@heavy-verify-random@lmem0.html

  * igt@gem_lmem_swapping@massive-random:
    - shard-tglu:         NOTRUN -> [SKIP][38] ([i915#4613])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@gem_lmem_swapping@massive-random.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#4613]) +1 other test skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [PASS][40] -> [TIMEOUT][41] ([i915#5493])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html
    - shard-dg1:          NOTRUN -> [TIMEOUT][42] ([i915#5493])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#9643])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-glk:          NOTRUN -> [SKIP][44] ([i915#4613]) +2 other tests skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-glk3/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_mmap_gtt@zero-extend:
    - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#4077]) +3 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@gem_mmap_gtt@zero-extend.html

  * igt@gem_mmap_wc@bad-size:
    - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#4083]) +1 other test skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@gem_mmap_wc@bad-size.html
    - shard-dg1:          NOTRUN -> [SKIP][47] ([i915#4083])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@gem_mmap_wc@bad-size.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-dg1:          NOTRUN -> [SKIP][48] ([i915#3282]) +2 other tests skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@gem_partial_pwrite_pread@writes-after-reads.html
    - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#3282])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_pxp@create-regular-buffer:
    - shard-rkl:          NOTRUN -> [SKIP][50] ([i915#4270]) +3 other tests skip
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-6/igt@gem_pxp@create-regular-buffer.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-dg1:          NOTRUN -> [SKIP][51] ([i915#4270]) +2 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#4270])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-tglu:         NOTRUN -> [SKIP][53] ([i915#4270]) +1 other test skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#5190] / [i915#8428]) +1 other test skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-dg1:          NOTRUN -> [SKIP][55] ([i915#4079])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
    - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#4077]) +4 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#3297]) +1 other test skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#3282]) +4 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@map-fixed-invalidate:
    - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#3297] / [i915#4880])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@gem_userptr_blits@map-fixed-invalidate.html

  * igt@gem_userptr_blits@sync-unmap:
    - shard-dg2:          [PASS][60] -> [SKIP][61] ([i915#2575]) +24 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@gem_userptr_blits@sync-unmap.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@gem_userptr_blits@sync-unmap.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-dg1:          NOTRUN -> [SKIP][62] ([i915#3297])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#3297])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-tglu:         NOTRUN -> [SKIP][64] ([i915#2527] / [i915#2856])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#2527]) +1 other test skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          [PASS][66] -> [INCOMPLETE][67] ([i915#9849])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-glk8/igt@i915_module_load@reload-with-fault-injection.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-glk8/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         [PASS][68] -> [ABORT][69] ([i915#10131] / [i915#9820])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_module_load@resize-bar:
    - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#6412])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_rps@basic-api:
    - shard-dg1:          NOTRUN -> [SKIP][71] ([i915#6621])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_rps@thresholds-idle@gt0:
    - shard-dg1:          NOTRUN -> [SKIP][72] ([i915#8925])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@i915_pm_rps@thresholds-idle@gt0.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#4387])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-6/igt@i915_pm_sseu@full-enable.html
    - shard-tglu:         NOTRUN -> [SKIP][74] ([i915#4387])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#5723])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [PASS][76] -> [INCOMPLETE][77] ([i915#4817])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-rkl-5/igt@i915_suspend@basic-s3-without-i915.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html

  * igt@intel_hwmon@hwmon-read:
    - shard-tglu:         NOTRUN -> [SKIP][78] ([i915#7707])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-7/igt@intel_hwmon@hwmon-read.html

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - shard-dg1:          NOTRUN -> [SKIP][79] ([i915#4212])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#8709]) +3 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#8709]) +7 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#8709]) +11 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-dg1:          NOTRUN -> [SKIP][83] ([i915#9531])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#1769] / [i915#3555])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#5286]) +3 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-tglu:         NOTRUN -> [SKIP][86] ([i915#5286]) +2 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-7/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#3638]) +1 other test skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][88] ([i915#3638]) +1 other test skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#4538] / [i915#5190]) +2 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#4538])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-xe2-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#10278])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_ccs@bad-rotation-90-4-tiled-xe2-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-xe2-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#10278]) +1 other test skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-xe2-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#6095]) +79 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:
    - shard-dg2:          NOTRUN -> [SKIP][94] +13 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#10307] / [i915#6095]) +179 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#6095]) +43 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][97] ([i915#6095]) +11 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#10307] / [i915#10434] / [i915#6095]) +7 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#7213]) +3 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-4/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@plane-scaling:
    - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#3742]) +1 other test skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-6/igt@kms_cdclk@plane-scaling.html
    - shard-tglu:         NOTRUN -> [SKIP][101] ([i915#3742])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@kms_cdclk@plane-scaling.html

  * igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#4087]) +3 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-5/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html

  * igt@kms_chamelium_audio@hdmi-audio-edid:
    - shard-dg1:          NOTRUN -> [SKIP][103] ([i915#7828]) +4 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_chamelium_audio@hdmi-audio-edid.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#7828])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][105] ([i915#7828]) +3 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-7/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#7828]) +5 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#3299]) +1 other test skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#7118] / [i915#9424])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#3555]) +1 other test skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg1:          NOTRUN -> [SKIP][110] ([i915#3359]) +2 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#3359]) +1 other test skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#9723])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#9227])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][114] ([i915#9723])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][115] ([i915#8812])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#3555] / [i915#3840])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-7/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#3555] / [i915#3840])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_feature_discovery@display-4x:
    - shard-dg1:          NOTRUN -> [SKIP][118] ([i915#1839])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_feature_discovery@display-4x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#9337])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][120] -> [FAIL][121] ([i915#2122]) +1 other test fail
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-snb5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-snb7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-flip-vs-panning-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][122] ([i915#3637])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@kms_flip@2x-flip-vs-panning-interruptible.html

  * igt@kms_flip@2x-plain-flip:
    - shard-rkl:          NOTRUN -> [SKIP][123] +32 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][124] ([i915#9934])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-tglu:         NOTRUN -> [SKIP][125] ([i915#3637] / [i915#3966])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#2587] / [i915#2672])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#2672]) +2 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#2672])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][129] ([i915#2587] / [i915#2672]) +1 other test skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#5190])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [PASS][131] -> [FAIL][132] ([i915#6880]) +1 other test fail
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-rte:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#5354]) +15 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-2p-rte.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][134] ([i915#8708]) +8 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-dg2:          [PASS][135] -> [SKIP][136] +4 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#10055])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#3023]) +18 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#3458]) +4 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#8708]) +9 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#9766])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
    - shard-tglu:         NOTRUN -> [SKIP][142] ([i915#9766])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
    - shard-dg1:          NOTRUN -> [SKIP][143] ([i915#3458]) +3 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#1825]) +20 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt:
    - shard-tglu:         NOTRUN -> [SKIP][145] +26 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt.html

  * igt@kms_hdr@static-toggle:
    - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#3555] / [i915#8228])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-6/igt@kms_hdr@static-toggle.html
    - shard-tglu:         NOTRUN -> [SKIP][147] ([i915#3555] / [i915#8228])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@kms_hdr@static-toggle.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-edp-1:
    - shard-mtlp:         [PASS][148] -> [DMESG-WARN][149] ([i915#9157]) +1 other test dmesg-warn
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-mtlp-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-edp-1.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-mtlp-3/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-edp-1.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#3555]) +6 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-6/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#8806])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-dg1:          NOTRUN -> [SKIP][152] ([i915#3555]) +3 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [FAIL][153] ([i915#8292])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][154] ([i915#8292])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][155] ([i915#8292])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-17/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#9423]) +11 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#9423]) +3 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][158] ([i915#9423]) +11 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#5176] / [i915#9423]) +1 other test skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][160] ([i915#5176] / [i915#9423]) +3 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#9423]) +3 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#5235]) +7 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling:
    - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#2575] / [i915#9423])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#5235]) +3 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#5235] / [i915#9423]) +15 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d-hdmi-a-1.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#5354])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#9685])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu:         [PASS][168] -> [FAIL][169] ([i915#9295])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-tglu-10/igt@kms_pm_dc@dc6-dpms.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-tglu:         NOTRUN -> [SKIP][170] ([i915#8430])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-7/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@drm-resources-equal:
    - shard-dg2:          [PASS][171] -> [SKIP][172] ([i915#9980]) +1 other test skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_pm_rpm@drm-resources-equal.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_pm_rpm@drm-resources-equal.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#9519])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [PASS][174] -> [SKIP][175] ([i915#9519])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#9519])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_psr2_sf@fbc-overlay-plane-update-sf-dmg-area:
    - shard-dg1:          NOTRUN -> [SKIP][177] +18 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_psr2_sf@fbc-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-dg1:          NOTRUN -> [SKIP][178] ([i915#9683])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-pr-no-drrs:
    - shard-tglu:         NOTRUN -> [SKIP][179] ([i915#9732]) +7 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-7/igt@kms_psr@fbc-pr-no-drrs.html

  * igt@kms_psr@fbc-psr2-sprite-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#1072] / [i915#9732]) +9 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@kms_psr@fbc-psr2-sprite-mmap-cpu.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#1072] / [i915#9732]) +15 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_psr@psr2-sprite-blt:
    - shard-dg1:          NOTRUN -> [SKIP][182] ([i915#1072] / [i915#9732]) +4 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_psr@psr2-sprite-blt.html

  * igt@kms_psr@psr2-sprite-plane-onoff:
    - shard-glk:          NOTRUN -> [SKIP][183] +122 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-glk1/igt@kms_psr@psr2-sprite-plane-onoff.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#9685])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#5289]) +2 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
    - shard-tglu:         NOTRUN -> [SKIP][186] ([i915#5289]) +1 other test skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#4235])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_rotation_crc@sprite-rotation-270.html

  * igt@kms_scaling_modes@scaling-mode-full-aspect:
    - shard-tglu:         NOTRUN -> [SKIP][188] ([i915#3555]) +3 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-7/igt@kms_scaling_modes@scaling-mode-full-aspect.html

  * igt@kms_setmode@basic@pipe-a-vga-1-pipe-b-hdmi-a-1:
    - shard-snb:          NOTRUN -> [FAIL][189] ([i915#5465]) +3 other tests fail
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-snb7/igt@kms_setmode@basic@pipe-a-vga-1-pipe-b-hdmi-a-1.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#8623])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
    - shard-tglu:         NOTRUN -> [SKIP][191] ([i915#8623])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:
    - shard-mtlp:         [PASS][192] -> [FAIL][193] ([i915#9196])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html

  * igt@kms_vblank@query-forked-hang:
    - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#2575]) +29 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_vblank@query-forked-hang.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-dg1:          NOTRUN -> [SKIP][195] ([i915#9906])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#9906])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html
    - shard-tglu:         NOTRUN -> [SKIP][197] ([i915#9906])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-dg1:          NOTRUN -> [SKIP][198] ([i915#2437])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@kms_writeback@writeback-invalid-parameters.html
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#2437])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@gen12-group-concurrent-oa-buffer-read:
    - shard-dg2:          [PASS][200] -> [SKIP][201] ([i915#5608])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@perf@gen12-group-concurrent-oa-buffer-read.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@perf@gen12-group-concurrent-oa-buffer-read.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-rkl:          NOTRUN -> [SKIP][202] ([i915#8850])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@perf_pmu@cpu-hotplug.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg1:          NOTRUN -> [SKIP][203] ([i915#8516])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@perf_pmu@rc6-all-gts.html

  * igt@runner@aborted:
    - shard-glk:          NOTRUN -> [FAIL][204] ([i915#10291])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-glk1/igt@runner@aborted.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#9917])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@sriov_basic@bind-unbind-vf.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-tglu:         NOTRUN -> [SKIP][206] ([i915#9917])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@sriov_basic@enable-vfs-autoprobe-on.html
    - shard-rkl:          NOTRUN -> [SKIP][207] ([i915#9917]) +1 other test skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-on.html

  * igt@syncobj_wait@invalid-wait-zero-handles:
    - shard-rkl:          NOTRUN -> [FAIL][208] ([i915#9779])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@syncobj_wait@invalid-wait-zero-handles.html

  * igt@v3d/v3d_submit_cl@single-in-sync:
    - shard-tglu:         NOTRUN -> [SKIP][209] ([i915#2575]) +5 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@v3d/v3d_submit_cl@single-in-sync.html

  * igt@v3d/v3d_submit_csd@single-in-sync:
    - shard-dg1:          NOTRUN -> [SKIP][210] ([i915#2575]) +3 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@v3d/v3d_submit_csd@single-in-sync.html

  * igt@vc4/vc4_label_bo@set-label:
    - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#7711]) +4 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@vc4/vc4_label_bo@set-label.html

  * igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem:
    - shard-dg1:          NOTRUN -> [SKIP][212] ([i915#7711]) +2 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem.html

  * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice:
    - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#7711]) +1 other test skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [FAIL][214] ([i915#7742]) -> [PASS][215]
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglu:         [FAIL][216] ([i915#6268]) -> [PASS][217]
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-rkl:          [FAIL][218] ([i915#2842]) -> [PASS][219]
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_lmem_swapping@heavy-verify-multi@lmem0:
    - shard-dg2:          [FAIL][220] ([i915#10378]) -> [PASS][221] +1 other test pass
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-6/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-4/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:
    - shard-dg2:          [FAIL][222] ([i915#10446]) -> [PASS][223]
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-8/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-2/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglu:         [INCOMPLETE][224] ([i915#10047] / [i915#9820]) -> [PASS][225]
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-tglu-5/igt@i915_module_load@reload-with-fault-injection.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [INCOMPLETE][226] ([i915#9407]) -> [PASS][227]
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-snb:          [SKIP][228] -> [PASS][229]
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-snb5/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-snb7/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:
    - shard-snb:          [INCOMPLETE][230] ([i915#4839]) -> [PASS][231]
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-snb6/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-snb5/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html

  * igt@kms_pm_rpm@i2c:
    - shard-dg2:          [FAIL][232] ([i915#8717]) -> [PASS][233]
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-2/igt@kms_pm_rpm@i2c.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-5/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-dg2:          [SKIP][234] ([i915#9519]) -> [PASS][235] +3 other tests pass
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp-stress.html
    - shard-rkl:          [SKIP][236] ([i915#9519]) -> [PASS][237]
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
    - shard-tglu:         [FAIL][238] ([i915#9196]) -> [PASS][239]
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html

  
#### Warnings ####

  * igt@gem_exec_balancer@bonded-pair:
    - shard-dg2:          [SKIP][240] ([i915#4771]) -> [SKIP][241] ([i915#2575])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@gem_exec_balancer@bonded-pair.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@gem_exec_balancer@bonded-pair.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-dg2:          [SKIP][242] ([i915#3539] / [i915#4852]) -> [SKIP][243] ([i915#2575])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg2:          [SKIP][244] ([i915#3281]) -> [SKIP][245] ([i915#2575]) +1 other test skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
    - shard-dg2:          [SKIP][246] ([i915#4860]) -> [SKIP][247] ([i915#2575])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html

  * igt@gem_mmap_gtt@big-copy:
    - shard-dg2:          [SKIP][248] ([i915#4077]) -> [SKIP][249] ([i915#2575]) +1 other test skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@gem_mmap_gtt@big-copy.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@gem_mmap_gtt@big-copy.html

  * igt@gem_mmap_wc@read:
    - shard-dg2:          [SKIP][250] ([i915#4083]) -> [SKIP][251] ([i915#2575])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@gem_mmap_wc@read.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@gem_mmap_wc@read.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-dg2:          [SKIP][252] ([i915#3282]) -> [SKIP][253] ([i915#2575])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-dg2:          [SKIP][254] ([i915#4270]) -> [SKIP][255] ([i915#2575]) +1 other test skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@gem_pxp@create-regular-context-2.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
    - shard-dg2:          [SKIP][256] ([i915#5190] / [i915#8428]) -> [SKIP][257] ([i915#2575] / [i915#5190])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html

  * igt@gen9_exec_parse@basic-rejected:
    - shard-dg2:          [SKIP][258] ([i915#2856]) -> [SKIP][259] ([i915#2575])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@gen9_exec_parse@basic-rejected.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@gen9_exec_parse@basic-rejected.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg1:          [ABORT][260] ([i915#9820]) -> [INCOMPLETE][261] ([i915#1982] / [i915#9849])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg1-13/igt@i915_module_load@reload-with-fault-injection.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg2:          [ABORT][262] ([i915#9820]) -> [INCOMPLETE][263] ([i915#1982] / [i915#9849])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-8/igt@i915_module_load@reload-with-fault-injection.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-dg2:          [SKIP][264] ([i915#4538] / [i915#5190]) -> [SKIP][265] ([i915#5190]) +2 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_chamelium_audio@dp-audio-edid:
    - shard-dg2:          [SKIP][266] ([i915#7828]) -> [SKIP][267] ([i915#2575]) +1 other test skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_chamelium_audio@dp-audio-edid.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_chamelium_audio@dp-audio-edid.html

  * igt@kms_content_protection@content-type-change:
    - shard-dg2:          [SKIP][268] ([i915#9424]) -> [SKIP][269] ([i915#2575])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_content_protection@content-type-change.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          [SKIP][270] ([i915#9433]) -> [SKIP][271] ([i915#9424])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg1-13/igt@kms_content_protection@mei-interface.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@kms_content_protection@mei-interface.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-dg2:          [SKIP][272] ([i915#3359]) -> [SKIP][273] ([i915#2575])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_cursor_crc@cursor-onscreen-512x512.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
    - shard-dg2:          [SKIP][274] ([i915#5354]) -> [SKIP][275] ([i915#2575])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_feature_discovery@psr2:
    - shard-dg2:          [SKIP][276] ([i915#658]) -> [SKIP][277] ([i915#2575])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_feature_discovery@psr2.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-flip-vs-modeset:
    - shard-dg2:          [SKIP][278] -> [SKIP][279] ([i915#2575]) +1 other test skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_flip@2x-flip-vs-modeset.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_flip@2x-flip-vs-modeset.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-dg2:          [SKIP][280] ([i915#8381]) -> [SKIP][281] ([i915#2575])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_flip@flip-vs-fences-interruptible.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt:
    - shard-dg2:          [FAIL][282] ([i915#6880]) -> [SKIP][283]
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][284] ([i915#10433] / [i915#3458]) -> [SKIP][285] ([i915#3458]) +1 other test skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-dg2:          [SKIP][286] ([i915#8708]) -> [SKIP][287] +5 other tests skip
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][288] ([i915#3458]) -> [SKIP][289] ([i915#10433] / [i915#3458]) +6 other tests skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-dg2:          [SKIP][290] ([i915#3458]) -> [SKIP][291] +5 other tests skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:
    - shard-dg2:          [SKIP][292] ([i915#5354]) -> [SKIP][293] +3 other tests skip
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-dg2:          [SKIP][294] ([i915#9685]) -> [SKIP][295]
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_pm_dc@dc6-psr.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          [SKIP][296] ([i915#3361]) -> [SKIP][297] ([i915#4281])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-rkl-2/igt@kms_pm_dc@dc9-dpms.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_psr@pr-cursor-mmap-cpu:
    - shard-dg1:          [SKIP][298] ([i915#1072] / [i915#9732]) -> [SKIP][299] ([i915#1072] / [i915#4423] / [i915#9732])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg1-13/igt@kms_psr@pr-cursor-mmap-cpu.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-17/igt@kms_psr@pr-cursor-mmap-cpu.html

  * igt@kms_psr@pr-cursor-plane-move:
    - shard-dg2:          [SKIP][300] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][301] ([i915#1072] / [i915#9732]) +8 other tests skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-11/igt@kms_psr@pr-cursor-plane-move.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-3/igt@kms_psr@pr-cursor-plane-move.html

  * igt@kms_psr@pr-no-drrs:
    - shard-dg2:          [SKIP][302] ([i915#1072] / [i915#9732]) -> [SKIP][303] +3 other tests skip
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_psr@pr-no-drrs.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_psr@pr-no-drrs.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - shard-dg2:          [SKIP][304] ([i915#4235] / [i915#5190]) -> [SKIP][305] ([i915#2575] / [i915#5190])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-dg2:          [SKIP][306] ([i915#4235]) -> [SKIP][307] ([i915#2575])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_scaling_modes@scaling-mode-center:
    - shard-dg2:          [SKIP][308] ([i915#3555]) -> [SKIP][309] ([i915#2575])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_scaling_modes@scaling-mode-center.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_scaling_modes@scaling-mode-center.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-dg2:          [SKIP][310] ([i915#8623]) -> [SKIP][311] ([i915#2575])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_tiled_display@basic-test-pattern.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_tiled_display@basic-test-pattern.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-dg2:          [SKIP][312] ([i915#2436]) -> [SKIP][313] ([i915#5608])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          [INCOMPLETE][314] ([i915#5493]) -> [CRASH][315] ([i915#9351])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  * igt@prime_vgem@basic-write:
    - shard-dg2:          [SKIP][316] ([i915#3291] / [i915#3708]) -> [SKIP][317] ([i915#2575])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@prime_vgem@basic-write.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@prime_vgem@basic-write.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-dg2:          [SKIP][318] ([i915#9917]) -> [SKIP][319] ([i915#2575])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@sriov_basic@enable-vfs-autoprobe-off.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@sriov_basic@enable-vfs-autoprobe-off.html

  
  [i915#10047]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10047
  [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
  [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
  [i915#10278]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10278
  [i915#10291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10291
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10446]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10446
  [i915#10513]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10513
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
  [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#2876]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2876
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#3966]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3966
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
  [i915#5176]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5465]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465
  [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
  [i915#5608]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5608
  [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6268]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6268
  [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
  [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#7711]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8292]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292
  [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
  [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
  [i915#8717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8717
  [i915#8806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806
  [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
  [i915#8850]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8850
  [i915#8925]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8925
  [i915#9157]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9157
  [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
  [i915#9227]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9227
  [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
  [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
  [i915#9351]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9351
  [i915#9407]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9407
  [i915#9408]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9408
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
  [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
  [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
  [i915#9606]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9606
  [i915#9643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9643
  [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
  [i915#9779]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9779
  [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
  [i915#9849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9849
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
  [i915#9980]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9980


Build changes
-------------

  * Linux: CI_DRM_14785 -> Patchwork_133701v3

  CI-20190529: 20190529
  CI_DRM_14785: 1ba62f8cea9c797427d45108df1d453f4b343240 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7863: fa1dc232d5d840532521df8a6fcf1fe82c514304 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_133701v3: 1ba62f8cea9c797427d45108df1d453f4b343240 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/index.html

--===============7681882186745148431==
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
<tr><td><b>Series:</b></td><td>drm/i915: Plane register cleanups (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/133701/">https://patchwork.freedesktop.org/series/133701/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14785_full -&gt; Patchwork_133701v3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_133701v3_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_133701v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (9 -&gt; 10)</h2>
<p>Additional (1): shard-snb-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_133701v3_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@i915_suspend@basic-s3-without-i915.html">WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-snb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-snb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-7/igt@kms_vrr@seamless-rr-switch-virtual.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_14785_full and Patchwork_133701v3_full:</p>
<h3>New IGT tests (5)</h3>
<ul>
<li>
<p>igt@kms_plane_lowres@tiling-4@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.74] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-4@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.37] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-4@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.38] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-4@pipe-d-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.60] s</li>
</ul>
</li>
<li>
<p>igt@perf@blocking@1-vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [10.02] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_133701v3_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@device_reset@unbind-reset-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9408">i915#9408</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@drm_fdinfo@busy-check-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5608">i915#5608</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@drm_fdinfo@busy-hang@bcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414">i915#8414</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-idle-all:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@drm_fdinfo@virtual-busy-idle-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414">i915#8414</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-idle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@drm_fdinfo@virtual-idle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742">i915#7742</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@gem_create@create-ext-set-pat.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-rkl-3/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6268">i915#6268</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-tglu-6/igt@gem_eio@kms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-4/igt@gem_eio@kms.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10513">i915#10513</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@gem_exec_balancer@bonded-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hog:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@gem_exec_balancer@hog.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-6/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-incremental:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@gem_exec_capture@many-4k-incremental.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9606">i915#9606</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@gem_exec_fair@basic-deadline.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-7/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-3/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) +3 other tests fail</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2876">i915#2876</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@gem_exec_flush@basic-uc-prw-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@gem_exec_reloc@basic-scanout.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@gem_exec_reloc@basic-write-gtt-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@gem_exec_reloc@basic-write-read-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-distinct-iova:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-snb5/igt@gem_exec_schedule@pi-distinct-iova.html">SKIP</a> +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@reorder-wide:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@gem_exec_schedule@reorder-wide.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@2-spare-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@gem_fenced_exec_thrash@2-spare-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi@lmem0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg1-16/igt@gem_lmem_swapping@heavy-multi@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@gem_lmem_swapping@heavy-multi@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@gem_lmem_swapping@heavy-random@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-11/igt@gem_lmem_swapping@heavy-verify-random@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-3/igt@gem_lmem_swapping@heavy-verify-random@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive-random:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@gem_lmem_swapping@massive-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493">i915#5493</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493">i915#5493</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9643">i915#9643</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-glk3/igt@gem_lmem_swapping@verify-random-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@zero-extend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@gem_mmap_gtt@zero-extend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@gem_mmap_wc@bad-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@gem_mmap_wc@bad-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@gem_partial_pwrite_pread@writes-after-reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +2 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@gem_partial_pwrite_pread@writes-after-reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-buffer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-6/igt@gem_pxp@create-regular-buffer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@gem_pxp@protected-raw-src-copy-not-readible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@gem_userptr_blits@map-fixed-invalidate.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sync-unmap:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@gem_userptr_blits@sync-unmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@gem_userptr_blits@sync-unmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@gem_userptr_blits@unsync-unmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-glk8/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-glk8/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9849">i915#9849</a>)</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131">i915#10131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@i915_module_load@resize-bar.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412">i915#6412</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle@gt0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@i915_pm_rps@thresholds-idle@gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8925">i915#8925</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-6/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723">i915#5723</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-rkl-5/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-7/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709">i915#8709</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709">i915#8709</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709">i915#8709</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-7/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_big_fb@linear-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-xe2-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_ccs@bad-rotation-90-4-tiled-xe2-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10278">i915#10278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-xe2-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-xe2-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10278">i915#10278</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +79 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +179 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +43 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-4/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213">i915#7213</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-6/igt@kms_cdclk@plane-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@kms_cdclk@plane-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-5/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio-edid:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_chamelium_audio@hdmi-audio-edid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@kms_chamelium_frames@dp-crc-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-7/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359">i915#3359</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9227">i915#9227</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812">i915#8812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-7/igt@kms_dsc@dsc-with-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_feature_discovery@display-4x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@kms_feature_discovery@dp-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-snb5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-snb7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@kms_flip@2x-flip-vs-panning-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_flip@2x-plain-flip.html">SKIP</a> +32 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@kms_flip@2x-plain-flip-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@kms_flip@2x-plain-flip-ts-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3966">i915#3966</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880">i915#6880</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-2p-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-stridechange:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-stridechange.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-stridechange.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055">i915#10055</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766">i915#9766</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766">i915#9766</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt.html">SKIP</a> +26 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-6/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-mtlp-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-mtlp-3/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-edp-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9157">i915#9157</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-6/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_plane_multiple@tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806">i915#8806</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-17/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5176">i915#5176</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5176">i915#5176</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235">i915#5235</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235">i915#5235</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235">i915#5235</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_pm_backlight@fade-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-tglu-10/igt@kms_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295">i915#9295</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-7/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@drm-resources-equal:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_pm_rpm@drm-resources-equal.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_pm_rpm@drm-resources-equal.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9980">i915#9980</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_psr2_sf@fbc-overlay-plane-update-sf-dmg-area.html">SKIP</a> +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-no-drrs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-7/igt@kms_psr@fbc-pr-no-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@kms_psr@fbc-psr2-sprite-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@kms_psr@fbc-psr2-sprite-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_psr@psr2-sprite-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-plane-onoff:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-glk1/igt@kms_psr@psr2-sprite-plane-onoff.html">SKIP</a> +122 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +2 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_rotation_crc@sprite-rotation-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full-aspect:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-7/igt@kms_scaling_modes@scaling-mode-full-aspect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-vga-1-pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-snb7/igt@kms_setmode@basic@pipe-a-vga-1-pipe-b-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465">i915#5465</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@query-forked-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_vblank@query-forked-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-concurrent-oa-buffer-read:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@perf@gen12-group-concurrent-oa-buffer-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@perf@gen12-group-concurrent-oa-buffer-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5608">i915#5608</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@cpu-hotplug:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@perf_pmu@cpu-hotplug.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8850">i915#8850</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-glk1/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10291">i915#10291</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9779">i915#9779</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@single-in-sync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@v3d/v3d_submit_cl@single-in-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@single-in-sync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@v3d/v3d_submit_csd@single-in-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_label_bo@set-label:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-4/igt@vc4/vc4_label_bo@set-label.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711">i915#7711</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-13/igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711">i915#7711</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711">i915#7711</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742">i915#7742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6268">i915#6268</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-6/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-6/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-4/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-8/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10446">i915#10446</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-2/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-tglu-5/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10047">i915#10047</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9407">i915#9407</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-toggle:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-snb5/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-snb7/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-snb6/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-snb5/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-2/igt@kms_pm_rpm@i2c.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8717">i915#8717</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-5/igt@kms_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a> +3 other tests pass</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196">i915#9196</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@bonded-pair:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@gem_exec_balancer@bonded-pair.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771">i915#4771</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@gem_exec_balancer@bonded-pair.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@gem_mmap_gtt@big-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@gem_mmap_gtt@big-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@gem_mmap_wc@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@gem_mmap_wc@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-snoop:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@gem_pxp@create-regular-context-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@gem_pxp@create-regular-context-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@gen9_exec_parse@basic-rejected.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@gen9_exec_parse@basic-rejected.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg1-13/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9849">i915#9849</a>)</li>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-8/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9849">i915#9849</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@dp-audio-edid:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_chamelium_audio@dp-audio-edid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_chamelium_audio@dp-audio-edid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_content_protection@content-type-change.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_content_protection@content-type-change.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg1-13/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433">i915#9433</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-15/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359">i915#3359</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_flip@2x-flip-vs-modeset.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_flip@2x-flip-vs-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_flip@flip-vs-fences-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381">i915#8381</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_flip@flip-vs-fences-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880">i915#6880</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_pm_dc@dc6-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_pm_dc@dc6-psr.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-rkl-2/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361">i915#3361</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-mmap-cpu:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg1-13/igt@kms_psr@pr-cursor-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg1-17/igt@kms_psr@pr-cursor-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-plane-move:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-11/igt@kms_psr@pr-cursor-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-3/igt@kms_psr@pr-cursor-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-no-drrs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_psr@pr-no-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_psr@pr-no-drrs.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235">i915#4235</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235">i915#4235</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-center:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_scaling_modes@scaling-mode-center.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_scaling_modes@scaling-mode-center.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_tiled_display@basic-test-pattern.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@kms_tiled_display@basic-test-pattern.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436">i915#2436</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5608">i915#5608</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493">i915#5493</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-8/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9351">i915#9351</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@sriov_basic@enable-vfs-autoprobe-off.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133701v3/shard-dg2-11/igt@sriov_basic@enable-vfs-autoprobe-off.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14785 -&gt; Patchwork_133701v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14785: 1ba62f8cea9c797427d45108df1d453f4b343240 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7863: fa1dc232d5d840532521df8a6fcf1fe82c514304 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_133701v3: 1ba62f8cea9c797427d45108df1d453f4b343240 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============7681882186745148431==--
