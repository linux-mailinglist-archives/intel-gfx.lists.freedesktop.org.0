Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5A598A59C
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 15:42:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C46610E4F2;
	Mon, 30 Sep 2024 13:42:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C90DC10E4E0;
 Mon, 30 Sep 2024 13:42:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4506095166280948880=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EIGT=3A_success_for_drm/i915/vdsc=3A_Add_bpc_ch?=
 =?utf-8?q?eck_in_intel=5Fdsc=5Fcompute=5Fparams_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Sep 2024 13:42:15 -0000
Message-ID: <172770373580.1136492.3778950986274827649@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240926043332.1284692-2-suraj.kandpal@intel.com>
In-Reply-To: <20240926043332.1284692-2-suraj.kandpal@intel.com>
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

--===============4506095166280948880==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/vdsc: Add bpc check in intel_dsc_compute_params (rev4)
URL   : https://patchwork.freedesktop.org/series/139125/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15453_full -> Patchwork_139125v4_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_139125v4_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_139125v4_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 8)
------------------------------

  Missing    (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_139125v4_full:

### IGT changes ###

#### Warnings ####

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-dg1:          [SKIP][1] ([i915#4423]) -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          [FAIL][3] ([i915#7484]) -> [FAIL][4] +1 other test fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-7/igt@perf@non-zero-reason@0-rcs0.html

  
New tests
---------

  New tests have been introduced between CI_DRM_15453_full and Patchwork_139125v4_full:

### New IGT tests (4) ###

  * igt@kms_atomic_transition@plane-all-transition-fencing@pipe-a-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [3.72] s

  * igt@kms_atomic_transition@plane-all-transition-fencing@pipe-b-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [3.78] s

  * igt@kms_hdr:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.95] s

  

Known issues
------------

  Here are the changes found in Patchwork_139125v4_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_fdinfo@virtual-busy-hang:
    - shard-dg1:          NOTRUN -> [SKIP][5] ([i915#8414])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-13/igt@drm_fdinfo@virtual-busy-hang.html

  * igt@gem_caching@read-writes:
    - shard-mtlp:         NOTRUN -> [SKIP][6] ([i915#4873])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@gem_caching@read-writes.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          NOTRUN -> [SKIP][7] ([i915#3555] / [i915#9323])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html
    - shard-tglu:         NOTRUN -> [SKIP][8] ([i915#3555] / [i915#9323])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-3/igt@gem_ccs@block-copy-compressed.html
    - shard-mtlp:         NOTRUN -> [SKIP][9] ([i915#3555] / [i915#9323])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-5/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [PASS][10] -> [INCOMPLETE][11] ([i915#7297]) +1 other test incomplete
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-4/igt@gem_ccs@suspend-resume.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@gem_ccs@suspend-resume.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-tglu:         NOTRUN -> [SKIP][12] ([i915#6335])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-6/igt@gem_create@create-ext-cpu-access-big.html
    - shard-mtlp:         NOTRUN -> [SKIP][13] ([i915#6335])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-tglu:         [PASS][14] -> [FAIL][15] ([i915#12027])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@gem_ctx_engines@invalid-engines.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_persistence@heartbeat-close:
    - shard-mtlp:         NOTRUN -> [SKIP][16] ([i915#8555])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@gem_ctx_persistence@heartbeat-close.html

  * igt@gem_ctx_persistence@hostile:
    - shard-mtlp:         NOTRUN -> [FAIL][17] ([i915#11980])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@gem_ctx_persistence@hostile.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-tglu:         NOTRUN -> [SKIP][18] ([i915#280]) +1 other test skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-4/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@suspend:
    - shard-snb:          [PASS][19] -> [ABORT][20] ([i915#8213])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-snb6/igt@gem_eio@suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-snb6/igt@gem_eio@suspend.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#4525])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-tglu:         NOTRUN -> [SKIP][22] ([i915#6334]) +1 other test skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-4/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_fair@basic-throttle:
    - shard-rkl:          [PASS][23] -> [FAIL][24] ([i915#2842]) +1 other test fail
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-2/igt@gem_exec_fair@basic-throttle.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@gem_exec_fair@basic-throttle.html

  * igt@gem_exec_fence@submit3:
    - shard-mtlp:         NOTRUN -> [SKIP][25] ([i915#4812])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-6/igt@gem_exec_fence@submit3.html

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - shard-dg1:          NOTRUN -> [SKIP][26] ([i915#3539] / [i915#4852]) +1 other test skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-16/igt@gem_exec_flush@basic-wb-rw-before-default.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][27] ([i915#3281]) +11 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_reloc@basic-write-cpu-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#3281])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-1/igt@gem_exec_reloc@basic-write-cpu-noreloc.html

  * igt@gem_huc_copy@huc-copy:
    - shard-rkl:          NOTRUN -> [SKIP][29] ([i915#2190])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-rkl:          NOTRUN -> [SKIP][30] ([i915#4613]) +4 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][31] ([i915#4613]) +4 other tests skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-4/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][32] ([i915#4613])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-7/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_mmap_wc@bad-offset:
    - shard-mtlp:         NOTRUN -> [SKIP][33] ([i915#4083])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-7/igt@gem_mmap_wc@bad-offset.html

  * igt@gem_pread@snoop:
    - shard-rkl:          NOTRUN -> [SKIP][34] ([i915#3282]) +1 other test skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@gem_pread@snoop.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-tglu:         NOTRUN -> [SKIP][35] ([i915#4270]) +3 other tests skip
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-6/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#4270]) +4 other tests skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-mtlp:         NOTRUN -> [SKIP][37] ([i915#4270]) +1 other test skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#8428])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#8411]) +1 other test skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][40] ([i915#4885])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][41] ([i915#3297]) +2 other tests skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@gem_userptr_blits@create-destroy-unsync.html
    - shard-tglu:         NOTRUN -> [SKIP][42] ([i915#3297]) +1 other test skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-3/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_workarounds@suspend-resume:
    - shard-tglu:         NOTRUN -> [ABORT][43] ([i915#12315])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-6/igt@gem_workarounds@suspend-resume.html

  * igt@gen9_exec_parse@bb-large:
    - shard-dg1:          NOTRUN -> [SKIP][44] ([i915#2527])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-13/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#2527]) +3 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.html
    - shard-tglu:         NOTRUN -> [SKIP][46] ([i915#2527] / [i915#2856]) +4 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-3/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#2856])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-8/igt@gen9_exec_parse@secure-batches.html
    - shard-mtlp:         NOTRUN -> [SKIP][48] ([i915#2856]) +1 other test skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-7/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-tglu:         NOTRUN -> [SKIP][49] ([i915#8399])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-6/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][50] ([i915#8399])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-dg1:          NOTRUN -> [FAIL][51] ([i915#3591])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
    - shard-dg1:          [PASS][52] -> [FAIL][53] ([i915#3591])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html

  * igt@i915_pm_rpm@gem-execbuf-stress@smem0:
    - shard-dg1:          [PASS][54] -> [DMESG-WARN][55] ([i915#4423]) +5 other tests dmesg-warn
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-14/igt@i915_pm_rpm@gem-execbuf-stress@smem0.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-18/igt@i915_pm_rpm@gem-execbuf-stress@smem0.html

  * igt@i915_query@hwconfig_table:
    - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#6245])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@i915_query@hwconfig_table.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         NOTRUN -> [ABORT][57] ([i915#12216]) +1 other test abort
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@i915_selftest@live@workarounds.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-dg1:          [PASS][58] -> [DMESG-WARN][59] ([i915#1982] / [i915#4391] / [i915#4423])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-13/igt@i915_suspend@basic-s3-without-i915.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-15/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#4212])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][61] ([i915#8709]) +7 other tests skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-12/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#8709]) +11 other tests skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-3/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-tglu:         [PASS][63] -> [FAIL][64] ([i915#11808]) +1 other test fail
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#1769] / [i915#3555])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing:
    - shard-tglu:         [PASS][66] -> [SKIP][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-6/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-tglu:         NOTRUN -> [SKIP][68] ([i915#5286]) +5 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-3/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#5286]) +6 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         [PASS][70] -> [FAIL][71] ([i915#5138]) +1 other test fail
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-32bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][72] ([i915#3638])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-19/igt@kms_big_fb@linear-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [PASS][73] -> [SKIP][74] ([i915#12306]) +42 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#4538] / [i915#5190])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-3/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#3638]) +1 other test skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-3/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][77] ([i915#6095]) +58 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-12/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#6095]) +9 other tests skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs@pipe-a-edp-1.html

  * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][79] ([i915#4423] / [i915#6095])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-13/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#12313]) +1 other test skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
    - shard-tglu:         NOTRUN -> [SKIP][81] ([i915#12313])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-3/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#6095]) +74 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-b-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#10307] / [i915#6095]) +160 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-10/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-b-dp-3.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][85] ([i915#6095]) +79 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#7213]) +3 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#4087]) +3 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-5/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html

  * igt@kms_chamelium_audio@dp-audio:
    - shard-tglu:         NOTRUN -> [SKIP][88] ([i915#7828]) +7 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_chamelium_audio@dp-audio.html
    - shard-mtlp:         NOTRUN -> [SKIP][89] ([i915#7828]) +2 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-7/igt@kms_chamelium_audio@dp-audio.html
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#7828])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-8/igt@kms_chamelium_audio@dp-audio.html

  * igt@kms_chamelium_color@ctm-blue-to-red:
    - shard-mtlp:         NOTRUN -> [SKIP][91] +5 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@kms_chamelium_color@ctm-blue-to-red.html

  * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][92] ([i915#7828])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-13/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#7828]) +9 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][94] ([i915#3116] / [i915#3299]) +1 other test skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#3116])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@lic-type-0:
    - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#9424])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@lic-type-0@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [TIMEOUT][97] ([i915#7173])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-10/igt@kms_content_protection@lic-type-0@pipe-a-dp-3.html

  * igt@kms_content_protection@type1:
    - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424]) +1 other test skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-4/igt@kms_content_protection@type1.html

  * igt@kms_content_protection@uevent:
    - shard-mtlp:         NOTRUN -> [SKIP][99] ([i915#6944] / [i915#9424])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#11453])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-tglu:         NOTRUN -> [SKIP][101] ([i915#3555]) +2 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg1:          NOTRUN -> [SKIP][102] ([i915#11453])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-19/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][103] ([i915#11453]) +1 other test skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-4/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-256x85:
    - shard-mtlp:         NOTRUN -> [SKIP][104] ([i915#8814])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@kms_cursor_crc@cursor-sliding-256x85.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-tglu:         NOTRUN -> [SKIP][105] ([i915#4103]) +1 other test skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#4103])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
    - shard-mtlp:         NOTRUN -> [SKIP][107] ([i915#9809]) +1 other test skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][108] +30 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#9067])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-tglu:         NOTRUN -> [SKIP][110] ([i915#1769] / [i915#3555] / [i915#3804])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][111] ([i915#3804])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#3804])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dp_aux_dev:
    - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#1257])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@kms_dp_aux_dev.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#3555] / [i915#3840])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@kms_dsc@dsc-with-bpc.html
    - shard-mtlp:         NOTRUN -> [SKIP][115] ([i915#3555] / [i915#3840])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-5/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#3555] / [i915#3840]) +1 other test skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_feature_discovery@chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#4854])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-3/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@psr2:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#658])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-11/igt@kms_feature_discovery@psr2.html
    - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#658])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-3/igt@kms_feature_discovery@psr2.html

  * igt@kms_fence_pin_leak:
    - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#4881])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-3/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][121] +1 other test skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-11/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html
    - shard-mtlp:         NOTRUN -> [SKIP][122] ([i915#3637])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-6/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@2x-flip-vs-modeset:
    - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#3637] / [i915#3966])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-3/igt@kms_flip@2x-flip-vs-modeset.html

  * igt@kms_flip@2x-plain-flip:
    - shard-tglu:         NOTRUN -> [SKIP][124] ([i915#3637]) +4 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-4/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@basic-plain-flip:
    - shard-tglu:         [PASS][125] -> [SKIP][126] ([i915#3637]) +2 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_flip@basic-plain-flip.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_flip@basic-plain-flip.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank:
    - shard-snb:          [PASS][127] -> [INCOMPLETE][128] ([i915#12314]) +1 other test incomplete
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-snb1/igt@kms_flip@flip-vs-blocking-wf-vblank.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-snb6/igt@kms_flip@flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@plain-flip-ts-check@c-hdmi-a1:
    - shard-glk:          ([PASS][129], [PASS][130]) -> [FAIL][131] ([i915#2122]) +1 other test fail
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk7/igt@kms_flip@plain-flip-ts-check@c-hdmi-a1.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk5/igt@kms_flip@plain-flip-ts-check@c-hdmi-a1.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-glk1/igt@kms_flip@plain-flip-ts-check@c-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check@c-hdmi-a3:
    - shard-dg2:          NOTRUN -> [FAIL][132] ([i915#2122]) +2 other tests fail
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-7/igt@kms_flip@plain-flip-ts-check@c-hdmi-a3.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][133] ([i915#2672] / [i915#3555] / [i915#8813])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][134] ([i915#2672])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][135] ([i915#2587] / [i915#2672]) +3 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][136] ([i915#2672] / [i915#3555]) +2 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#2672]) +4 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-dg1:          NOTRUN -> [SKIP][138] ([i915#2587] / [i915#2672] / [i915#3555])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-13/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][139] ([i915#2587] / [i915#2672])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-13/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#2672] / [i915#3555]) +4 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-dg2:          [PASS][141] -> [SKIP][142] ([i915#3555]) +4 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#2672]) +3 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#2672] / [i915#3555])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#8708]) +2 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [PASS][146] -> [SKIP][147] ([i915#5354]) +13 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:
    - shard-tglu:         [PASS][148] -> [SKIP][149] ([i915#1849]) +9 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
    - shard-dg1:          NOTRUN -> [SKIP][150] +3 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
    - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#1825]) +34 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
    - shard-snb:          [PASS][152] -> [SKIP][153] +7 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen:
    - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#3458]) +1 other test skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-onoff:
    - shard-mtlp:         NOTRUN -> [SKIP][155] ([i915#1825]) +5 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
    - shard-tglu:         NOTRUN -> [SKIP][156] +73 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#3458])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#3023]) +22 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][159] ([i915#8708]) +5 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#5354])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#8708])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][162] ([i915#3555] / [i915#8228]) +2 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#3555] / [i915#8228]) +2 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_invalid_mode@bad-vsync-end:
    - shard-tglu:         [PASS][164] -> [SKIP][165] ([i915#3555]) +1 other test skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-6/igt@kms_invalid_mode@bad-vsync-end.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_invalid_mode@bad-vsync-end.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-tglu:         NOTRUN -> [SKIP][166] ([i915#6301])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - shard-dg2:          [PASS][167] -> [SKIP][168] ([i915#9197]) +24 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-4/igt@kms_pipe_crc_basic@hang-read-crc.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_plane@pixel-format-source-clamping:
    - shard-tglu:         [PASS][169] -> [SKIP][170] ([i915#8825]) +1 other test skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-6/igt@kms_plane@pixel-format-source-clamping.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_plane@pixel-format-source-clamping.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb:
    - shard-tglu:         [PASS][171] -> [SKIP][172] ([i915#7294]) +2 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_plane_alpha_blend@alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@constant-alpha-max:
    - shard-dg2:          [PASS][173] -> [SKIP][174] ([i915#7294])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_plane_alpha_blend@constant-alpha-max.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-max.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#3555]) +4 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-glk:          ([PASS][176], [PASS][177]) -> [SKIP][178]
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk7/igt@kms_plane_scaling@intel-max-src-size.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk5/igt@kms_plane_scaling@intel-max-src-size.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-glk2/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#12247]) +8 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
    - shard-dg2:          [PASS][180] -> [SKIP][181] ([i915#8152] / [i915#9423]) +1 other test skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c:
    - shard-dg2:          [PASS][182] -> [SKIP][183] ([i915#12247]) +11 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d:
    - shard-dg2:          [PASS][184] -> [SKIP][185] ([i915#8152]) +1 other test skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:
    - shard-dg2:          [PASS][186] -> [SKIP][187] ([i915#6953] / [i915#8152] / [i915#9423])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75:
    - shard-tglu:         [PASS][188] -> [SKIP][189] ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_plane_scaling@planes-downscale-factor-0-75.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling:
    - shard-tglu:         [PASS][190] -> [SKIP][191] ([i915#3555] / [i915#8152])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_plane_scaling@planes-scaler-unity-scaling.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_plane_scaling@planes-scaler-unity-scaling.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-c:
    - shard-tglu:         [PASS][192] -> [SKIP][193] ([i915#12247]) +8 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-c.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-c.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d:
    - shard-tglu:         [PASS][194] -> [SKIP][195] ([i915#12247] / [i915#8152]) +1 other test skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20:
    - shard-tglu:         [PASS][196] -> [SKIP][197] ([i915#6953] / [i915#8152])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_plane_scaling@planes-upscale-20x20.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-20x20.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-dg2:          [PASS][198] -> [SKIP][199] ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d:
    - shard-dg2:          [PASS][200] -> [SKIP][201] ([i915#12247] / [i915#8152]) +1 other test skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20@pipe-d:
    - shard-tglu:         [PASS][202] -> [SKIP][203] ([i915#8152])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_plane_scaling@planes-upscale-20x20@pipe-d.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-20x20@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
    - shard-tglu:         NOTRUN -> [SKIP][204] ([i915#12247] / [i915#6953])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d:
    - shard-tglu:         NOTRUN -> [SKIP][205] ([i915#12247]) +18 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html

  * igt@kms_pm_backlight@fade:
    - shard-tglu:         NOTRUN -> [SKIP][206] ([i915#9812])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-3/igt@kms_pm_backlight@fade.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][207] ([i915#5354]) +1 other test skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_dc@dc5-dpms-negative:
    - shard-tglu:         [PASS][208] -> [SKIP][209] ([i915#9293])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-6/igt@kms_pm_dc@dc5-dpms-negative.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_pm_dc@dc5-dpms-negative.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [PASS][210] -> [SKIP][211] ([i915#9519]) +1 other test skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#9519])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@pc8-residency:
    - shard-glk:          NOTRUN -> [SKIP][213] +15 other tests skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-glk7/igt@kms_pm_rpm@pc8-residency.html

  * igt@kms_pm_rpm@pm-caching:
    - shard-mtlp:         NOTRUN -> [SKIP][214] ([i915#4077]) +4 other tests skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@kms_pm_rpm@pm-caching.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-mtlp:         NOTRUN -> [SKIP][215] ([i915#6524])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-8/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][216] ([i915#9808]) +2 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf@pipe-b-edp-1.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#11520]) +8 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:
    - shard-tglu:         NOTRUN -> [SKIP][218] ([i915#11520]) +8 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-4/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#9683])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-3/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-psr-no-drrs:
    - shard-tglu:         NOTRUN -> [SKIP][220] ([i915#9732]) +17 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_psr@fbc-psr-no-drrs.html

  * igt@kms_psr@fbc-psr-suspend:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][221] ([i915#2295])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-3/igt@kms_psr@fbc-psr-suspend.html

  * igt@kms_psr@fbc-psr2-sprite-blt@edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][222] ([i915#9688]) +6 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@kms_psr@fbc-psr2-sprite-blt@edp-1.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-rkl:          NOTRUN -> [SKIP][223] ([i915#1072] / [i915#9732]) +18 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-3/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_psr@psr-cursor-render:
    - shard-dg1:          NOTRUN -> [SKIP][224] ([i915#1072] / [i915#9732])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-12/igt@kms_psr@psr-cursor-render.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#9685]) +1 other test skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-rkl:          NOTRUN -> [SKIP][226] ([i915#5289])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
    - shard-tglu:         NOTRUN -> [SKIP][227] ([i915#5289]) +1 other test skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglu:         NOTRUN -> [SKIP][228] ([i915#8623])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-4/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@lobf:
    - shard-rkl:          NOTRUN -> [SKIP][229] ([i915#11920])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@kms_vrr@lobf.html
    - shard-tglu:         NOTRUN -> [SKIP][230] ([i915#11920])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-3/igt@kms_vrr@lobf.html

  * igt@kms_vrr@max-min:
    - shard-rkl:          NOTRUN -> [SKIP][231] ([i915#9906])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-3/igt@kms_vrr@max-min.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-tglu:         NOTRUN -> [SKIP][232] ([i915#2437] / [i915#9412])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-rkl:          NOTRUN -> [SKIP][233] ([i915#2437] / [i915#9412])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf_pmu@all-busy-idle-check-all:
    - shard-dg2:          NOTRUN -> [FAIL][234] ([i915#11943])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-3/igt@perf_pmu@all-busy-idle-check-all.html

  * igt@perf_pmu@busy-double-start@bcs0:
    - shard-mtlp:         [PASS][235] -> [FAIL][236] ([i915#4349])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-mtlp-4/igt@perf_pmu@busy-double-start@bcs0.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-2/igt@perf_pmu@busy-double-start@bcs0.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#8516])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-3/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-fence-read:
    - shard-mtlp:         NOTRUN -> [SKIP][238] ([i915#3708])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@fence-read-hang:
    - shard-rkl:          NOTRUN -> [SKIP][239] ([i915#3708])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@prime_vgem@fence-read-hang.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-rkl:          NOTRUN -> [SKIP][240] ([i915#9917])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@sriov_basic@enable-vfs-autoprobe-on.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-tglu:         NOTRUN -> [SKIP][241] ([i915#9917])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-4/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  * igt@syncobj_wait@invalid-wait-zero-handles:
    - shard-tglu:         NOTRUN -> [FAIL][242] ([i915#9781])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@syncobj_wait@invalid-wait-zero-handles.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-check-all:
    - shard-rkl:          [FAIL][243] ([i915#12179]) -> [PASS][244]
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@drm_fdinfo@most-busy-check-all.html

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [FAIL][245] ([i915#7742]) -> [PASS][246] +2 other tests pass
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-rkl:          [FAIL][247] ([i915#2842]) -> [PASS][248] +5 other tests pass
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [TIMEOUT][249] ([i915#5493]) -> [PASS][250] +1 other test pass
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglu:         [ABORT][251] ([i915#9820]) -> [PASS][252]
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-6/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         [ABORT][253] ([i915#10131] / [i915#9820]) -> [PASS][254]
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          ([PASS][255], [FAIL][256]) ([i915#2346]) -> [PASS][257]
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_dirtyfb@default-dirtyfb-ioctl:
    - shard-dg1:          [DMESG-WARN][258] ([i915#4423]) -> [PASS][259] +1 other test pass
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-19/igt@kms_dirtyfb@default-dirtyfb-ioctl.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-14/igt@kms_dirtyfb@default-dirtyfb-ioctl.html

  * igt@kms_dp_aux_dev:
    - shard-dg2:          [SKIP][260] ([i915#1257]) -> [PASS][261]
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-6/igt@kms_dp_aux_dev.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-10/igt@kms_dp_aux_dev.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-dg2:          [SKIP][262] ([i915#1849]) -> [PASS][263]
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_fbcon_fbt@fbc-suspend.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-plain-flip-fb-recreate:
    - shard-glk:          ([PASS][264], [FAIL][265]) ([i915#2122]) -> [PASS][266] +3 other tests pass
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate.html

  * igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1:
    - shard-snb:          [FAIL][267] ([i915#2122]) -> [PASS][268] +1 other test pass
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-snb2/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-snb4/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          ([FAIL][269], [FAIL][270]) ([i915#2122]) -> [PASS][271]
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@dpms-off-confusion-interruptible:
    - shard-dg2:          [SKIP][272] ([i915#5354]) -> [PASS][273] +18 other tests pass
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_flip@dpms-off-confusion-interruptible.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-11/igt@kms_flip@dpms-off-confusion-interruptible.html

  * igt@kms_flip@plain-flip-ts-check@b-edp1:
    - shard-mtlp:         [FAIL][274] -> [PASS][275]
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-mtlp-7/igt@kms_flip@plain-flip-ts-check@b-edp1.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-1/igt@kms_flip@plain-flip-ts-check@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check@c-edp1:
    - shard-mtlp:         [FAIL][276] ([i915#2122]) -> [PASS][277] +2 other tests pass
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-mtlp-7/igt@kms_flip@plain-flip-ts-check@c-edp1.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-1/igt@kms_flip@plain-flip-ts-check@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check@c-hdmi-a4:
    - shard-dg1:          [FAIL][278] ([i915#2122]) -> [PASS][279] +3 other tests pass
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-14/igt@kms_flip@plain-flip-ts-check@c-hdmi-a4.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-19/igt@kms_flip@plain-flip-ts-check@c-hdmi-a4.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
    - shard-tglu:         [SKIP][280] ([i915#3555]) -> [PASS][281]
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:
    - shard-dg2:          [FAIL][282] ([i915#6880]) -> [PASS][283]
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-rte:
    - shard-tglu:         [SKIP][284] ([i915#1849]) -> [PASS][285] +3 other tests pass
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-rte.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_frontbuffer_tracking@fbc-1p-rte.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          [SKIP][286] ([i915#3555] / [i915#8228]) -> [PASS][287]
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-6/igt@kms_hdr@static-toggle-suspend.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_invalid_mode@bad-hsync-end:
    - shard-dg2:          [SKIP][288] ([i915#3555]) -> [PASS][289] +5 other tests pass
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_invalid_mode@bad-hsync-end.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-11/igt@kms_invalid_mode@bad-hsync-end.html

  * igt@kms_plane@plane-panning-bottom-right-suspend:
    - shard-dg2:          [SKIP][290] ([i915#8825]) -> [PASS][291]
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane@plane-panning-bottom-right-suspend.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-7/igt@kms_plane@plane-panning-bottom-right-suspend.html

  * igt@kms_plane_alpha_blend@alpha-basic:
    - shard-dg2:          [SKIP][292] ([i915#7294]) -> [PASS][293] +1 other test pass
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-basic.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-3/igt@kms_plane_alpha_blend@alpha-basic.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers:
    - shard-dg2:          [SKIP][294] ([i915#12247] / [i915#8152] / [i915#9423]) -> [PASS][295] +2 other tests pass
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-d:
    - shard-dg2:          [SKIP][296] ([i915#12247] / [i915#8152]) -> [PASS][297] +5 other tests pass
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-d.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75:
    - shard-dg2:          [SKIP][298] ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][299]
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
    - shard-dg2:          [SKIP][300] ([i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][301]
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
    - shard-dg2:          [SKIP][302] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][303]
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a:
    - shard-dg2:          [SKIP][304] ([i915#12247]) -> [PASS][305] +17 other tests pass
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg2:          [SKIP][306] ([i915#9519]) -> [PASS][307] +1 other test pass
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          [SKIP][308] ([i915#9519]) -> [PASS][309]
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_vblank@query-busy:
    - shard-tglu:         [SKIP][310] ([i915#12306]) -> [PASS][311] +14 other tests pass
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_vblank@query-busy.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_vblank@query-busy.html

  * igt@kms_vblank@ts-continuation-modeset:
    - shard-dg2:          [SKIP][312] ([i915#9197]) -> [PASS][313] +45 other tests pass
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_vblank@ts-continuation-modeset.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-7/igt@kms_vblank@ts-continuation-modeset.html

  
#### Warnings ####

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          ([PASS][314], [ABORT][315]) ([i915#5566]) -> [ABORT][316] ([i915#5566])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk7/igt@gen9_exec_parse@allowed-single.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk4/igt@gen9_exec_parse@allowed-single.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-glk4/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@mock:
    - shard-dg2:          [DMESG-WARN][317] ([i915#9311]) -> [DMESG-WARN][318] ([i915#1982] / [i915#9311])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-4/igt@i915_selftest@mock.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-6/igt@i915_selftest@mock.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-dg2:          [SKIP][319] ([i915#9197]) -> [SKIP][320] ([i915#9531])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-3/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
    - shard-dg1:          [SKIP][321] ([i915#4423] / [i915#4538] / [i915#5286]) -> [SKIP][322] ([i915#4538] / [i915#5286])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-19/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-14/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-dg2:          [SKIP][323] -> [SKIP][324] ([i915#9197]) +2 other tests skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-tglu:         [SKIP][325] ([i915#12306]) -> [SKIP][326] ([i915#5286])
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-tglu:         [SKIP][327] ([i915#5286]) -> [SKIP][328] ([i915#12306]) +4 other tests skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
    - shard-dg2:          [SKIP][329] ([i915#9197]) -> [SKIP][330] +2 other tests skip
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-3/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-dg2:          [SKIP][331] ([i915#5190] / [i915#9197]) -> [SKIP][332] ([i915#4538] / [i915#5190]) +8 other tests skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-3/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-dg2:          [SKIP][333] ([i915#5190] / [i915#9197]) -> [SKIP][334] ([i915#5190])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-11/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-dg2:          [SKIP][335] ([i915#4538] / [i915#5190]) -> [SKIP][336] ([i915#5190] / [i915#9197]) +4 other tests skip
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs:
    - shard-dg2:          [SKIP][337] ([i915#9197]) -> [SKIP][338] ([i915#10307] / [i915#6095]) +7 other tests skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-7/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html

  * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs:
    - shard-dg1:          [SKIP][339] ([i915#6095]) -> [SKIP][340] ([i915#4423] / [i915#6095])
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-15/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-13/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs:
    - shard-tglu:         [SKIP][341] ([i915#12306]) -> [SKIP][342] ([i915#6095]) +4 other tests skip
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
    - shard-dg2:          [SKIP][343] ([i915#9197]) -> [SKIP][344] ([i915#12313]) +2 other tests skip
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-3/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc:
    - shard-dg2:          [SKIP][345] ([i915#10307] / [i915#6095]) -> [SKIP][346] ([i915#9197]) +4 other tests skip
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs:
    - shard-tglu:         [SKIP][347] ([i915#6095]) -> [SKIP][348] ([i915#12306]) +8 other tests skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-6/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-tglu:         [SKIP][349] ([i915#12313]) -> [SKIP][350] ([i915#12306]) +1 other test skip
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg2:          [SKIP][351] ([i915#11616] / [i915#7213]) -> [SKIP][352] ([i915#9197])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_cdclk@mode-transition-all-outputs.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_content_protection@lic-type-0:
    - shard-dg2:          [SKIP][353] ([i915#9424]) -> [TIMEOUT][354] ([i915#7173])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-6/igt@kms_content_protection@lic-type-0.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-10/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@lic-type-1:
    - shard-dg2:          [SKIP][355] ([i915#9197]) -> [SKIP][356] ([i915#9424])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_content_protection@lic-type-1.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-3/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@srm:
    - shard-tglu:         [SKIP][357] ([i915#6944] / [i915#7116] / [i915#7118]) -> [SKIP][358] ([i915#12306])
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-6/igt@kms_content_protection@srm.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][359] ([i915#9197]) -> [SKIP][360] ([i915#7118] / [i915#9424])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_content_protection@type1.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-5/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-tglu:         [SKIP][361] ([i915#11453]) -> [SKIP][362] ([i915#12306])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_cursor_crc@cursor-offscreen-512x170.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-random-32x10:
    - shard-tglu:         [SKIP][363] ([i915#12306]) -> [SKIP][364] ([i915#3555])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_cursor_crc@cursor-random-32x10.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_cursor_crc@cursor-random-32x10.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          [SKIP][365] ([i915#11453] / [i915#3359]) -> [SKIP][366] ([i915#11453])
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-10/igt@kms_cursor_crc@cursor-random-512x170.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-6/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-dg2:          [SKIP][367] ([i915#9197]) -> [SKIP][368] ([i915#11453]) +1 other test skip
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-5/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-32x32:
    - shard-tglu:         [SKIP][369] ([i915#3555]) -> [SKIP][370] ([i915#12306]) +2 other tests skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_cursor_crc@cursor-sliding-32x32.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_cursor_crc@cursor-sliding-32x32.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg2:          [SKIP][371] ([i915#11453]) -> [SKIP][372] ([i915#9197])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-4/igt@kms_cursor_crc@cursor-sliding-512x512.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x512.html
    - shard-tglu:         [SKIP][373] ([i915#12306]) -> [SKIP][374] ([i915#11453])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_cursor_crc@cursor-sliding-512x512.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-tglu:         [SKIP][375] -> [SKIP][376] ([i915#12306]) +4 other tests skip
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-tglu:         [SKIP][377] ([i915#12306]) -> [SKIP][378] +2 other tests skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-tglu:         [SKIP][379] ([i915#4103]) -> [SKIP][380] ([i915#12306])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-dg2:          [SKIP][381] ([i915#9197]) -> [SKIP][382] ([i915#5354]) +1 other test skip
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-dg2:          [SKIP][383] ([i915#5354]) -> [SKIP][384] ([i915#9197])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          ([FAIL][385], [PASS][386]) ([i915#2346]) -> [FAIL][387] ([i915#2346])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-dg2:          [SKIP][388] ([i915#4103] / [i915#4213]) -> [SKIP][389] ([i915#9197])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg2:          [SKIP][390] ([i915#9197]) -> [SKIP][391] ([i915#4103] / [i915#4213])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-tglu:         [SKIP][392] ([i915#12306]) -> [SKIP][393] ([i915#9723])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-dg2:          [SKIP][394] ([i915#9197]) -> [SKIP][395] ([i915#3555]) +3 other tests skip
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          [SKIP][396] ([i915#3555]) -> [SKIP][397] ([i915#9197]) +3 other tests skip
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-dg2:          [SKIP][398] ([i915#9197]) -> [SKIP][399] ([i915#8812])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-7/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          [SKIP][400] ([i915#8812]) -> [SKIP][401] ([i915#9197])
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_draw_crc@draw-method-mmap-wc.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg2:          [SKIP][402] ([i915#9197]) -> [SKIP][403] ([i915#3555] / [i915#3840])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_dsc@dsc-basic.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-11/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-tglu:         [SKIP][404] ([i915#12306]) -> [SKIP][405] ([i915#3840])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_dsc@dsc-fractional-bpp.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_fence_pin_leak:
    - shard-dg1:          [SKIP][406] ([i915#4881]) -> [SKIP][407] ([i915#4423] / [i915#4881])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-15/igt@kms_fence_pin_leak.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-13/igt@kms_fence_pin_leak.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-glk:          ([FAIL][408], [PASS][409]) ([i915#2122]) -> [FAIL][410] ([i915#2122]) +4 other tests fail
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk5/igt@kms_flip@plain-flip-ts-check.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk7/igt@kms_flip@plain-flip-ts-check.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-glk1/igt@kms_flip@plain-flip-ts-check.html
    - shard-dg2:          [SKIP][411] ([i915#5354]) -> [FAIL][412] ([i915#2122])
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_flip@plain-flip-ts-check.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-7/igt@kms_flip@plain-flip-ts-check.html
    - shard-tglu:         [FAIL][413] ([i915#2122]) -> [SKIP][414] ([i915#3637])
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_flip@plain-flip-ts-check.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-tglu:         [SKIP][415] ([i915#3555]) -> [SKIP][416] ([i915#2672] / [i915#3555])
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-dg2:          [SKIP][417] ([i915#3555] / [i915#5190]) -> [SKIP][418] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-dg2:          [SKIP][419] ([i915#2672] / [i915#3555] / [i915#5190]) -> [SKIP][420] ([i915#3555] / [i915#5190])
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
    - shard-tglu:         [SKIP][421] ([i915#2672] / [i915#3555]) -> [SKIP][422] ([i915#3555]) +2 other tests skip
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:
    - shard-dg2:          [SKIP][423] ([i915#3555]) -> [SKIP][424] ([i915#2672] / [i915#3555]) +2 other tests skip
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][425] ([i915#8708]) -> [SKIP][426] ([i915#5354]) +9 other tests skip
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
    - shard-dg2:          [FAIL][427] ([i915#6880]) -> [SKIP][428] ([i915#5354])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-y:
    - shard-dg2:          [SKIP][429] -> [SKIP][430] ([i915#5354])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-tiling-y.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
    - shard-dg2:          [SKIP][431] ([i915#3458]) -> [SKIP][432] ([i915#5354]) +8 other tests skip
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-dg2:          [SKIP][433] ([i915#3458]) -> [SKIP][434] ([i915#10433] / [i915#3458])
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-tglu:         [SKIP][435] ([i915#1849]) -> [SKIP][436] ([i915#9766])
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render:
    - shard-tglu:         [SKIP][437] ([i915#1849]) -> [SKIP][438] +11 other tests skip
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          [SKIP][439] ([i915#5354]) -> [SKIP][440] ([i915#8708]) +11 other tests skip
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render:
    - shard-tglu:         [SKIP][441] -> [SKIP][442] ([i915#1849]) +43 other tests skip
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          [SKIP][443] ([i915#5354]) -> [SKIP][444] ([i915#3458]) +18 other tests skip
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg2:          [SKIP][445] ([i915#3555] / [i915#8228]) -> [SKIP][446] ([i915#9197])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-4/igt@kms_hdr@bpc-switch-dpms.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_hdr@bpc-switch-dpms.html
    - shard-tg

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/index.html

--===============4506095166280948880==
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
<tr><td><b>Series:</b></td><td>drm/i915/vdsc: Add bpc check in intel_dsc_compute_params (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/139125/">https://patchwork.freedesktop.org/series/139125/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15453_full -&gt; Patchwork_139125v4_full</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_139125v4_full need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_139125v4_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (9 -&gt; 8)</h2>
<p>Missing    (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_139125v4_full:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a> ([i915#4423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> ([i915#7484]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-7/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_15453_full and Patchwork_139125v4_full:</p>
<h3>New IGT tests (4)</h3>
<ul>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-fencing@pipe-a-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.72] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-fencing@pipe-b-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.78] s</li>
</ul>
</li>
<li>
<p>igt@kms_hdr:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.95] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139125v4_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_fdinfo@virtual-busy-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-13/igt@drm_fdinfo@virtual-busy-hang.html">SKIP</a> ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@gem_caching@read-writes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@gem_caching@read-writes.html">SKIP</a> ([i915#4873])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-3/igt@gem_ccs@block-copy-compressed.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-5/igt@gem_ccs@block-copy-compressed.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-4/igt@gem_ccs@suspend-resume.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> ([i915#7297]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-6/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> ([i915#6335])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> ([i915#6335])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@gem_ctx_engines@invalid-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12027])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-close:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@gem_ctx_persistence@heartbeat-close.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@gem_ctx_persistence@hostile.html">FAIL</a> ([i915#11980])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-4/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> ([i915#280]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-snb6/igt@gem_eio@suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-snb6/igt@gem_eio@suspend.html">ABORT</a> ([i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-4/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a> ([i915#6334]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-2/igt@gem_exec_fair@basic-throttle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@gem_exec_fair@basic-throttle.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit3:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-6/igt@gem_exec_fence@submit3.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-16/igt@gem_exec_flush@basic-wb-rw-before-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKIP</a> ([i915#3281]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-1/igt@gem_exec_reloc@basic-write-cpu-noreloc.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> ([i915#4613]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-4/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> ([i915#4613]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-7/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-offset:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-7/igt@gem_mmap_wc@bad-offset.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@gem_pread@snoop.html">SKIP</a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-6/igt@gem_pxp@create-regular-context-2.html">SKIP</a> ([i915#4270]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@gem_pxp@protected-raw-src-copy-not-readible.html">SKIP</a> ([i915#4270]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@gem_pxp@verify-pxp-stale-ctx-execution.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs.html">SKIP</a> ([i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> ([i915#8411]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@gem_softpin@evict-snoop-interruptible.html">SKIP</a> ([i915#4885])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-3/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-6/igt@gem_workarounds@suspend-resume.html">ABORT</a> ([i915#12315])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-13/igt@gen9_exec_parse@bb-large.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> ([i915#2527]) +3 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-3/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> ([i915#2527] / [i915#2856]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-8/igt@gen9_exec_parse@secure-batches.html">SKIP</a> ([i915#2856])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-7/igt@gen9_exec_parse@secure-batches.html">SKIP</a> ([i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-6/igt@i915_pm_freq_api@freq-reset-multiple.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> ([i915#3591])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html">FAIL</a> ([i915#3591])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress@smem0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-14/igt@i915_pm_rpm@gem-execbuf-stress@smem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-18/igt@i915_pm_rpm@gem-execbuf-stress@smem0.html">DMESG-WARN</a> ([i915#4423]) +5 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@i915_query@hwconfig_table.html">SKIP</a> ([i915#6245])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@i915_selftest@live@workarounds.html">ABORT</a> ([i915#12216]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-13/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-15/igt@i915_suspend@basic-s3-without-i915.html">DMESG-WARN</a> ([i915#1982] / [i915#4391] / [i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-12/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html">SKIP</a> ([i915#8709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-3/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs.html">SKIP</a> ([i915#8709]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">FAIL</a> ([i915#11808]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-6/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-3/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP</a> ([i915#5286]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([i915#5286]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">FAIL</a> ([i915#5138]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-19/igt@kms_big_fb@linear-32bpp-rotate-270.html">SKIP</a> ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#12306]) +42 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-3/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html">SKIP</a> ([i915#4538] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-3/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#3638]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-12/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-3.html">SKIP</a> ([i915#6095]) +58 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs@pipe-a-edp-1.html">SKIP</a> ([i915#6095]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-13/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#4423] / [i915#6095])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-3/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +74 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-b-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-10/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-b-dp-3.html">SKIP</a> ([i915#10307] / [i915#6095]) +160 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#6095]) +79 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html">SKIP</a> ([i915#7213]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-5/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@dp-audio:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_chamelium_audio@dp-audio.html">SKIP</a> ([i915#7828]) +7 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-7/igt@kms_chamelium_audio@dp-audio.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-8/igt@kms_chamelium_audio@dp-audio.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-blue-to-red:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@kms_chamelium_color@ctm-blue-to-red.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-13/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@kms_chamelium_edid@hdmi-edid-read.html">SKIP</a> ([i915#7828]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#3116] / [i915#3299]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@kms_content_protection@lic-type-0.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-10/igt@kms_content_protection@lic-type-0@pipe-a-dp-3.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-4/igt@kms_content_protection@type1.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@kms_content_protection@uevent.html">SKIP</a> ([i915#6944] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-19/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-4/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> ([i915#11453]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x85:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@kms_cursor_crc@cursor-sliding-256x85.html">SKIP</a> ([i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html">SKIP</a> ([i915#9809]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a> ([i915#1769] / [i915#3555] / [i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@kms_dp_aux_dev.html">SKIP</a> ([i915#1257])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-5/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i915#3555] / [i915#3840]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-3/igt@kms_feature_discovery@chamelium.html">SKIP</a> ([i915#4854])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-11/igt@kms_feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-3/igt@kms_feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-3/igt@kms_fence_pin_leak.html">SKIP</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-11/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html">SKIP</a> +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-6/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html">SKIP</a> ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-3/igt@kms_flip@2x-flip-vs-modeset.html">SKIP</a> ([i915#3637] / [i915#3966])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-4/igt@kms_flip@2x-plain-flip.html">SKIP</a> ([i915#3637]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_flip@basic-plain-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_flip@basic-plain-flip.html">SKIP</a> ([i915#3637]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-snb1/igt@kms_flip@flip-vs-blocking-wf-vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-snb6/igt@kms_flip@flip-vs-blocking-wf-vblank.html">INCOMPLETE</a> ([i915#12314]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk7/igt@kms_flip@plain-flip-ts-check@c-hdmi-a1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk5/igt@kms_flip@plain-flip-ts-check@c-hdmi-a1.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-glk1/igt@kms_flip@plain-flip-ts-check@c-hdmi-a1.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-7/igt@kms_flip@plain-flip-ts-check@c-hdmi-a3.html">FAIL</a> ([i915#2122]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html">SKIP</a> ([i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-13/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> ([i915#2587] / [i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-13/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">SKIP</a> ([i915#5354]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html">SKIP</a> ([i915#1849]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> ([i915#1825]) +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen.html">SKIP</a> ([i915#3458]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-onoff.html">SKIP</a> ([i915#1825]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a> +73 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html">SKIP</a> ([i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> ([i915#3023]) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-move.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-3/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> ([i915#3555] / [i915#8228]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> ([i915#3555] / [i915#8228]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-6/igt@kms_invalid_mode@bad-vsync-end.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_invalid_mode@bad-vsync-end.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-4/igt@kms_pipe_crc_basic@hang-read-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</a> ([i915#9197]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-6/igt@kms_plane@pixel-format-source-clamping.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_plane@pixel-format-source-clamping.html">SKIP</a> ([i915#8825]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_plane_alpha_blend@alpha-transparent-fb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_plane_alpha_blend@alpha-transparent-fb.html">SKIP</a> ([i915#7294]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_plane_alpha_blend@constant-alpha-max.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-max.html">SKIP</a> ([i915#7294])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk7/igt@kms_plane_scaling@intel-max-src-size.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk5/igt@kms_plane_scaling@intel-max-src-size.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-glk2/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a.html">SKIP</a> ([i915#12247]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">SKIP</a> ([i915#8152] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html">SKIP</a> ([i915#12247]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html">SKIP</a> ([i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html">SKIP</a> ([i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_plane_scaling@planes-downscale-factor-0-75.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75.html">SKIP</a> ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_plane_scaling@planes-scaler-unity-scaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_plane_scaling@planes-scaler-unity-scaling.html">SKIP</a> ([i915#3555] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-c:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-c.html">SKIP</a> ([i915#12247]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_plane_scaling@planes-upscale-20x20.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-20x20.html">SKIP</a> ([i915#6953] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20@pipe-d:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_plane_scaling@planes-upscale-20x20@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-20x20@pipe-d.html">SKIP</a> ([i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html">SKIP</a> ([i915#12247]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-3/igt@kms_pm_backlight@fade.html">SKIP</a> ([i915#9812])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@kms_pm_backlight@fade-with-dpms.html">SKIP</a> ([i915#5354]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-dpms-negative:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-6/igt@kms_pm_dc@dc5-dpms-negative.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_pm_dc@dc5-dpms-negative.html">SKIP</a> ([i915#9293])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#9519]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@pc8-residency:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-glk7/igt@kms_pm_rpm@pc8-residency.html">SKIP</a> +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@pm-caching:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@kms_pm_rpm@pm-caching.html">SKIP</a> ([i915#4077]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-8/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf@pipe-b-edp-1.html">SKIP</a> ([i915#9808]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html">SKIP</a> ([i915#11520]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-4/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-3/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-no-drrs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_psr@fbc-psr-no-drrs.html">SKIP</a> ([i915#9732]) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-3/igt@kms_psr@fbc-psr-suspend.html">INCOMPLETE</a> ([i915#2295])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-blt@edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@kms_psr@fbc-psr2-sprite-blt@edp-1.html">SKIP</a> ([i915#9688]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-3/igt@kms_psr@fbc-psr2-sprite-render.html">SKIP</a> ([i915#1072] / [i915#9732]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-12/igt@kms_psr@psr-cursor-render.html">SKIP</a> ([i915#1072] / [i915#9732])</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> ([i915#9685]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> ([i915#5289])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> ([i915#5289]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-4/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@lobf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@kms_vrr@lobf.html">SKIP</a> ([i915#11920])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-3/igt@kms_vrr@lobf.html">SKIP</a> ([i915#11920])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-3/igt@kms_vrr@max-min.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_writeback@writeback-check-output-xrgb2101010.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@all-busy-idle-check-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-3/igt@perf_pmu@all-busy-idle-check-all.html">FAIL</a> ([i915#11943])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@bcs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-mtlp-4/igt@perf_pmu@busy-double-start@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-2/igt@perf_pmu@busy-double-start@bcs0.html">FAIL</a> ([i915#4349])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-3/igt@perf_pmu@rc6@other-idle-gt0.html">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@prime_vgem@basic-fence-read.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-1/igt@prime_vgem@fence-read-hang.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-2/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-4/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a> ([i915#9781])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-check-all:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all.html">FAIL</a> ([i915#12179]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@drm_fdinfo@most-busy-check-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAIL</a> ([i915#7742]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> ([i915#5493]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-6/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10131] / [i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a>) ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@default-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-19/igt@kms_dirtyfb@default-dirtyfb-ioctl.html">DMESG-WARN</a> ([i915#4423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-14/igt@kms_dirtyfb@default-dirtyfb-ioctl.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-6/igt@kms_dp_aux_dev.html">SKIP</a> ([i915#1257]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-10/igt@kms_dp_aux_dev.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_fbcon_fbt@fbc-suspend.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-7/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate.html">FAIL</a>) ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-snb2/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-snb4/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html">FAIL</a>) ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-off-confusion-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_flip@dpms-off-confusion-interruptible.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-11/igt@kms_flip@dpms-off-confusion-interruptible.html">PASS</a> +18 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@b-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-mtlp-7/igt@kms_flip@plain-flip-ts-check@b-edp1.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-1/igt@kms_flip@plain-flip-ts-check@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-mtlp-7/igt@kms_flip@plain-flip-ts-check@c-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-mtlp-1/igt@kms_flip@plain-flip-ts-check@c-edp1.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-14/igt@kms_flip@plain-flip-ts-check@c-hdmi-a4.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-19/igt@kms_flip@plain-flip-ts-check@c-hdmi-a4.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html">FAIL</a> ([i915#6880]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-rte:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-rte.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_frontbuffer_tracking@fbc-1p-rte.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-6/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> ([i915#3555] / [i915#8228]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_invalid_mode@bad-hsync-end.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-11/igt@kms_invalid_mode@bad-hsync-end.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane@plane-panning-bottom-right-suspend.html">SKIP</a> ([i915#8825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-7/igt@kms_plane@plane-panning-bottom-right-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-basic.html">SKIP</a> ([i915#7294]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-3/igt@kms_plane_alpha_blend@alpha-basic.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers.html">SKIP</a> ([i915#12247] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-d.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75.html">SKIP</a> ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html">SKIP</a> ([i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html">PASS</a> +17 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@query-busy:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_vblank@query-busy.html">SKIP</a> ([i915#12306]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_vblank@query-busy.html">PASS</a> +14 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-modeset:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_vblank@ts-continuation-modeset.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-7/igt@kms_vblank@ts-continuation-modeset.html">PASS</a> +45 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk7/igt@gen9_exec_parse@allowed-single.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk4/igt@gen9_exec_parse@allowed-single.html">ABORT</a>) ([i915#5566]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-glk4/igt@gen9_exec_parse@allowed-single.html">ABORT</a> ([i915#5566])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-4/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915#9311]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-6/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915#1982] / [i915#9311])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-3/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-19/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html">SKIP</a> ([i915#4423] / [i915#4538] / [i915#5286]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-14/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html">SKIP</a> ([i915#4538] / [i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> ([i915#12306]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">SKIP</a> ([i915#5286]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">SKIP</a> ([i915#12306]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-3/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-3/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a> ([i915#4538] / [i915#5190]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-11/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html">SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a> ([i915#4538] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a> ([i915#5190] / [i915#9197]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-7/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-yf-tiled-ccs:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-15/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs.html">SKIP</a> ([i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-13/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs.html">SKIP</a> ([i915#4423] / [i915#6095])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs.html">SKIP</a> ([i915#12306]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs.html">SKIP</a> ([i915#6095]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-3/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> ([i915#10307] / [i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> ([i915#9197]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-6/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#12306]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12306]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> ([i915#11616] / [i915#7213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-6/igt@kms_content_protection@lic-type-0.html">SKIP</a> ([i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-10/igt@kms_content_protection@lic-type-0.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_content_protection@lic-type-1.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-3/igt@kms_content_protection@lic-type-1.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-6/igt@kms_content_protection@srm.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_content_protection@srm.html">SKIP</a> ([i915#12306])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_content_protection@type1.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-5/igt@kms_content_protection@type1.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a> ([i915#11453]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a> ([i915#12306])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x10:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_cursor_crc@cursor-random-32x10.html">SKIP</a> ([i915#12306]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_cursor_crc@cursor-random-32x10.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-10/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> ([i915#11453] / [i915#3359]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-6/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-5/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> ([i915#11453]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x32:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_cursor_crc@cursor-sliding-32x32.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_cursor_crc@cursor-sliding-32x32.html">SKIP</a> ([i915#12306]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-4/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> ([i915#11453]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> ([i915#9197])</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> ([i915#12306]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html">SKIP</a> ([i915#12306]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html">SKIP</a> ([i915#12306]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#12306])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html">SKIP</a> ([i915#5354]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a>) ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</a> ([i915#4103] / [i915#4213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> ([i915#12306]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> ([i915#9723])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a> ([i915#9197]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-7/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</a> ([i915#8812]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-11/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#12306]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-15/igt@kms_fence_pin_leak.html">SKIP</a> ([i915#4881]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg1-13/igt@kms_fence_pin_leak.html">SKIP</a> ([i915#4423] / [i915#4881])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk5/igt@kms_flip@plain-flip-ts-check.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk7/igt@kms_flip@plain-flip-ts-check.html">PASS</a>) ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-glk1/igt@kms_flip@plain-flip-ts-check.html">FAIL</a> ([i915#2122]) +4 other tests fail</li>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_flip@plain-flip-ts-check.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-7/igt@kms_flip@plain-flip-ts-check.html">FAIL</a> ([i915#2122])</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_flip@plain-flip-ts-check.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_flip@plain-flip-ts-check.html">SKIP</a> ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#3555] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([i915#5354]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html">FAIL</a> ([i915#6880]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-y:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-tiling-y.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-tiling-y.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> ([i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> ([i915#5354]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> ([i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> ([i915#10433] / [i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> ([i915#9766])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render.html">SKIP</a> +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render.html">SKIP</a> ([i915#1849]) +43 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> ([i915#3458]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-4/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> ([i915#3555] / [i915#8228]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139125v4/shard-dg2-2/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> ([i915#9197])</li>
<li>shard-tg</li>
</ul>
</li>
</ul>

</body>
</html>

--===============4506095166280948880==--
