Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC0B871724
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 08:42:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F8321128DE;
	Tue,  5 Mar 2024 07:42:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 686831128E0;
 Tue,  5 Mar 2024 07:42:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7195761667401834425=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/selftest=5Fhangche?=
 =?utf-8?q?ck=3A_Check_sanity_with_more_patience_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Janusz Krzysztofik" <janusz.krzysztofik@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 05 Mar 2024 07:42:04 -0000
Message-ID: <170962452441.522830.3770992043701994524@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240228152500.38267-2-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20240228152500.38267-2-janusz.krzysztofik@linux.intel.com>
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

--===============7195761667401834425==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftest_hangcheck: Check sanity with more patience (rev3)
URL   : https://patchwork.freedesktop.org/series/130512/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14383_full -> Patchwork_130512v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_130512v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_130512v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (8 -> 8)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_130512v3_full:

### IGT changes ###

#### Possible regressions ####

  * igt@drm_read@short-buffer-wakeup:
    - shard-dg1:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg1-19/igt@drm_read@short-buffer-wakeup.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-13/igt@drm_read@short-buffer-wakeup.html
    - shard-glk:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-glk5/igt@drm_read@short-buffer-wakeup.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-glk3/igt@drm_read@short-buffer-wakeup.html

  * igt@gem_exec_schedule@deep@vecs0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@gem_exec_schedule@deep@vecs0.html

  * igt@gem_lmem_swapping@verify-ccs@lmem0:
    - shard-dg2:          NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@gem_lmem_swapping@verify-ccs@lmem0.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-dg1:          [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg1-16/igt@i915_pm_rpm@system-suspend-execbuf.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-16/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@sysfs_heartbeat_interval@nopreempt@ccs2:
    - shard-dg2:          NOTRUN -> [ABORT][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@sysfs_heartbeat_interval@nopreempt@ccs2.html

  
Known issues
------------

  Here are the changes found in Patchwork_130512v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-dg2:          NOTRUN -> [SKIP][10] ([i915#8411]) +1 other test skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-mtlp:         NOTRUN -> [SKIP][11] ([i915#7701])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@all-busy-check-all:
    - shard-dg1:          NOTRUN -> [SKIP][12] ([i915#8414]) +1 other test skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@drm_fdinfo@all-busy-check-all.html

  * igt@drm_fdinfo@busy-check-all@ccs0:
    - shard-mtlp:         NOTRUN -> [SKIP][13] ([i915#8414]) +5 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@drm_fdinfo@busy-check-all@ccs0.html

  * igt@drm_fdinfo@busy-idle-check-all@ccs3:
    - shard-dg2:          NOTRUN -> [SKIP][14] ([i915#8414]) +10 other tests skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@drm_fdinfo@busy-idle-check-all@ccs3.html

  * igt@gem_basic@multigpu-create-close:
    - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#7697])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@gem_basic@multigpu-create-close.html

  * igt@gem_busy@semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#3936])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@gem_busy@semaphore.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-snb:          NOTRUN -> [SKIP][17] ([fdo#109271]) +21 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-snb4/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-dg1:          NOTRUN -> [SKIP][18] ([i915#9323])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_compute@compute-square:
    - shard-mtlp:         NOTRUN -> [SKIP][19] ([i915#9310])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@gem_compute@compute-square.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-tglu:         NOTRUN -> [SKIP][20] ([i915#6335])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#8562])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_freq@sysfs@gt0:
    - shard-dg2:          NOTRUN -> [FAIL][22] ([i915#9561])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@gem_ctx_freq@sysfs@gt0.html

  * igt@gem_ctx_persistence@heartbeat-stop:
    - shard-dg1:          NOTRUN -> [SKIP][23] ([i915#8555])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@gem_ctx_persistence@heartbeat-stop.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][24] ([i915#5882]) +5 other tests skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs0.html

  * igt@gem_ctx_sseu@engines:
    - shard-dg2:          NOTRUN -> [SKIP][25] ([i915#280])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_ctx_sseu@engines.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-rkl:          NOTRUN -> [SKIP][26] ([i915#280])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@gem_ctx_sseu@mmap-args.html
    - shard-tglu:         NOTRUN -> [SKIP][27] ([i915#280])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-7/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-dg1:          NOTRUN -> [SKIP][28] ([i915#4036])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_balancer@noheartbeat:
    - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#8555]) +1 other test skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@gem_exec_balancer@noheartbeat.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-rkl:          NOTRUN -> [SKIP][30] ([i915#4525])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_balancer@sliced:
    - shard-mtlp:         NOTRUN -> [SKIP][31] ([i915#4812])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_capture@many-4k-zero:
    - shard-tglu:         NOTRUN -> [FAIL][32] ([i915#9606])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@gem_exec_capture@many-4k-zero.html

  * igt@gem_exec_fair@basic-none:
    - shard-dg1:          NOTRUN -> [SKIP][33] ([i915#3539] / [i915#4852]) +3 other tests skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@gem_exec_fair@basic-none.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][34] ([i915#2842]) +3 other tests fail
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-glk3/igt@gem_exec_fair@basic-none-rrul@rcs0.html
    - shard-rkl:          NOTRUN -> [FAIL][35] ([i915#2842])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@gem_exec_fair@basic-none-rrul@rcs0.html
    - shard-tglu:         NOTRUN -> [FAIL][36] ([i915#2842])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-7/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-share:
    - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#3539] / [i915#4852]) +1 other test skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@gem_exec_fair@basic-none-share.html

  * igt@gem_exec_fair@basic-pace-share:
    - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#4473] / [i915#4771])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@gem_exec_fair@basic-pace-share.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-rkl:          [PASS][39] -> [FAIL][40] ([i915#2842]) +1 other test fail
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fence@submit3:
    - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#4812])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@gem_exec_fence@submit3.html

  * igt@gem_exec_flush@basic-uc-set-default:
    - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#3539]) +1 other test skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@gem_exec_flush@basic-uc-set-default.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-rkl:          NOTRUN -> [SKIP][43] ([fdo#109283])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_params@secure-non-master:
    - shard-tglu:         NOTRUN -> [SKIP][44] ([fdo#112283])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_reloc@basic-cpu-read:
    - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#3281]) +5 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@gem_exec_reloc@basic-cpu-read.html

  * igt@gem_exec_reloc@basic-gtt-cpu-active:
    - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#3281]) +13 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@gem_exec_reloc@basic-gtt-cpu-active.html

  * igt@gem_exec_reloc@basic-wc-read-active:
    - shard-dg1:          NOTRUN -> [SKIP][47] ([i915#3281]) +1 other test skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@gem_exec_reloc@basic-wc-read-active.html

  * igt@gem_exec_reloc@basic-write-wc-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][48] ([i915#3281]) +5 other tests skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@gem_exec_reloc@basic-write-wc-noreloc.html

  * igt@gem_exec_schedule@reorder-wide:
    - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#4537] / [i915#4812]) +2 other tests skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@gem_exec_schedule@reorder-wide.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][50] ([i915#4860]) +1 other test skip
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-rkl:          NOTRUN -> [SKIP][51] ([i915#4613]) +1 other test skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-glk:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#4613]) +4 other tests skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-glk3/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@massive:
    - shard-tglu:         NOTRUN -> [SKIP][53] ([i915#4613]) +3 other tests skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@gem_lmem_swapping@massive.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][54] ([i915#4613]) +2 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          NOTRUN -> [TIMEOUT][55] ([i915#5493])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_media_fill@media-fill:
    - shard-mtlp:         NOTRUN -> [SKIP][56] ([i915#8289])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@gem_media_fill@media-fill.html

  * igt@gem_mmap@bad-offset:
    - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#4083]) +2 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@gem_mmap@bad-offset.html

  * igt@gem_mmap@short-mmap:
    - shard-mtlp:         NOTRUN -> [SKIP][58] ([i915#4083]) +6 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@gem_mmap@short-mmap.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#4077]) +2 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#4077]) +7 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_mmap_wc@invalid-flags:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#4083]) +5 other tests skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@gem_mmap_wc@invalid-flags.html

  * igt@gem_partial_pwrite_pread@write:
    - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#3282]) +4 other tests skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_partial_pwrite_pread@write.html

  * igt@gem_pxp@create-regular-buffer:
    - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#4270])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@gem_pxp@create-regular-buffer.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#4270]) +3 other tests skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@fail-invalid-protected-context:
    - shard-tglu:         NOTRUN -> [SKIP][65] ([i915#4270]) +2 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-dg1:          NOTRUN -> [SKIP][66] ([i915#4270]) +1 other test skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-mtlp:         NOTRUN -> [SKIP][67] ([i915#4270]) +2 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_readwrite@beyond-eob:
    - shard-dg1:          NOTRUN -> [SKIP][68] ([i915#3282]) +3 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@gem_readwrite@beyond-eob.html

  * igt@gem_readwrite@new-obj:
    - shard-mtlp:         NOTRUN -> [SKIP][69] ([i915#3282]) +4 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@gem_readwrite@new-obj.html

  * igt@gem_readwrite@read-bad-handle:
    - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#3282]) +1 other test skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@gem_readwrite@read-bad-handle.html

  * igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][71] ([i915#8428]) +2 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#8411])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#4079]) +1 other test skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#4079]) +1 other test skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#4885])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_softpin@evict-snoop.html

  * igt@gem_userptr_blits@access-control:
    - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#3297]) +1 other test skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-mtlp:         NOTRUN -> [SKIP][77] ([i915#3297]) +1 other test skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#3282] / [i915#3297])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#3297] / [i915#4880])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][80] ([i915#3297]) +1 other test skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-7/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#3297]) +1 other test skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@gem_userptr_blits@readonly-unsync.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#3297]) +1 other test skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gen7_exec_parse@basic-allocation:
    - shard-dg1:          NOTRUN -> [SKIP][83] ([fdo#109289])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@gen7_exec_parse@basic-allocation.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-tglu:         NOTRUN -> [SKIP][84] ([fdo#109289])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@gen7_exec_parse@basic-offset.html

  * igt@gen7_exec_parse@basic-rejected:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([fdo#109289]) +3 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@gen7_exec_parse@basic-rejected.html

  * igt@gen7_exec_parse@batch-without-end:
    - shard-rkl:          NOTRUN -> [SKIP][86] ([fdo#109289])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@gen7_exec_parse@batch-without-end.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-mtlp:         NOTRUN -> [SKIP][87] ([fdo#109289]) +3 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          NOTRUN -> [INCOMPLETE][88] ([i915#5566])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-glk4/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-mtlp:         NOTRUN -> [SKIP][89] ([i915#2856])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-tglu:         NOTRUN -> [SKIP][90] ([i915#2527] / [i915#2856]) +1 other test skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@gen9_exec_parse@bb-chained.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#2527]) +1 other test skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#2856]) +5 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_fb_tiling:
    - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#4881])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@i915_fb_tiling.html

  * igt@i915_module_load@resize-bar:
    - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#6412])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_freq_mult@media-freq@gt1:
    - shard-mtlp:         NOTRUN -> [SKIP][95] ([i915#6590]) +1 other test skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@i915_pm_freq_mult@media-freq@gt1.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
    - shard-dg1:          [PASS][96] -> [FAIL][97] ([i915#3591])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html

  * igt@i915_pm_rps@basic-api:
    - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#6621]) +1 other test skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_rps@thresholds@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#8925]) +1 other test skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@i915_pm_rps@thresholds@gt0.html

  * igt@i915_query@hwconfig_table:
    - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#6245])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@i915_query@hwconfig_table.html

  * igt@i915_query@query-topology-unsupported:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([fdo#109302])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@i915_query@query-topology-unsupported.html

  * igt@i915_selftest@mock@memory_region:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][102] ([i915#9311])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@i915_selftest@mock@memory_region.html

  * igt@intel_hwmon@hwmon-write:
    - shard-tglu:         NOTRUN -> [SKIP][103] ([i915#7707])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#4212])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - shard-mtlp:         NOTRUN -> [SKIP][105] ([i915#4212])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1:
    - shard-tglu:         [PASS][106] -> [FAIL][107] ([i915#2521])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-tglu-5/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#9531])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#1769] / [i915#3555])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
    - shard-dg1:          NOTRUN -> [SKIP][110] ([i915#1769] / [i915#3555])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-tglu:         NOTRUN -> [SKIP][111] ([i915#1769] / [i915#3555])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
    - shard-glk:          NOTRUN -> [SKIP][112] ([fdo#109271] / [i915#1769])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-glk9/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][113] ([i915#4538] / [i915#5286]) +1 other test skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#5286]) +3 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][115] ([fdo#111615] / [i915#5286]) +5 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@linear-32bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][116] ([fdo#111614]) +4 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@kms_big_fb@linear-32bpp-rotate-270.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([fdo#111614]) +2 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][118] ([i915#3638])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#4538] / [i915#5190]) +11 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb-size-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#5190]) +8 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@kms_big_fb@y-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][121] ([i915#4538]) +1 other test skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-dg1:          NOTRUN -> [SKIP][122] ([fdo#111615])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][123] ([fdo#110723]) +2 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][124] ([fdo#111615]) +3 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         NOTRUN -> [SKIP][125] ([fdo#111615]) +8 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#2705])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_big_joiner@basic:
    - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#2705])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_big_joiner@basic.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-tglu:         NOTRUN -> [SKIP][128] ([i915#2705])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_cdclk@mode-transition:
    - shard-tglu:         NOTRUN -> [SKIP][129] ([i915#3742])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#7213]) +3 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#4087]) +3 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html

  * igt@kms_chamelium_color@ctm-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][132] ([fdo#111827])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@kms_chamelium_color@ctm-0-25.html

  * igt@kms_chamelium_color@ctm-blue-to-red:
    - shard-mtlp:         NOTRUN -> [SKIP][133] ([fdo#111827]) +2 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_chamelium_color@ctm-blue-to-red.html

  * igt@kms_chamelium_color@ctm-max:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([fdo#111827]) +1 other test skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_chamelium_color@ctm-max.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:
    - shard-dg1:          NOTRUN -> [SKIP][135] ([i915#7828]) +3 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html

  * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#7828]) +9 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html

  * igt@kms_chamelium_frames@hdmi-crc-multiple:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#7828]) +3 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@kms_chamelium_frames@hdmi-crc-multiple.html

  * igt@kms_chamelium_hpd@dp-hpd-after-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#7828]) +5 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
    - shard-mtlp:         NOTRUN -> [SKIP][139] ([i915#7828]) +4 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html

  * igt@kms_content_protection@atomic:
    - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#7116] / [i915#9424]) +1 other test skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_content_protection@atomic.html
    - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#7118] / [i915#9424])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@content-type-change:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#9424])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-tglu:         NOTRUN -> [SKIP][143] ([i915#3116] / [i915#3299])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@lic-type-1:
    - shard-mtlp:         NOTRUN -> [SKIP][144] ([i915#6944] / [i915#9424])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@type1:
    - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#7118] / [i915#9424])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@kms_content_protection@type1.html

  * igt@kms_content_protection@uevent@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [FAIL][146] ([i915#1339])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-4.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#3359]) +2 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85:
    - shard-mtlp:         NOTRUN -> [SKIP][148] ([i915#8814]) +1 other test skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@kms_cursor_crc@cursor-onscreen-256x85.html

  * igt@kms_cursor_crc@cursor-onscreen-32x10:
    - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#3555]) +2 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-32x10.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-dg1:          NOTRUN -> [SKIP][150] ([i915#3555]) +2 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#3359])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#3359]) +1 other test skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-mtlp:         NOTRUN -> [SKIP][153] ([i915#3555] / [i915#8814])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#3359])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-tglu:         NOTRUN -> [SKIP][155] ([i915#3359])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][156] ([fdo#109274] / [i915#5354]) +5 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-snb:          [PASS][157] -> [SKIP][158] ([fdo#109271] / [fdo#111767])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-snb2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
    - shard-mtlp:         NOTRUN -> [SKIP][159] ([i915#9809]) +2 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [PASS][160] -> [FAIL][161] ([i915#2346])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#4103] / [i915#4213])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#4103] / [i915#4213]) +1 other test skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@torture-bo@pipe-a:
    - shard-snb:          [PASS][164] -> [DMESG-WARN][165] ([i915#10166])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-snb5/igt@kms_cursor_legacy@torture-bo@pipe-a.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-snb5/igt@kms_cursor_legacy@torture-bo@pipe-a.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][166] ([fdo#110189] / [i915#9723])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-5/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#9833])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#8588])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dp_aux_dev:
    - shard-tglu:         NOTRUN -> [SKIP][169] ([i915#1257])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@kms_dp_aux_dev.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#8812])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-basic:
    - shard-mtlp:         NOTRUN -> [SKIP][171] ([i915#3555] / [i915#3840] / [i915#9159])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-mtlp:         NOTRUN -> [SKIP][172] ([i915#3840] / [i915#9688])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#3555] / [i915#3840])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-dg1:          NOTRUN -> [SKIP][174] ([i915#3840] / [i915#9053])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_feature_discovery@display-3x:
    - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#1839])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#9337])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_fence_pin_leak:
    - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#4881])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-busy-flip:
    - shard-dg1:          NOTRUN -> [SKIP][178] ([fdo#111825] / [i915#9934]) +2 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@kms_flip@2x-busy-flip.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-mtlp:         NOTRUN -> [SKIP][179] ([fdo#111767] / [i915#3637])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-modeset:
    - shard-mtlp:         NOTRUN -> [SKIP][180] ([i915#3637]) +4 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@kms_flip@2x-flip-vs-modeset.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][181] ([fdo#109274] / [fdo#111767])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html
    - shard-dg1:          NOTRUN -> [SKIP][182] ([fdo#111767] / [fdo#111825])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-rkl:          NOTRUN -> [SKIP][183] ([fdo#111825]) +4 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@2x-nonexisting-fb-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][184] ([fdo#109274] / [i915#3637]) +4 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-7/igt@kms_flip@2x-nonexisting-fb-interruptible.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][185] ([fdo#109274]) +6 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:
    - shard-glk:          [PASS][186] -> [FAIL][187] ([i915#79])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#8381])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][189] ([i915#8810]) +1 other test skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][190] ([i915#2587] / [i915#2672]) +1 other test skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][191] ([i915#2587] / [i915#2672]) +1 other test skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#2672]) +4 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#2672])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][194] ([i915#3555] / [i915#8810]) +1 other test skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][195] ([i915#2672]) +1 other test skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][196] ([fdo#111767] / [i915#1825]) +1 other test skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
    - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#5354]) +27 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:
    - shard-snb:          [PASS][198] -> [SKIP][199] ([fdo#109271]) +9 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][200] ([i915#8708]) +7 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][201] ([i915#3458]) +6 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][202] ([i915#3458]) +14 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][203] ([fdo#111825]) +21 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff:
    - shard-tglu:         NOTRUN -> [SKIP][204] ([fdo#109280] / [fdo#111767])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][205] ([i915#1825]) +18 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#5439])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][207] ([i915#8708]) +7 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#3023]) +8 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#8708]) +19 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][210] ([fdo#109280]) +18 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][211] ([fdo#111825] / [i915#1825]) +13 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][212] ([fdo#111767] / [i915#5354]) +3 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt:
    - shard-tglu:         NOTRUN -> [SKIP][213] ([fdo#110189]) +19 other tests skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt.html

  * igt@kms_hdr@static-toggle:
    - shard-tglu:         NOTRUN -> [SKIP][214] ([i915#3555] / [i915#8228])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@kms_hdr@static-toggle.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-mtlp:         NOTRUN -> [SKIP][215] ([i915#3555] / [i915#8228])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#3555] / [i915#8228]) +3 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-mtlp:         NOTRUN -> [SKIP][217] ([i915#4816])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@legacy:
    - shard-tglu:         NOTRUN -> [SKIP][218] ([i915#6301])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][219] ([i915#7862]) +1 other test fail
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-glk3/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html

  * igt@kms_plane_lowres@tiling-none@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][220] ([i915#3582]) +3 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_plane_lowres@tiling-none@pipe-b-edp-1.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-tglu:         NOTRUN -> [SKIP][221] ([i915#3555]) +1 other test skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-tglu:         NOTRUN -> [SKIP][222] ([fdo#109274]) +1 other test skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][223] ([i915#5176]) +3 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-edp-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#9423]) +7 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-d-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][225] ([fdo#109271]) +174 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-glk5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-c-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][226] ([i915#9423]) +11 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-19/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-c-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#9423]) +11 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][228] ([i915#5176] / [i915#9423]) +1 other test skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][229] ([i915#5235]) +7 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#5235]) +7 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#5235] / [i915#9423]) +15 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-dp-4.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][232] ([i915#5235]) +2 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][233] ([i915#3555] / [i915#5235])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-edp-1.html

  * igt@kms_pm_backlight@fade:
    - shard-dg1:          NOTRUN -> [SKIP][234] ([i915#5354])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@kms_pm_backlight@fade.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#5354])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#9340])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-dg2:          NOTRUN -> [SKIP][237] ([i915#8430])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#9519])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-mtlp:         NOTRUN -> [SKIP][239] ([i915#9519])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          [PASS][240] -> [SKIP][241] ([i915#9519]) +1 other test skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
    - shard-tglu:         NOTRUN -> [SKIP][242] ([i915#9519])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@pm-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#4077]) +10 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_pm_rpm@pm-tiling.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-dg1:          NOTRUN -> [SKIP][244] ([i915#6524])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-tglu:         NOTRUN -> [SKIP][245] ([i915#6524])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_prime@d3hot:
    - shard-dg2:          NOTRUN -> [SKIP][246] ([i915#6524] / [i915#6805])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-dg2:          NOTRUN -> [SKIP][247] ([fdo#110189]) +4 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-sf:
    - shard-snb:          NOTRUN -> [SKIP][248] ([fdo#109271] / [fdo#110189]) +1 other test skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-snb4/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-overlay-plane-update-continuous-sf:
    - shard-dg1:          NOTRUN -> [SKIP][249] ([fdo#110189]) +2 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@kms_psr2_sf@fbc-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][250] ([fdo#109271] / [fdo#110189]) +3 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-glk3/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
    - shard-rkl:          NOTRUN -> [SKIP][251] ([fdo#110189]) +1 other test skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr@fbc-psr-primary-blt:
    - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#9673] / [i915#9732]) +7 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_psr@fbc-psr-primary-blt.html

  * igt@kms_psr@fbc-psr-sprite-plane-move:
    - shard-tglu:         NOTRUN -> [SKIP][253] ([i915#9732]) +13 other tests skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@kms_psr@fbc-psr-sprite-plane-move.html

  * igt@kms_psr@fbc-psr2-basic:
    - shard-dg1:          NOTRUN -> [SKIP][254] ([i915#9732]) +9 other tests skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@kms_psr@fbc-psr2-basic.html

  * igt@kms_psr@pr-primary-mmap-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][255] ([i915#9688]) +10 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_psr@pr-primary-mmap-cpu.html

  * igt@kms_psr@psr-primary-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][256] ([i915#9732]) +8 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@kms_psr@psr-primary-mmap-cpu.html

  * igt@kms_psr@psr2-primary-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][257] ([i915#9732]) +14 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_psr@psr2-primary-mmap-gtt.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-dg1:          NOTRUN -> [SKIP][258] ([i915#9685])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
    - shard-dg2:          NOTRUN -> [SKIP][259] ([i915#9685])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
    - shard-mtlp:         NOTRUN -> [SKIP][260] ([i915#5289]) +1 other test skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
    - shard-rkl:          [PASS][261] -> [INCOMPLETE][262] ([i915#9569])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-rkl-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-tglu:         NOTRUN -> [SKIP][263] ([fdo#111615] / [i915#5289])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-dg2:          NOTRUN -> [SKIP][264] ([i915#4235] / [i915#5190]) +1 other test skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
    - shard-dg1:          NOTRUN -> [SKIP][265] ([fdo#111615] / [i915#5289])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-dg2:          NOTRUN -> [SKIP][266] ([i915#3555]) +8 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_setmode@invalid-clone-exclusive-crtc:
    - shard-mtlp:         NOTRUN -> [SKIP][267] ([i915#3555] / [i915#8823])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@kms_setmode@invalid-clone-exclusive-crtc.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          NOTRUN -> [FAIL][268] ([IGT#2])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_sysfs_edid_timing.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-mtlp:         NOTRUN -> [SKIP][269] ([i915#8623])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-dg2:          NOTRUN -> [SKIP][270] ([i915#8623])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
    - shard-tglu:         [PASS][271] -> [FAIL][272] ([i915#9196])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
    - shard-snb:          [PASS][273] -> [FAIL][274] ([i915#9196])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-snb2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-snb2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-dg2:          NOTRUN -> [SKIP][275] ([i915#9906])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@max-min:
    - shard-tglu:         NOTRUN -> [SKIP][276] ([i915#9906])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@kms_vrr@max-min.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-mtlp:         NOTRUN -> [SKIP][277] ([i915#8808] / [i915#9906])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-mtlp:         NOTRUN -> [SKIP][278] ([i915#2437])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-rkl:          NOTRUN -> [SKIP][279] ([i915#2437] / [i915#9412]) +1 other test skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
    - shard-tglu:         NOTRUN -> [SKIP][280] ([i915#2437] / [i915#9412])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-7/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
    - shard-glk:          NOTRUN -> [SKIP][281] ([fdo#109271] / [i915#2437])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-glk3/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-dg2:          NOTRUN -> [SKIP][282] ([i915#2437])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-mtlp:         NOTRUN -> [SKIP][283] ([i915#2437] / [i915#9412])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@mi-rpc:
    - shard-dg2:          NOTRUN -> [SKIP][284] ([i915#2434] / [i915#7387])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@perf@mi-rpc.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg1:          NOTRUN -> [FAIL][285] ([i915#6806])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@perf_pmu@frequency@gt0.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-tglu:         NOTRUN -> [SKIP][286] ([i915#8516])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@perf_pmu@rc6-all-gts.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-dg2:          NOTRUN -> [SKIP][287] ([i915#8516])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_udl:
    - shard-rkl:          NOTRUN -> [SKIP][288] ([fdo#109291])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@prime_udl.html

  * igt@prime_vgem@basic-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][289] ([i915#3708] / [i915#4077])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-read:
    - shard-mtlp:         NOTRUN -> [SKIP][290] ([i915#3708])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@fence-read-hang:
    - shard-dg1:          NOTRUN -> [SKIP][291] ([i915#3708])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@prime_vgem@fence-read-hang.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-dg2:          NOTRUN -> [SKIP][292] ([i915#9917])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-dg1:          NOTRUN -> [SKIP][293] ([i915#9917])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@sriov_basic@enable-vfs-autoprobe-on.html

  * igt@v3d/v3d_get_param@base-params:
    - shard-mtlp:         NOTRUN -> [SKIP][294] ([i915#2575]) +7 other tests skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@v3d/v3d_get_param@base-params.html

  * igt@v3d/v3d_perfmon@create-perfmon-0:
    - shard-tglu:         NOTRUN -> [SKIP][295] ([fdo#109315] / [i915#2575]) +7 other tests skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@v3d/v3d_perfmon@create-perfmon-0.html

  * igt@v3d/v3d_perfmon@create-two-perfmon:
    - shard-dg1:          NOTRUN -> [SKIP][296] ([i915#2575]) +4 other tests skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@v3d/v3d_perfmon@create-two-perfmon.html

  * igt@v3d/v3d_submit_cl@simple-flush-cache:
    - shard-dg2:          NOTRUN -> [SKIP][297] ([i915#2575]) +12 other tests skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@v3d/v3d_submit_cl@simple-flush-cache.html

  * igt@v3d/v3d_submit_csd@valid-multisync-submission:
    - shard-rkl:          NOTRUN -> [SKIP][298] ([fdo#109315]) +4 other tests skip
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@v3d/v3d_submit_csd@valid-multisync-submission.html

  * igt@vc4/vc4_label_bo@set-label:
    - shard-dg1:          NOTRUN -> [SKIP][299] ([i915#7711]) +4 other tests skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@vc4/vc4_label_bo@set-label.html

  * igt@vc4/vc4_mmap@mmap-bad-handle:
    - shard-tglu:         NOTRUN -> [SKIP][300] ([i915#2575]) +3 other tests skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-7/igt@vc4/vc4_mmap@mmap-bad-handle.html

  * igt@vc4/vc4_perfmon@create-single-perfmon:
    - shard-rkl:          NOTRUN -> [SKIP][301] ([i915#7711]) +1 other test skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@vc4/vc4_perfmon@create-single-perfmon.html

  * igt@vc4/vc4_tiling@get-bad-modifier:
    - shard-dg2:          NOTRUN -> [SKIP][302] ([i915#7711]) +10 other tests skip
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@vc4/vc4_tiling@get-bad-modifier.html

  * igt@vc4/vc4_tiling@set-bad-flags:
    - shard-mtlp:         NOTRUN -> [SKIP][303] ([i915#7711]) +6 other tests skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@vc4/vc4_tiling@set-bad-flags.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [FAIL][304] ([i915#7742]) -> [PASS][305]
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-rkl-3/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@gem_eio@create-ext:
    - shard-dg2:          [ABORT][306] -> [PASS][307] +1 other test pass
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@gem_eio@create-ext.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@gem_eio@create-ext.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][308] ([i915#2846]) -> [PASS][309]
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-glk1/igt@gem_exec_fair@basic-deadline.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-glk6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglu:         [FAIL][310] ([i915#2842]) -> [PASS][311]
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-tglu-8/igt@gem_exec_fair@basic-pace@rcs0.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-2/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-rkl:          [FAIL][312] ([i915#2842]) -> [PASS][313]
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-rkl-4/igt@gem_exec_fair@basic-pace@vcs0.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_flush@basic-wb-prw-default:
    - shard-snb:          [ABORT][314] -> [PASS][315]
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-snb2/igt@gem_exec_flush@basic-wb-prw-default.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-snb4/igt@gem_exec_flush@basic-wb-prw-default.html

  * igt@gem_lmem_swapping@heavy-multi@lmem0:
    - shard-dg1:          [FAIL][316] -> [PASS][317]
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg1-19/igt@gem_lmem_swapping@heavy-multi@lmem0.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-13/igt@gem_lmem_swapping@heavy-multi@lmem0.html
    - shard-dg2:          [FAIL][318] -> [PASS][319]
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-6/igt@gem_lmem_swapping@heavy-multi@lmem0.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@gem_lmem_swapping@heavy-multi@lmem0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          [INCOMPLETE][320] ([i915#9820] / [i915#9849]) -> [PASS][321]
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@i915_module_load@reload-with-fault-injection.html
    - shard-tglu:         [INCOMPLETE][322] -> [PASS][323]
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_power@sanity:
    - shard-mtlp:         [SKIP][324] ([i915#7984]) -> [PASS][325]
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-mtlp-8/igt@i915_power@sanity.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-2/igt@i915_power@sanity.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-dg2:          [SKIP][326] ([fdo#109315]) -> [PASS][327] +5 other tests pass
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [FAIL][328] ([i915#3743]) -> [PASS][329] +2 other tests pass
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size:
    - shard-dg2:          [INCOMPLETE][330] -> [PASS][331]
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-2/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:
    - shard-snb:          [SKIP][332] ([fdo#109271]) -> [PASS][333] +7 other tests pass
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg2:          [SKIP][334] ([i915#9519]) -> [PASS][335]
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-6/igt@kms_pm_rpm@modeset-lpsp.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-dg2:          [SKIP][336] ([i915#9980]) -> [PASS][337]
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][338] ([i915#9519]) -> [PASS][339] +2 other tests pass
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_prop_blob@blob-prop-validate:
    - shard-dg2:          [SKIP][340] ([i915#2575]) -> [PASS][341] +31 other tests pass
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_prop_blob@blob-prop-validate.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_prop_blob@blob-prop-validate.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
    - shard-mtlp:         [FAIL][342] ([i915#9196]) -> [PASS][343]
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-mtlp-3/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
    - shard-tglu:         [FAIL][344] ([i915#9196]) -> [PASS][345]
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html

  * igt@perf@invalid-oa-metric-set-id:
    - shard-dg2:          [SKIP][346] ([i915#5608]) -> [PASS][347] +1 other test pass
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@perf@invalid-oa-metric-set-id.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@perf@invalid-oa-metric-set-id.html

  * igt@perf_pmu@rc6-suspend:
    - shard-dg2:          [INCOMPLETE][348] ([i915#9853]) -> [PASS][349]
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-6/igt@perf_pmu@rc6-suspend.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@perf_pmu@rc6-suspend.html

  
#### Warnings ####

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-dg2:          [FAIL][350] ([i915#10087]) -> [SKIP][351] ([i915#7701])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@device_reset@unbind-cold-reset-rebind.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@gem_exec_fair@basic-pace-share:
    - shard-dg2:          [SKIP][352] ([i915#2575]) -> [SKIP][353] ([i915#3539] / [i915#4852])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@gem_exec_fair@basic-pace-share.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_exec_fair@basic-pace-share.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-dg2:          [SKIP][354] ([i915#2575]) -> [SKIP][355] ([i915#3281]) +2 other tests skip
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@gem_exec_reloc@basic-write-read-active.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
    - shard-dg2:          [SKIP][356] ([i915#2575]) -> [SKIP][357] ([i915#4860])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html

  * igt@gem_media_fill@media-fill:
    - shard-dg2:          [SKIP][358] ([i915#2575]) -> [SKIP][359] ([i915#8289])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@gem_media_fill@media-fill.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_media_fill@media-fill.html

  * igt@gem_mmap@short-mmap:
    - shard-dg2:          [SKIP][360] ([i915#2575]) -> [SKIP][361] ([i915#4083]) +1 other test skip
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@gem_mmap@short-mmap.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_mmap@short-mmap.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-dg2:          [SKIP][362] ([i915#2575]) -> [SKIP][363] ([i915#4270])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_readwrite@new-obj:
    - shard-dg2:          [SKIP][364] ([i915#2575]) -> [SKIP][365] ([i915#3282]) +2 other tests skip
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@gem_readwrite@new-obj.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_readwrite@new-obj.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:
    - shard-dg2:          [SKIP][366] ([i915#2575] / [i915#5190]) -> [SKIP][367] ([i915#5190]) +1 other test skip
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html

  * igt@gem_spin_batch@spin-all-new:
    - shard-dg2:          [SKIP][368] ([i915#2575]) -> [FAIL][369] ([i915#5889])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@gem_spin_batch@spin-all-new.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_spin_batch@spin-all-new.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-dg2:          [SKIP][370] ([i915#2575]) -> [SKIP][371] ([i915#3297])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@gem_userptr_blits@coherency-sync.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_userptr_blits@coherency-sync.html

  * igt@gen3_render_mixed_blits:
    - shard-dg2:          [SKIP][372] ([i915#2575]) -> [SKIP][373] ([fdo#109289])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@gen3_render_mixed_blits.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gen3_render_mixed_blits.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-dg2:          [SKIP][374] ([i915#2575]) -> [SKIP][375] ([i915#2856])
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@gen9_exec_parse@basic-rejected-ctx-param.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [ABORT][376] ([i915#10131] / [i915#9820]) -> [ABORT][377] ([i915#10131] / [i915#9697])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-tglu:         [FAIL][378] ([i915#3591]) -> [WARN][379] ([i915#2681])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-8/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-dg2:          [SKIP][380] ([i915#2575]) -> [SKIP][381] ([i915#4077]) +3 other tests skip
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@i915_suspend@fence-restore-untiled.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-dg2:          [SKIP][382] ([fdo#109315] / [i915#5190]) -> [SKIP][383] ([i915#4538] / [i915#5190]) +2 other tests skip
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_chamelium_color@ctm-blue-to-red:
    - shard-dg2:          [SKIP][384] ([i915#2575]) -> [SKIP][385] ([fdo#111827])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_chamelium_color@ctm-blue-to-red.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_chamelium_color@ctm-blue-to-red.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-dg2:          [SKIP][386] ([i915#2575]) -> [SKIP][387] ([i915#7828]) +1 other test skip
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_chamelium_frames@dp-crc-fast.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-snb:          [SKIP][388] ([fdo#109271]) -> [INCOMPLETE][389] ([i915#8816])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-snb1/igt@kms_content_protection@atomic-dpms.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-snb7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@content-type-change:
    - shard-snb:          [INCOMPLETE][390] ([i915#8816]) -> [SKIP][391] ([fdo#109271])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-snb7/igt@kms_content_protection@content-type-change.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-snb5/igt@kms_content_protection@content-type-change.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-dg2:          [SKIP][392] ([i915#2575]) -> [SKIP][393] ([i915#3555]) +2 other tests skip
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
    - shard-dg2:          [SKIP][394] ([i915#2575]) -> [SKIP][395] ([fdo#109274] / [i915#5354])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          [SKIP][396] ([fdo#109315]) -> [SKIP][397] ([i915#3840] / [i915#9688])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_dsc@dsc-fractional-bpp.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][398] ([fdo#110189] / [i915#3955]) -> [SKIP][399] ([i915#3955])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-rkl-1/igt@kms_fbcon_fbt@psr.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@kms_fbcon_fbt@psr.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][400] ([i915#3955]) -> [SKIP][401] ([fdo#110189] / [i915#3955])
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-rkl-3/igt@kms_fbcon_fbt@psr-suspend.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-dg2:          [SKIP][402] ([i915#2575]) -> [SKIP][403] ([fdo#109274] / [fdo#111767])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-dg2:          [SKIP][404] ([i915#2575]) -> [SKIP][405] ([fdo#109274])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_flip@2x-plain-flip-ts-check.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][406] ([fdo#109315]) -> [SKIP][407] ([i915#8708]) +2 other tests skip
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-snb:          [SKIP][408] ([fdo#109271] / [fdo#111767]) -> [SKIP][409] ([fdo#109271])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-snb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-snb4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-dg2:          [SKIP][410] ([fdo#109315]) -> [SKIP][411] ([i915#3458]) +4 other tests skip
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt:
    - shard-dg2:          [SKIP][412] ([fdo#109315]) -> [SKIP][413] ([i915#5354]) +4 other tests skip
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:
    - shard-snb:          [SKIP][414] ([fdo#109271]) -> [SKIP][415] ([fdo#109271] / [fdo#111767]) +1 other test skip
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-snb7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-snb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-dg2:          [SKIP][416] ([i915#2575]) -> [SKIP][417] ([i915#3555] / [i915#8228]) +1 other test skip
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_hdr@static-toggle-dpms.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][418] ([i915#4070] / [i915#4816]) -> [SKIP][419] ([i915#4816])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_psr@fbc-psr2-sprite-blt:
    - shard-dg2:          [SKIP][420] ([i915#9732]) -> [SKIP][421] ([i915#9673] / [i915#9732]) +9 other tests skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-5/igt@kms_psr@fbc-psr2-sprite-blt.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_psr@fbc-psr2-sprite-blt.html

  * igt@kms_psr@pr-primary-mmap-cpu:
    - shard-dg2:          [SKIP][422] ([fdo#109315]) -> [SKIP][423] ([i915#9732]) +4 other tests skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_psr@pr-primary-mmap-cpu.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_psr@pr-primary-mmap-cpu.html

  * igt@kms_psr@psr-cursor-render:
    - shard-dg2:          [SKIP][424] ([i915#9673] / [i915#9732]) -> [SKIP][425] ([i915#9732]) +14 other tests skip
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_psr@psr-cursor-render.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@kms_psr@psr-cursor-render.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-dg2:          [SKIP][426] ([i915#2575]) -> [SKIP][427] ([i915#86

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/index.html

--===============7195761667401834425==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftest_hangcheck: Check sanity with more patience (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130512/">https://patchwork.freedesktop.org/series/130512/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14383_full -&gt; Patchwork_130512v3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_130512v3_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_130512v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (8 -&gt; 8)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_130512v3_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@drm_read@short-buffer-wakeup:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg1-19/igt@drm_read@short-buffer-wakeup.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-13/igt@drm_read@short-buffer-wakeup.html">INCOMPLETE</a></li>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-glk5/igt@drm_read@short-buffer-wakeup.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-glk3/igt@drm_read@short-buffer-wakeup.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@deep@vecs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@gem_exec_schedule@deep@vecs0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@gem_lmem_swapping@verify-ccs@lmem0.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg1-16/igt@i915_pm_rpm@system-suspend-execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-16/igt@i915_pm_rpm@system-suspend-execbuf.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@nopreempt@ccs2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@sysfs_heartbeat_interval@nopreempt@ccs2.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130512v3_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@api_intel_bb@blit-reloc-purge-cache.html">SKIP</a> ([i915#8411]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> ([i915#7701])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@all-busy-check-all:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@drm_fdinfo@all-busy-check-all.html">SKIP</a> ([i915#8414]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@ccs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@drm_fdinfo@busy-check-all@ccs0.html">SKIP</a> ([i915#8414]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@ccs3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@drm_fdinfo@busy-idle-check-all@ccs3.html">SKIP</a> ([i915#8414]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@gem_basic@multigpu-create-close.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@gem_busy@semaphore.html">SKIP</a> ([i915#3936])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-snb4/igt@gem_ccs@block-copy-compressed.html">SKIP</a> ([fdo#109271]) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_compute@compute-square:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@gem_compute@compute-square.html">SKIP</a> ([i915#9310])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@gem_create@create-ext-cpu-access-sanity-check.html">SKIP</a> ([i915#6335])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@gem_create@create-ext-set-pat.html">SKIP</a> ([i915#8562])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_freq@sysfs@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@gem_ctx_freq@sysfs@gt0.html">FAIL</a> ([i915#9561])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-stop:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@gem_ctx_persistence@heartbeat-stop.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs0.html">SKIP</a> ([i915#5882]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> ([i915#280])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-7/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@gem_exec_balancer@invalid-bonds.html">SKIP</a> ([i915#4036])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@noheartbeat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@gem_exec_balancer@noheartbeat.html">SKIP</a> ([i915#8555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@sliced:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@gem_exec_balancer@sliced.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-zero:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@gem_exec_capture@many-4k-zero.html">FAIL</a> ([i915#9606])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@gem_exec_fair@basic-none.html">SKIP</a> ([i915#3539] / [i915#4852]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-glk3/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2842]) +3 other tests fail</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2842])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-7/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@gem_exec_fair@basic-none-share.html">SKIP</a> ([i915#3539] / [i915#4852]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@gem_exec_fair@basic-pace-share.html">SKIP</a> ([i915#4473] / [i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@gem_exec_fence@submit3.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@gem_exec_flush@basic-uc-set-default.html">SKIP</a> ([i915#3539]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@gem_exec_params@rsvd2-dirt.html">SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@gem_exec_params@secure-non-master.html">SKIP</a> ([fdo#112283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@gem_exec_reloc@basic-cpu-read.html">SKIP</a> ([i915#3281]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@gem_exec_reloc@basic-gtt-cpu-active.html">SKIP</a> ([i915#3281]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@gem_exec_reloc@basic-wc-read-active.html">SKIP</a> ([i915#3281]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@gem_exec_reloc@basic-write-wc-noreloc.html">SKIP</a> ([i915#3281]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@reorder-wide:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@gem_exec_schedule@reorder-wide.html">SKIP</a> ([i915#4537] / [i915#4812]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html">SKIP</a> ([i915#4860]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@gem_lmem_swapping@heavy-verify-multi.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-glk3/igt@gem_lmem_swapping@heavy-verify-random-ccs.html">SKIP</a> ([fdo#109271] / [i915#4613]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@gem_lmem_swapping@massive.html">SKIP</a> ([i915#4613]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> ([i915#5493])</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@gem_media_fill@media-fill.html">SKIP</a> ([i915#8289])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-offset:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@gem_mmap@bad-offset.html">SKIP</a> ([i915#4083]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@short-mmap:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@gem_mmap@short-mmap.html">SKIP</a> ([i915#4083]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">SKIP</a> ([i915#4077]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">SKIP</a> ([i915#4077]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@invalid-flags:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@gem_mmap_wc@invalid-flags.html">SKIP</a> ([i915#4083]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_partial_pwrite_pread@write.html">SKIP</a> ([i915#3282]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-buffer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@gem_pxp@create-regular-buffer.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html">SKIP</a> ([i915#4270]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@gem_pxp@fail-invalid-protected-context.html">SKIP</a> ([i915#4270]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@gem_pxp@verify-pxp-stale-ctx-execution.html">SKIP</a> ([i915#4270]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@gem_readwrite@beyond-eob.html">SKIP</a> ([i915#3282]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@new-obj:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@gem_readwrite@new-obj.html">SKIP</a> ([i915#3282]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@read-bad-handle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@gem_readwrite@read-bad-handle.html">SKIP</a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html">SKIP</a> ([i915#8428]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> ([i915#4079]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html">SKIP</a> ([i915#4079]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_softpin@evict-snoop.html">SKIP</a> ([i915#4885])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@gem_userptr_blits@access-control.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a> ([i915#3282] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-7/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@gem_userptr_blits@readonly-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allocation:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@gen7_exec_parse@basic-allocation.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@gen7_exec_parse@basic-offset.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-rejected:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@gen7_exec_parse@basic-rejected.html">SKIP</a> ([fdo#109289]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@batch-without-end:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@gen7_exec_parse@batch-without-end.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@gen7_exec_parse@oacontrol-tracking.html">SKIP</a> ([fdo#109289]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-glk4/igt@gen9_exec_parse@allowed-all.html">INCOMPLETE</a> ([i915#5566])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@gen9_exec_parse@bb-chained.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> ([i915#2527]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@gen9_exec_parse@unaligned-access.html">SKIP</a> ([i915#2856]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@i915_fb_tiling.html">SKIP</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@i915_module_load@resize-bar.html">SKIP</a> ([i915#6412])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@i915_pm_freq_mult@media-freq@gt1.html">SKIP</a> ([i915#6590]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html">FAIL</a> ([i915#3591])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#6621]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@i915_pm_rps@thresholds@gt0.html">SKIP</a> ([i915#8925]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@i915_query@hwconfig_table.html">SKIP</a> ([i915#6245])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@i915_query@query-topology-unsupported.html">SKIP</a> ([fdo#109302])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@i915_selftest@mock@memory_region.html">DMESG-WARN</a> ([i915#9311])</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@intel_hwmon@hwmon-write.html">SKIP</a> ([i915#7707])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-tglu-5/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1.html">FAIL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-glk9/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> ([fdo#109271] / [i915#1769])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html">SKIP</a> ([i915#4538] / [i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#5286]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">SKIP</a> ([fdo#111615] / [i915#5286]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@kms_big_fb@linear-32bpp-rotate-270.html">SKIP</a> ([fdo#111614]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> ([fdo#111614]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html">SKIP</a> ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> ([i915#4538] / [i915#5190]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@kms_big_fb@y-tiled-addfb-size-overflow.html">SKIP</a> ([i915#5190]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SKIP</a> ([i915#4538]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#110723]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#111615]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a> ([fdo#111615]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_big_joiner@2x-modeset.html">SKIP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_big_joiner@basic.html">SKIP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@kms_cdclk@mode-transition.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html">SKIP</a> ([i915#7213]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@kms_chamelium_color@ctm-0-25.html">SKIP</a> ([fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-blue-to-red:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_chamelium_color@ctm-blue-to-red.html">SKIP</a> ([fdo#111827]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-max:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_chamelium_color@ctm-max.html">SKIP</a> ([fdo#111827]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html">SKIP</a> ([i915#7828]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-cmp-planar-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html">SKIP</a> ([i915#7828]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-multiple:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@kms_chamelium_frames@hdmi-crc-multiple.html">SKIP</a> ([i915#7828]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-after-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html">SKIP</a> ([i915#7828]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html">SKIP</a> ([i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_content_protection@atomic.html">SKIP</a> ([i915#7116] / [i915#9424]) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@kms_content_protection@atomic.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_content_protection@content-type-change.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#3116] / [i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@kms_content_protection@lic-type-1.html">SKIP</a> ([i915#6944] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@kms_content_protection@type1.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-4.html">FAIL</a> ([i915#1339])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a> ([i915#3359]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@kms_cursor_crc@cursor-onscreen-256x85.html">SKIP</a> ([i915#8814]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-32x10.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> ([i915#3359]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html">SKIP</a> ([i915#3555] / [i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">SKIP</a> ([fdo#109274] / [i915#5354]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-snb2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html">SKIP</a> ([fdo#109271] / [fdo#111767])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> ([i915#9809]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i915#4103] / [i915#4213]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@torture-bo@pipe-a:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-snb5/igt@kms_cursor_legacy@torture-bo@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-snb5/igt@kms_cursor_legacy@torture-bo@pipe-a.html">DMESG-WARN</a> ([i915#10166])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-5/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html">SKIP</a> ([fdo#110189] / [i915#9723])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> ([i915#9833])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@kms_dp_aux_dev.html">SKIP</a> ([i915#1257])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#3840] / [i915#9159])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#3840] / [i915#9688])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_dsc@dsc-with-output-formats-with-bpc.html">SKIP</a> ([i915#3840] / [i915#9053])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@kms_feature_discovery@display-3x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_feature_discovery@dp-mst.html">SKIP</a> ([i915#9337])</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_fence_pin_leak.html">SKIP</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-busy-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@kms_flip@2x-busy-flip.html">SKIP</a> ([fdo#111825] / [i915#9934]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html">SKIP</a> ([fdo#111767] / [i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@kms_flip@2x-flip-vs-modeset.html">SKIP</a> ([i915#3637]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html">SKIP</a> ([fdo#109274] / [fdo#111767])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html">SKIP</a> ([fdo#111767] / [fdo#111825])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@kms_flip@2x-modeset-vs-vblank-race.html">SKIP</a> ([fdo#111825]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-7/igt@kms_flip@2x-nonexisting-fb-interruptible.html">SKIP</a> ([fdo#109274] / [i915#3637]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html">SKIP</a> ([fdo#109274]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_flip@flip-vs-fences-interruptible.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode.html">SKIP</a> ([i915#8810]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> ([i915#3555] / [i915#8810]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-default-mode.html">SKIP</a> ([i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> ([fdo#111767] / [i915#1825]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> ([i915#5354]) +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> ([fdo#109271]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html">SKIP</a> ([i915#3458]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html">SKIP</a> ([i915#3458]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html">SKIP</a> ([fdo#111825]) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff.html">SKIP</a> ([fdo#109280] / [fdo#111767])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([i915#1825]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([i915#3023]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> ([fdo#111825] / [i915#1825]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite.html">SKIP</a> ([fdo#111767] / [i915#5354]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt.html">SKIP</a> ([fdo#110189]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@kms_hdr@static-toggle.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> ([i915#3555] / [i915#8228]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#4816])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@kms_panel_fitting@legacy.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-glk3/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html">FAIL</a> ([i915#7862]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-none@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_plane_lowres@tiling-none@pipe-b-edp-1.html">SKIP</a> ([i915#3582]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> ([fdo#109274]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-edp-1.html">SKIP</a> ([i915#5176]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#9423]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-glk5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1.html">SKIP</a> ([fdo#109271]) +174 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-c-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-19/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-c-hdmi-a-4.html">SKIP</a> ([i915#9423]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#9423]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#5176] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#5235]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#5235]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-dp-4.html">SKIP</a> ([i915#5235] / [i915#9423]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c-edp-1.html">SKIP</a> ([i915#5235]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-edp-1.html">SKIP</a> ([i915#3555] / [i915#5235])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@kms_pm_backlight@fade.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@kms_pm_backlight@fade-with-suspend.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> ([i915#9340])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> ([i915#8430])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([i915#9519]) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@pm-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_pm_rpm@pm-tiling.html">SKIP</a> ([i915#4077]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_prime@d3hot.html">SKIP</a> ([i915#6524] / [i915#6805])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([fdo#110189]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-snb4/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-sf.html">SKIP</a> ([fdo#109271] / [fdo#110189]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@kms_psr2_sf@fbc-overlay-plane-update-continuous-sf.html">SKIP</a> ([fdo#110189]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-glk3/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html">SKIP</a> ([fdo#109271] / [fdo#110189]) +3 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html">SKIP</a> ([fdo#110189]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_psr@fbc-psr-primary-blt.html">SKIP</a> ([i915#9673] / [i915#9732]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-sprite-plane-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@kms_psr@fbc-psr-sprite-plane-move.html">SKIP</a> ([i915#9732]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@kms_psr@fbc-psr2-basic.html">SKIP</a> ([i915#9732]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-primary-mmap-cpu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_psr@pr-primary-mmap-cpu.html">SKIP</a> ([i915#9688]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@kms_psr@psr-primary-mmap-cpu.html">SKIP</a> ([i915#9732]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-primary-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_psr@psr2-primary-mmap-gtt.html">SKIP</a> ([i915#9732]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> ([i915#9685])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html">SKIP</a> ([i915#5289]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-rkl-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html">INCOMPLETE</a> ([i915#9569])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> ([fdo#111615] / [i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> ([i915#4235] / [i915#5190]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> ([fdo#111615] / [i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> ([i915#3555]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-exclusive-crtc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@kms_setmode@invalid-clone-exclusive-crtc.html">SKIP</a> ([i915#3555] / [i915#8823])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_tiled_display@basic-test-pattern.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#9196])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-snb2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-snb2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html">FAIL</a> ([i915#9196])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@kms_vrr@max-min.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> ([i915#8808] / [i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@kms_writeback@writeback-fb-id.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@kms_writeback@writeback-fb-id-xrgb2101010.html">SKIP</a> ([i915#2437] / [i915#9412]) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-7/igt@kms_writeback@writeback-fb-id-xrgb2101010.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-glk3/igt@kms_writeback@writeback-fb-id-xrgb2101010.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@perf@mi-rpc.html">SKIP</a> ([i915#2434] / [i915#7387])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@perf_pmu@frequency@gt0.html">FAIL</a> ([i915#6806])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-5/igt@perf_pmu@rc6-all-gts.html">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@perf_pmu@rc6@other-idle-gt0.html">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@prime_udl:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@prime_udl.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@prime_vgem@basic-gtt.html">SKIP</a> ([i915#3708] / [i915#4077])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@prime_vgem@basic-read.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@prime_vgem@fence-read-hang.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@sriov_basic@enable-vfs-autoprobe-off.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-12/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_get_param@base-params:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-5/igt@v3d/v3d_get_param@base-params.html">SKIP</a> ([i915#2575]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@create-perfmon-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-3/igt@v3d/v3d_perfmon@create-perfmon-0.html">SKIP</a> ([fdo#109315] / [i915#2575]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@create-two-perfmon:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@v3d/v3d_perfmon@create-two-perfmon.html">SKIP</a> ([i915#2575]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@simple-flush-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@v3d/v3d_submit_cl@simple-flush-cache.html">SKIP</a> ([i915#2575]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@valid-multisync-submission:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@v3d/v3d_submit_csd@valid-multisync-submission.html">SKIP</a> ([fdo#109315]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_label_bo@set-label:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-15/igt@vc4/vc4_label_bo@set-label.html">SKIP</a> ([i915#7711]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_mmap@mmap-bad-handle:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-7/igt@vc4/vc4_mmap@mmap-bad-handle.html">SKIP</a> ([i915#2575]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@create-single-perfmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@vc4/vc4_perfmon@create-single-perfmon.html">SKIP</a> ([i915#7711]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@get-bad-modifier:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@vc4/vc4_tiling@get-bad-modifier.html">SKIP</a> ([i915#7711]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@set-bad-flags:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@vc4/vc4_tiling@set-bad-flags.html">SKIP</a> ([i915#7711]) +6 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-rkl-3/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAIL</a> ([i915#7742]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@create-ext:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@gem_eio@create-ext.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@gem_eio@create-ext.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-glk1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-glk6/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-tglu-8/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-2/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-rkl-4/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-prw-default:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-snb2/igt@gem_exec_flush@basic-wb-prw-default.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-snb4/igt@gem_exec_flush@basic-wb-prw-default.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi@lmem0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg1-19/igt@gem_lmem_swapping@heavy-multi@lmem0.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg1-13/igt@gem_lmem_swapping@heavy-multi@lmem0.html">PASS</a></li>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-6/igt@gem_lmem_swapping@heavy-multi@lmem0.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@gem_lmem_swapping@heavy-multi@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a> ([i915#9820] / [i915#9849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-mtlp-8/igt@i915_power@sanity.html">SKIP</a> ([i915#7984]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-2/igt@i915_power@sanity.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> ([fdo#109315]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">FAIL</a> ([i915#3743]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-2/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-6/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([i915#9980]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_prop_blob@blob-prop-validate:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_prop_blob@blob-prop-validate.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_prop_blob@blob-prop-validate.html">PASS</a> +31 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-mtlp-3/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html">FAIL</a> ([i915#9196]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html">FAIL</a> ([i915#9196]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@invalid-oa-metric-set-id:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@perf@invalid-oa-metric-set-id.html">SKIP</a> ([i915#5608]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@perf@invalid-oa-metric-set-id.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-6/igt@perf_pmu@rc6-suspend.html">INCOMPLETE</a> ([i915#9853]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@perf_pmu@rc6-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@device_reset@unbind-cold-reset-rebind.html">FAIL</a> ([i915#10087]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> ([i915#7701])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@gem_exec_fair@basic-pace-share.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_exec_fair@basic-pace-share.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@gem_exec_reloc@basic-write-read-active.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_exec_reloc@basic-write-read-active.html">SKIP</a> ([i915#3281]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@gem_media_fill@media-fill.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_media_fill@media-fill.html">SKIP</a> ([i915#8289])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@short-mmap:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@gem_mmap@short-mmap.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_mmap@short-mmap.html">SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@gem_pxp@verify-pxp-stale-ctx-execution.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_pxp@verify-pxp-stale-ctx-execution.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@new-obj:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@gem_readwrite@new-obj.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_readwrite@new-obj.html">SKIP</a> ([i915#3282]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html">SKIP</a> ([i915#2575] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html">SKIP</a> ([i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@spin-all-new:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@gem_spin_batch@spin-all-new.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_spin_batch@spin-all-new.html">FAIL</a> ([i915#5889])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen3_render_mixed_blits:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@gen3_render_mixed_blits.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gen3_render_mixed_blits.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10131] / [i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10131] / [i915#9697])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">FAIL</a> ([i915#3591]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-tglu-8/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">WARN</a> ([i915#2681])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@i915_suspend@fence-restore-untiled.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@i915_suspend@fence-restore-untiled.html">SKIP</a> ([i915#4077]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109315] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#4538] / [i915#5190]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-blue-to-red:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_chamelium_color@ctm-blue-to-red.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_chamelium_color@ctm-blue-to-red.html">SKIP</a> ([fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_chamelium_frames@dp-crc-fast.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_chamelium_frames@dp-crc-fast.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-snb1/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-snb7/igt@kms_content_protection@atomic-dpms.html">INCOMPLETE</a> ([i915#8816])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-snb7/igt@kms_content_protection@content-type-change.html">INCOMPLETE</a> ([i915#8816]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-snb5/igt@kms_content_protection@content-type-change.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> ([fdo#109274] / [i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([fdo#109315]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#3840] / [i915#9688])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-rkl-1/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([fdo#110189] / [i915#3955]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-7/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([i915#3955])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-rkl-3/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> ([i915#3955]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> ([fdo#110189] / [i915#3955])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html">SKIP</a> ([fdo#109274] / [fdo#111767])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_flip@2x-plain-flip-ts-check.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_flip@2x-plain-flip-ts-check.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109315]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-snb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109271] / [fdo#111767]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-snb4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html">SKIP</a> ([fdo#109315]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html">SKIP</a> ([i915#3458]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> ([fdo#109315]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> ([i915#5354]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-snb7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-snb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite.html">SKIP</a> ([fdo#109271] / [fdo#111767]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#4070] / [i915#4816]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#4816])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-5/igt@kms_psr@fbc-psr2-sprite-blt.html">SKIP</a> ([i915#9732]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-11/igt@kms_psr@fbc-psr2-sprite-blt.html">SKIP</a> ([i915#9673] / [i915#9732]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-primary-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_psr@pr-primary-mmap-cpu.html">SKIP</a> ([fdo#109315]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-2/igt@kms_psr@pr-primary-mmap-cpu.html">SKIP</a> ([i915#9732]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14383/shard-dg2-11/igt@kms_psr@psr-cursor-render.html">SKIP</a> ([i915#9673] / [i915#9732]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v3/shard-dg2-6/igt@kms_psr@psr-cursor-render.html">SKIP</a> ([i915#9732]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-dg2:          [SKIP][426] ([i915#2575]) -&gt; [SKIP][427] ([i915#86</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7195761667401834425==--
