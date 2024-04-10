Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F0189FF7D
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 20:12:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26B6B10E6B5;
	Wed, 10 Apr 2024 18:12:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2336D10E8F0;
 Wed, 10 Apr 2024 18:12:30 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6299293245948567434=="
MIME-Version: 1.0
Subject: =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2VyaWVzIHN0YXJ0aW5nIHdpdGgg?=
 =?utf-8?b?W0NJLW9ubHksMS8zXSBkcm06IEFkZCBkcm1fdmJsYW5rX3dvcmtfZmx1c2hfYWxs?=
 =?utf-8?b?KCku?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Apr 2024 18:12:30 -0000
Message-ID: <171277275012.1338744.2562929148699384655@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240409154928.15152-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20240409154928.15152-1-maarten.lankhorst@linux.intel.com>
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

--===============6299293245948567434==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI-only,1/3] drm: Add drm_vblank_work_flush_all().
URL   : https://patchwork.freedesktop.org/series/132221/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14550_full -> Patchwork_132221v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_132221v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_132221v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_132221v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_schedule@preempt-engines@vecs0:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][1] +1 other test incomplete
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-18/igt@gem_exec_schedule@preempt-engines@vecs0.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
    - shard-rkl:          [PASS][2] -> [ABORT][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-rkl-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-3:
    - shard-dg2:          [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-dg2-1/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-1/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-3.html

  
Known issues
------------

  Here are the changes found in Patchwork_132221v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][6], [FAIL][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk1/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk1/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk2/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk2/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk2/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk4/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk4/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk4/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk5/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk5/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk5/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk6/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk6/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk7/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk8/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk8/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk8/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk4/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk4/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk4/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk5/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk5/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk5/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk6/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk7/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk7/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk8/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk8/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk8/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk8/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk2/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-dg1:          NOTRUN -> [SKIP][44] ([i915#8411])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-17/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-mtlp:         NOTRUN -> [SKIP][45] ([i915#7701])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@busy-idle-check-all@vcs1:
    - shard-dg1:          NOTRUN -> [SKIP][46] ([i915#8414]) +9 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@drm_fdinfo@busy-idle-check-all@vcs1.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [PASS][47] -> [FAIL][48] ([i915#7742])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-6/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-dg1:          NOTRUN -> [SKIP][49] ([i915#3555] / [i915#9323])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-dg1:          NOTRUN -> [SKIP][50] ([i915#9323])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-mtlp:         NOTRUN -> [SKIP][51] ([i915#6335])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_persistence@heartbeat-many:
    - shard-dg1:          NOTRUN -> [SKIP][52] ([i915#8555])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-17/igt@gem_ctx_persistence@heartbeat-many.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-dg1:          NOTRUN -> [SKIP][53] ([i915#280])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_eio@unwedge-stress:
    - shard-dg1:          NOTRUN -> [FAIL][54] ([i915#5784])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#4812]) +1 other test skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_balancer@bonded-true-hang:
    - shard-mtlp:         NOTRUN -> [SKIP][56] ([i915#4812])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@gem_exec_balancer@bonded-true-hang.html

  * igt@gem_exec_capture@many-4k-zero:
    - shard-glk:          NOTRUN -> [FAIL][57] ([i915#9606])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk5/igt@gem_exec_capture@many-4k-zero.html

  * igt@gem_exec_fair@basic-none:
    - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#3539] / [i915#4852]) +4 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@gem_exec_fair@basic-none.html

  * igt@gem_exec_fair@basic-throttle:
    - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#3539])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@gem_exec_fair@basic-throttle.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][60] ([i915#2842]) +3 other tests fail
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_fence@submit:
    - shard-dg1:          NOTRUN -> [SKIP][61] ([i915#4812]) +3 other tests skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@gem_exec_fence@submit.html

  * igt@gem_exec_flush@basic-batch-kernel-default-wb:
    - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#3539] / [i915#4852]) +1 other test skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@gem_exec_flush@basic-batch-kernel-default-wb.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#3281]) +2 other tests skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_reloc@basic-wc-cpu-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][64] ([i915#3281]) +1 other test skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@gem_exec_reloc@basic-wc-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-write-gtt-active:
    - shard-dg1:          NOTRUN -> [SKIP][65] ([i915#3281]) +9 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@gem_exec_reloc@basic-write-gtt-active.html

  * igt@gem_exec_reloc@basic-write-wc:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#3281]) +2 other tests skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@gem_exec_reloc@basic-write-wc.html

  * igt@gem_fence_thrash@bo-write-verify-threaded-none:
    - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#4860])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@gem_fence_thrash@bo-write-verify-threaded-none.html

  * igt@gem_fence_thrash@bo-write-verify-y:
    - shard-dg1:          NOTRUN -> [SKIP][68] ([i915#4860]) +1 other test skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@gem_fence_thrash@bo-write-verify-y.html

  * igt@gem_huc_copy@huc-copy:
    - shard-glk:          NOTRUN -> [SKIP][69] ([i915#2190])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic@lmem0:
    - shard-dg2:          [PASS][70] -> [FAIL][71] ([i915#10378]) +1 other test fail
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-dg2-10/igt@gem_lmem_swapping@basic@lmem0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-10/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@gem_lmem_swapping@heavy-verify-multi@lmem0:
    - shard-dg1:          NOTRUN -> [FAIL][72] ([i915#10378])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][73] ([i915#4565])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-13/igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-glk:          NOTRUN -> [SKIP][74] ([i915#4613]) +3 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk5/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [PASS][75] -> [TIMEOUT][76] ([i915#5493])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_lmem_swapping@verify:
    - shard-mtlp:         NOTRUN -> [SKIP][77] ([i915#4613]) +1 other test skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@gem_lmem_swapping@verify.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#4613]) +1 other test skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_lmem_swapping@verify-ccs@lmem0:
    - shard-dg2:          NOTRUN -> [FAIL][79] ([i915#10378])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@gem_lmem_swapping@verify-ccs@lmem0.html

  * igt@gem_media_vme:
    - shard-tglu:         NOTRUN -> [SKIP][80] ([i915#284])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@gem_media_vme.html

  * igt@gem_mmap@basic-small-bo:
    - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#4083])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@gem_mmap@basic-small-bo.html

  * igt@gem_mmap_gtt@basic-read-write-distinct:
    - shard-mtlp:         NOTRUN -> [SKIP][82] ([i915#4077]) +2 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@gem_mmap_gtt@basic-read-write-distinct.html

  * igt@gem_mmap_wc@close:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#4083]) +1 other test skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@gem_mmap_wc@close.html

  * igt@gem_mmap_wc@write-read-distinct:
    - shard-dg1:          NOTRUN -> [SKIP][84] ([i915#4083]) +4 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@gem_mmap_wc@write-read-distinct.html

  * igt@gem_partial_pwrite_pread@reads-snoop:
    - shard-dg1:          NOTRUN -> [SKIP][85] ([i915#3282]) +4 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@gem_partial_pwrite_pread@reads-snoop.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#3282]) +1 other test skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#3282])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-10/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_pxp@create-valid-protected-context:
    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#4270]) +1 other test skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@gem_pxp@create-valid-protected-context.html
    - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#4270]) +1 other test skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@gem_pxp@create-valid-protected-context.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#4270]) +4 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-13/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#5190] / [i915#8428])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html

  * igt@gem_render_copy@yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][92] ([i915#8428]) +1 other test skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@gem_render_copy@yf-tiled.html

  * igt@gem_tiled_blits@basic:
    - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#4077]) +4 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
    - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#4077]) +15 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_unfence_active_buffers:
    - shard-dg1:          NOTRUN -> [SKIP][95] ([i915#4879])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-13/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#3297]) +1 other test skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-dg1:          NOTRUN -> [SKIP][97] ([i915#3282] / [i915#3297])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-17/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-dg1:          NOTRUN -> [SKIP][98] ([i915#3297]) +3 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-13/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#3297]) +2 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-tglu:         NOTRUN -> [SKIP][100] ([i915#2527] / [i915#2856])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@bb-large:
    - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#2856])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#2527]) +1 other test skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@gen9_exec_parse@bb-start-far.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#2856]) +1 other test skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@gen9_exec_parse@shadow-peek.html
    - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#2527]) +3 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_module_load@load:
    - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#6227])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-17/igt@i915_module_load@load.html
    - shard-glk:          NOTRUN -> [SKIP][106] ([i915#6227])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk7/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglu:         [PASS][107] -> [INCOMPLETE][108] ([i915#9820])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-tglu-9/igt@i915_module_load@reload-with-fault-injection.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html
    - shard-glk:          NOTRUN -> [INCOMPLETE][109] ([i915#1982] / [i915#9849])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [PASS][110] -> [INCOMPLETE][111] ([i915#9407])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-tglu:         NOTRUN -> [SKIP][112] ([i915#6590])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rps@thresholds-idle@gt0:
    - shard-dg1:          NOTRUN -> [SKIP][113] ([i915#8925]) +1 other test skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-17/igt@i915_pm_rps@thresholds-idle@gt0.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#5723])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_selftest@mock@memory_region:
    - shard-tglu:         NOTRUN -> [DMESG-WARN][115] ([i915#9311])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@i915_selftest@mock@memory_region.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - shard-dg1:          [PASS][116] -> [DMESG-WARN][117] ([i915#4391] / [i915#4423])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-dg1-17/igt@i915_suspend@basic-s2idle-without-i915.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-17/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - shard-dg1:          NOTRUN -> [SKIP][118] ([i915#4212]) +2 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#8709]) +11 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-glk:          NOTRUN -> [SKIP][120] ([i915#1769])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
    - shard-dg1:          NOTRUN -> [SKIP][121] ([i915#1769] / [i915#3555])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][122] ([i915#4538] / [i915#5286]) +6 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:
    - shard-dg1:          NOTRUN -> [SKIP][123] ([i915#5286])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-13/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#5286]) +2 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][125] ([i915#5286]) +1 other test skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#3638]) +3 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][127] +10 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
    - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#3638]) +1 other test skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-mtlp:         NOTRUN -> [SKIP][129] +3 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [PASS][130] -> [FAIL][131] ([i915#3743]) +1 other test fail
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-tglu-4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#4538] / [i915#5190]) +5 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-mtlp:         NOTRUN -> [SKIP][133] ([i915#6187])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][134] ([i915#4538]) +7 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][135] +23 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][136] ([i915#6095]) +99 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][137] ([i915#6095]) +11 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][138] ([i915#6095]) +7 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-edp-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#10307] / [i915#6095]) +126 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#10307] / [i915#10434] / [i915#6095])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#6095]) +79 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg1:          NOTRUN -> [SKIP][142] ([i915#3742])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@mode-transition@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#7213] / [i915#9010]) +3 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_cdclk@mode-transition@pipe-b-edp-1.html

  * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#4087]) +3 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#7828]) +5 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium_hpd@dp-hpd-fast:
    - shard-tglu:         NOTRUN -> [SKIP][146] ([i915#7828]) +2 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_chamelium_hpd@dp-hpd-fast.html

  * igt@kms_chamelium_hpd@hdmi-hpd-fast:
    - shard-mtlp:         NOTRUN -> [SKIP][147] ([i915#7828]) +1 other test skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_chamelium_hpd@hdmi-hpd-fast.html

  * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
    - shard-dg1:          NOTRUN -> [SKIP][148] ([i915#7828]) +9 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-13/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html

  * igt@kms_chamelium_hpd@vga-hpd-after-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#7828]) +4 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@kms_chamelium_hpd@vga-hpd-after-suspend.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#7118] / [i915#9424]) +1 other test skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_content_protection@atomic-dpms.html
    - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#7118] / [i915#9424])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#6944] / [i915#9424])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@srm:
    - shard-dg1:          NOTRUN -> [SKIP][153] ([i915#7116])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent:
    - shard-tglu:         NOTRUN -> [SKIP][154] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#3359])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@kms_cursor_crc@cursor-random-512x170.html
    - shard-dg1:          NOTRUN -> [SKIP][156] ([i915#3359]) +1 other test skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-tglu:         NOTRUN -> [SKIP][157] ([i915#3555])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#3555]) +3 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
    - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#3555]) +3 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-mtlp:         NOTRUN -> [SKIP][160] ([i915#3359])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-mtlp:         NOTRUN -> [SKIP][161] ([i915#9809])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][162] -> [FAIL][163] ([i915#2346])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-mtlp:         NOTRUN -> [SKIP][164] ([i915#9067])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-dg1:          NOTRUN -> [SKIP][165] ([i915#4103] / [i915#4213])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#9723])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-3/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#9227])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][168] ([i915#9723])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html

  * igt@kms_dp_aux_dev:
    - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#1257])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@kms_dp_aux_dev.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#3555] / [i915#3840])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#3840] / [i915#9688])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_dsc@dsc-fractional-bpp.html
    - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#3840])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#3555] / [i915#3840])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][174] ([i915#3469])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-13/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@display-4x:
    - shard-dg1:          NOTRUN -> [SKIP][175] ([i915#1839])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-17/igt@kms_feature_discovery@display-4x.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#9934]) +6 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][177] ([i915#3637]) +1 other test skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@2x-plain-flip:
    - shard-rkl:          NOTRUN -> [SKIP][178] +15 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@flip-vs-panning-interruptible@c-hdmi-a1:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][179] ([i915#6113])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-10/igt@kms_flip@flip-vs-panning-interruptible@c-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][180] ([i915#2587] / [i915#2672]) +5 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#2672]) +1 other test skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][182] ([i915#2587] / [i915#2672]) +1 other test skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][183] ([i915#2672])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#2672]) +2 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render:
    - shard-dg2:          [PASS][185] -> [FAIL][186] ([i915#6880])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#8708]) +2 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#1825]) +17 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-cpu:
    - shard-snb:          [PASS][189] -> [SKIP][190]
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-cpu.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-dg1:          NOTRUN -> [SKIP][191] ([i915#5439])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][192] ([i915#3458]) +24 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][193] ([i915#8708]) +22 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#3023]) +10 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#8708]) +10 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#3458]) +10 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-render:
    - shard-mtlp:         NOTRUN -> [SKIP][197] ([i915#1825]) +4 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#5354]) +16 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#3555] / [i915#8228]) +2 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@kms_hdr@invalid-metadata-sizes.html
    - shard-dg1:          NOTRUN -> [SKIP][200] ([i915#3555] / [i915#8228]) +1 other test skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_plane@pixel-format@pipe-a:
    - shard-mtlp:         [PASS][201] -> [ABORT][202] ([i915#10698])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-mtlp-7/igt@kms_plane@pixel-format@pipe-a.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-3/igt@kms_plane@pixel-format@pipe-a.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#8806])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-dg1:          NOTRUN -> [SKIP][204] ([i915#3555]) +3 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-13/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][205] ([i915#5176]) +3 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-edp-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#9423]) +11 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-c-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#9423]) +3 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-c-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][208] ([i915#9423]) +11 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#5176] / [i915#9423]) +1 other test skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][210] ([i915#5235]) +15 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-13/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][211] ([i915#5235]) +3 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#5235]) +3 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#5235] / [i915#9423]) +7 other tests skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-dp-4.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][214] ([i915#5354])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-tglu:         NOTRUN -> [SKIP][215] ([i915#9685])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][216] ([i915#3361])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-17/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#3361])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][218] ([i915#9340])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-1/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-dg1:          NOTRUN -> [SKIP][219] ([i915#8430])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-13/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg2:          [PASS][220] -> [SKIP][221] ([i915#9519]) +1 other test skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-dg1:          NOTRUN -> [SKIP][222] ([i915#9519])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [PASS][223] -> [SKIP][224] ([i915#9519]) +2 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#6524])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-dg1:          NOTRUN -> [SKIP][226] +53 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-13/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-tglu:         NOTRUN -> [SKIP][227] ([i915#9683])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@fbc-pr-primary-render:
    - shard-mtlp:         NOTRUN -> [SKIP][228] ([i915#9688]) +2 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_psr@fbc-pr-primary-render.html

  * igt@kms_psr@fbc-psr2-cursor-mmap-gtt:
    - shard-glk:          NOTRUN -> [SKIP][229] +302 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk5/igt@kms_psr@fbc-psr2-cursor-mmap-gtt.html

  * igt@kms_psr@fbc-psr2-sprite-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][230] ([i915#9732]) +3 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_psr@fbc-psr2-sprite-mmap-gtt.html

  * igt@kms_psr@pr-sprite-plane-onoff:
    - shard-dg1:          NOTRUN -> [SKIP][231] ([i915#1072] / [i915#9732]) +23 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_psr@pr-sprite-plane-onoff.html

  * igt@kms_psr@psr-cursor-render:
    - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#1072] / [i915#9732]) +10 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@kms_psr@psr-cursor-render.html

  * igt@kms_psr@psr-sprite-plane-move:
    - shard-rkl:          NOTRUN -> [SKIP][233] ([i915#1072] / [i915#9732]) +10 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@kms_psr@psr-sprite-plane-move.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-rkl:          NOTRUN -> [SKIP][234] ([i915#9685])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][235] ([i915#4235] / [i915#5190])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          NOTRUN -> [FAIL][236] ([IGT#2])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_sysfs_edid_timing.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-dg2:          NOTRUN -> [SKIP][237] ([i915#8623])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_tiled_display@basic-test-pattern.html
    - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#8623])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
    - shard-tglu:         [PASS][239] -> [FAIL][240] ([i915#9196]) +1 other test fail
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html

  * igt@kms_vrr@max-min:
    - shard-dg1:          NOTRUN -> [SKIP][241] ([i915#9906])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@kms_vrr@max-min.html

  * igt@kms_writeback@writeback-check-output:
    - shard-glk:          NOTRUN -> [SKIP][242] ([i915#2437])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk5/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-dg1:          NOTRUN -> [SKIP][243] ([i915#2437] / [i915#9412])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-13/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-tglu:         NOTRUN -> [SKIP][244] ([i915#2437])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#2437] / [i915#9412])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
    - shard-rkl:          NOTRUN -> [SKIP][246] ([i915#2437] / [i915#9412])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@perf@mi-rpc:
    - shard-rkl:          NOTRUN -> [SKIP][247] ([i915#2434])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@perf@mi-rpc.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-rkl:          NOTRUN -> [SKIP][248] ([i915#2433])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@perf@unprivileged-single-ctx-counters.html

  * igt@perf_pmu@busy-double-start@ccs0:
    - shard-mtlp:         NOTRUN -> [FAIL][249] ([i915#4349]) +1 other test fail
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@perf_pmu@busy-double-start@ccs0.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg1:          NOTRUN -> [FAIL][250] ([i915#6806])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@perf_pmu@frequency@gt0.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-dg1:          NOTRUN -> [SKIP][251] ([i915#3708]) +1 other test skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@prime_vgem@basic-fence-flip.html
    - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#3708])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-read:
    - shard-dg2:          NOTRUN -> [SKIP][253] ([i915#3291] / [i915#3708])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@prime_vgem@basic-read.html
    - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#3291] / [i915#3708])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@coherency-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][255] ([i915#3708] / [i915#4077])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-mtlp:         NOTRUN -> [SKIP][256] ([i915#3708])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@prime_vgem@fence-flip-hang.html

  * igt@prime_vgem@fence-write-hang:
    - shard-rkl:          NOTRUN -> [SKIP][257] ([i915#3708])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@prime_vgem@fence-write-hang.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - shard-dg1:          NOTRUN -> [SKIP][258] ([i915#9917])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  * igt@syncobj_timeline@invalid-wait-zero-handles:
    - shard-glk:          NOTRUN -> [FAIL][259] ([i915#9781])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk5/igt@syncobj_timeline@invalid-wait-zero-handles.html

  * igt@v3d/v3d_get_param@base-params:
    - shard-mtlp:         NOTRUN -> [SKIP][260] ([i915#2575]) +2 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@v3d/v3d_get_param@base-params.html

  * igt@v3d/v3d_job_submission@array-job-submission:
    - shard-dg2:          NOTRUN -> [SKIP][261] ([i915#2575]) +3 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@v3d/v3d_job_submission@array-job-submission.html

  * igt@v3d/v3d_submit_cl@bad-perfmon:
    - shard-snb:          NOTRUN -> [SKIP][262] +1 other test skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-snb7/igt@v3d/v3d_submit_cl@bad-perfmon.html

  * igt@v3d/v3d_submit_cl@single-in-sync:
    - shard-dg1:          NOTRUN -> [SKIP][263] ([i915#2575]) +14 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@v3d/v3d_submit_cl@single-in-sync.html

  * igt@vc4/vc4_dmabuf_poll@poll-write-waits-until-write-done:
    - shard-dg1:          NOTRUN -> [SKIP][264] ([i915#7711]) +7 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@vc4/vc4_dmabuf_poll@poll-write-waits-until-write-done.html

  * igt@vc4/vc4_purgeable_bo@mark-purgeable:
    - shard-rkl:          NOTRUN -> [SKIP][265] ([i915#7711]) +4 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@vc4/vc4_purgeable_bo@mark-purgeable.html

  * igt@vc4/vc4_tiling@set-bad-flags:
    - shard-tglu:         NOTRUN -> [SKIP][266] ([i915#2575]) +4 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@vc4/vc4_tiling@set-bad-flags.html

  * igt@vc4/vc4_tiling@set-bad-modifier:
    - shard-dg2:          NOTRUN -> [SKIP][267] ([i915#7711]) +5 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@vc4/vc4_tiling@set-bad-modifier.html

  * igt@vc4/vc4_wait_bo@bad-pad:
    - shard-mtlp:         NOTRUN -> [SKIP][268] ([i915#7711]) +1 other test skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@vc4/vc4_wait_bo@bad-pad.html

  
#### Possible fixes ####

  * igt@gem_busy@close-race:
    - shard-dg2:          [INCOMPLETE][269] -> [PASS][270]
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-dg2-8/igt@gem_busy@close-race.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-10/igt@gem_busy@close-race.html

  * igt@gem_ctx_freq@sysfs@gt0:
    - shard-dg2:          [FAIL][271] ([i915#9561]) -> [PASS][272]
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-dg2-4/igt@gem_ctx_freq@sysfs@gt0.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-11/igt@gem_ctx_freq@sysfs@gt0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-rkl:          [FAIL][273] ([i915#2842]) -> [PASS][274]
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-rkl-3/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglu:         [FAIL][275] ([i915#2842]) -> [PASS][276]
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_schedule@preempt-engines@bcs0:
    - shard-dg1:          [INCOMPLETE][277] -> [PASS][278]
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-dg1-15/igt@gem_exec_schedule@preempt-engines@bcs0.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-18/igt@gem_exec_schedule@preempt-engines@bcs0.html

  * igt@gem_lmem_swapping@heavy-random@lmem0:
    - shard-dg1:          [FAIL][279] ([i915#10378]) -> [PASS][280]
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-dg1-17/igt@gem_lmem_swapping@heavy-random@lmem0.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg1-17/igt@gem_lmem_swapping@heavy-random@lmem0.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:
    - shard-dg2:          [FAIL][281] ([i915#10378]) -> [PASS][282]
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-dg2-2/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-3/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [DMESG-WARN][283] ([i915#4936] / [i915#5493]) -> [PASS][284]
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-3/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-glk:          [FAIL][285] ([i915#4767]) -> [PASS][286]
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk8/igt@kms_fbcon_fbt@fbc-suspend.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1:
    - shard-snb:          [FAIL][287] ([i915#2122]) -> [PASS][288] +1 other test pass
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-snb7/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-snb2/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][289] ([i915#79]) -> [PASS][290]
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:
    - shard-snb:          [SKIP][291] -> [PASS][292]
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu:         [FAIL][293] ([i915#9295]) -> [PASS][294]
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-tglu-7/igt@kms_pm_dc@dc6-dpms.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-5/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-rkl:          [SKIP][295] ([i915#9519]) -> [PASS][296] +1 other test pass
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
    - shard-rkl:          [FAIL][297] ([i915#9196]) -> [PASS][298]
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-rkl-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
    - shard-tglu:         [FAIL][299] ([i915#9196]) -> [PASS][300] +1 other test pass
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html

  * igt@perf@blocking@0-rcs0:
    - shard-rkl:          [FAIL][301] -> [PASS][302]
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-rkl-5/igt@perf@blocking@0-rcs0.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-1/igt@perf@blocking@0-rcs0.html

  * igt@perf_pmu@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [FAIL][303] ([i915#4349]) -> [PASS][304]
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-rkl-6/igt@perf_pmu@most-busy-idle-check-all@rcs0.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@perf_pmu@most-busy-idle-check-all@rcs0.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglu:         [FAIL][305] ([i915#2876]) -> [FAIL][306] ([i915#2842])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-tglu-3/igt@gem_exec_fair@basic-pace@rcs0.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-7/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [ABORT][307] -> [ABORT][308] ([i915#10131] / [i915#9820])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:
    - shard-tglu:         [FAIL][309] ([i915#3591]) -> [WARN][310] ([i915#2681])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-tglu:         [WARN][311] ([i915#2681]) -> [FAIL][312] ([i915#3591])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][313] ([i915#7118] / [i915#7162] / [i915#9424]) -> [SKIP][314] ([i915#7118] / [i915#9424])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-dg2-11/igt@kms_content_protection@type1.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-5/igt@kms_content_protection@type1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:
    - shard-dg2:          [SKIP][315] ([i915#10433] / [i915#3458]) -> [SKIP][316] ([i915#3458]) +1 other test skip
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-tglu:         [INCOMPLETE][317] ([i915#2295]) -> [SKIP][318]
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-tglu-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_psr@fbc-psr-cursor-plane-move:
    - shard-dg2:          [SKIP][319] ([i915#1072] / [i915#9732]) -> [SKIP][320] ([i915#1072] / [i915#9673] / [i915#9732]) +10 other tests skip
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-dg2-4/igt@kms_psr@fbc-psr-cursor-plane-move.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-11/igt@kms_psr@fbc-psr-cursor-plane-move.html

  * igt@kms_psr@fbc-psr-primary-mmap-gtt:
    - shard-dg2:          [SKIP][321] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][322] ([i915#1072] / [i915#9732]) +14 other tests skip
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-dg2-11/igt@kms_psr@fbc-psr-primary-mmap-gtt.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-5/igt@kms_psr@fbc-psr-primary-mmap-gtt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [i915#10131]: https://gitlab.freedesktop.org/drm/intel/issues/10131
  [i915#10307]: https://gitlab.freedesktop.org/drm/intel/issues/10307
  [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
  [i915#10433]: https://gitlab.freedesktop.org/drm/intel/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/intel/issues/10434
  [i915#10656]: https://gitlab.freedesktop.org/drm/intel/issues/10656
  [i915#10698]: https://gitlab.freedesktop.org/drm/intel/issues/10698
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2876]: https://gitlab.freedesktop.org/drm/intel/issues/2876
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/intel/issues/6113
  [i915#6187]: https://gitlab.freedesktop.org/drm/intel/issues/6187
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
  [i915#6806]: https://gitlab.freedesktop.org/drm/intel/issues/6806
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/intel/issues/8430
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8806]: https://gitlab.freedesktop.org/drm/intel/issues/8806
  [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
  [i915#9010]: https://gitlab.freedesktop.org/drm/intel/issues/9010
  [i915#9067]: https://gitlab.freedesktop.org/drm/intel/issues/9067
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
  [i915#9295]: https://gitlab.freedesktop.org/drm/intel/issues/9295
  [i915#9311]: https://gitlab.freedesktop.org/drm/intel/issues/9311
  [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
  [i915#9340]: https://gitlab.freedesktop.org/drm/intel/issues/9340
  [i915#9407]: https://gitlab.freedesktop.org/drm/intel/issues/9407
  [i915#9412]: https://gitlab.freedesktop.org/drm/intel/issues/9412
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9561]: https://gitlab.freedesktop.org/drm/intel/issues/9561
  [i915#9606]: https://gitlab.freedesktop.org/drm/intel/issues/9606
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/intel/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
  [i915#9723]: https://gitlab.freedesktop.org/drm/intel/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9781]: https://gitlab.freedesktop.org/drm/intel/issues/9781
  [i915#9809]: https://gitlab.freedesktop.org/drm/intel/issues/9809
  [i915#9820]: https://gitlab.freedesktop.org/drm/intel/issues/9820
  [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
  [i915#9906]: https://gitlab.freedesktop.org/drm/intel/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/intel/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/intel/issues/9934


Build changes
-------------

  * Linux: CI_DRM_14550 -> Patchwork_132221v1

  CI-20190529: 20190529
  CI_DRM_14550: fe6ce8f18276301c08509cd24fa5563da23e1175 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7802: 7802
  Patchwork_132221v1: fe6ce8f18276301c08509cd24fa5563da23e1175 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/index.html

--===============6299293245948567434==
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
<tr><td><b>Series:</b></td><td>series starting with [CI-only,1/3] drm: Add =
drm_vblank_work_flush_all().</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/132221/">https://patchwork.freedesktop.org/series/132221/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_132221v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_132221v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14550_full -&gt; Patchwork_132221v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_132221v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_132221v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
132221v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_schedule@preempt-engines@vecs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-18/igt@gem_exec_schedule@preempt=
-engines@vecs0.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-rkl-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdm=
i-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_132221v1/shard-rkl-5/igt@kms_universal_plane@cursor-fb-leak@p=
ipe-b-hdmi-a-1.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-dg2-1/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdm=
i-a-3.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_132221v1/shard-dg2-1/igt@kms_universal_plane@cursor-fb-leak@p=
ipe-c-hdmi-a-3.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_132221v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14550/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk1/boot.html">FAIL</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk2/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
14550/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_14550/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/sha=
rd-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_14550/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk4/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk5/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_14550/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14550/shard-glk5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_14550/shard-glk6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-gl=
k7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/shard-glk8/boot.h=
tml">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_132221v1/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk4/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/s=
hard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_132221v1/shard-glk5/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk5/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
32221v1/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_132221v1/shard-glk6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_132221v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/sh=
ard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_132221v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk8/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
2221v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_132221v1/shard-glk8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_132221v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-glk1/boot.html">PASS</a>=
)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-17/igt@api_intel_bb@object-reloc=
-keep-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@device_reset@unbind-cold-=
reset-rebind.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/7701">i915#7701</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@vcs1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@drm_fdinfo@busy-idle-chec=
k-all@vcs1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8414">i915#8414</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_132221v1/shard-rkl-6/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7742"=
>i915#7742</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@gem_ccs@ctrl-surf-copy.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/35=
55">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@gem_ccs@ctrl-surf-copy-ne=
w-ctx.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@gem_create@create-ext-cpu=
-access-big.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-many:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-17/igt@gem_ctx_persistence@heart=
beat-many.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@gem_ctx_sseu@invalid-args=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@gem_eio@unwedge-stress.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/57=
84">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@gem_exec_balancer@bonded-f=
alse-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-true-hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@gem_exec_balancer@bonded-=
true-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-zero:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-glk5/igt@gem_exec_capture@many-4k-ze=
ro.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9606">i915#9606</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@gem_exec_fair@basic-none.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4852">i915#4852</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@gem_exec_fair@basic-throt=
tle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3539">i915#3539</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-glk6/igt@gem_exec_fair@basic-throttl=
e@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2842">i915#2842</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@gem_exec_fence@submit.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/481=
2">i915#4812</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-wb:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@gem_exec_flush@basic-batch=
-kernel-default-wb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4852">i915#4852</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-w=
c-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@gem_exec_reloc@basic-wc-c=
pu-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@gem_exec_reloc@basic-writ=
e-gtt-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3281">i915#3281</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@gem_exec_reloc@basic-write=
-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-threaded-none:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@gem_fence_thrash@bo-write-=
verify-threaded-none.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@gem_fence_thrash@bo-write=
-verify-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4860">i915#4860</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-glk7/igt@gem_huc_copy@huc-copy.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190"=
>i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-dg2-10/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221=
v1/shard-dg2-10/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>) =
+1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@gem_lmem_swapping@heavy-v=
erify-multi@lmem0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/10378">i915#10378</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-13/igt@gem_lmem_swapping@paralle=
l-random-verify-ccs@lmem0.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4565">i915#4565</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-glk5/igt@gem_lmem_swapping@smem-oom.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132=
221v1/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@gem_lmem_swapping@verify.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@gem_lmem_swapping@verify-c=
cs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@gem_lmem_swapping@verify-c=
cs@lmem0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/10378">i915#10378</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@gem_media_vme.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/284">i915#2=
84</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic-small-bo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@gem_mmap@basic-small-bo.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-read-write-distinct:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@gem_mmap_gtt@basic-read-w=
rite-distinct.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@gem_mmap_wc@close.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083">i9=
15#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-read-distinct:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@gem_mmap_wc@write-read-di=
stinct.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4083">i915#4083</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-snoop:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@gem_partial_pwrite_pread@=
reads-snoop.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3282">i915#3282</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@gem_partial_pwrite_pread@=
writes-after-reads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-10/igt@gem_partial_pwrite_pread@=
writes-after-reads-display.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-valid-protected-context:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@gem_pxp@create-valid-prote=
cted-context.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4270">i915#4270</a>) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@gem_pxp@create-valid-prote=
cted-context.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-13/igt@gem_pxp@reject-modify-con=
text-protection-on.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4270">i915#4270</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@gem_render_copy@y-tiled-to=
-vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@gem_render_copy@yf-tiled.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8428">i915#8428</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@gem_tiled_blits@basic.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4077=
">i915#4077</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@gem_tiled_partial_pwrite_=
pread@writes-after-reads.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4077">i915#4077</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-13/igt@gem_unfence_active_buffer=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4879">i915#4879</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@gem_userptr_blits@create-d=
estroy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-17/igt@gem_userptr_blits@forbidd=
en-operations.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3282">i915#3282</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-13/igt@gem_userptr_blits@unsync-=
unmap-after-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3297">i915#3297</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@gem_userptr_blits@unsync-u=
nmap-cycles.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3297">i915#3297</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@gen9_exec_parse@allowed-a=
ll.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@gen9_exec_parse@bb-large.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@gen9_exec_parse@bb-start-f=
ar.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@gen9_exec_parse@shadow-pee=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2856">i915#2856</a>) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@gen9_exec_parse@shadow-pe=
ek.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2527">i915#2527</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-17/igt@i915_module_load@load.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/622=
7">i915#6227</a>)</li>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-glk7/igt@i915_module_load@load.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6227"=
>i915#6227</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-tglu-9/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_132221v1/shard-tglu-2/igt@i915_module_load@reload-with-fault-injec=
tion.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9820">i915#9820</a>)</li>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-glk5/igt@i915_module_load@reload-wit=
h-fault-injection.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/1982">i915#1982</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/9849">i915#9849</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend@gt0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132=
221v1/shard-dg2-7/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9407">i915#94=
07</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@i915_pm_freq_mult@media-f=
req@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/6590">i915#6590</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle@gt0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-17/igt@i915_pm_rps@thresholds-id=
le@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8925">i915#8925</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@i915_query@test-query-geom=
etry-subslices.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/5723">i915#5723</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@i915_selftest@mock@memory=
_region.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9311">i915#9311</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-dg1-17/igt@i915_suspend@basic-s2idle-without-i915.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_132221v1/shard-dg1-17/igt@i915_suspend@basic-s2idle-without-i915.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
391">i915#4391</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_addfb_basic@tile-pitc=
h-mismatch.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4212">i915#4212</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-m=
c-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-1/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +11 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-glk6/igt@kms_atomic_transition@plane=
-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_big_fb@4-tiled-8bpp-r=
otate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5286">i915#5286</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-13/igt@kms_big_fb@4-tiled-addfb-=
size-offset-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_big_fb@linear-64bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3638">i915#3638</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_big_fb@x-tiled-32bpp-r=
otate-270.html">SKIP</a> +10 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@kms_big_fb@x-tiled-32bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_big_fb@x-tiled-64bpp-=
rotate-90.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-tglu-4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-180-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_132221v1/shard-tglu-5/igt@kms_big_fb@x-tiled-max-h=
w-stride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +1 other test fai=
l</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@kms_big_fb@y-tiled-max-hw-=
stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +5 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_big_fb@yf-tiled-addfb=
-size-offset-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/6187">i915#6187</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_big_fb@yf-tiled-max-h=
w-stride-32bpp-rotate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4538">i915#4538</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:=
</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_big_fb@yf-tiled-max-h=
w-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> +23 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_ccs@bad-rotation-90-4=
-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +99 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_ccs@bad-rotation-90-y=
f-tiled-ccs@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/6095">i915#6095</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_ccs@crc-primary-basic=
-y-tiled-gen12-mc-ccs@pipe-d-edp-1.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +7 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-5/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/10307">i915#10307</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +126 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-=
1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/10307">i915#10307</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/10434">i915#10434</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-=
tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +79 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@kms_cdclk@mode-transition=
-all-outputs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_cdclk@mode-transition=
@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7213">i915#7213</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/9010">i915#9010</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_cdclk@plane-scaling@pi=
pe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@kms_chamelium_edid@hdmi-ed=
id-change-during-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/7828">i915#7828</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-fast:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_chamelium_hpd@dp-hpd-=
fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-fast:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_chamelium_hpd@hdmi-hp=
d-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-13/igt@kms_chamelium_hpd@hdmi-hp=
d-storm-disable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/7828">i915#7828</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-after-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@kms_chamelium_hpd@vga-hpd-=
after-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_content_protection@ato=
mic-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/9424">i915#9424</a>) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@kms_content_protection@ato=
mic-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_content_protection@le=
gacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_content_protection@sr=
m.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/7116">i915#7116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_content_protection@ue=
vent.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/7116">i915#7116</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@kms_cursor_crc@cursor-rand=
om-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3359">i915#3359</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_cursor_crc@cursor-ran=
dom-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_cursor_crc@cursor-rap=
id-movement-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_cursor_crc@cursor-rapi=
d-movement-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3555">i915#3555</a>) +3 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@kms_cursor_crc@cursor-rapi=
d-movement-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-rap=
id-movement-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_cursor_legacy@cursorb=
-vs-flipa-toggle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9809">i915#9809</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_132221v1/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atom=
ic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_cursor_legacy@modeset=
-atomic-cursor-hotspot.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-toggle.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-3/igt@kms_dirtyfb@fbc-dirtyfb-io=
ctl@a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@kms_dirtyfb@fbc-dirtyfb-io=
ctl@a-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/9227">i915#9227</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_dirtyfb@fbc-dirtyfb-i=
octl@a-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@kms_dp_aux_dev.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1257">i915#=
1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@kms_dsc@dsc-basic.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i9=
15#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/38=
40">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_dsc@dsc-fractional-bpp=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3840">i915#3840</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/9688">i915#9688</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@kms_dsc@dsc-fractional-bpp=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_dsc@dsc-with-output-f=
ormats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-13/igt@kms_fbcon_fbt@psr-suspend=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3469">i915#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-17/igt@kms_feature_discovery@dis=
play-4x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@kms_flip@2x-flip-vs-panni=
ng-vs-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9934">i915#9934</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_flip@2x-flip-vs-wf_vb=
lank-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3637">i915#3637</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@kms_flip@2x-plain-flip.htm=
l">SKIP</a> +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-10/igt@kms_flip@flip-vs-panning-=
interruptible@c-hdmi-a1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i91=
5#2672</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a=
>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#267=
2</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-default-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#267=
2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) =
+2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-=
indfb-draw-render.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_132221v1/shard-dg2-3/igt@kms_frontbuffer_tracking=
@fbc-1p-offscren-pri-indfb-draw-render.html">FAIL</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@=
fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +2 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/1825">i915#1825</a>) +17 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-i=
ndfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_132221v1/shard-snb5/igt@kms_frontbuffer_tracking=
@fbc-2p-scndscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-13/igt@kms_frontbuffer_tracking@=
fbc-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-offscren-pri-shrfb-draw-render.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +24 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +22 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +10 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +10 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@kms_frontbuffer_tracking@p=
sr-1p-offscren-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +10 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-spr-indfb-draw-render.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +4 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +16 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@kms_hdr@invalid-metadata-s=
izes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8228">i915#8228</a>) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_hdr@invalid-metadata-=
sizes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format@pipe-a:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-mtlp-7/igt@kms_plane@pixel-format@pipe-a.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221=
v1/shard-mtlp-3/igt@kms_plane@pixel-format@pipe-a.html">ABORT</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/10698">i915#10698</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_plane_multiple@tiling-=
y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8806">i915#8806</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-13/igt@kms_plane_multiple@tiling=
-yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-=
edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-25-with-modifiers@pipe-b-edp-1.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +3 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-1.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) =
+11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-c-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-25-with-pixel-format@pipe-c-hdmi-a-1.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) =
+3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hd=
mi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-5-with-rotation@pipe-a-hdmi-a-4.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +1=
1 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423<=
/a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-13/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-3.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</=
a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-1.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</=
a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-=
hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-3/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-=
dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-11/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-25@pipe-c-dp-4.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) =
+7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@kms_pm_backlight@fade-wit=
h-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_pm_dc@dc3co-vpb-simul=
ation.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-17/igt@kms_pm_dc@dc6-dpms.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3361">=
i915#3361</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@kms_pm_dc@dc9-dpms.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3361">i=
915#3361</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-1/igt@kms_pm_lpsp@kms-lpsp.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9340"=
>i915#9340</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-13/igt@kms_pm_lpsp@screens-disab=
led.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shar=
d-dg2-11/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>) +1 other test ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@kms_pm_rpm@modeset-lpsp-s=
tress.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_132221v1/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9=
519">i915#9519</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@kms_prime@basic-modeset-hy=
brid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-13/igt@kms_psr2_sf@cursor-plane-=
move-continuous-sf.html">SKIP</a> +53 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_psr2_su@page_flip-nv1=
2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-primary-render:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@kms_psr@fbc-pr-primary-re=
nder.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/9688">i915#9688</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-cursor-mmap-gtt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-glk5/igt@kms_psr@fbc-psr2-cursor-mma=
p-gtt.html">SKIP</a> +302 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_psr@fbc-psr2-sprite-m=
map-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-sprite-plane-onoff:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@kms_psr@pr-sprite-plane-o=
noff.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9732">i915#9732</a>) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@kms_psr@psr-cursor-render.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9732">i915#9732</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-move:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@kms_psr@psr-sprite-plane-m=
ove.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/9732">i915#9732</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@kms_psr_stress_test@invali=
date-primary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_rotation_crc@primary-y=
-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4235">i915#4235</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_sysfs_edid_timing.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/iss=
ues/2">IGT#2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_tiled_display@basic-te=
st-pattern.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8623">i915#8623</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@kms_tiled_display@basic-te=
st-pattern.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hd=
mi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_132221v1/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak=
@pipe-d-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9196">i915#9196</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@kms_vrr@max-min.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9906">i91=
5#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-glk5/igt@kms_writeback@writeback-che=
ck-output.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-13/igt@kms_writeback@writeback-c=
heck-output-xrgb2101010.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2437">i915#2437</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@kms_writeback@writeback-f=
b-id.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@kms_writeback@writeback-fb=
-id-xrgb2101010.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2437">i915#2437</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/9412">i915#9412</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@kms_writeback@writeback-fb=
-id-xrgb2101010.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2437">i915#2437</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@perf@mi-rpc.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2434">i915#243=
4</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@perf@unprivileged-single-c=
tx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2433">i915#2433</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@ccs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@perf_pmu@busy-double-star=
t@ccs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4349">i915#4349</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@perf_pmu@frequency@gt0.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/68=
06">i915#6806</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@prime_vgem@basic-fence-fl=
ip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3708">i915#3708</a>) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@prime_vgem@basic-fence-fli=
p.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-8/igt@prime_vgem@basic-read.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3291=
">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3708">i915#3708</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-2/igt@prime_vgem@basic-read.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3291=
">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@prime_vgem@coherency-gtt.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3708">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@prime_vgem@fence-flip-han=
g.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@prime_vgem@fence-write-han=
g.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@sriov_basic@enable-vfs-bi=
nd-unbind-each.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-wait-zero-handles:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-glk5/igt@syncobj_timeline@invalid-wa=
it-zero-handles.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/9781">i915#9781</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_get_param@base-params:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@v3d/v3d_get_param@base-pa=
rams.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_job_submission@array-job-submission:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@v3d/v3d_job_submission@arr=
ay-job-submission.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2575">i915#2575</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-perfmon:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-snb7/igt@v3d/v3d_submit_cl@bad-perfm=
on.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@single-in-sync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-15/igt@v3d/v3d_submit_cl@single-=
in-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2575">i915#2575</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_dmabuf_poll@poll-write-waits-until-write-done:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg1-16/igt@vc4/vc4_dmabuf_poll@poll-=
write-waits-until-write-done.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/7711">i915#7711</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-purgeable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@vc4/vc4_purgeable_bo@mark-=
purgeable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/7711">i915#7711</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@set-bad-flags:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-tglu-8/igt@vc4/vc4_tiling@set-bad-fl=
ags.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2575">i915#2575</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@set-bad-modifier:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-dg2-7/igt@vc4/vc4_tiling@set-bad-mod=
ifier.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/7711">i915#7711</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@bad-pad:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_132221v1/shard-mtlp-6/igt@vc4/vc4_wait_bo@bad-pad.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7=
711">i915#7711</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-dg2-8/igt@gem_busy@close-race.html">INCOMPLETE</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/sh=
ard-dg2-10/igt@gem_busy@close-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_freq@sysfs@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-dg2-4/igt@gem_ctx_freq@sysfs@gt0.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/9561">i915#9561</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1=
/shard-dg2-11/igt@gem_ctx_freq@sysfs@gt0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-rkl-3/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_132221v1/shard-rkl-6/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i9=
15#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_132221v1/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-engines@bcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-dg1-15/igt@gem_exec_schedule@preempt-engines@bcs0.html"=
>INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_132221v1/shard-dg1-18/igt@gem_exec_schedule@preempt-engines@bcs0.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-dg1-17/igt@gem_lmem_swapping@heavy-random@lmem0.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10378">=
i915#10378</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_132221v1/shard-dg1-17/igt@gem_lmem_swapping@heavy-random@lmem0.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-dg2-2/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem=
0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/10378">i915#10378</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_132221v1/shard-dg2-3/igt@gem_lmem_swapping@heavy-verify-m=
ulti-ccs@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4936">=
i915#4936</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
5493">i915#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_132221v1/shard-dg2-3/igt@gem_lmem_swapping@smem-oom@lmem0.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-glk8/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221=
v1/shard-glk2/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-snb7/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_132221v1/shard-snb2/igt@kms_flip@2x-blocking-wf_vblank@ab-vg=
a1-hdmi-a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-=
hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_132221v1/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblan=
k@ac-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-i=
ndfb-move.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_132221v1/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-p=
rimscrn-cur-indfb-move.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-tglu-7/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9295">i915#9295</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/=
shard-tglu-5/igt@kms_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132=
221v1/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> +1 other t=
est pass</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-rkl-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdm=
i-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_132221v1/shard-rkl-5/igt@kms_universal_plane@cursor-fb-=
leak@pipe-a-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hd=
mi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_132221v1/shard-tglu-6/igt@kms_universal_plane@cursor-f=
b-leak@pipe-b-hdmi-a-1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@perf@blocking@0-rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-rkl-5/igt@perf@blocking@0-rcs0.html">FAIL</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-r=
kl-1/igt@perf@blocking@0-rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-rkl-6/igt@perf_pmu@most-busy-idle-check-all@rcs0.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">=
i915#4349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_132221v1/shard-rkl-5/igt@perf_pmu@most-busy-idle-check-all@rcs0.htm=
l">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-tglu-3/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2876">i915#287=
6</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
132221v1/shard-tglu-7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_132221v1/shard-mtlp-1/igt@i915_module_load@reload-with-fault-inje=
ction.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/10131">i915#10131</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/9820">i915#9820</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591=
">i915#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_132221v1/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0=
.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2681">i915#2681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html=
">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681=
">i915#2681</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_132221v1/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3591">i915#3591</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-dg2-11/igt@kms_content_protection@type1.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7162">i91=
5#7162</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/942=
4">i915#9424</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_132221v1/shard-dg2-5/igt@kms_content_protection@type1.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7118">i915=
#7118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9424=
">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-=
shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/10433">i915#10433</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3458">i915#3458</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-dg2-11/igt@kms_frontbuf=
fer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +1 oth=
er test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-tglu-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri=
-indfb-draw-mmap-gtt.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/2295">i915#2295</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_132221v1/shard-tglu-3/igt@kms_fron=
tbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-plane-move:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-dg2-4/igt@kms_psr@fbc-psr-cursor-plane-move.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#=
1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9732"=
>i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_132221v1/shard-dg2-11/igt@kms_psr@fbc-psr-cursor-plane-move.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">=
i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
9673">i915#9673</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9732">i915#9732</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14550/shard-dg2-11/igt@kms_psr@fbc-psr-primary-mmap-gtt.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#=
1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9673"=
>i915#9673</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_132221v1/shard-dg2-5/igt@kms_psr@fbc-psr-primary-mmap-gtt.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10=
72">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9732">i915#9732</a>) +14 other tests skip</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14550 -&gt; Patchwork_132221v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14550: fe6ce8f18276301c08509cd24fa5563da23e1175 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7802: 7802<br />
  Patchwork_132221v1: fe6ce8f18276301c08509cd24fa5563da23e1175 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============6299293245948567434==--
