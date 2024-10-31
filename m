Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F7A9B77D9
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 10:47:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 000A110E84F;
	Thu, 31 Oct 2024 09:47:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8691C10E84F;
 Thu, 31 Oct 2024 09:47:39 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2154988479827382093=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/color=3A_Stop_usin?=
 =?utf-8?q?g_non-posted_DSB_writes_for_legacy_LUT?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Oct 2024 09:47:39 -0000
Message-ID: <173036805953.1378613.1355420152301315872@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241030210750.6550-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241030210750.6550-1-ville.syrjala@linux.intel.com>
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

--===============2154988479827382093==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/color: Stop using non-posted DSB writes for legacy LUT
URL   : https://patchwork.freedesktop.org/series/140739/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15615_full -> Patchwork_140739v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_140739v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_140739v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_140739v1_full:

### CI changes ###

#### Possible regressions ####

  * boot:
    - shard-dg2:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22]) -> ([PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [FAIL][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-5/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-4/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-11/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-1/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-1/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-5/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-10/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-10/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-11/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-10/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-10/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-10/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-11/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-11/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-3/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-3/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-6/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-6/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@kms_hdr@brightness-with-hdr:
    - shard-dg2:          NOTRUN -> [SKIP][46]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_hdr@brightness-with-hdr.html

  
#### Warnings ####

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-tglu:         [SKIP][47] -> [ABORT][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-tglu-6/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-5/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  
Known issues
------------

  Here are the changes found in Patchwork_140739v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-rkl:          NOTRUN -> [SKIP][49] ([i915#8411]) +1 other test skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#8411])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-rkl:          NOTRUN -> [SKIP][51] ([i915#11078])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@busy-check-all@vecs1:
    - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#8414]) +7 other tests skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@drm_fdinfo@busy-check-all@vecs1.html

  * igt@drm_fdinfo@busy-idle-check-all@vcs1:
    - shard-dg1:          NOTRUN -> [SKIP][53] ([i915#8414]) +5 other tests skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@drm_fdinfo@busy-idle-check-all@vcs1.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#3281]) +9 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_basic@multigpu-create-close:
    - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#7697])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@gem_basic@multigpu-create-close.html
    - shard-tglu:         NOTRUN -> [SKIP][56] ([i915#7697])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-tglu-1:       NOTRUN -> [SKIP][57] ([i915#3555] / [i915#9323])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-1/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#9323])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#7697])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-set-pat:
    - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#8562])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-7/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#8555]) +1 other test skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#280])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-mtlp:         NOTRUN -> [SKIP][63] ([i915#4771])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@parallel:
    - shard-rkl:          NOTRUN -> [SKIP][64] ([i915#4525]) +2 other tests skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_fair@basic-none:
    - shard-tglu:         NOTRUN -> [FAIL][65] ([i915#2842]) +5 other tests fail
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@gem_exec_fair@basic-none.html

  * igt@gem_exec_fair@basic-none-vip:
    - shard-mtlp:         NOTRUN -> [SKIP][66] ([i915#4473] / [i915#4771]) +1 other test skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@gem_exec_fair@basic-none-vip.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          [PASS][67] -> [FAIL][68] ([i915#2842])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-rkl-4/igt@gem_exec_fair@basic-none@bcs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-4/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_fair@basic-pace-share:
    - shard-dg1:          NOTRUN -> [SKIP][69] ([i915#3539] / [i915#4852])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@gem_exec_fair@basic-pace-share.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglu:         [PASS][70] -> [FAIL][71] ([i915#2842]) +1 other test fail
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-rkl:          NOTRUN -> [FAIL][72] ([i915#2842]) +2 other tests fail
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fence@submit3:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#4812])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@gem_exec_fence@submit3.html

  * igt@gem_exec_reloc@basic-cpu-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#3281]) +3 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@gem_exec_reloc@basic-cpu-gtt.html

  * igt@gem_exec_reloc@basic-write-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#3281]) +1 other test skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-14/igt@gem_exec_reloc@basic-write-gtt.html
    - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#3281]) +1 other test skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-4/igt@gem_exec_reloc@basic-write-gtt.html

  * igt@gem_exec_schedule@pi-common@vcs0:
    - shard-rkl:          NOTRUN -> [FAIL][77] ([i915#12296]) +4 other tests fail
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@gem_exec_schedule@pi-common@vcs0.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#4537] / [i915#4812])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_exec_suspend@basic-s3-devices:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][79] ([i915#4423]) +1 other test dmesg-warn
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@gem_exec_suspend@basic-s3-devices.html

  * igt@gem_fence_thrash@bo-write-verify-none:
    - shard-mtlp:         NOTRUN -> [SKIP][80] ([i915#4860])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-7/igt@gem_fence_thrash@bo-write-verify-none.html

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#4860]) +1 other test skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@gem_fenced_exec_thrash@2-spare-fences.html

  * igt@gem_fenced_exec_thrash@too-many-fences:
    - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#4860])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@gem_fenced_exec_thrash@too-many-fences.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-glk:          NOTRUN -> [SKIP][83] ([i915#4613]) +3 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-glk6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#4613]) +6 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@gem_lmem_swapping@parallel-multi.html
    - shard-tglu:         NOTRUN -> [SKIP][85] ([i915#4613])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@gem_lmem_swapping@parallel-multi.html
    - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#4613]) +1 other test skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-7/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][87] ([i915#12193])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][88] ([i915#4565])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0.html

  * igt@gem_madvise@dontneed-before-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#3282]) +6 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@gem_madvise@dontneed-before-pwrite.html

  * igt@gem_mmap@short-mmap:
    - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#4083])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-18/igt@gem_mmap@short-mmap.html

  * igt@gem_mmap_gtt@basic-small-copy-odd:
    - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#4077]) +1 other test skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@gem_mmap_gtt@basic-small-copy-odd.html

  * igt@gem_mmap_gtt@basic-write-cpu-read-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][92] ([i915#4077]) +1 other test skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-1/igt@gem_mmap_gtt@basic-write-cpu-read-gtt.html

  * igt@gem_mmap_wc@coherency:
    - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#4083]) +1 other test skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@gem_mmap_wc@coherency.html

  * igt@gem_pread@exhaustion:
    - shard-glk:          NOTRUN -> [WARN][94] ([i915#2658])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-glk1/igt@gem_pread@exhaustion.html

  * igt@gem_pread@self:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#3282]) +1 other test skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@gem_pread@self.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-tglu:         NOTRUN -> [SKIP][96] ([i915#4270]) +1 other test skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_pxp@fail-invalid-protected-context:
    - shard-mtlp:         NOTRUN -> [SKIP][97] ([i915#4270]) +1 other test skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#4270])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#4270]) +4 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-7/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_readwrite@write-bad-handle:
    - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#3282]) +1 other test skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@gem_readwrite@write-bad-handle.html
    - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#3282])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-1/igt@gem_readwrite@write-bad-handle.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#5190] / [i915#8428]) +1 other test skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#8428])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#4079])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-tglu:         NOTRUN -> [SKIP][105] ([i915#3297]) +2 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#3297]) +4 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#3282] / [i915#3297])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-mtlp:         NOTRUN -> [SKIP][108] ([i915#3297])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-7/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gen7_exec_parse@load-register-reg:
    - shard-mtlp:         NOTRUN -> [SKIP][109] +7 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@gen7_exec_parse@load-register-reg.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-tglu:         NOTRUN -> [SKIP][110] ([i915#2527] / [i915#2856]) +1 other test skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-dg1:          NOTRUN -> [SKIP][111] ([i915#2527])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@gen9_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@bb-secure:
    - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#2856]) +1 other test skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@gen9_exec_parse@bb-secure.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#2527]) +5 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-7/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_fb_tiling:
    - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#4881])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@i915_fb_tiling.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          NOTRUN -> [ABORT][115] ([i915#9820])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-reset:
    - shard-tglu-1:       NOTRUN -> [SKIP][116] ([i915#8399])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-1/igt@i915_pm_freq_api@freq-reset.html

  * igt@i915_pm_rps@basic-api:
    - shard-mtlp:         NOTRUN -> [SKIP][117] ([i915#11681] / [i915#6621])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-7/igt@i915_pm_rps@basic-api.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#6188])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#5723])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-tglu-1:       NOTRUN -> [INCOMPLETE][120] ([i915#7443])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@intel_hwmon@hwmon-read:
    - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#7707])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@intel_hwmon@hwmon-read.html

  * igt@intel_hwmon@hwmon-write:
    - shard-tglu:         NOTRUN -> [SKIP][122] ([i915#7707])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#4212])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-1/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#4212] / [i915#5190])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#8709]) +3 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#8709]) +7 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-14/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#8709]) +11 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-3/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#9531])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-7/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#1769] / [i915#3555])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#5286]) +5 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][131] +6 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][132] ([i915#5286]) +1 other test skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-tglu-1:       NOTRUN -> [SKIP][133] +3 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-1/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][134] ([i915#3638]) +1 other test skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#3638])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#5190] / [i915#9197]) +1 other test skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#4538] / [i915#5190]) +3 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][138] +30 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_busy@extended-pageflip-hang-oldfb:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#9197]) +11 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_busy@extended-pageflip-hang-oldfb.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#4423] / [i915#6095]) +1 other test skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#10307] / [i915#6095]) +163 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-10/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-dp-3.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#12313]) +4 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-4/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#12313])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][144] ([i915#6095]) +9 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-1/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-d-edp-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#12313]) +2 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
    - shard-mtlp:         NOTRUN -> [SKIP][146] ([i915#12313])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#10307] / [i915#10434] / [i915#6095]) +2 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#6095]) +62 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][149] ([i915#6095]) +24 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][150] ([i915#6095]) +55 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-15/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][151] ([i915#12313])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#3742])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-7/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#4087]) +4 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_audio@dp-audio:
    - shard-tglu:         NOTRUN -> [SKIP][154] ([i915#7828]) +4 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_chamelium_audio@dp-audio.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#7828]) +2 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_frames@hdmi-crc-multiple:
    - shard-dg1:          NOTRUN -> [SKIP][156] ([i915#7828]) +1 other test skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_chamelium_frames@hdmi-crc-multiple.html

  * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][157] ([i915#7828]) +3 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#7828]) +13 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_color@ctm-green-to-red:
    - shard-dg2:          [PASS][159] -> [SKIP][160] ([i915#12655])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@kms_color@ctm-green-to-red.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_color@ctm-green-to-red.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#3116] / [i915#3299])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#3116]) +1 other test skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@lic-type-0:
    - shard-mtlp:         NOTRUN -> [SKIP][163] ([i915#6944] / [i915#9424]) +1 other test skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#7118])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#3555]) +3 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_cursor_crc@cursor-offscreen-32x10.html
    - shard-mtlp:         NOTRUN -> [SKIP][166] ([i915#3555] / [i915#8814])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#11453] / [i915#3359])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-7/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-tglu:         NOTRUN -> [SKIP][168] ([i915#3555]) +2 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-random-max-size:
    - shard-glk:          NOTRUN -> [SKIP][169] +143 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-glk9/igt@kms_cursor_crc@cursor-random-max-size.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#11453] / [i915#3359]) +2 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
    - shard-tglu-1:       NOTRUN -> [SKIP][171] ([i915#11453] / [i915#3359])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-1/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-64x21:
    - shard-mtlp:         NOTRUN -> [SKIP][172] ([i915#8814]) +1 other test skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-rapid-movement-64x21.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#4103]) +1 other test skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - shard-tglu:         NOTRUN -> [SKIP][174] ([i915#4103]) +2 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - shard-mtlp:         NOTRUN -> [SKIP][175] ([i915#4213])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [PASS][176] -> [FAIL][177] ([i915#2346])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-mtlp:         NOTRUN -> [SKIP][178] ([i915#9067])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#9723])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#3804])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-tglu:         NOTRUN -> [SKIP][181] ([i915#12402])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#3555] / [i915#3840]) +1 other test skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#3555] / [i915#3840])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_feature_discovery@display-3x:
    - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#1839])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#9337])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_feature_discovery@psr1:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#658])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_feature_discovery@psr1.html

  * igt@kms_feature_discovery@psr2:
    - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#658])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][188] -> [FAIL][189] ([i915#2122]) +1 other test fail
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-snb2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-snb6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][190] ([i915#9934])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_flip@2x-flip-vs-dpms.html
    - shard-mtlp:         NOTRUN -> [SKIP][191] ([i915#3637]) +2 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-1/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-flip-vs-fences:
    - shard-tglu:         NOTRUN -> [SKIP][192] ([i915#3637]) +3 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_flip@2x-flip-vs-fences.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#8381]) +1 other test skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][194] ([i915#4423] / [i915#9934])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][195] ([i915#3637]) +2 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:
    - shard-mtlp:         [PASS][196] -> [FAIL][197] ([i915#2122]) +1 other test fail
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-8/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1:
    - shard-mtlp:         [PASS][198] -> [FAIL][199] ([i915#11989])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-8/igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1:
    - shard-tglu:         [PASS][200] -> [FAIL][201] ([i915#2122]) +1 other test fail
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-tglu-7/igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-4/igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][202] ([i915#2672] / [i915#3555] / [i915#8813])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][203] ([i915#2672] / [i915#8813])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#2672] / [i915#3555] / [i915#5190])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#2672]) +4 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#2672] / [i915#3555]) +3 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-upscaling:
    - shard-dg2:          [PASS][207] -> [SKIP][208] ([i915#3555])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-upscaling.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#2672]) +3 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
    - shard-dg1:          NOTRUN -> [SKIP][210] ([i915#2672] / [i915#3555])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][211] ([i915#2587] / [i915#2672])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [PASS][212] -> [SKIP][213] ([i915#5354]) +5 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [PASS][214] -> [FAIL][215] ([i915#6880])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
    - shard-dg1:          [PASS][216] -> [DMESG-WARN][217] ([i915#4423]) +2 other tests dmesg-warn
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][218] ([i915#1825]) +16 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#5439])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#3023]) +26 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#8708]) +7 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][222] ([i915#8708])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
    - shard-tglu:         NOTRUN -> [SKIP][223] +38 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][224] ([i915#8708]) +3 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt:
    - shard-dg1:          NOTRUN -> [SKIP][225] ([i915#4423])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#5354]) +24 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#1825]) +37 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-dg1:          NOTRUN -> [SKIP][228] +4 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][229] ([i915#3458]) +5 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][230] ([i915#3458]) +1 other test skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html

  * igt@kms_getfb@getfb-reject-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#6118])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_getfb@getfb-reject-ccs.html

  * igt@kms_hdr@static-toggle:
    - shard-mtlp:         NOTRUN -> [SKIP][232] ([i915#3555] / [i915#8228])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_hdr@static-toggle.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][233] ([i915#3555] / [i915#8228])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][234] ([i915#10656])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#12394])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][236] ([i915#10656])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#12388])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#12339])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-7/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_lease@lease-invalid-connector:
    - shard-dg2:          [PASS][239] -> [SKIP][240] ([i915#9197]) +14 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@kms_lease@lease-invalid-connector.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_lease@lease-invalid-connector.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-tglu:         NOTRUN -> [SKIP][241] ([i915#1839])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane@plane-position-hole-dpms:
    - shard-dg2:          [PASS][242] -> [SKIP][243] ([i915#8825])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@kms_plane@plane-position-hole-dpms.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_plane@plane-position-hole-dpms.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-mtlp:         NOTRUN -> [SKIP][244] ([i915#3555] / [i915#8806])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-mtlp:         NOTRUN -> [SKIP][245] ([i915#6953])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-1/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-c:
    - shard-dg2:          [PASS][246] -> [SKIP][247] ([i915#12247]) +8 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-c.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-c.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-d:
    - shard-dg2:          [PASS][248] -> [SKIP][249] ([i915#8152]) +1 other test skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-d.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-d.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format:
    - shard-dg2:          [PASS][250] -> [SKIP][251] ([i915#8152] / [i915#9423]) +1 other test skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-dg1:          NOTRUN -> [SKIP][252] ([i915#3555] / [i915#4423])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a:
    - shard-dg1:          NOTRUN -> [SKIP][253] ([i915#12247] / [i915#4423])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
    - shard-dg1:          NOTRUN -> [SKIP][254] ([i915#12247]) +2 other tests skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][255] ([i915#12247]) +8 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75:
    - shard-mtlp:         NOTRUN -> [SKIP][256] ([i915#12247] / [i915#3555] / [i915#6953])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_plane_scaling@planes-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
    - shard-dg2:          [PASS][257] -> [SKIP][258] ([i915#6953] / [i915#8152] / [i915#9423])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-d:
    - shard-dg2:          [PASS][259] -> [SKIP][260] ([i915#12247] / [i915#8152])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-d.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a:
    - shard-mtlp:         NOTRUN -> [SKIP][261] ([i915#12247]) +3 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][262] ([i915#12343])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_pm_backlight@brightness-with-dpms.html
    - shard-tglu:         NOTRUN -> [SKIP][263] ([i915#12343])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][264] ([i915#5354])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_pm_backlight@fade-with-dpms.html
    - shard-tglu:         NOTRUN -> [SKIP][265] ([i915#9812]) +1 other test skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_dc@dc5-psr:
    - shard-rkl:          NOTRUN -> [SKIP][266] ([i915#9685]) +1 other test skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_pm_dc@dc5-psr.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][267] ([i915#5978])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_pm_dc@dc6-dpms.html
    - shard-tglu:         [PASS][268] -> [FAIL][269] ([i915#9295])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-tglu-2/igt@kms_pm_dc@dc6-dpms.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu:         [PASS][270] -> [SKIP][271] ([i915#4281])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-3/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@fences-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][272] ([i915#4077]) +8 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_pm_rpm@fences-dpms.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-rkl:          NOTRUN -> [SKIP][273] ([i915#9519])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-dg2:          [PASS][274] -> [SKIP][275] ([i915#9519])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
    - shard-tglu:         NOTRUN -> [SKIP][276] ([i915#9519])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-dg2:          NOTRUN -> [SKIP][277] ([i915#6524] / [i915#6805]) +1 other test skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-rkl:          NOTRUN -> [SKIP][278] ([i915#6524])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_prime@basic-modeset-hybrid.html
    - shard-tglu:         NOTRUN -> [SKIP][279] ([i915#6524])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:
    - shard-mtlp:         NOTRUN -> [SKIP][280] ([i915#12316])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][281] ([i915#11520]) +2 other tests skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-glk6/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][282] ([i915#11520]) +10 other tests skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
    - shard-tglu:         NOTRUN -> [SKIP][283] ([i915#11520]) +3 other tests skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-sf:
    - shard-dg1:          NOTRUN -> [SKIP][284] ([i915#11520])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][285] ([i915#11520]) +1 other test skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-rkl:          NOTRUN -> [SKIP][286] ([i915#9683])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-psr-primary-blt:
    - shard-dg2:          NOTRUN -> [SKIP][287] ([i915#1072] / [i915#9732]) +12 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_psr@fbc-psr-primary-blt.html

  * igt@kms_psr@fbc-psr2-sprite-plane-onoff:
    - shard-mtlp:         NOTRUN -> [SKIP][288] ([i915#9688]) +9 other tests skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_psr@fbc-psr2-sprite-plane-onoff.html

  * igt@kms_psr@pr-sprite-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][289] ([i915#9732]) +9 other tests skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_psr@pr-sprite-mmap-cpu.html

  * igt@kms_psr@pr-sprite-plane-onoff:
    - shard-dg1:          NOTRUN -> [SKIP][290] ([i915#1072] / [i915#4423] / [i915#9732])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_psr@pr-sprite-plane-onoff.html

  * igt@kms_psr@psr-sprite-plane-move:
    - shard-rkl:          NOTRUN -> [SKIP][291] ([i915#1072] / [i915#9732]) +24 other tests skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@kms_psr@psr-sprite-plane-move.html

  * igt@kms_psr@psr2-primary-blt:
    - shard-dg1:          NOTRUN -> [SKIP][292] ([i915#1072] / [i915#9732])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_psr@psr2-primary-blt.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglu:         NOTRUN -> [SKIP][293] ([i915#9685]) +1 other test skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-dg2:          NOTRUN -> [SKIP][294] ([i915#11131] / [i915#4235])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][295] ([i915#11131] / [i915#4235] / [i915#5190]) +1 other test skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
    - shard-tglu-1:       NOTRUN -> [SKIP][296] ([i915#5289])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-rkl:          NOTRUN -> [SKIP][297] ([i915#5289]) +2 other tests skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_scaling_modes@scaling-mode-none:
    - shard-mtlp:         NOTRUN -> [SKIP][298] ([i915#3555] / [i915#5030] / [i915#9041])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_scaling_modes@scaling-mode-none.html

  * igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][299] ([i915#5030]) +2 other tests skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1.html

  * igt@kms_scaling_modes@scaling-mode-none@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][300] ([i915#5030] / [i915#9041])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_scaling_modes@scaling-mode-none@pipe-d-edp-1.html

  * igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:
    - shard-dg2:          NOTRUN -> [ABORT][301] ([i915#12231]) +1 other test abort
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free.html

  * igt@kms_setmode@basic:
    - shard-tglu:         [PASS][302] -> [FAIL][303] ([i915#5465]) +2 other tests fail
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-tglu-2/igt@kms_setmode@basic.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-3/igt@kms_setmode@basic.html

  * igt@kms_vblank@query-forked-hang:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][304] ([i915#12276] / [i915#4423]) +1 other test incomplete
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_vblank@query-forked-hang.html

  * igt@kms_vrr@flip-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][305] ([i915#3555]) +2 other tests skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_vrr@flip-dpms.html
    - shard-tglu-1:       NOTRUN -> [SKIP][306] ([i915#3555])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-1/igt@kms_vrr@flip-dpms.html

  * igt@kms_vrr@flipline:
    - shard-mtlp:         NOTRUN -> [SKIP][307] ([i915#3555] / [i915#8808])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_vrr@flipline.html

  * igt@kms_vrr@negative-basic:
    - shard-dg2:          NOTRUN -> [SKIP][308] ([i915#3555] / [i915#9906])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_vrr@negative-basic.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-dg2:          NOTRUN -> [SKIP][309] ([i915#2437] / [i915#9412])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@perf@mi-rpc:
    - shard-dg2:          NOTRUN -> [SKIP][310] ([i915#2434])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@perf@mi-rpc.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-mtlp:         NOTRUN -> [SKIP][311] ([i915#8850])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@perf_pmu@cpu-hotplug.html

  * igt@prime_vgem@basic-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][312] ([i915#3708] / [i915#4077])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-write:
    - shard-rkl:          NOTRUN -> [SKIP][313] ([i915#3291] / [i915#3708])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-7/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-rkl:          NOTRUN -> [SKIP][314] ([i915#3708])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@prime_vgem@fence-flip-hang.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-dg2:          NOTRUN -> [SKIP][315] ([i915#9917])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-tglu:         NOTRUN -> [SKIP][316] ([i915#9917])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  * igt@syncobj_wait@invalid-wait-zero-handles:
    - shard-rkl:          NOTRUN -> [FAIL][317] ([i915#12564] / [i915#9781])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@syncobj_wait@invalid-wait-zero-handles.html

  
#### Possible fixes ####

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [INCOMPLETE][318] ([i915#7297]) -> [PASS][319]
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@gem_ccs@suspend-resume.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [INCOMPLETE][320] ([i915#12392] / [i915#7297]) -> [PASS][321]
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-smem-lmem0.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-smem-lmem0.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-glk:          [FAIL][322] ([i915#12031]) -> [PASS][323]
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-glk6/igt@gem_ctx_engines@invalid-engines.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-glk5/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_persistence@hostile:
    - shard-tglu:         [FAIL][324] ([i915#11980] / [i915#12580]) -> [PASS][325]
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-tglu-6/igt@gem_ctx_persistence@hostile.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-9/igt@gem_ctx_persistence@hostile.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [FAIL][326] ([i915#12543] / [i915#5784]) -> [PASS][327]
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-15/igt@gem_eio@reset-stress.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-18/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][328] ([i915#2846]) -> [PASS][329]
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-glk4/igt@gem_exec_fair@basic-deadline.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-glk2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-dg1:          [ABORT][330] ([i915#7975] / [i915#8213]) -> [PASS][331] +1 other test pass
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_mmap_offset@clear:
    - shard-mtlp:         [ABORT][332] ([i915#10729]) -> [PASS][333]
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-6/igt@gem_mmap_offset@clear.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-7/igt@gem_mmap_offset@clear.html

  * igt@gem_mmap_offset@clear@smem0:
    - shard-mtlp:         [ABORT][334] ([i915#10029] / [i915#10729]) -> [PASS][335]
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-6/igt@gem_mmap_offset@clear@smem0.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-7/igt@gem_mmap_offset@clear@smem0.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [ABORT][336] ([i915#12375] / [i915#5566]) -> [PASS][337]
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-glk8/igt@gen9_exec_parse@allowed-all.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-glk3/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          [ABORT][338] ([i915#9820]) -> [PASS][339]
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-glk2/igt@i915_module_load@reload-with-fault-injection.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-glk6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-dg1:          [FAIL][340] ([i915#12548] / [i915#3591]) -> [PASS][341]
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-dg1:          [FAIL][342] ([i915#3591]) -> [PASS][343] +1 other test pass
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_selftest@live:
    - shard-mtlp:         [ABORT][344] ([i915#12133] / [i915#12216]) -> [PASS][345]
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-6/igt@i915_selftest@live.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [ABORT][346] ([i915#12216]) -> [PASS][347]
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-6/igt@i915_selftest@live@workarounds.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@i915_selftest@live@workarounds.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-mtlp:         [FAIL][348] ([i915#11808] / [i915#5956]) -> [PASS][349] +1 other test pass
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_color@legacy-gamma-reset:
    - shard-dg2:          [SKIP][350] ([i915#12655]) -> [PASS][351] +1 other test pass
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_color@legacy-gamma-reset.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-10/igt@kms_color@legacy-gamma-reset.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-dg2:          [SKIP][352] ([i915#1849]) -> [PASS][353]
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_fbcon_fbt@fbc.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-6/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling:
    - shard-dg2:          [SKIP][354] ([i915#3555]) -> [PASS][355] +1 other test pass
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-dg2:          [SKIP][356] ([i915#5354]) -> [PASS][357] +10 other tests pass
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
    - shard-snb:          [SKIP][358] -> [PASS][359] +4 other tests pass
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbc-2p-rte:
    - shard-glk:          [INCOMPLETE][360] -> [PASS][361]
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-rte.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-rte.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-dg2:          [SKIP][362] ([i915#12388]) -> [PASS][363]
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_joiner@invalid-modeset-force-big-joiner.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-10/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_lease@lease-revoke:
    - shard-dg2:          [SKIP][364] ([i915#9197]) -> [PASS][365] +44 other tests pass
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_lease@lease-revoke.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-6/igt@kms_lease@lease-revoke.html

  * igt@kms_plane_alpha_blend@alpha-basic:
    - shard-dg2:          [SKIP][366] ([i915#7294]) -> [PASS][367]
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-basic.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-6/igt@kms_plane_alpha_blend@alpha-basic.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb:
    - shard-dg1:          [DMESG-WARN][368] ([i915#4423]) -> [PASS][369] +1 other test pass
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-14/igt@kms_plane_alpha_blend@alpha-opaque-fb.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_plane_alpha_blend@alpha-opaque-fb.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:
    - shard-dg2:          [SKIP][370] ([i915#12247]) -> [PASS][371] +5 other tests pass
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-11/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d:
    - shard-dg2:          [SKIP][372] ([i915#12247] / [i915#8152]) -> [PASS][373]
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-11/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20:
    - shard-dg2:          [SKIP][374] ([i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][375] +1 other test pass
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-20x20.html

  * igt@kms_plane_scaling@planes-upscale-20x20@pipe-d:
    - shard-dg2:          [SKIP][376] ([i915#8152]) -> [PASS][377]
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20@pipe-d.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-20x20@pipe-d.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [SKIP][378] ([i915#9519]) -> [PASS][379] +1 other test pass
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@drm-resources-equal:
    - shard-dg2:          [SKIP][380] ([i915#3547]) -> [PASS][381]
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_pm_rpm@drm-resources-equal.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-10/igt@kms_pm_rpm@drm-resources-equal.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-dg2:          [SKIP][382] ([i915#9519]) -> [PASS][383] +1 other test pass
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_setmode@basic:
    - shard-snb:          [FAIL][384] ([i915#5465]) -> [PASS][385] +2 other tests pass
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-snb7/igt@kms_setmode@basic.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-snb2/igt@kms_setmode@basic.html

  * igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2:
    - shard-glk:          [FAIL][386] ([i915#5465]) -> [PASS][387] +2 other tests pass
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-glk9/igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-glk5/igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2.html

  * igt@kms_setmode@basic@pipe-a-hdmi-a-2:
    - shard-glk:          [FAIL][388] ([i915#12527] / [i915#5465]) -> [PASS][389]
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-glk9/igt@kms_setmode@basic@pipe-a-hdmi-a-2.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-glk5/igt@kms_setmode@basic@pipe-a-hdmi-a-2.html

  * igt@perf@blocking@0-rcs0:
    - shard-rkl:          [FAIL][390] ([i915#10538]) -> [PASS][391] +1 other test pass
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-rkl-5/igt@perf@blocking@0-rcs0.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-rkl-5/igt@perf@blocking@0-rcs0.html

  * igt@perf_pmu@busy-double-start@bcs0:
    - shard-mtlp:         [FAIL][392] ([i915#4349]) -> [PASS][393]
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-5/igt@perf_pmu@busy-double-start@bcs0.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-4/igt@perf_pmu@busy-double-start@bcs0.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [FAIL][394] ([i915#4349]) -> [PASS][395] +4 other tests pass
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@perf_pmu@busy-double-start@vecs1.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglu:         [ABORT][396] ([i915#9820]) -> [ABORT][397] ([i915#9697])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         [ABORT][398] ([i915#10131] / [i915#10887] / [i915#9820]) -> [ABORT][399] ([i915#10131] / [i915#9820])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@mock:
    - shard-glk:          [DMESG-WARN][400] ([i915#9311]) -> [DMESG-WARN][401] ([i915#1982] / [i915#9311])
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-glk4/igt@i915_selftest@mock.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-glk2/igt@i915_selftest@mock.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-dg2:          [SKIP][402] -> [SKIP][403] ([i915#9197])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@kms_big_fb@linear-8bpp-rotate-270.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-dg2:          [SKIP][404] ([i915#9197]) -> [SKIP][405]
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-6/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
    - shard-dg1:          [SKIP][406] ([i915#3638] / [i915#4423]) -> [SKIP][407] ([i915#3638])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-14/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-dg2:          [SKIP][408] ([i915#5190] / [i915#9197]) -> [SKIP][409] ([i915#4538] / [i915#5190]) +5 other tests skip
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-6/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-addfb:
    - shard-dg2:          [SKIP][410] ([i915#5190] / [i915#9197]) -> [SKIP][411] ([i915#5190])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-dg2:          [SKIP][412] ([i915#4538] / [i915#5190]) -> [SKIP][413] ([i915#5190] / [i915#9197]) +3 other tests skip
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-dg2:          [SKIP][414] ([i915#9197]) -> [SKIP][415] ([i915#12313]) +1 other test skip
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-10/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc:
    - shard-dg2:          [SKIP][416] ([i915#10307] / [i915#6095]) -> [SKIP][417] ([i915#9197]) +3 other tests skip
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:
    - shard-dg2:          [SKIP][418] ([i915#9197]) -> [SKIP][419] ([i915#10307] / [i915#6095]) +6 other tests skip
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          [SKIP][420] ([i915#3299]) -> [SKIP][421] ([i915#9197])
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@kms_content_protection@dp-mst-lic-type-1.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-dg2:          [SKIP][422] ([i915#9197]) -> [SKIP][423] ([i915#3299])
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_content_protection@dp-mst-type-1.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-11/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg2:          [SKIP][424] ([i915#9197]) -> [SKIP][425] ([i915#9424])
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_content_protection@mei-interface.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-6/igt@kms_content_protection@mei-interface.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-dg2:          [SKIP][426] ([i915#9197]) -> [SKIP][427] ([i915#4103] / [i915#4213])
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
    - shard-dg2:          [SKIP][428] ([i915#9197]) -> [SKIP][429] ([i915#5354]) +5 other tests skip
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-10/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - shard-dg2:          [SKIP][430] ([i915#5354]) -> [SKIP][431] ([i915#9197]) +1 other test skip
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-dg2:          [SKIP][432] ([i915#4103] / [i915#4213]) -> [SKIP][433] ([i915#9197])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-dg2:          [SKIP][434] ([i915#12402]) -> [SKIP][435] ([i915#9197])
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@kms_dp_linktrain_fallback@dp-fallback.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg2:          [SKIP][436] ([i915#9197]) -> [SKIP][437] ([i915#3555] / [i915#3840])
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_dsc@dsc-basic.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-10/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-dg2:          [SKIP][438] ([i915#3840]) -> [SKIP][439] ([i915#9197])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-dg2:          [SKIP][440] ([i915#9197]) -> [SKIP][441] ([i915#3840] / [i915#9053])
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-6/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
    - shard-dg2:          [SKIP][442] ([i915#2672] / [i915#3555] / [i915#5190]) -> [SKIP][443] ([i915#3555] / [i915#5190])
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-dg2:          [SKIP][444] ([i915#3555] / [i915#5190]) -> [SKIP][445] ([i915#2672] / [i915#3555] / [i915#5190])
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
    - shard-dg2:          [SKIP][446] ([i915#3555]) -> [SKIP][447] ([i915#2672] / [i915#3555]) +2 other tests skip
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-dg1:          [ABORT][448] ([i915#4423]) -> [SKIP][449]
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-14/igt@kms_force_connector_basic@force-load-detect.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-dg2:          [SKIP][450] ([i915#5354]) -> [FAIL][451] ([i915#6880])
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move:
    - shard-dg2:          [FAIL][452] ([i915#6880]) -> [SKIP][453] ([i915#5354])
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render:
    - shard-dg1:          [SKIP][454] ([i915#4423]) -> [SKIP][455] +2 other tests skip
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-dg2:          [SKIP][456] ([i915#3458]) -> [SKIP][457] ([i915#5354]) +6 other tests skip
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/index.html

--===============2154988479827382093==
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
<tr><td><b>Series:</b></td><td>drm/i915/color: Stop using non-posted DSB wr=
ites for legacy LUT</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/140739/">https://patchwork.freedesktop.org/series/140739/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_140739v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140739v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15615_full -&gt; Patchwork_140739v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_140739v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_140739v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
140739v1_full:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15615/shard-dg2-5/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15615/shard-dg2-11/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15615/shard-dg2-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_15615/shard-dg2-7/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-1/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/=
shard-dg2-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_15615/shard-dg2-2/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-=
dg2-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_15615/shard-dg2-3/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_15615/shard-dg2-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-10/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15615/shard-dg2-10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-11/boot.htm=
l">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_140739v1/shard-dg2-10/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-10/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1=
/shard-dg2-10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_140739v1/shard-dg2-11/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-11/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_140739v1/shard-dg2-1/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-1/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/s=
hard-dg2-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_140739v1/shard-dg2-2/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_140739v1/shard-dg2-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-=
dg2-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_140739v1/shard-dg2-4/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-5/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140=
739v1/shard-dg2-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_140739v1/shard-dg2-6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-6=
/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_140739v1/shard-dg2-7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1=
/shard-dg2-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_140739v1/shard-dg2-8/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/boot=
.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_hdr@brightness-with-hdr:<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_hdr@brightness-with-hd=
r.html">SKIP</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_big_fb@y-tiled-8bpp-rotate-90:<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-tglu-6/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
0739v1/shard-tglu-5/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">ABORT</a></=
li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_140739v1_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@api_intel_bb@blit-reloc-ke=
ep-cache.html">SKIP</a> ([i915#8411]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@api_intel_bb@object-reloc-=
keep-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@device_reset@unbind-cold-r=
eset-rebind.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@drm_fdinfo@busy-check-all@=
vecs1.html">SKIP</a> ([i915#8414]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@vcs1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@drm_fdinfo@busy-idle-chec=
k-all@vcs1.html">SKIP</a> ([i915#8414]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@gem_bad_reloc@negative-rel=
oc-lut.html">SKIP</a> ([i915#3281]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@gem_basic@multigpu-create-=
close.html">SKIP</a> ([i915#7697])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@gem_basic@multigpu-create=
-close.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-1/igt@gem_ccs@block-copy-compre=
ssed.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy-new=
-ctx.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@gem_close_race@multigpu-b=
asic-threads.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-7/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> ([i915#8562])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@gem_ctx_persistence@heartb=
eat-hang.html">SKIP</a> ([i915#8555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@gem_ctx_sseu@mmap-args.htm=
l">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@gem_exec_balancer@bonded-=
dual.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@gem_exec_balancer@parallel=
.html">SKIP</a> ([i915#4525]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@gem_exec_fair@basic-none.=
html">FAIL</a> ([i915#2842]) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@gem_exec_fair@basic-none-=
vip.html">SKIP</a> ([i915#4473] / [i915#4771]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-rkl-4/igt@gem_exec_fair@basic-none@bcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v=
1/shard-rkl-4/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> ([i915#2842]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@gem_exec_fair@basic-pace-=
share.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
140739v1/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a=
> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-7/igt@gem_exec_fair@basic-pace@v=
ecs0.html">FAIL</a> ([i915#2842]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@gem_exec_fence@submit3.htm=
l">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@gem_exec_reloc@basic-cpu-g=
tt.html">SKIP</a> ([i915#3281]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-14/igt@gem_exec_reloc@basic-writ=
e-gtt.html">SKIP</a> ([i915#3281]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-4/igt@gem_exec_reloc@basic-writ=
e-gtt.html">SKIP</a> ([i915#3281]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-common@vcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@gem_exec_schedule@pi-commo=
n@vcs0.html">FAIL</a> ([i915#12296]) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@gem_exec_schedule@preempt-=
queue-chain.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3-devices:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@gem_exec_suspend@basic-s3=
-devices.html">DMESG-WARN</a> ([i915#4423]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-none:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-7/igt@gem_fence_thrash@bo-write=
-verify-none.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@2-spare-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@gem_fenced_exec_thrash@2-s=
pare-fences.html">SKIP</a> ([i915#4860]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@too-many-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@gem_fenced_exec_thrash@to=
o-many-fences.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-glk6/igt@gem_lmem_swapping@heavy-ver=
ify-multi-ccs.html">SKIP</a> ([i915#4613]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@gem_lmem_swapping@parallel=
-multi.html">SKIP</a> ([i915#4613]) +6 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@gem_lmem_swapping@paralle=
l-multi.html">SKIP</a> ([i915#4613])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-7/igt@gem_lmem_swapping@paralle=
l-multi.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@gem_lmem_swapping@paralle=
l-random-verify-ccs.html">SKIP</a> ([i915#12193])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@gem_lmem_swapping@paralle=
l-random-verify-ccs@lmem0.html">SKIP</a> ([i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@gem_madvise@dontneed-befor=
e-pwrite.html">SKIP</a> ([i915#3282]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@short-mmap:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-18/igt@gem_mmap@short-mmap.html"=
>SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-copy-odd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@gem_mmap_gtt@basic-small-=
copy-odd.html">SKIP</a> ([i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write-cpu-read-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-1/igt@gem_mmap_gtt@basic-write-=
cpu-read-gtt.html">SKIP</a> ([i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@coherency:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@gem_mmap_wc@coherency.html=
">SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-glk1/igt@gem_pread@exhaustion.html">=
WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@self:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@gem_pread@self.html">SKIP<=
/a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@gem_pxp@create-regular-co=
ntext-2.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@gem_pxp@fail-invalid-prot=
ected-context.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@gem_pxp@protected-raw-src-=
copy-not-readible.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-7/igt@gem_pxp@verify-pxp-executi=
on-after-suspend-resume.html">SKIP</a> ([i915#4270]) +4 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_readwrite@write-bad-handle:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@gem_readwrite@write-bad-h=
andle.html">SKIP</a> ([i915#3282]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-1/igt@gem_readwrite@write-bad-h=
andle.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@gem_render_copy@y-tiled-cc=
s-to-y-tiled-mc-ccs.html">SKIP</a> ([i915#5190] / [i915#8428]) +1 other tes=
t skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@gem_render_copy@yf-tiled-=
mc-ccs-to-vebox-yf-tiled.html">SKIP</a> ([i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@gem_set_tiling_vs_blt@tile=
d-to-untiled.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@gem_userptr_blits@coheren=
cy-sync.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@gem_userptr_blits@dmabuf-u=
nsync.html">SKIP</a> ([i915#3297]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@gem_userptr_blits@forbidde=
n-operations.html">SKIP</a> ([i915#3282] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-7/igt@gem_userptr_blits@unsync-=
unmap.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@load-register-reg:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@gen7_exec_parse@load-regi=
ster-reg.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@gen9_exec_parse@basic-rej=
ected-ctx-param.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@gen9_exec_parse@batch-wit=
hout-end.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@gen9_exec_parse@bb-secure.=
html">SKIP</a> ([i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-7/igt@gen9_exec_parse@shadow-pee=
k.html">SKIP</a> ([i915#2527]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@i915_fb_tiling.html">SKIP<=
/a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@i915_module_load@reload-wi=
th-fault-injection.html">ABORT</a> ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-1/igt@i915_pm_freq_api@freq-res=
et.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-7/igt@i915_pm_rps@basic-api.htm=
l">SKIP</a> ([i915#11681] / [i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@i915_query@query-topology-=
coherent-slice-mask.html">SKIP</a> ([i915#6188])</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@i915_query@test-query-geom=
etry-subslices.html">SKIP</a> ([i915#5723])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-1/igt@i915_suspend@basic-s3-wit=
hout-i915.html">INCOMPLETE</a> ([i915#7443])</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@intel_hwmon@hwmon-read.htm=
l">SKIP</a> ([i915#7707])</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@intel_hwmon@hwmon-write.h=
tml">SKIP</a> ([i915#7707])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-1/igt@kms_addfb_basic@addfb25-x=
-tiled-legacy.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_addfb_basic@addfb25-y-=
tiled-small-legacy.html">SKIP</a> ([i915#4212] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html">SKIP</a> ([i915#87=
09]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-r=
c-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-14/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html">SKIP</a> ([i915#8709=
]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-m=
c-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-3/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs.html">SKIP</a> ([i915#8709]=
) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-7/igt@kms_atomic@plane-primary-o=
verlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_atomic_transition@plan=
e-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i91=
5#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_big_fb@4-tiled-16bpp-r=
otate-0.html">SKIP</a> ([i915#5286]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_big_fb@4-tiled-16bpp-r=
otate-90.html">SKIP</a> +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#5286]) +1 oth=
er test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-1/igt@kms_big_fb@linear-64bpp-r=
otate-90.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_big_fb@linear-8bpp-ro=
tate-90.html">SKIP</a> ([i915#3638]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_big_fb@y-tiled-64bpp-r=
otate-270.html">SKIP</a> ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-=
stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#5190] / [i915#=
9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_big_fb@y-tiled-max-hw-=
stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#4538] / [i91=
5#5190]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw=
-stride-32bpp-rotate-0-hflip.html">SKIP</a> +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_busy@extended-pageflip-hang-oldfb:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_busy@extended-pageflip=
-hang-oldfb.html">SKIP</a> ([i915#9197]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_ccs@bad-aux-stride-y-=
tiled-gen12-mc-ccs.html">SKIP</a> ([i915#4423] / [i915#6095]) +1 other test=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-10/igt@kms_ccs@ccs-on-another-bo=
-y-tiled-ccs@pipe-b-dp-3.html">SKIP</a> ([i915#10307] / [i915#6095]) +163 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-4/igt@kms_ccs@crc-primary-basic-=
4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_ccs@crc-primary-basic-=
4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-1/igt@kms_ccs@crc-primary-basic=
-y-tiled-gen12-rc-ccs@pipe-d-edp-1.html">SKIP</a> ([i915#6095]) +9 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +2 other tests skip</=
li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-4/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i=
915#10434] / [i915#6095]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +62 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1:=
</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#6095]) +24=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-15/igt@kms_ccs@crc-sprite-planes=
-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html">SKIP</a> ([i915#6095]) +55 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-1/igt@kms_ccs@random-ccs-data-4=
-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-7/igt@kms_cdclk@mode-transition.=
html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_cdclk@plane-scaling@pi=
pe-d-hdmi-a-1.html">SKIP</a> ([i915#4087]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@dp-audio:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_chamelium_audio@dp-au=
dio.html">SKIP</a> ([i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_chamelium_frames@hdmi-=
crc-fast.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-multiple:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_chamelium_frames@hdmi=
-crc-multiple.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_chamelium_hpd@dp-hpd-=
enable-disable-mode.html">SKIP</a> ([i915#7828]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_chamelium_hpd@vga-hpd-=
for-each-pipe.html">SKIP</a> ([i915#7828]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-3/igt@kms_color@ctm-green-to-red.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/s=
hard-dg2-2/igt@kms_color@ctm-green-to-red.html">SKIP</a> ([i915#12655])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_content_protection@dp=
-mst-lic-type-0.html">SKIP</a> ([i915#3116] / [i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@kms_content_protection@dp-=
mst-type-1.html">SKIP</a> ([i915#3116]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_content_protection@li=
c-type-0.html">SKIP</a> ([i915#6944] / [i915#9424]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_content_protection@srm=
.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_cursor_crc@cursor-offs=
creen-32x10.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-off=
screen-32x10.html">SKIP</a> ([i915#3555] / [i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-7/igt@kms_cursor_crc@cursor-offs=
creen-512x512.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_cursor_crc@cursor-ons=
creen-32x32.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-max-size:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-glk9/igt@kms_cursor_crc@cursor-rando=
m-max-size.html">SKIP</a> +143 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_cursor_crc@cursor-rapi=
d-movement-512x170.html">SKIP</a> ([i915#11453] / [i915#3359]) +2 other tes=
ts skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-1/igt@kms_cursor_crc@cursor-rap=
id-movement-512x170.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-64x21:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-rap=
id-movement-64x21.html">SKIP</a> ([i915#8814]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103]) +1 other test ski=
p</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103]) +2 other tests s=
kip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-7/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_140739v1/shard-glk8/igt@kms_cursor_legacy@flip-v=
s-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_cursor_legacy@modeset=
-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_dirtyfb@psr-dirtyfb-io=
ctl.html">SKIP</a> ([i915#9723])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_dp_linktrain_fallback=
@dp-fallback.html">SKIP</a> ([i915#12402])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_dsc@dsc-basic.html">SK=
IP</a> ([i915#3555] / [i915#3840]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_dsc@dsc-with-bpc-forma=
ts.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@kms_feature_discovery@disp=
lay-3x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_feature_discovery@dp-m=
st.html">SKIP</a> ([i915#9337])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_feature_discovery@psr1=
.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@kms_feature_discovery@psr2=
.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1=
:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-snb2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interru=
ptible@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_140739v1/shard-snb6/igt@kms_flip@2x-flip-vs-=
absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html">FAIL</a> ([i915#2122=
]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_flip@2x-flip-vs-dpms.=
html">SKIP</a> ([i915#9934])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-1/igt@kms_flip@2x-flip-vs-dpms.=
html">SKIP</a> ([i915#3637]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_flip@2x-flip-vs-fence=
s.html">SKIP</a> ([i915#3637]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_flip@2x-flip-vs-fences=
-interruptible.html">SKIP</a> ([i915#8381]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_flip@2x-flip-vs-wf_vb=
lank-interruptible.html">SKIP</a> ([i915#4423] / [i915#9934])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-1/igt@kms_flip@2x-plain-flip-fb=
-recreate-interruptible.html">SKIP</a> ([i915#3637]) +2 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-mtlp-8/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_140739v1/shard-mtlp-2/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1=
.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-mtlp-8/igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_140739v1/shard-mtlp-2/igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1=
.html">FAIL</a> ([i915#11989])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-tglu-7/igt@kms_flip@wf_vblank-ts-check-interruptible@d-=
hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_140739v1/shard-tglu-4/igt@kms_flip@wf_vblank-ts-check-inter=
ruptible@d-hdmi-a1.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling=
:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-=
32bpp-yftileccs-to-64bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [=
i915#3555] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling=
@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-=
32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-default-mode.html">SKIP<=
/a> ([i915#2672] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> ([i915#2672] / [i915#=
3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i=
915#2672]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#355=
5]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-upscaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bp=
p-linear-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_flip_scaled_crc@fli=
p-64bpp-linear-to-32bpp-linear-upscaling.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i9=
15#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i91=
5#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pi=
pe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (=
[i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-=
indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_frontbuffer_tracki=
ng@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#5354]) +5 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-=
indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-10/igt@kms_frontbuffer_track=
ing@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html">FAIL</a> ([i915#6880])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shr=
fb-plflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_140739v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fb=
c-1p-primscrn-shrfb-plflip-blt.html">DMESG-WARN</a> ([i915#4423]) +2 other =
tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([i915#1825]) +16 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@kms_frontbuffer_tracking@f=
bc-tiling-4.html">SKIP</a> ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-pri-indfb-multidraw.html">SKIP</a> ([i915#3023]) +26 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +7 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a> +38 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-14/igt@kms_frontbuffer_tracking@=
fbcpsr-rgb565-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +3 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-spr-indfb-draw-blt.html">SKIP</a> ([i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> ([i915#5354]) +24 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> ([i915#1825]) +37 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_frontbuffer_tracking@p=
sr-rgb101010-draw-render.html">SKIP</a> ([i915#3458]) +5 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_frontbuffer_tracking@=
psr-rgb565-draw-pwrite.html">SKIP</a> ([i915#3458]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_getfb@getfb-reject-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_getfb@getfb-reject-ccs=
.html">SKIP</a> ([i915#6118])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_hdr@static-toggle.htm=
l">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_hdr@static-toggle-dpms=
.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_joiner@basic-big-joine=
r.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_joiner@basic-force-ult=
ra-joiner.html">SKIP</a> ([i915#12394])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@kms_joiner@invalid-modeset=
-big-joiner.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_joiner@invalid-modeset=
-force-big-joiner.html">SKIP</a> ([i915#12388])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-7/igt@kms_joiner@invalid-modeset=
-ultra-joiner.html">SKIP</a> ([i915#12339])</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-invalid-connector:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-3/igt@kms_lease@lease-invalid-connector.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140=
739v1/shard-dg2-2/igt@kms_lease@lease-invalid-connector.html">SKIP</a> ([i9=
15#9197]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_multipipe_modeset@bas=
ic-max-pipe-crc-check.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole-dpms:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-3/igt@kms_plane@plane-position-hole-dpms.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
0739v1/shard-dg2-2/igt@kms_plane@plane-position-hole-dpms.html">SKIP</a> ([=
i915#8825])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_plane_multiple@tiling=
-yf.html">SKIP</a> ([i915#3555] / [i915#8806])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-1/igt@kms_plane_scaling@intel-m=
ax-src-size.html">SKIP</a> ([i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe=
-c:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-75=
-with-pixel-format@pipe-c.html">PASS</a> -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_plane_scalin=
g@plane-downscale-factor-0-75-with-pixel-format@pipe-c.html">SKIP</a> ([i91=
5#12247]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe=
-d:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-75=
-with-pixel-format@pipe-d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_plane_scalin=
g@plane-downscale-factor-0-75-with-pixel-format@pipe-d.html">SKIP</a> ([i91=
5#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-3/igt@kms_plane_scaling@plane-scaler-unity-scaling-=
with-pixel-format.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_plane_scaling@plane-=
scaler-unity-scaling-with-pixel-format.html">SKIP</a> ([i915#8152] / [i915#=
9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-rotation.html">SKIP</a> ([i915#3555] / [i915#4=
423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
a:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-rotation@pipe-a.html">SKIP</a> ([i915#12247] /=
 [i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
b:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-rotation@pipe-b.html">SKIP</a> ([i915#12247]) =
+2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_plane_scaling@plane-up=
scale-20x20-with-rotation@pipe-a.html">SKIP</a> ([i915#12247]) +8 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_plane_scaling@planes-=
downscale-factor-0-75.html">SKIP</a> ([i915#12247] / [i915#3555] / [i915#69=
53])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-7=
5-upscale-factor-0-25.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_plane_scaling@pl=
anes-downscale-factor-0-75-upscale-factor-0-25.html">SKIP</a> ([i915#6953] =
/ [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@p=
ipe-d:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-7=
5-upscale-factor-0-25@pipe-d.html">PASS</a> -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_plane_sca=
ling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-d.html">SKIP</a>=
 ([i915#12247] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_plane_scaling@planes-=
downscale-factor-0-75@pipe-a.html">SKIP</a> ([i915#12247]) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_pm_backlight@brightnes=
s-with-dpms.html">SKIP</a> ([i915#12343])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_pm_backlight@brightne=
ss-with-dpms.html">SKIP</a> ([i915#12343])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_pm_backlight@fade-with=
-dpms.html">SKIP</a> ([i915#5354])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_pm_backlight@fade-wit=
h-dpms.html">SKIP</a> ([i915#9812]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_pm_dc@dc5-psr.html">SK=
IP</a> ([i915#9685]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_pm_dc@dc6-dpms.html">S=
KIP</a> ([i915#5978])</li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-tglu-2/igt@kms_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tg=
lu-8/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> ([i915#9295])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tg=
lu-3/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_pm_rpm@fences-dpms.htm=
l">SKIP</a> ([i915#4077]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-st=
ress-no-wait.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_140739v1/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.h=
tml">SKIP</a> ([i915#9519])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_pm_rpm@modeset-non-lp=
sp-stress-no-wait.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_prime@basic-crc-hybrid=
.html">SKIP</a> ([i915#6524] / [i915#6805]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_prime@basic-modeset-hy=
brid.html">SKIP</a> ([i915#6524])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_prime@basic-modeset-h=
ybrid.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_psr2_sf@fbc-pr-cursor=
-plane-update-sf.html">SKIP</a> ([i915#12316])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-glk6/igt@kms_psr2_sf@fbc-pr-overlay-=
plane-update-continuous-sf.html">SKIP</a> ([i915#11520]) +2 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay=
-primary-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +10 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_psr2_sf@fbc-psr2-curs=
or-plane-move-continuous-exceed-sf.html">SKIP</a> ([i915#11520]) +3 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_psr2_sf@pr-cursor-pla=
ne-move-continuous-exceed-sf.html">SKIP</a> ([i915#11520])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_psr2_sf@psr2-overlay-p=
rimary-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_psr2_su@page_flip-xrgb=
8888.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_psr@fbc-psr-primary-bl=
t.html">SKIP</a> ([i915#1072] / [i915#9732]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-plane-onoff:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_psr@fbc-psr2-sprite-p=
lane-onoff.html">SKIP</a> ([i915#9688]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-sprite-mmap-cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_psr@pr-sprite-mmap-cp=
u.html">SKIP</a> ([i915#9732]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-sprite-plane-onoff:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_psr@pr-sprite-plane-o=
noff.html">SKIP</a> ([i915#1072] / [i915#4423] / [i915#9732])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-move:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@kms_psr@psr-sprite-plane-m=
ove.html">SKIP</a> ([i915#1072] / [i915#9732]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-primary-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_psr@psr2-primary-blt.=
html">SKIP</a> ([i915#1072] / [i915#9732])</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@kms_psr_stress_test@inval=
idate-primary-flip-overlay.html">SKIP</a> ([i915#9685]) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_rotation_crc@primary-r=
otation-90.html">SKIP</a> ([i915#11131] / [i915#4235])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-270.html">SKIP</a> ([i915#11131] / [i915#4235] / [i915#51=
90]) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-1/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-270.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-90.html">SKIP</a> ([i915#5289]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_scaling_modes@scaling=
-mode-none.html">SKIP</a> ([i915#3555] / [i915#5030] / [i915#9041])</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_scaling_modes@scaling=
-mode-none@pipe-a-edp-1.html">SKIP</a> ([i915#5030]) +2 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_scaling_modes@scaling=
-mode-none@pipe-d-edp-1.html">SKIP</a> ([i915#5030] / [i915#9041])</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_selftest@drm_framebuff=
er@drm_test_framebuffer_free.html">ABORT</a> ([i915#12231]) +1 other test a=
bort</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-tglu-2/igt@kms_setmode@basic.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tgl=
u-3/igt@kms_setmode@basic.html">FAIL</a> ([i915#5465]) +2 other tests fail<=
/li>
</ul>
</li>
<li>
<p>igt@kms_vblank@query-forked-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_vblank@query-forked-h=
ang.html">INCOMPLETE</a> ([i915#12276] / [i915#4423]) +1 other test incompl=
ete</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_vrr@flip-dpms.html">SK=
IP</a> ([i915#3555]) +2 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-1/igt@kms_vrr@flip-dpms.html">S=
KIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@kms_vrr@flipline.html">SK=
IP</a> ([i915#3555] / [i915#8808])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@kms_vrr@negative-basic.htm=
l">SKIP</a> ([i915#3555] / [i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@kms_writeback@writeback-ch=
eck-output-xrgb2101010.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-8/igt@perf@mi-rpc.html">SKIP</a>=
 ([i915#2434])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@cpu-hotplug:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-mtlp-2/igt@perf_pmu@cpu-hotplug.html=
">SKIP</a> ([i915#8850])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@prime_vgem@basic-gtt.html"=
>SKIP</a> ([i915#3708] / [i915#4077])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-7/igt@prime_vgem@basic-write.htm=
l">SKIP</a> ([i915#3291] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-1/igt@prime_vgem@fence-flip-hang=
.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg2-7/igt@sriov_basic@enable-vfs-aut=
oprobe-off.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-2/igt@sriov_basic@enable-vfs-bi=
nd-unbind-each-numvfs-all.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-rkl-6/igt@syncobj_wait@invalid-wait-=
zero-handles.html">FAIL</a> ([i915#12564] / [i915#9781])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-3/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> (=
[i915#7297]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_140739v1/shard-dg2-2/igt@gem_ccs@suspend-resume.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-3/igt@gem_ccs@suspend-resume@tile64-compressed-comp=
fmt0-smem-lmem0.html">INCOMPLETE</a> ([i915#12392] / [i915#7297]) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-d=
g2-2/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-smem-lmem0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-glk6/igt@gem_ctx_engines@invalid-engines.html">FAIL</a>=
 ([i915#12031]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_140739v1/shard-glk5/igt@gem_ctx_engines@invalid-engines.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-tglu-6/igt@gem_ctx_persistence@hostile.html">FAIL</a> (=
[i915#11980] / [i915#12580]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_140739v1/shard-tglu-9/igt@gem_ctx_persistence@hostile=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg1-15/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#1=
2543] / [i915#5784]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_140739v1/shard-dg1-18/igt@gem_eio@reset-stress.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-glk4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([=
i915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140739v1/shard-glk2/igt@gem_exec_fair@basic-deadline.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices.html">ABOR=
T</a> ([i915#7975] / [i915#8213]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@gem_exec_suspend@basic=
-s4-devices.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-mtlp-6/igt@gem_mmap_offset@clear.html">ABORT</a> ([i915=
#10729]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_140739v1/shard-mtlp-7/igt@gem_mmap_offset@clear.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear@smem0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-mtlp-6/igt@gem_mmap_offset@clear@smem0.html">ABORT</a> =
([i915#10029] / [i915#10729]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_140739v1/shard-mtlp-7/igt@gem_mmap_offset@clear@smem=
0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-glk8/igt@gen9_exec_parse@allowed-all.html">ABORT</a> ([=
i915#12375] / [i915#5566]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140739v1/shard-glk3/igt@gen9_exec_parse@allowed-all.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-glk2/igt@i915_module_load@reload-with-fault-injection.h=
tml">ABORT</a> ([i915#9820]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_140739v1/shard-glk6/igt@i915_module_load@reload-with-=
fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a=
> ([i915#12548] / [i915#3591]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-dg1-16/igt@i915_pm_rc6_residency@rc6=
-idle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.htm=
l">FAIL</a> ([i915#3591]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_140739v1/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle=
@gt0-vecs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-mtlp-6/igt@i915_selftest@live.html">ABORT</a> ([i915#12=
133] / [i915#12216]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_140739v1/shard-mtlp-2/igt@i915_selftest@live.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-mtlp-6/igt@i915_selftest@live@workarounds.html">ABORT</=
a> ([i915#12216]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_140739v1/shard-mtlp-2/igt@i915_selftest@live@workarounds.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-mtlp-8/igt@kms_atomic_transition@plane-all-modeset-tran=
sition-fencing-internal-panels.html">FAIL</a> ([i915#11808] / [i915#5956]) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v=
1/shard-mtlp-2/igt@kms_atomic_transition@plane-all-modeset-transition-fenci=
ng-internal-panels.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_color@legacy-gamma-reset:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@kms_color@legacy-gamma-reset.html">SKIP</a> (=
[i915#12655]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_140739v1/shard-dg2-10/igt@kms_color@legacy-gamma-reset.html">PASS</a=
> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@kms_fbcon_fbt@fbc.html">SKIP</a> ([i915#1849]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14073=
9v1/shard-dg2-6/igt@kms_fbcon_fbt@fbc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp=
-xtile-downscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-6/igt@kms_flip_=
scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html">PASS</a> +1 ot=
her test pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-draw-pwrite.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-11/igt@kms_front=
buffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html">PASS</a> +10 ot=
her tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-i=
ndfb-fullscreen.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-snb6/igt@kms_frontbuffer_tracking@fb=
c-2p-primscrn-spr-indfb-fullscreen.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-rte:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-rte.html">INCO=
MPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_140739v1/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-rte.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@kms_joiner@invalid-modeset-force-big-joiner.h=
tml">SKIP</a> ([i915#12388]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_140739v1/shard-dg2-10/igt@kms_joiner@invalid-modeset-=
force-big-joiner.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-revoke:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@kms_lease@lease-revoke.html">SKIP</a> ([i915#=
9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
140739v1/shard-dg2-6/igt@kms_lease@lease-revoke.html">PASS</a> +44 other te=
sts pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-basic.html">SKIP<=
/a> ([i915#7294]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_140739v1/shard-dg2-6/igt@kms_plane_alpha_blend@alpha-basic.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg1-14/igt@kms_plane_alpha_blend@alpha-opaque-fb.html">=
DMESG-WARN</a> ([i915#4423]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_plane_alpha_blend@alpha=
-opaque-fb.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-b.html">SKIP</a> ([i915#12247]) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-11/igt@kms_=
plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html">PASS</=
a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-d=
g2-11/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-=
d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20.html">=
SKIP</a> ([i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-10/igt@kms_p=
lane_scaling@planes-upscale-20x20.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20@pipe-d=
.html">SKIP</a> ([i915#8152]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_140739v1/shard-dg2-10/igt@kms_plane_scaling@planes-u=
pscale-20x20@pipe-d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#95=
19]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
0739v1/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> +1 other test pa=
ss</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@drm-resources-equal:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@kms_pm_rpm@drm-resources-equal.html">SKIP</a>=
 ([i915#3547]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_140739v1/shard-dg2-10/igt@kms_pm_rpm@drm-resources-equal.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([=
i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140739v1/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> +1=
 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-snb7/igt@kms_setmode@basic.html">FAIL</a> ([i915#5465])=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739=
v1/shard-snb2/igt@kms_setmode@basic.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-glk9/igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-=
a-2.html">FAIL</a> ([i915#5465]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_140739v1/shard-glk5/igt@kms_setmode@basic@pipe-a-=
hdmi-a-1-pipe-b-hdmi-a-2.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-glk9/igt@kms_setmode@basic@pipe-a-hdmi-a-2.html">FAIL</=
a> ([i915#12527] / [i915#5465]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_140739v1/shard-glk5/igt@kms_setmode@basic@pipe-a-h=
dmi-a-2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@blocking@0-rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-rkl-5/igt@perf@blocking@0-rcs0.html">FAIL</a> ([i915#10=
538]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
40739v1/shard-rkl-5/igt@perf@blocking@0-rcs0.html">PASS</a> +1 other test p=
ass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@bcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-mtlp-5/igt@perf_pmu@busy-double-start@bcs0.html">FAIL</=
a> ([i915#4349]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_140739v1/shard-mtlp-4/igt@perf_pmu@busy-double-start@bcs0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</=
a> ([i915#4349]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_140739v1/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html">=
PASS</a> +4 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> ([i915#9820]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140739v1/shard-tglu-7/igt@i915_module_load@reload-w=
ith-fault-injection.html">ABORT</a> ([i915#9697])</li>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> ([i915#10131] / [i915#10887] / [i915#9820]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-mtlp-=
6/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#1=
0131] / [i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-glk4/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915=
#9311]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_140739v1/shard-glk2/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915#198=
2] / [i915#9311])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-3/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140=
739v1/shard-dg2-2/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> ([i9=
15#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html">SKIP=
</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_140739v1/shard-dg2-6/igt@kms_big_fb@x-tiled-16bpp-rotate-90.htm=
l">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg1-14/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html">SK=
IP</a> ([i915#3638] / [i915#4423]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_big_fb@x-tiled-64=
bpp-rotate-270.html">SKIP</a> ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">SKIP<=
/a> ([i915#5190] / [i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_140739v1/shard-dg2-6/igt@kms_big_fb@y-tiled-32bpp-=
rotate-0.html">SKIP</a> ([i915#4538] / [i915#5190]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb.html">SKIP</a> ([i91=
5#5190] / [i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_140739v1/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb.html">SK=
IP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotat=
e-0.html">SKIP</a> ([i915#4538] / [i915#5190]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_big_fb=
@yf-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a> ([i915#5190] / [i915#=
9197]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.htm=
l">SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_140739v1/shard-dg2-10/igt@kms_ccs@crc-primary-basic-4-ti=
led-lnl-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-3/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-cc=
s-cc.html">SKIP</a> ([i915#10307] / [i915#6095]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_ccs@=
crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> ([i915#9197]) +3 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-r=
c-ccs-cc.html">SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-10/igt@kms_ccs@crc-sprite=
-planes-basic-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> ([i915#10307] / [i915#60=
95]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-3/igt@kms_content_protection@dp-mst-lic-type-1.html=
">SKIP</a> ([i915#3299]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_content_protection@dp-mst-li=
c-type-1.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@kms_content_protection@dp-mst-type-1.html">SK=
IP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_140739v1/shard-dg2-11/igt@kms_content_protection@dp-mst-type-=
1.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@kms_content_protection@mei-interface.html">SK=
IP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_140739v1/shard-dg2-6/igt@kms_content_protection@mei-interface=
.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-curs=
or-varying-size.html">SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-6/igt@kms_cursor_l=
egacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103=
] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.htm=
l">SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_140739v1/shard-dg2-10/igt@kms_cursor_legacy@cursorb-vs-f=
lipa-atomic.html">SKIP</a> ([i915#5354]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-3/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.htm=
l">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-fl=
ipb-legacy.html">SKIP</a> ([i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-3/igt@kms_cursor_legacy@short-busy-flip-before-curs=
or-atomic-transitions.html">SKIP</a> ([i915#4103] / [i915#4213]) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg=
2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.=
html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-3/igt@kms_dp_linktrain_fallback@dp-fallback.html">S=
KIP</a> ([i915#12402]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_dp_linktrain_fallback@dp-fallb=
ack.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#9197]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14073=
9v1/shard-dg2-10/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#=
3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-3/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKI=
P</a> ([i915#3840]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_140739v1/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.h=
tml">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@kms_dsc@dsc-with-output-formats-with-bpc.html=
">SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_140739v1/shard-dg2-6/igt@kms_dsc@dsc-with-output-formats-=
with-bpc.html">SKIP</a> ([i915#3840] / [i915#9053])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downsc=
aling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytilegen12rcccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i=
915#5190]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_140739v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-=
ytilegen12rcccs-downscaling.html">SKIP</a> ([i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp=
-ytile-downscaling.html">SKIP</a> ([i915#3555] / [i915#5190]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-1=
0/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html"=
>SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bp=
p-yftile-upscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-11/igt@kms_flip=
_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html">SKIP</a> ([i9=
15#2672] / [i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg1-14/igt@kms_force_connector_basic@force-load-detect.=
html">ABORT</a> ([i915#4423]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_force_connector_basic@=
force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-=
indfb-draw-pwrite.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-6/igt@kms_frontb=
uffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html">FAIL</a> ([i915#=
6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-move.html">FAIL</a> ([i915#6880]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/igt@kms_frontbuffer_t=
racking@fbc-1p-primscrn-spr-indfb-move.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri=
-shrfb-draw-render.html">SKIP</a> ([i915#4423]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg1-19/igt@kms_fron=
tbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render.html">SKIP</a> +2 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15615/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-p=
ri-indfb-draw-pwrite.html">SKIP</a> ([i915#3458]) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-dg2-2/">SKIP</a> =
([i915#5354]) +6 other tests skip</li>
</ul>
</li>
</ul>

</body>
</html>

--===============2154988479827382093==--
