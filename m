Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E139B0C08
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 19:44:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBE2610EB5C;
	Fri, 25 Oct 2024 17:44:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF73110E0A4;
 Fri, 25 Oct 2024 17:44:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2354615665615220942=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/xe3lpd=3A_Load_DMC?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2024 17:44:09 -0000
Message-ID: <172987824990.1333232.8974392647021872318@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241022155115.50989-1-gustavo.sousa@intel.com>
In-Reply-To: <20241022155115.50989-1-gustavo.sousa@intel.com>
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

--===============2354615665615220942==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/xe3lpd: Load DMC
URL   : https://patchwork.freedesktop.org/series/140321/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15579_full -> Patchwork_140321v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_140321v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_140321v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 9)
------------------------------

  Additional (1): shard-tglu-1 
  Missing    (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_140321v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@in-flight-suspend:
    - shard-snb:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-snb6/igt@gem_eio@in-flight-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-snb6/igt@gem_eio@in-flight-suspend.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-mtlp:         NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-4/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-glk:          NOTRUN -> [INCOMPLETE][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk1/igt@kms_pm_lpsp@kms-lpsp.html

  
New tests
---------

  New tests have been introduced between CI_DRM_15579_full and Patchwork_140321v1_full:

### New IGT tests (1) ###

  * igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-d-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [2.39] s

  

Known issues
------------

  Here are the changes found in Patchwork_140321v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-tglu-1:       NOTRUN -> [SKIP][5] ([i915#11078])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-tglu-1:       NOTRUN -> [SKIP][6] ([i915#3555] / [i915#9323])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@gem_ccs@ctrl-surf-copy.html
    - shard-dg1:          NOTRUN -> [SKIP][7] ([i915#3555] / [i915#9323])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-tglu-1:       NOTRUN -> [SKIP][8] ([i915#9323])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [PASS][9] -> [INCOMPLETE][10] ([i915#7297])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-3/igt@gem_ccs@suspend-resume.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-6/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][11] -> [INCOMPLETE][12] ([i915#12392] / [i915#7297])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-3/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-6/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg1:          NOTRUN -> [SKIP][13] ([i915#8562])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-rkl:          [PASS][14] -> [FAIL][15] ([i915#12031])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-rkl-3/igt@gem_ctx_engines@invalid-engines.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-rkl-5/igt@gem_ctx_engines@invalid-engines.html
    - shard-mtlp:         [PASS][16] -> [FAIL][17] ([i915#12031])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-8/igt@gem_ctx_engines@invalid-engines.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-1/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_freq@sysfs@gt0:
    - shard-dg2:          [PASS][18] -> [FAIL][19] ([i915#9561]) +1 other test fail
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-5/igt@gem_ctx_freq@sysfs@gt0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-11/igt@gem_ctx_freq@sysfs@gt0.html

  * igt@gem_ctx_isolation@preservation-s3:
    - shard-dg1:          [PASS][20] -> [DMESG-WARN][21] ([i915#4423])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-16/igt@gem_ctx_isolation@preservation-s3.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-17/igt@gem_ctx_isolation@preservation-s3.html

  * igt@gem_ctx_isolation@preservation-s3@vcs1:
    - shard-dg1:          [PASS][22] -> [DMESG-WARN][23] ([i915#4391] / [i915#4423])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-16/igt@gem_ctx_isolation@preservation-s3@vcs1.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-17/igt@gem_ctx_isolation@preservation-s3@vcs1.html

  * igt@gem_ctx_sseu@engines:
    - shard-tglu-1:       NOTRUN -> [SKIP][24] ([i915#280])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@gem_ctx_sseu@engines.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg1:          NOTRUN -> [SKIP][25] ([i915#4812])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-rkl:          [PASS][26] -> [FAIL][27] ([i915#2842]) +6 other tests fail
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-rkl-3/igt@gem_exec_fair@basic-pace@vecs0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_flush@basic-wb-rw-default:
    - shard-dg1:          NOTRUN -> [SKIP][28] ([i915#3539] / [i915#4852])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@gem_exec_flush@basic-wb-rw-default.html

  * igt@gem_exec_reloc@basic-wc-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#3281])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@gem_exec_reloc@basic-wc-cpu.html

  * igt@gem_exec_reloc@basic-write-wc-noreloc:
    - shard-dg1:          NOTRUN -> [SKIP][30] ([i915#3281]) +2 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@gem_exec_reloc@basic-write-wc-noreloc.html

  * igt@gem_exec_schedule@pi-ringfull@ccs0:
    - shard-dg2:          NOTRUN -> [FAIL][31] ([i915#12296]) +7 other tests fail
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@gem_exec_schedule@pi-ringfull@ccs0.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          [PASS][32] -> [INCOMPLETE][33] ([i915#11441]) +1 other test incomplete
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-11/igt@gem_exec_suspend@basic-s0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_lmem_swapping@massive:
    - shard-glk:          NOTRUN -> [SKIP][34] ([i915#4613])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk6/igt@gem_lmem_swapping@massive.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-tglu-1:       NOTRUN -> [SKIP][35] ([i915#4613]) +2 other tests skip
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_media_vme:
    - shard-dg1:          NOTRUN -> [SKIP][36] ([i915#284])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@gem_media_vme.html

  * igt@gem_mmap@bad-offset:
    - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#4083]) +1 other test skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@gem_mmap@bad-offset.html

  * igt@gem_mmap_gtt@medium-copy-xy:
    - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#4077])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@gem_mmap_gtt@medium-copy-xy.html

  * igt@gem_mmap_gtt@zero-extend:
    - shard-dg1:          NOTRUN -> [SKIP][39] ([i915#4077]) +1 other test skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-17/igt@gem_mmap_gtt@zero-extend.html

  * igt@gem_mmap_wc@bad-size:
    - shard-dg1:          NOTRUN -> [SKIP][40] ([i915#4083]) +2 other tests skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@gem_mmap_wc@bad-size.html

  * igt@gem_pread@display:
    - shard-dg1:          NOTRUN -> [SKIP][41] ([i915#3282]) +1 other test skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@gem_pread@display.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-tglu-1:       NOTRUN -> [SKIP][42] ([i915#4270]) +1 other test skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-dg1:          NOTRUN -> [SKIP][43] ([i915#4270]) +1 other test skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_pxp@verify-pxp-stale-buf-execution:
    - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#4270])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@gem_pxp@verify-pxp-stale-buf-execution.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][45] ([i915#8428])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-7/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-tglu-1:       NOTRUN -> [SKIP][46] ([i915#3297])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#3297])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-7/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gen9_exec_parse@bb-large:
    - shard-tglu-1:       NOTRUN -> [SKIP][48] ([i915#2527] / [i915#2856])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#2856])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglu-1:       NOTRUN -> [ABORT][50] ([i915#9820])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-tglu-1:       NOTRUN -> [SKIP][51] ([i915#8399])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_rps@thresholds:
    - shard-dg1:          NOTRUN -> [SKIP][52] ([i915#11681])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@i915_pm_rps@thresholds.html

  * igt@i915_selftest@live:
    - shard-dg2:          [PASS][53] -> [ABORT][54] ([i915#12133])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@i915_selftest@live.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@active:
    - shard-dg2:          [PASS][55] -> [ABORT][56] ([i915#12305])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@i915_selftest@live@active.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-3/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [PASS][57] -> [ABORT][58] ([i915#12216]) +1 other test abort
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-5/igt@i915_selftest@live@workarounds.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-1/igt@i915_selftest@live@workarounds.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#4212])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][60] ([i915#8709]) +7 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-17/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#8709]) +11 other tests skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking:
    - shard-glk:          ([PASS][62], [PASS][63]) -> [FAIL][64] ([i915#12177])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk5/igt@kms_atomic_transition@modeset-transition-nonblocking.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk9/igt@kms_atomic_transition@modeset-transition-nonblocking.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs:
    - shard-glk:          ([PASS][65], [PASS][66]) -> [FAIL][67] ([i915#11859])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk5/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk9/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][68] ([i915#5286]) +3 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][69] +2 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#4538] / [i915#5286])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][71] ([i915#3638])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - shard-mtlp:         NOTRUN -> [SKIP][72]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-7/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-addfb:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#5190])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@kms_big_fb@y-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#4538]) +2 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#4538] / [i915#5190]) +2 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#10307] / [i915#10434] / [i915#6095]) +2 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-4/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#10307] / [i915#6095]) +146 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-5/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-d-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][78] ([i915#6095]) +24 other tests skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][79] ([i915#6095]) +25 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-rkl-4/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#6095]) +98 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-12/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#4087]) +3 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-3/igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2.html

  * igt@kms_chamelium_audio@dp-audio-edid:
    - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#7828]) +2 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_chamelium_audio@dp-audio-edid.html

  * igt@kms_chamelium_audio@hdmi-audio-edid:
    - shard-tglu-1:       NOTRUN -> [SKIP][83] ([i915#7828]) +3 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_chamelium_audio@hdmi-audio-edid.html

  * igt@kms_color@ctm-0-50@pipe-a-edp-1:
    - shard-mtlp:         [PASS][84] -> [FAIL][85] ([i915#12520])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-8/igt@kms_color@ctm-0-50@pipe-a-edp-1.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-6/igt@kms_color@ctm-0-50@pipe-a-edp-1.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][86] ([i915#3116] / [i915#3299])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-tglu-1:       NOTRUN -> [SKIP][87] ([i915#11453] / [i915#3359])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-size-hints:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][88] ([i915#4423]) +1 other test dmesg-warn
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-18/igt@kms_cursor_crc@cursor-size-hints.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-tglu:         NOTRUN -> [SKIP][89] +3 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-2/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
    - shard-tglu-1:       NOTRUN -> [SKIP][90] +43 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-snb:          [PASS][91] -> [FAIL][92] ([i915#2346])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-snb1/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-snb2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_dp_aux_dev:
    - shard-dg2:          [PASS][93] -> [SKIP][94] ([i915#1257])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-10/igt@kms_dp_aux_dev.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-5/igt@kms_dp_aux_dev.html

  * igt@kms_feature_discovery@display-2x:
    - shard-tglu-1:       NOTRUN -> [SKIP][95] ([i915#1839])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@display-3x:
    - shard-tglu:         NOTRUN -> [SKIP][96] ([i915#1839])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-2/igt@kms_feature_discovery@display-3x.html

  * igt@kms_flip@2x-dpms-vs-vblank-race@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          ([PASS][97], [PASS][98]) -> [FAIL][99] ([i915#12403]) +1 other test fail
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk3/igt@kms_flip@2x-dpms-vs-vblank-race@ab-hdmi-a1-hdmi-a2.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk2/igt@kms_flip@2x-dpms-vs-vblank-race@ab-hdmi-a1-hdmi-a2.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk2/igt@kms_flip@2x-dpms-vs-vblank-race@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#5354]) +3 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@2x-plain-flip-fb-recreate:
    - shard-tglu-1:       NOTRUN -> [SKIP][101] ([i915#3637]) +3 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_flip@2x-plain-flip-fb-recreate.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-tglu-1:       NOTRUN -> [SKIP][102] ([i915#3637] / [i915#3966])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
    - shard-dg1:          NOTRUN -> [SKIP][103] ([i915#9934]) +2 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@blocking-wf_vblank@a-hdmi-a1:
    - shard-rkl:          NOTRUN -> [FAIL][104] ([i915#2122])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-rkl-2/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-rmfb-interruptible@a-edp1:
    - shard-mtlp:         [PASS][105] -> [INCOMPLETE][106] ([i915#6113])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-6/igt@kms_flip@flip-vs-rmfb-interruptible@a-edp1.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-3/igt@kms_flip@flip-vs-rmfb-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-dg1:          [PASS][107] -> [INCOMPLETE][108] ([i915#4423] / [i915#4839] / [i915#6113])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-15/igt@kms_flip@flip-vs-suspend.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-12/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend@d-hdmi-a3:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][109] ([i915#6113])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-12/igt@kms_flip@flip-vs-suspend@d-hdmi-a3.html

  * igt@kms_flip@modeset-vs-vblank-race:
    - shard-dg2:          [PASS][110] -> [SKIP][111] ([i915#5354]) +7 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-11/igt@kms_flip@modeset-vs-vblank-race.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_flip@modeset-vs-vblank-race.html

  * igt@kms_flip@plain-flip-fb-recreate@a-vga1:
    - shard-snb:          [PASS][112] -> [FAIL][113] ([i915#2122]) +3 other tests fail
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-snb5/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-snb6/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-mtlp:         [PASS][114] -> [FAIL][115] ([i915#2122])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-6/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-3/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1:
    - shard-tglu:         [PASS][116] -> [FAIL][117] ([i915#2122]) +5 other tests fail
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-tglu-10/igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-2/igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible:
    - shard-rkl:          [PASS][118] -> [FAIL][119] ([i915#2122])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-rkl-3/igt@kms_flip@wf_vblank-ts-check-interruptible.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-rkl-5/igt@kms_flip@wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a2:
    - shard-rkl:          [PASS][120] -> [FAIL][121] ([i915#11961])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-rkl-3/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a2.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-rkl-5/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#2672]) +2 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][123] ([i915#2587] / [i915#2672]) +1 other test skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][124] ([i915#2587] / [i915#2672] / [i915#3555])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][125] ([i915#2587] / [i915#2672]) +1 other test skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
    - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#2672] / [i915#3555]) +1 other test skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][127] ([i915#2672] / [i915#3555])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling:
    - shard-dg2:          [PASS][128] -> [SKIP][129] ([i915#3555]) +1 other test skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-snb:          NOTRUN -> [SKIP][130] +14 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt:
    - shard-dg1:          NOTRUN -> [SKIP][131] +16 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][132] ([i915#8708])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][133] ([i915#3458]) +3 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-tglu-1:       NOTRUN -> [SKIP][134] ([i915#9766])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#3458]) +1 other test skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][136] ([i915#1825]) +1 other test skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#8708]) +3 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_hdmi_inject@inject-audio:
    - shard-dg1:          NOTRUN -> [SKIP][138] ([i915#433])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_hdr@static-toggle:
    - shard-tglu-1:       NOTRUN -> [SKIP][139] ([i915#3555] / [i915#8228]) +1 other test skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_hdr@static-toggle.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][140] ([i915#12339])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_joiner@basic-ultra-joiner.html
    - shard-dg1:          NOTRUN -> [SKIP][141] ([i915#12339])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_lease@lease-revoke:
    - shard-dg2:          [PASS][142] -> [SKIP][143] ([i915#9197]) +17 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_lease@lease-revoke.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_lease@lease-revoke.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-tglu-1:       NOTRUN -> [SKIP][144] ([i915#6301])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb:
    - shard-dg2:          [PASS][145] -> [SKIP][146] ([i915#7294])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-transparent-fb.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-tglu-1:       NOTRUN -> [SKIP][147] ([i915#3555]) +2 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-mtlp:         NOTRUN -> [SKIP][148] ([i915#9809])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-7/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:
    - shard-tglu-1:       NOTRUN -> [SKIP][149] ([i915#12247]) +4 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b:
    - shard-dg2:          [PASS][150] -> [SKIP][151] ([i915#12247]) +8 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d:
    - shard-dg2:          [PASS][152] -> [SKIP][153] ([i915#12247] / [i915#8152]) +2 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:
    - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#12247]) +9 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:
    - shard-dg2:          [PASS][155] -> [SKIP][156] ([i915#12247] / [i915#8152] / [i915#9423]) +2 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-tglu-1:       NOTRUN -> [SKIP][157] ([i915#9812])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_dc@dc5-psr:
    - shard-dg1:          NOTRUN -> [SKIP][158] ([i915#9685])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_pm_dc@dc5-psr.html

  * igt@kms_properties@plane-properties-legacy:
    - shard-dg2:          [PASS][159] -> [SKIP][160] ([i915#11521])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_properties@plane-properties-legacy.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_properties@plane-properties-legacy.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#11520]) +1 other test skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:
    - shard-tglu-1:       NOTRUN -> [SKIP][162] ([i915#11520]) +3 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
    - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#11520]) +1 other test skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][164] ([i915#11520])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk8/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-glk:          NOTRUN -> [SKIP][165] +43 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk8/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@fbc-pr-basic:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#1072] / [i915#9732]) +3 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@kms_psr@fbc-pr-basic.html

  * igt@kms_psr@fbc-psr-basic:
    - shard-dg1:          NOTRUN -> [SKIP][167] ([i915#1072] / [i915#9732]) +4 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_psr@fbc-psr-basic.html

  * igt@kms_psr@fbc-psr-no-drrs:
    - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#9688]) +1 other test skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-7/igt@kms_psr@fbc-psr-no-drrs.html

  * igt@kms_psr@fbc-psr2-cursor-blt:
    - shard-tglu-1:       NOTRUN -> [SKIP][169] ([i915#9732]) +11 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_psr@fbc-psr2-cursor-blt.html

  * igt@kms_setmode@basic:
    - shard-snb:          [PASS][170] -> [FAIL][171] ([i915#5465]) +2 other tests fail
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-snb1/igt@kms_setmode@basic.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-snb4/igt@kms_setmode@basic.html

  * igt@kms_vrr@flip-basic:
    - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#3555]) +1 other test skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_vrr@flip-basic.html

  * igt@kms_vrr@lobf:
    - shard-tglu-1:       NOTRUN -> [SKIP][173] ([i915#11920])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_vrr@lobf.html

  * igt@kms_vrr@negative-basic:
    - shard-mtlp:         [PASS][174] -> [FAIL][175] ([i915#10393]) +1 other test fail
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-4/igt@kms_vrr@negative-basic.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-3/igt@kms_vrr@negative-basic.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#2437])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-glk:          NOTRUN -> [SKIP][177] ([i915#2437])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk6/igt@kms_writeback@writeback-pixel-formats.html

  * igt@prime_vgem@basic-write:
    - shard-dg1:          NOTRUN -> [SKIP][178] ([i915#3708])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@fbdev@eof:
    - shard-dg2:          [SKIP][179] ([i915#2582]) -> [PASS][180] +1 other test pass
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@fbdev@eof.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-3/igt@fbdev@eof.html

  * igt@gem_ctx_persistence@hostile:
    - shard-tglu:         [FAIL][181] ([i915#11980]) -> [PASS][182]
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-tglu-7/igt@gem_ctx_persistence@hostile.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-8/igt@gem_ctx_persistence@hostile.html

  * igt@gem_eio@hibernate:
    - shard-tglu:         [ABORT][183] ([i915#10030] / [i915#7975] / [i915#8213]) -> [PASS][184]
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-tglu-10/igt@gem_eio@hibernate.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-2/igt@gem_eio@hibernate.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          ([PASS][185], [FAIL][186]) ([i915#2842]) -> [PASS][187] +1 other test pass
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglu:         [FAIL][188] ([i915#2842]) -> [PASS][189] +1 other test pass
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-dg1:          [ABORT][190] ([i915#7975] / [i915#8213]) -> [PASS][191] +1 other test pass
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-dg1:          [FAIL][192] ([i915#3591]) -> [PASS][193] +1 other test pass
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_power@sanity:
    - shard-mtlp:         [SKIP][194] ([i915#7984]) -> [PASS][195]
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-7/igt@i915_power@sanity.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-5/igt@i915_power@sanity.html

  * igt@kms_atomic_transition@modeset-transition-fencing:
    - shard-glk:          ([PASS][196], [FAIL][197]) ([i915#12238]) -> [PASS][198]
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk4/igt@kms_atomic_transition@modeset-transition-fencing.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk8/igt@kms_atomic_transition@modeset-transition-fencing.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk3/igt@kms_atomic_transition@modeset-transition-fencing.html

  * igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs:
    - shard-glk:          ([FAIL][199], [PASS][200]) ([i915#11859]) -> [PASS][201]
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk8/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk4/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk3/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3:
    - shard-dg2:          [FAIL][202] ([i915#5956]) -> [PASS][203] +1 other test pass
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html

  * igt@kms_color@ctm-0-50@pipe-b-edp-1:
    - shard-mtlp:         [FAIL][204] ([i915#12520]) -> [PASS][205]
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-8/igt@kms_color@ctm-0-50@pipe-b-edp-1.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-6/igt@kms_color@ctm-0-50@pipe-b-edp-1.html

  * igt@kms_color@ctm-negative:
    - shard-dg1:          [DMESG-WARN][206] ([i915#4423]) -> [PASS][207]
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-18/igt@kms_color@ctm-negative.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_color@ctm-negative.html

  * igt@kms_color@degamma:
    - shard-dg2:          [SKIP][208] ([i915#5354]) -> [PASS][209] +9 other tests pass
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_color@degamma.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_color@degamma.html

  * igt@kms_cursor_crc@cursor-random-256x256:
    - shard-dg2:          [SKIP][210] ([i915#9197]) -> [PASS][211] +26 other tests pass
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_cursor_crc@cursor-random-256x256.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_cursor_crc@cursor-random-256x256.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-snb:          [SKIP][212] -> [PASS][213] +1 other test pass
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-snb4/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-snb7/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-dg2:          [SKIP][214] ([i915#1849]) -> [PASS][215] +1 other test pass
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_fbcon_fbt@fbc-suspend.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          ([FAIL][216], [PASS][217]) ([i915#12403]) -> [PASS][218] +1 other test pass
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk2/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@bc-hdmi-a1-hdmi-a2.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk6/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@bc-hdmi-a1-hdmi-a2.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk5/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@blocking-wf_vblank@d-hdmi-a1:
    - shard-tglu:         [FAIL][219] ([i915#2122]) -> [PASS][220] +3 other tests pass
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-tglu-3/igt@kms_flip@blocking-wf_vblank@d-hdmi-a1.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-4/igt@kms_flip@blocking-wf_vblank@d-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a2:
    - shard-glk:          ([PASS][221], [INCOMPLETE][222]) ([i915#4839]) -> [PASS][223] +1 other test pass
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk8/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk4/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk1/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a4:
    - shard-dg1:          [FAIL][224] ([i915#2122]) -> [PASS][225] +2 other tests pass
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-16/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a4.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-17/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a4.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-mtlp:         [FAIL][226] ([i915#11989] / [i915#2122]) -> [PASS][227]
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-3/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-mtlp:         [FAIL][228] ([i915#2122]) -> [PASS][229] +2 other tests pass
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-3/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1:
    - shard-glk:          ([PASS][230], [FAIL][231]) ([i915#2122]) -> [PASS][232] +1 other test pass
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk2/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk3/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk2/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html

  * igt@kms_invalid_mode@bad-vsync-end:
    - shard-dg2:          [SKIP][233] ([i915#3555]) -> [PASS][234] +3 other tests pass
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_invalid_mode@bad-vsync-end.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_invalid_mode@bad-vsync-end.html

  * igt@kms_plane_alpha_blend@constant-alpha-max:
    - shard-dg2:          [SKIP][235] ([i915#7294]) -> [PASS][236]
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-max.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_plane_alpha_blend@constant-alpha-max.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          [SKIP][237] ([i915#6953] / [i915#9423]) -> [PASS][238]
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-4/igt@kms_plane_scaling@intel-max-src-size.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation:
    - shard-dg2:          [SKIP][239] ([i915#12247] / [i915#8152] / [i915#9423]) -> [PASS][240]
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d:
    - shard-dg2:          [SKIP][241] ([i915#12247] / [i915#8152]) -> [PASS][242]
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:
    - shard-dg2:          [SKIP][243] ([i915#3555] / [i915#8152] / [i915#9423]) -> [PASS][244]
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a:
    - shard-dg2:          [SKIP][245] ([i915#12247]) -> [PASS][246] +11 other tests pass
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d:
    - shard-dg2:          [SKIP][247] ([i915#8152]) -> [PASS][248] +2 other tests pass
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:
    - shard-dg2:          [SKIP][249] ([i915#8152] / [i915#9423]) -> [PASS][250] +1 other test pass
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu:         [FAIL][251] ([i915#9295]) -> [PASS][252]
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-3/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-dg2:          [SKIP][253] ([i915#9519]) -> [PASS][254]
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  
#### Warnings ####

  * igt@gem_busy@close-race:
    - shard-rkl:          [FAIL][255] ([i915#12297]) -> [FAIL][256] ([i915#12297] / [i915#12577])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-rkl-1/igt@gem_busy@close-race.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-rkl-2/igt@gem_busy@close-race.html
    - shard-snb:          [FAIL][257] ([i915#12297]) -> [FAIL][258] ([i915#12297] / [i915#12577])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-snb6/igt@gem_busy@close-race.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-snb4/igt@gem_busy@close-race.html
    - shard-dg1:          [FAIL][259] ([i915#12297]) -> [FAIL][260] ([i915#12297] / [i915#12577])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-17/igt@gem_busy@close-race.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-18/igt@gem_busy@close-race.html
    - shard-tglu:         [FAIL][261] ([i915#12297]) -> [FAIL][262] ([i915#12297] / [i915#12577])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-tglu-3/igt@gem_busy@close-race.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-4/igt@gem_busy@close-race.html
    - shard-mtlp:         [FAIL][263] ([i915#12297]) -> [FAIL][264] ([i915#12297] / [i915#12577])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-4/igt@gem_busy@close-race.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-8/igt@gem_busy@close-race.html
    - shard-glk:          ([FAIL][265], [FAIL][266]) ([i915#12297]) -> [FAIL][267] ([i915#12297] / [i915#12526] / [i915#12577])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk9/igt@gem_busy@close-race.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk7/igt@gem_busy@close-race.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk7/igt@gem_busy@close-race.html

  * igt@gem_ctx_persistence@hostile:
    - shard-dg2:          [FAIL][268] ([i915#11980]) -> [FAIL][269] ([i915#11980] / [i915#12580])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-11/igt@gem_ctx_persistence@hostile.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@gem_ctx_persistence@hostile.html
    - shard-rkl:          [FAIL][270] ([i915#11980]) -> [FAIL][271] ([i915#11980] / [i915#12580])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-rkl-4/igt@gem_ctx_persistence@hostile.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-rkl-7/igt@gem_ctx_persistence@hostile.html
    - shard-dg1:          [FAIL][272] ([i915#11980]) -> [FAIL][273] ([i915#11980] / [i915#12580])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-14/igt@gem_ctx_persistence@hostile.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-12/igt@gem_ctx_persistence@hostile.html
    - shard-mtlp:         [FAIL][274] ([i915#11980]) -> [FAIL][275] ([i915#11980] / [i915#12580])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-2/igt@gem_ctx_persistence@hostile.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-8/igt@gem_ctx_persistence@hostile.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [FAIL][276] ([i915#5784]) -> [FAIL][277] ([i915#12543] / [i915#5784])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-18/igt@gem_eio@reset-stress.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-13/igt@gem_eio@reset-stress.html

  * igt@gem_exec_capture@capture:
    - shard-mtlp:         [FAIL][278] ([i915#11965]) -> [FAIL][279] ([i915#11965] / [i915#12558]) +1 other test fail
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-7/igt@gem_exec_capture@capture.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-1/igt@gem_exec_capture@capture.html

  * igt@gem_exec_capture@capture@vecs0-lmem0:
    - shard-dg2:          [FAIL][280] ([i915#11965]) -> [FAIL][281] ([i915#11965] / [i915#12558]) +2 other tests fail
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-8/igt@gem_exec_capture@capture@vecs0-lmem0.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-3/igt@gem_exec_capture@capture@vecs0-lmem0.html
    - shard-dg1:          [FAIL][282] ([i915#11965]) -> [FAIL][283] ([i915#11965] / [i915#12558]) +2 other tests fail
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-16/igt@gem_exec_capture@capture@vecs0-lmem0.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-14/igt@gem_exec_capture@capture@vecs0-lmem0.html

  * igt@gem_pread@exhaustion:
    - shard-glk:          [INCOMPLETE][284] -> [WARN][285] ([i915#2658])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk8/igt@gem_pread@exhaustion.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk1/igt@gem_pread@exhaustion.html

  * igt@kms_async_flips@invalid-async-flip:
    - shard-dg2:          [SKIP][286] ([i915#9197]) -> [SKIP][287] ([i915#6228])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_async_flips@invalid-async-flip.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-dg2:          [SKIP][288] ([i915#9197]) -> [SKIP][289] +4 other tests skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@linear-32bpp-rotate-270:
    - shard-dg2:          [SKIP][290] -> [SKIP][291] ([i915#9197])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_big_fb@linear-32bpp-rotate-270.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_big_fb@linear-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-dg2:          [SKIP][292] ([i915#5190] / [i915#9197]) -> [SKIP][293] ([i915#4538] / [i915#5190]) +7 other tests skip
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-dg2:          [SKIP][294] ([i915#4538] / [i915#5190]) -> [SKIP][295] ([i915#5190] / [i915#9197]) +3 other tests skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-dg2:          [SKIP][296] ([i915#5190] / [i915#9197]) -> [SKIP][297] ([i915#5190])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs:
    - shard-dg1:          [SKIP][298] ([i915#6095]) -> [SKIP][299] ([i915#4423] / [i915#6095]) +1 other test skip
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-17/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-18/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc:
    - shard-dg2:          [SKIP][300] ([i915#10307] / [i915#6095]) -> [SKIP][301] ([i915#9197]) +5 other tests skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs:
    - shard-dg2:          [SKIP][302] ([i915#9197]) -> [SKIP][303] ([i915#10307] / [i915#6095]) +7 other tests skip
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg2:          [SKIP][304] ([i915#11616] / [i915#7213]) -> [SKIP][305] ([i915#9197])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-11/igt@kms_cdclk@mode-transition-all-outputs.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_color@deep-color:
    - shard-dg2:          [SKIP][306] ([i915#5354]) -> [SKIP][307] ([i915#3555])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_color@deep-color.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-3/igt@kms_color@deep-color.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          [SKIP][308] ([i915#7118]) -> [SKIP][309] ([i915#9197])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-11/igt@kms_content_protection@srm.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][310] ([i915#7118] / [i915#9424]) -> [SKIP][311] ([i915#7118] / [i915#7162] / [i915#9424])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-4/igt@kms_content_protection@type1.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-dg2:          [SKIP][312] ([i915#9197]) -> [SKIP][313] ([i915#3555]) +2 other tests skip
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-32x10.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-offscreen-32x32:
    - shard-dg2:          [SKIP][314] ([i915#3555]) -> [SKIP][315] ([i915#9197])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_cursor_crc@cursor-offscreen-32x32.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-dg2:          [SKIP][316] ([i915#11453] / [i915#3359]) -> [SKIP][317] ([i915#9197])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg2:          [SKIP][318] ([i915#9197]) -> [SKIP][319] ([i915#11453] / [i915#3359]) +1 other test skip
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x512.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-dg2:          [SKIP][320] ([i915#5354]) -> [SKIP][321] ([i915#9197])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-dg2:          [SKIP][322] ([i915#4103] / [i915#4213]) -> [SKIP][323] ([i915#9197])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-dg2:          [SKIP][324] ([i915#9197]) -> [SKIP][325] ([i915#5354]) +1 other test skip
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-dg2:          [SKIP][326] ([i915#9197]) -> [SKIP][327] ([i915#4103] / [i915#4213])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-dg2:          [SKIP][328] ([i915#9197]) -> [SKIP][329] ([i915#12402])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_dp_linktrain_fallback@dp-fallback.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          [SKIP][330] ([i915#9197]) -> [SKIP][331] ([i915#8812]) +1 other test skip
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-wc.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_fence_pin_leak:
    - shard-dg2:          [SKIP][332] ([i915#9197]) -> [SKIP][333] ([i915#4881])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_fence_pin_leak.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_fence_pin_leak.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
    - shard-dg2:          [SKIP][334] ([i915#3555]) -> [SKIP][335] ([i915#2672] / [i915#3555]) +1 other test skip
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-dg2:          [SKIP][336] ([i915#3555] / [i915#5190]) -> [SKIP][337] ([i915#2672] / [i915#3555] / [i915#5190])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-dg2:          [SKIP][338] ([i915#2672] / [i915#3555] / [i915#5190]) -> [SKIP][339] ([i915#3555] / [i915#5190])
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling:
    - shard-mtlp:         [SKIP][340] ([i915#3555] / [i915#8813]) -> [SKIP][341] ([i915#3555] / [i915#8810] / [i915#8813]) +7 other tests skip
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][342] ([i915#5354]) -> [SKIP][343] ([i915#8708]) +10 other tests skip
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][344] ([i915#3458]) -> [SKIP][345] ([i915#5354]) +4 other tests skip
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][346] ([i915#5354]) -> [SKIP][347] ([i915#3458]) +5 other tests skip
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-dg2:          [SKIP][348] ([i915#8708]) -> [SKIP][349] ([i915#5354]) +5 other tests skip
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-dg2:          [SKIP][350] ([i915#3458]) -> [SKIP][351] ([i915#10433] / [i915#3458])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][352] ([i915#10433] / [i915#3458]) -> [SKIP][353] ([i915#3458]) +2 other tests skip
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen:
    - shard-glk:          ([INCOMPLETE][354], [SKIP][355]) ([i915#2295]) -> [SKIP][356]
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-dg2:          [SKIP][357] ([i915#3555] / [i915#8228]) -> [SKIP][358] ([i915#9197])
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_hdr@invalid-metadata-sizes.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-swap:
    - shard-dg2:          [SKIP][359] ([i915#9197]) -> [SKIP][360] ([i915#3555] / [i915#8228])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_hdr@static-swap.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_hdr@static-swap.html

  * igt@kms_plane_lowres@tiling-y:
    - shard-dg2:          [SKIP][361] ([i915#8821]) -> [SKIP][362] ([i915#9197])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_plane_lowres@tiling-y.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_plane_lowres@tiling-y.html

  * igt@kms_psr@fbc-pr-cursor-blt:
    - shard-dg1:          [SKIP][363] ([i915#1072] / [i915#9732]) -> [SKIP][364] ([i915#1072] / [i915#4423] / [i915#9732])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-18/igt@kms_psr@fbc-pr-cursor-blt.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-13/igt@kms_psr@fbc-pr-cursor-blt.html

  * igt@kms_psr@fbc-psr-sprite-plane-move:
    - shard-dg1:          [SKIP][365] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][366] ([i915#1072] / [i915#9732])
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-18/igt@kms_psr@fbc-psr-sprite-plane-move.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_psr@fbc-psr-sprite-plane-move.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-dg2:          [SKIP][367] ([i915#9197]) -> [SKIP][368] ([i915#11131] / [i915#4235])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_rotation_crc@primary-rotation-90.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-3/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - shard-dg2:          [SKIP][369] ([i915#5190] / [i915#9197]) -> [SKIP][370] ([i915#11131] / [i915#4235] / [i915#5190])
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-3/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - shard-dg2:          [SKIP][371] ([i915#11131] / [i915#4235]) -> [SKIP][372] ([i915#9197]) +1 other test skip
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-270.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_rotation_crc@sprite-rotation-270.html

  * igt@kms_vrr@max-min:
    - shard-dg2:          [SKIP][373] ([i915#9197]) -> [SKIP][374] ([i915#9906])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_vrr@max-min.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_vrr@max-min.html

  * igt@kms_vrr@negative-basic:
    - shard-dg2:          [SKIP][375] ([i915#9197]) -> [SKIP][376] ([i915#3555] / [i915#9906])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_vrr@negative-basic.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_vrr@negative-basic.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          [FAIL][377] ([i915#7484]) -> [FAIL][378] ([i915#9100]) +1 other test fail
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html

  * igt@perf_pmu@frequency:
    - shard-dg2:          [FAIL][379] ([i915#6806]) -> [FAIL][380] ([i915#12549] / [i915#6806]) +1 other test fail
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@perf_pmu@frequency.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-4/igt@perf_pmu@frequency.html
    - shard-dg1:          [FAIL][381] ([i915#6806]) -> [FAIL][382] ([i915#12549] / [i915#6806]) +1 other test fail
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-13/igt@perf_pmu@frequency.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-17/igt@perf_pmu@frequency.html

  * igt@perf_pmu@module-unload:
    - shard-dg2:          [FAIL][383] ([i915#11823]) -> [FAIL][384] ([i915#11823] / [i915#12555])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-7/igt@perf_pmu@module-unload.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-7/igt@perf_pmu@module-unload.html

  * igt@syncobj_wait@invalid-wait-zero-handles:
    - shard-mtlp:         [FAIL][385] ([i915#9781]) -> [FAIL][386] ([i915#12564] / [i915#9781])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-6/igt@syncobj_wait@invalid-wait-zero-handles.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-3/igt@syncobj_wait@invalid-wait-zero-handles.html
    - shard-glk:          ([FAIL][387], [FAIL][388]) ([i915#9781]) -> [FAIL][389] ([i915#12564] / [i915#9781])
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk4/igt@syncobj_wait@invalid-wait-zero-handles.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk6/igt@syncobj_wait@invalid-wait-zero-handles.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk3/igt@syncobj_wait@invalid-wait-zero-handles.html
    - shard-dg2:          [FAIL][390] ([i915#9781]) -> [FAIL][391] ([i915#12564] / [i915#9781])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-4/igt@syncobj_wait@invalid-wait-zero-handles.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-4/igt@syncobj_wait@invalid-wait-zero-handles.html
    - shard-rkl:          [FAIL][392] ([i915#9781]) -> [FAIL][393] ([i915#12564] / [i915#9781])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-rkl-5/igt@syncobj_wait@invalid-wait-zero-handles.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-rkl-5/igt@syncobj_wait@invalid-wait-zero-handles.html
    - shard-dg1:          [FAIL][394] ([i915#9781]) -> [FAIL][395] ([i915#12564] / [i915#9781])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-16/igt@syncobj_wait@invalid-wait-zero-handles.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-17/igt@syncobj_wait@invalid-wait-zero-handles.html
    - shard-snb:          [FAIL][396] ([i915#9781]) -> [FAIL][397] ([i915#12564] / [i915#9781])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-snb5/igt@syncobj_wait@invalid-wait-zero-handles.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-snb6/igt@syncobj_wait@invalid-wait-zero-handles.html
    - shard-tglu:         [FAIL][398] ([i915#9781]) -> [FAIL][399] ([i915#12564] / [i915#9781])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-tglu-10/igt@syncobj_wait@invalid-wait-zero-handles.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-2/igt@syncobj_wait@invalid-wait-zero-handles.html

  
  [i915#10030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10030
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10393]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10393
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131
  [i915#11441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441
  [i915#11453]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11521]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521
  [i915#11616]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#11823]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11823
  [i915#11859]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859
  [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
  [i915#11961]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11961
  [i915#11965]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11965
  [i915#11980]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11980
  [i915#11989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989
  [i915#12031]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12031
  [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133
  [i915#12177]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12177
  [i915#12216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216
  [i915#12238]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12238
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12296]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12296
  [i915#12297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12297
  [i915#12305]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12305
  [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
  [i915#12402]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12402
  [i915#12403]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12403
  [i915#12520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12520
  [i915#12526]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12526
  [i915#12543]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12543
  [i915#12549]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12549
  [i915#12555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12555
  [i915#12558]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12558
  [i915#12564]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12564
  [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
  [i915#12577]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12577
  [i915#12580]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12580
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3966]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3966
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/433
  [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4881]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5465]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465
  [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
  [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
  [i915#6228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6228
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6806
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162
  [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
  [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
  [i915#7297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297
  [i915#7484]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7484
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
  [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
  [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
  [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
  [i915#8810]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810
  [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
  [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
  [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821
  [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
  [i915#9561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9561
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
  [i915#9781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781
  [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_15579 -> Patchwork_140321v1

  CI-20190529: 20190529
  CI_DRM_15579: 2d11d2602dc35b03fd68309c96fedeea423beb42 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8082: c8379ec8b26f3c21bae5473706b23da78bd26ffa @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_140321v1: 2d11d2602dc35b03fd68309c96fedeea423beb42 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/index.html

--===============2354615665615220942==
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
<tr><td><b>Series:</b></td><td>drm/i915/xe3lpd: Load DMC</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/140321/">https://patchwork.freedesktop.org/series/140321/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15579_full -&gt; Patchwork_140321v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_140321v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_140321v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>Additional (1): shard-tglu-1 <br />
  Missing    (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_140321v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-snb6/igt@gem_eio@in-flight-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-snb6/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@blt-vs-render-ctxn:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-4/igt@gem_ppgtt@blt-vs-render-ctxn.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk1/igt@kms_pm_lpsp@kms-lpsp.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_15579_full and Patchwork_140321v1_full:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-d-dp-3:<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.39] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_140321v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-3/igt@gem_ccs@suspend-resume.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-6/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297">i915#7297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-3/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-6/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297">i915#7297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@gem_create@create-ext-set-pat.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-rkl-3/igt@gem_ctx_engines@invalid-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-rkl-5/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12031">i915#12031</a>)</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-8/igt@gem_ctx_engines@invalid-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-1/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12031">i915#12031</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_freq@sysfs@gt0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-5/igt@gem_ctx_freq@sysfs@gt0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-11/igt@gem_ctx_freq@sysfs@gt0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9561">i915#9561</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-16/igt@gem_ctx_isolation@preservation-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-17/igt@gem_ctx_isolation@preservation-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs1:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-16/igt@gem_ctx_isolation@preservation-s3@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-17/igt@gem_ctx_isolation@preservation-s3@vcs1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@gem_exec_balancer@bonded-false-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-rkl-3/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) +6 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@gem_exec_flush@basic-wb-rw-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@gem_exec_reloc@basic-wc-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-noreloc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@gem_exec_reloc@basic-write-wc-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-ringfull@ccs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@gem_exec_schedule@pi-ringfull@ccs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12296">i915#12296</a>) +7 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-11/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441">i915#11441</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk6/igt@gem_lmem_swapping@massive.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@gem_media_vme.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284">i915#284</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-offset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@gem_mmap@bad-offset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-xy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@gem_mmap_gtt@medium-copy-xy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@zero-extend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-17/igt@gem_mmap_gtt@zero-extend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-size:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@gem_mmap_wc@bad-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@display:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@gem_pread@display.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@gem_pxp@create-regular-context-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-execution:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@gem_pxp@verify-pxp-stale-buf-execution.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-7/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-7/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@gen9_exec_parse@bb-large.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@i915_pm_freq_api@freq-reset-multiple.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@i915_pm_rps@thresholds.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-3/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@i915_selftest@live@active.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-3/igt@i915_selftest@live@active.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12305">i915#12305</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-5/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-1/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216">i915#12216</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-17/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709">i915#8709</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709">i915#8709</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk5/igt@kms_atomic_transition@modeset-transition-nonblocking.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk9/igt@kms_atomic_transition@modeset-transition-nonblocking.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12177">i915#12177</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk5/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk9/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859">i915#11859</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-7/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@kms_big_fb@y-tiled-addfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-4/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-5/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-d-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +146 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-rkl-4/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-12/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +98 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-3/igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@dp-audio-edid:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_chamelium_audio@dp-audio-edid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio-edid:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_chamelium_audio@hdmi-audio-edid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-8/igt@kms_color@ctm-0-50@pipe-a-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-6/igt@kms_color@ctm-0-50@pipe-a-edp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12520">i915#12520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-size-hints:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-18/igt@kms_cursor_crc@cursor-size-hints.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-2/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> +43 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-snb1/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-snb2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-10/igt@kms_dp_aux_dev.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-5/igt@kms_dp_aux_dev.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_feature_discovery@display-2x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-2/igt@kms_feature_discovery@display-3x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk3/igt@kms_flip@2x-dpms-vs-vblank-race@ab-hdmi-a1-hdmi-a2.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk2/igt@kms_flip@2x-dpms-vs-vblank-race@ab-hdmi-a1-hdmi-a2.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk2/igt@kms_flip@2x-dpms-vs-vblank-race@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12403">i915#12403</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_flip@2x-plain-flip-fb-recreate.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_flip@2x-plain-flip-ts-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3966">i915#3966</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@a-hdmi-a1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-rkl-2/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-rmfb-interruptible@a-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-6/igt@kms_flip@flip-vs-rmfb-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-3/igt@kms_flip@flip-vs-rmfb-interruptible@a-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-15/igt@kms_flip@flip-vs-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-12/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@d-hdmi-a3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-12/igt@kms_flip@flip-vs-suspend@d-hdmi-a3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-11/igt@kms_flip@modeset-vs-vblank-race.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_flip@modeset-vs-vblank-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-vga1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-snb5/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-snb6/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-6/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-3/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-tglu-10/igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-2/igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-rkl-3/igt@kms_flip@wf_vblank-ts-check-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-rkl-5/igt@kms_flip@wf_vblank-ts-check-interruptible.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-rkl-3/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-rkl-5/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11961">i915#11961</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt.html">SKIP</a> +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766">i915#9766</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/433">i915#433</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339">i915#12339</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339">i915#12339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-revoke:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_lease@lease-revoke.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_lease@lease-revoke.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_plane_alpha_blend@alpha-transparent-fb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-transparent-fb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-7/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809">i915#9809</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-psr:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_pm_dc@dc5-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_properties@plane-properties-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_properties@plane-properties-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521">i915#11521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk8/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk8/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> +43 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@kms_psr@fbc-pr-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_psr@fbc-psr-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-no-drrs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-7/igt@kms_psr@fbc-psr-no-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-cursor-blt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_psr@fbc-psr2-cursor-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-snb1/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-snb4/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465">i915#5465</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_vrr@flip-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@lobf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-1/igt@kms_vrr@lobf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920">i915#11920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-4/igt@kms_vrr@negative-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-3/igt@kms_vrr@negative-basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10393">i915#10393</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_writeback@writeback-fb-id.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk6/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-3/igt@fbdev@eof.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-tglu-7/igt@gem_ctx_persistence@hostile.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11980">i915#11980</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-8/igt@gem_ctx_persistence@hostile.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-tglu-10/igt@gem_eio@hibernate.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10030">i915#10030</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-2/igt@gem_eio@hibernate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> +1 other test pass</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@gem_exec_suspend@basic-s4-devices.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-7/igt@i915_power@sanity.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984">i915#7984</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-5/igt@i915_power@sanity.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-fencing:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk4/igt@kms_atomic_transition@modeset-transition-fencing.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk8/igt@kms_atomic_transition@modeset-transition-fencing.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12238">i915#12238</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk3/igt@kms_atomic_transition@modeset-transition-fencing.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk8/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk4/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859">i915#11859</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk3/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-8/igt@kms_color@ctm-0-50@pipe-b-edp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12520">i915#12520</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-6/igt@kms_color@ctm-0-50@pipe-b-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-negative:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-18/igt@kms_color@ctm-negative.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_color@ctm-negative.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@degamma:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_color@degamma.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_color@degamma.html">PASS</a> +9 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x256:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_cursor_crc@cursor-random-256x256.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_cursor_crc@cursor-random-256x256.html">PASS</a> +26 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-snb4/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-snb7/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_fbcon_fbt@fbc-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk2/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@bc-hdmi-a1-hdmi-a2.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk6/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@bc-hdmi-a1-hdmi-a2.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12403">i915#12403</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk5/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@bc-hdmi-a1-hdmi-a2.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-tglu-3/igt@kms_flip@blocking-wf_vblank@d-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-4/igt@kms_flip@blocking-wf_vblank@d-hdmi-a1.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk8/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk4/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html">INCOMPLETE</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk1/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-16/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a4.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-17/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a4.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989">i915#11989</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-3/igt@kms_flip@plain-flip-ts-check-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-3/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk2/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk3/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk2/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_invalid_mode@bad-vsync-end.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_invalid_mode@bad-vsync-end.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-max.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_plane_alpha_blend@constant-alpha-max.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-4/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html">PASS</a> +11 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295">i915#9295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-3/igt@kms_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-rkl-1/igt@gem_busy@close-race.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12297">i915#12297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-rkl-2/igt@gem_busy@close-race.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12297">i915#12297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12577">i915#12577</a>)</li>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-snb6/igt@gem_busy@close-race.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12297">i915#12297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-snb4/igt@gem_busy@close-race.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12297">i915#12297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12577">i915#12577</a>)</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-17/igt@gem_busy@close-race.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12297">i915#12297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-18/igt@gem_busy@close-race.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12297">i915#12297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12577">i915#12577</a>)</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-tglu-3/igt@gem_busy@close-race.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12297">i915#12297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-4/igt@gem_busy@close-race.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12297">i915#12297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12577">i915#12577</a>)</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-4/igt@gem_busy@close-race.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12297">i915#12297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-8/igt@gem_busy@close-race.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12297">i915#12297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12577">i915#12577</a>)</li>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk9/igt@gem_busy@close-race.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk7/igt@gem_busy@close-race.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12297">i915#12297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk7/igt@gem_busy@close-race.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12297">i915#12297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12526">i915#12526</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12577">i915#12577</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-11/igt@gem_ctx_persistence@hostile.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11980">i915#11980</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@gem_ctx_persistence@hostile.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11980">i915#11980</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12580">i915#12580</a>)</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-rkl-4/igt@gem_ctx_persistence@hostile.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11980">i915#11980</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-rkl-7/igt@gem_ctx_persistence@hostile.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11980">i915#11980</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12580">i915#12580</a>)</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-14/igt@gem_ctx_persistence@hostile.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11980">i915#11980</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-12/igt@gem_ctx_persistence@hostile.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11980">i915#11980</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12580">i915#12580</a>)</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-2/igt@gem_ctx_persistence@hostile.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11980">i915#11980</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-8/igt@gem_ctx_persistence@hostile.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11980">i915#11980</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12580">i915#12580</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-18/igt@gem_eio@reset-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784">i915#5784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-13/igt@gem_eio@reset-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12543">i915#12543</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-7/igt@gem_exec_capture@capture.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11965">i915#11965</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-1/igt@gem_exec_capture@capture.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11965">i915#11965</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12558">i915#12558</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture@vecs0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-8/igt@gem_exec_capture@capture@vecs0-lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11965">i915#11965</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-3/igt@gem_exec_capture@capture@vecs0-lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11965">i915#11965</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12558">i915#12558</a>) +2 other tests fail</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-16/igt@gem_exec_capture@capture@vecs0-lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11965">i915#11965</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-14/igt@gem_exec_capture@capture@vecs0-lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11965">i915#11965</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12558">i915#12558</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk8/igt@gem_pread@exhaustion.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk1/igt@gem_pread@exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_async_flips@invalid-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_async_flips@invalid-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6228">i915#6228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_big_fb@linear-32bpp-rotate-270.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_big_fb@linear-32bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-17/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-18/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-11/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616">i915#11616</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213">i915#7213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-3/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-11/igt@kms_content_protection@srm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_content_protection@srm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-4/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162">i915#7162</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x32:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_cursor_crc@cursor-offscreen-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359">i915#3359</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12402">i915#12402</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812">i915#8812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_fence_pin_leak.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_fence_pin_leak.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881">i915#4881</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813">i915#8813</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810">i915#8810</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813">i915#8813</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2295">i915#2295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_hdr@static-swap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_hdr@static-swap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-y:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@kms_plane_lowres@tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821">i915#8821</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_plane_lowres@tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-cursor-blt:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-18/igt@kms_psr@fbc-pr-cursor-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-13/igt@kms_psr@fbc-pr-cursor-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-sprite-plane-move:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-18/igt@kms_psr@fbc-psr-sprite-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-19/igt@kms_psr@fbc-psr-sprite-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_rotation_crc@primary-rotation-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-3/igt@kms_rotation_crc@primary-rotation-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131">i915#11131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-3/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131">i915#11131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235">i915#4235</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131">i915#11131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235">i915#4235</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@kms_rotation_crc@sprite-rotation-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_vrr@max-min.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_vrr@max-min.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-8/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7484">i915#7484</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100">i915#9100</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-1/igt@perf_pmu@frequency.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6806">i915#6806</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-4/igt@perf_pmu@frequency.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12549">i915#12549</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6806">i915#6806</a>) +1 other test fail</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-13/igt@perf_pmu@frequency.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6806">i915#6806</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-17/igt@perf_pmu@frequency.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12549">i915#12549</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6806">i915#6806</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-7/igt@perf_pmu@module-unload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11823">i915#11823</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-7/igt@perf_pmu@module-unload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11823">i915#11823</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12555">i915#12555</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-mtlp-6/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781">i915#9781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-mtlp-3/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12564">i915#12564</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781">i915#9781</a>)</li>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk4/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-glk6/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781">i915#9781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-glk3/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12564">i915#12564</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781">i915#9781</a>)</li>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg2-4/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781">i915#9781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg2-4/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12564">i915#12564</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781">i915#9781</a>)</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-rkl-5/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781">i915#9781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-rkl-5/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12564">i915#12564</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781">i915#9781</a>)</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-dg1-16/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781">i915#9781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-dg1-17/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12564">i915#12564</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781">i915#9781</a>)</li>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-snb5/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781">i915#9781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-snb6/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12564">i915#12564</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781">i915#9781</a>)</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/shard-tglu-10/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781">i915#9781</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/shard-tglu-2/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12564">i915#12564</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781">i915#9781</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15579 -&gt; Patchwork_140321v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15579: 2d11d2602dc35b03fd68309c96fedeea423beb42 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8082: c8379ec8b26f3c21bae5473706b23da78bd26ffa @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_140321v1: 2d11d2602dc35b03fd68309c96fedeea423beb42 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============2354615665615220942==--
