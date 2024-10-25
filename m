Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D953F9B0848
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 17:30:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80F2E10EB09;
	Fri, 25 Oct 2024 15:30:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B59510EB08;
 Fri, 25 Oct 2024 15:30:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5064944207668155801=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915=3A_add_GEM=5FWARN?=
 =?utf-8?q?=5FON_to_remap=5Fio=5Fsg?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Krzysztof Karas" <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2024 15:30:20 -0000
Message-ID: <172987022003.1333383.4194670952720228352@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <fzn3jb4cdylc7fj4og2hgy73onelzurxmmsrzqix6yswms4ite@d74hat7krnm6>
In-Reply-To: <fzn3jb4cdylc7fj4og2hgy73onelzurxmmsrzqix6yswms4ite@d74hat7krnm6>
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

--===============5064944207668155801==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: add GEM_WARN_ON to remap_io_sg
URL   : https://patchwork.freedesktop.org/series/140486/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15595_full -> Patchwork_140486v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_140486v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_140486v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (8 -> 8)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_140486v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-8/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html

  
Known issues
------------

  Here are the changes found in Patchwork_140486v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-dg2:          NOTRUN -> [SKIP][2] ([i915#11078])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-11/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@device_reset@unbind-reset-rebind:
    - shard-tglu:         NOTRUN -> [ABORT][3] ([i915#5507])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@device_reset@unbind-reset-rebind.html

  * igt@drm_fdinfo@all-busy-check-all:
    - shard-mtlp:         NOTRUN -> [SKIP][4] ([i915#8414])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-3/igt@drm_fdinfo@all-busy-check-all.html

  * igt@fbdev@write:
    - shard-dg2:          [PASS][5] -> [SKIP][6] ([i915#2582])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-8/igt@fbdev@write.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@fbdev@write.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-tglu:         NOTRUN -> [SKIP][7] ([i915#3555] / [i915#9323])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][8] -> [INCOMPLETE][9] ([i915#7297])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-tglu:         NOTRUN -> [SKIP][10] ([i915#7697])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-tglu:         NOTRUN -> [SKIP][11] ([i915#6335])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-tglu:         [PASS][12] -> [FAIL][13] ([i915#12031])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-tglu-7/igt@gem_ctx_engines@invalid-engines.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-3/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_eio@unwedge-stress:
    - shard-dg1:          NOTRUN -> [FAIL][14] ([i915#5784])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-17/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#4525])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-tglu:         NOTRUN -> [SKIP][16] ([i915#6334]) +1 other test skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          NOTRUN -> [FAIL][17] ([i915#2846])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-glk5/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_flush@basic-uc-rw-default:
    - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#3539] / [i915#4852])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-8/igt@gem_exec_flush@basic-uc-rw-default.html
    - shard-dg1:          NOTRUN -> [SKIP][19] ([i915#3539] / [i915#4852])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@gem_exec_flush@basic-uc-rw-default.html

  * igt@gem_exec_reloc@basic-cpu-gtt-active:
    - shard-rkl:          NOTRUN -> [SKIP][20] ([i915#3281])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@gem_exec_reloc@basic-cpu-gtt-active.html

  * igt@gem_exec_reloc@basic-wc-gtt-active:
    - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#3281]) +2 other tests skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-8/igt@gem_exec_reloc@basic-wc-gtt-active.html
    - shard-dg1:          NOTRUN -> [SKIP][22] ([i915#3281])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@gem_exec_reloc@basic-wc-gtt-active.html
    - shard-mtlp:         NOTRUN -> [SKIP][23] ([i915#3281])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-6/igt@gem_exec_reloc@basic-wc-gtt-active.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-rkl:          NOTRUN -> [ABORT][24] ([i915#7975] / [i915#8213]) +1 other test abort
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-tglu-1:       NOTRUN -> [SKIP][25] ([i915#4613])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-rkl:          NOTRUN -> [SKIP][26] ([i915#4613])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-tglu:         NOTRUN -> [SKIP][27] ([i915#4613])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][28] ([i915#12193])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@gem_lmem_swapping@verify-random-ccs.html
    - shard-glk:          NOTRUN -> [SKIP][29] ([i915#4613])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-glk5/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_lmem_swapping@verify-random-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][30] ([i915#4565])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@gem_lmem_swapping@verify-random-ccs@lmem0.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#4077]) +2 other tests skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-5/igt@gem_mmap_gtt@cpuset-big-copy.html
    - shard-dg1:          NOTRUN -> [SKIP][32] ([i915#4077]) +2 other tests skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-17/igt@gem_mmap_gtt@cpuset-big-copy.html
    - shard-mtlp:         NOTRUN -> [SKIP][33] ([i915#4077]) +2 other tests skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-3/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_wc@bad-offset:
    - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#4083])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-11/igt@gem_mmap_wc@bad-offset.html

  * igt@gem_pxp@create-valid-protected-context:
    - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#4270])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-3/igt@gem_pxp@create-valid-protected-context.html
    - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#4270])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-5/igt@gem_pxp@create-valid-protected-context.html

  * igt@gem_pxp@display-protected-crc:
    - shard-tglu-1:       NOTRUN -> [SKIP][37] ([i915#4270])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-tglu:         NOTRUN -> [SKIP][38] ([i915#4270]) +1 other test skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][39] ([i915#5190] / [i915#8428])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-4/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html

  * igt@gem_userptr_blits@access-control:
    - shard-tglu:         NOTRUN -> [SKIP][40] ([i915#3297])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#3297])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-8/igt@gem_userptr_blits@readonly-pwrite-unsync.html
    - shard-dg1:          NOTRUN -> [SKIP][42] ([i915#3297])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gem_userptr_blits@relocations:
    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#3281] / [i915#3297])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-8/igt@gem_userptr_blits@relocations.html
    - shard-dg1:          NOTRUN -> [SKIP][44] ([i915#3281] / [i915#3297])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@gem_userptr_blits@relocations.html
    - shard-mtlp:         NOTRUN -> [SKIP][45] ([i915#3281] / [i915#3297])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-6/igt@gem_userptr_blits@relocations.html

  * igt@gen3_render_linear_blits:
    - shard-rkl:          NOTRUN -> [SKIP][46] +2 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@gen3_render_linear_blits.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#2856])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-11/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-tglu-1:       NOTRUN -> [SKIP][48] ([i915#2527] / [i915#2856])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-tglu:         NOTRUN -> [WARN][49] ([i915#2681]) +1 other test warn
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:
    - shard-dg1:          [PASS][50] -> [FAIL][51] ([i915#12548] / [i915#3591])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [PASS][52] -> [ABORT][53] ([i915#12216]) +1 other test abort
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-mtlp-8/igt@i915_selftest@live@workarounds.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-3/igt@i915_selftest@live@workarounds.html

  * igt@intel_hwmon@hwmon-write:
    - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#7707])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@intel_hwmon@hwmon-write.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][55] ([i915#8709]) +7 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-14/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#8709]) +11 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-tglu-1:       NOTRUN -> [SKIP][57] ([i915#9531])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
    - shard-tglu:         NOTRUN -> [SKIP][58] ([i915#5286])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-tglu-1:       NOTRUN -> [SKIP][59] ([i915#5286]) +1 other test skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
    - shard-dg1:          NOTRUN -> [SKIP][60] ([i915#4538] / [i915#5286])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-17/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#5286])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-16bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][62] +29 other tests skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_big_fb@linear-16bpp-rotate-270.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#3638]) +1 other test skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][64] ([i915#3638])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#4538] / [i915#5190])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-8/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html
    - shard-mtlp:         NOTRUN -> [SKIP][66] +1 other test skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-6/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#10307] / [i915#6095]) +158 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-10/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-dp-3.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][68] ([i915#6095]) +4 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-3/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][69] ([i915#6095]) +24 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs:
    - shard-snb:          NOTRUN -> [SKIP][70] +46 other tests skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-snb7/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#6095]) +31 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][73] ([i915#6095]) +19 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#6095]) +92 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][75] +72 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-glk8/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#11616] / [i915#7213]) +3 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-8/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#4087]) +3 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-4/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_frames@dp-crc-single:
    - shard-dg1:          NOTRUN -> [SKIP][78] ([i915#7828])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@kms_chamelium_frames@dp-crc-single.html
    - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#7828])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-6/igt@kms_chamelium_frames@dp-crc-single.html

  * igt@kms_chamelium_frames@hdmi-aspect-ratio:
    - shard-tglu:         NOTRUN -> [SKIP][80] ([i915#7828]) +2 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_chamelium_frames@hdmi-aspect-ratio.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#7828]) +2 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-4/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
    - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#7828])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-tglu-1:       NOTRUN -> [SKIP][83] ([i915#7828]) +4 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][84] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_content_protection@atomic-dpms.html
    - shard-dg1:          NOTRUN -> [SKIP][85] ([i915#7116] / [i915#9424])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-17/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@content-type-change:
    - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#9424])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-4/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][87] ([i915#3116] / [i915#3299])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@lic-type-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][88] ([i915#6944] / [i915#9424])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@lic-type-0@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [TIMEOUT][89] ([i915#7173])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-10/igt@kms_content_protection@lic-type-0@pipe-a-dp-3.html

  * igt@kms_content_protection@srm:
    - shard-tglu:         NOTRUN -> [SKIP][90] ([i915#6944] / [i915#7116] / [i915#7118])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#3555])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][92] ([i915#11453] / [i915#3359])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-128x42:
    - shard-mtlp:         NOTRUN -> [SKIP][93] ([i915#8814])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-sliding-128x42.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-tglu-1:       NOTRUN -> [SKIP][94] ([i915#11453] / [i915#3359])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-tglu:         NOTRUN -> [SKIP][95] ([i915#4103])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
    - shard-dg1:          NOTRUN -> [SKIP][96] +2 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
    - shard-mtlp:         NOTRUN -> [SKIP][97] ([i915#9809])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-3/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [PASS][98] -> [FAIL][99] ([i915#2346])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-tglu-1:       NOTRUN -> [SKIP][100] ([i915#4103])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-tglu-1:       NOTRUN -> [SKIP][101] ([i915#3840])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-tglu-1:       NOTRUN -> [SKIP][102] ([i915#3469])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@display-2x:
    - shard-tglu:         NOTRUN -> [SKIP][103] ([i915#1839])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_feature_discovery@display-2x.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#3637])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-tglu-1:       NOTRUN -> [SKIP][105] ([i915#3637]) +1 other test skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-snb:          [PASS][106] -> [FAIL][107] ([i915#2122]) +1 other test fail
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-snb4/igt@kms_flip@2x-wf_vblank-ts-check.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-snb2/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#8381])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-8/igt@kms_flip@flip-vs-fences-interruptible.html
    - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#8381])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@kms_flip@flip-vs-fences-interruptible.html
    - shard-mtlp:         NOTRUN -> [SKIP][110] ([i915#8381])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-6/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a2:
    - shard-glk:          [PASS][111] -> [INCOMPLETE][112] ([i915#4839]) +1 other test incomplete
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-glk3/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-glk2/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][113] ([i915#2672] / [i915#3555])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][114] ([i915#2587] / [i915#2672])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][115] ([i915#2672] / [i915#3555] / [i915#8813])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#2672] / [i915#3555] / [i915#5190])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][117] ([i915#2672] / [i915#8813])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#2672]) +1 other test skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][119] ([i915#2672] / [i915#3555]) +1 other test skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#2587] / [i915#2672]) +1 other test skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-dg2:          [PASS][121] -> [SKIP][122] ([i915#3555]) +2 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:
    - shard-dg2:          [PASS][123] -> [SKIP][124] ([i915#5354]) +8 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
    - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#3023])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#3458])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][127] ([i915#8708])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#3458]) +2 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt:
    - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#1825]) +2 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#8708]) +4 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#5354]) +4 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt.html
    - shard-mtlp:         NOTRUN -> [SKIP][132] ([i915#1825]) +1 other test skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-tglu-1:       NOTRUN -> [SKIP][133] +33 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-dg2:          [PASS][134] -> [SKIP][135] ([i915#3555] / [i915#8228])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-10/igt@kms_hdr@static-toggle-dpms.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-11/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#10656])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_plane@plane-panning-top-left:
    - shard-dg2:          [PASS][137] -> [SKIP][138] ([i915#8825])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-8/igt@kms_plane@plane-panning-top-left.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_plane@plane-panning-top-left.html

  * igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant:
    - shard-dg2:          [PASS][139] -> [SKIP][140] ([i915#7294]) +1 other test skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-mtlp:         NOTRUN -> [SKIP][141] ([i915#3555] / [i915#8806])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-6/igt@kms_plane_multiple@tiling-y.html
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#8806])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-8/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][143] ([i915#8292])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-15/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][144] ([i915#12247]) +9 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation:
    - shard-dg2:          [PASS][145] -> [SKIP][146] ([i915#12247] / [i915#8152] / [i915#9423])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:
    - shard-dg2:          [PASS][147] -> [SKIP][148] ([i915#12247]) +5 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-tglu-1:       NOTRUN -> [SKIP][149] ([i915#3555]) +2 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#12247] / [i915#6953])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b:
    - shard-tglu-1:       NOTRUN -> [SKIP][151] ([i915#12247]) +8 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b:
    - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#12247]) +1 other test skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:
    - shard-dg2:          [PASS][153] -> [SKIP][154] ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d:
    - shard-dg2:          [PASS][155] -> [SKIP][156] ([i915#12247] / [i915#8152]) +1 other test skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][157] ([i915#12343])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu:         [PASS][158] -> [FAIL][159] ([i915#9295])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-tglu-3/igt@kms_pm_dc@dc6-dpms.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu:         [PASS][160] -> [SKIP][161] ([i915#4281])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-rkl:          [PASS][162] -> [SKIP][163] ([i915#9519])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-rkl-5/igt@kms_pm_rpm@dpms-non-lpsp.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-dg2:          [PASS][164] -> [SKIP][165] ([i915#9519]) +3 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_properties@crtc-properties-atomic:
    - shard-dg2:          [PASS][166] -> [SKIP][167] ([i915#11521])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-8/igt@kms_properties@crtc-properties-atomic.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_properties@crtc-properties-atomic.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:
    - shard-glk:          NOTRUN -> [SKIP][168] ([i915#11520]) +3 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-glk5/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html
    - shard-dg1:          NOTRUN -> [SKIP][169] ([i915#11520])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
    - shard-snb:          NOTRUN -> [SKIP][170] ([i915#11520]) +1 other test skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-snb2/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#11520])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-5/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html
    - shard-mtlp:         NOTRUN -> [SKIP][172] ([i915#12316]) +1 other test skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-3/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][173] ([i915#9808])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-3/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area@pipe-a-edp-1.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#11520])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area:
    - shard-tglu-1:       NOTRUN -> [SKIP][175] ([i915#11520]) +1 other test skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-tglu:         NOTRUN -> [SKIP][176] ([i915#11520]) +1 other test skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-tglu:         NOTRUN -> [SKIP][177] ([i915#9683])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@fbc-psr-cursor-plane-move:
    - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#1072] / [i915#9732]) +2 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-8/igt@kms_psr@fbc-psr-cursor-plane-move.html

  * igt@kms_psr@fbc-psr2-sprite-blt@edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][179] ([i915#9688]) +6 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-6/igt@kms_psr@fbc-psr2-sprite-blt@edp-1.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#1072] / [i915#9732])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_psr@psr-sprite-plane-move:
    - shard-dg1:          NOTRUN -> [SKIP][181] ([i915#1072] / [i915#9732]) +4 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@kms_psr@psr-sprite-plane-move.html

  * igt@kms_psr@psr2-sprite-mmap-cpu:
    - shard-tglu-1:       NOTRUN -> [SKIP][182] ([i915#9732]) +6 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_psr@psr2-sprite-mmap-cpu.html

  * igt@kms_psr@psr2-sprite-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][183] ([i915#9732]) +4 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_psr@psr2-sprite-mmap-gtt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglu-1:       NOTRUN -> [SKIP][184] ([i915#9685]) +1 other test skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-dg1:          NOTRUN -> [SKIP][185] ([i915#9685])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-tglu-1:       NOTRUN -> [ABORT][186] ([i915#12231]) +1 other test abort
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_vblank@wait-idle-hang:
    - shard-dg2:          [PASS][187] -> [SKIP][188] ([i915#9197]) +14 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_vblank@wait-idle-hang.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_vblank@wait-idle-hang.html

  * igt@kms_vrr@negative-basic:
    - shard-tglu-1:       NOTRUN -> [SKIP][189] ([i915#3555] / [i915#9906])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_vrr@negative-basic.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-tglu:         NOTRUN -> [SKIP][190] ([i915#2437])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-glk:          NOTRUN -> [SKIP][191] ([i915#2437])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-glk7/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@mi-rpc:
    - shard-dg1:          NOTRUN -> [SKIP][192] ([i915#2434])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@perf@mi-rpc.html

  * igt@perf_pmu@busy-accuracy-50@rcs0:
    - shard-glk:          [PASS][193] -> [FAIL][194] ([i915#4349]) +2 other tests fail
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-glk2/igt@perf_pmu@busy-accuracy-50@rcs0.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-glk3/igt@perf_pmu@busy-accuracy-50@rcs0.html

  * igt@perf_pmu@event-wait@rcs0:
    - shard-dg2:          NOTRUN -> [SKIP][195] +2 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-10/igt@perf_pmu@event-wait@rcs0.html

  
#### Possible fixes ####

  * igt@drm_read@short-buffer-block:
    - shard-dg2:          [SKIP][196] ([i915#9197]) -> [PASS][197] +26 other tests pass
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@drm_read@short-buffer-block.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@drm_read@short-buffer-block.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-rkl:          [FAIL][198] ([i915#12031]) -> [PASS][199]
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-rkl-5/igt@gem_ctx_engines@invalid-engines.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-3/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-glk:          [ABORT][200] -> [PASS][201] +1 other test pass
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-glk5/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-glk8/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_ctx_persistence@hostile:
    - shard-tglu:         [FAIL][202] ([i915#11980] / [i915#12580]) -> [PASS][203]
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-tglu-6/igt@gem_ctx_persistence@hostile.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-2/igt@gem_ctx_persistence@hostile.html

  * igt@gem_eio@hibernate:
    - shard-dg2:          [ABORT][204] ([i915#10030] / [i915#7975] / [i915#8213]) -> [PASS][205]
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-10/igt@gem_eio@hibernate.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-11/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@nop:
    - shard-mtlp:         [DMESG-WARN][206] ([i915#12412]) -> [PASS][207]
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-mtlp-4/igt@gem_exec_balancer@nop.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-6/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-rkl:          [FAIL][208] ([i915#2842]) -> [PASS][209] +2 other tests pass
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-rkl-5/igt@gem_exec_fair@basic-pace@vecs0.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_reloc@basic-write-wc-noreloc:
    - shard-glk:          [INCOMPLETE][210] -> [PASS][211]
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-glk6/igt@gem_exec_reloc@basic-write-wc-noreloc.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-glk6/igt@gem_exec_reloc@basic-write-wc-noreloc.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          [INCOMPLETE][212] ([i915#11441]) -> [PASS][213] +1 other test pass
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [ABORT][214] ([i915#12375] / [i915#5566]) -> [PASS][215]
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-glk4/igt@gen9_exec_parse@allowed-single.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-glk7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [ABORT][216] ([i915#9820]) -> [PASS][217]
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:
    - shard-tglu:         [WARN][218] ([i915#2681]) -> [PASS][219]
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-tglu-7/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-3/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
    - shard-dg1:          [FAIL][220] ([i915#3591]) -> [PASS][221]
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-dg1:          [FAIL][222] ([i915#12548] / [i915#3591]) -> [PASS][223]
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [FAIL][224] -> [PASS][225]
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-snb2/igt@i915_pm_rps@reset.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-snb4/igt@i915_pm_rps@reset.html

  * igt@kms_atomic_transition@modeset-transition:
    - shard-glk:          [FAIL][226] ([i915#12238]) -> [PASS][227]
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-glk8/igt@kms_atomic_transition@modeset-transition.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-glk5/igt@kms_atomic_transition@modeset-transition.html

  * igt@kms_atomic_transition@modeset-transition@2x-outputs:
    - shard-glk:          [FAIL][228] ([i915#11859]) -> [PASS][229]
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-glk8/igt@kms_atomic_transition@modeset-transition@2x-outputs.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-glk5/igt@kms_atomic_transition@modeset-transition@2x-outputs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-tglu:         [FAIL][230] ([i915#11808]) -> [PASS][231] +1 other test pass
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-tglu-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-snb:          [SKIP][232] -> [PASS][233] +2 other tests pass
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-snb4/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-snb2/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_flip@modeset-vs-vblank-race:
    - shard-dg2:          [SKIP][234] ([i915#5354]) -> [PASS][235] +10 other tests pass
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_flip@modeset-vs-vblank-race.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_flip@modeset-vs-vblank-race.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-dg2:          [SKIP][236] ([i915#3555]) -> [PASS][237] +4 other tests pass
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_plane@pixel-format-source-clamping:
    - shard-dg2:          [SKIP][238] ([i915#8825]) -> [PASS][239] +1 other test pass
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_plane@pixel-format-source-clamping.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_plane@pixel-format-source-clamping.html

  * igt@kms_plane@planar-pixel-format-settings:
    - shard-dg2:          [SKIP][240] ([i915#9581]) -> [PASS][241]
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_plane@planar-pixel-format-settings.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_plane@planar-pixel-format-settings.html

  * igt@kms_plane_alpha_blend@constant-alpha-mid:
    - shard-dg2:          [SKIP][242] ([i915#7294]) -> [PASS][243]
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-mid.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_plane_alpha_blend@constant-alpha-mid.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers:
    - shard-dg2:          [SKIP][244] ([i915#8152] / [i915#9423]) -> [PASS][245]
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-d:
    - shard-dg2:          [SKIP][246] ([i915#8152]) -> [PASS][247]
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-d.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:
    - shard-dg2:          [SKIP][248] ([i915#12247] / [i915#8152] / [i915#9423]) -> [PASS][249]
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
    - shard-dg2:          [SKIP][250] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][251]
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a:
    - shard-dg2:          [SKIP][252] ([i915#12247]) -> [PASS][253] +8 other tests pass
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d:
    - shard-dg2:          [SKIP][254] ([i915#12247] / [i915#8152]) -> [PASS][255] +1 other test pass
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html

  * igt@kms_pm_rpm@cursor-dpms:
    - shard-dg2:          [SKIP][256] ([i915#1849]) -> [PASS][257]
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_pm_rpm@cursor-dpms.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-7/igt@kms_pm_rpm@cursor-dpms.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [SKIP][258] ([i915#9519]) -> [PASS][259] +2 other tests pass
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_psr@psr2-cursor-plane-move@edp-1:
    - shard-mtlp:         [FAIL][260] ([i915#12380] / [i915#12511]) -> [PASS][261] +1 other test pass
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-mtlp-4/igt@kms_psr@psr2-cursor-plane-move@edp-1.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-2/igt@kms_psr@psr2-cursor-plane-move@edp-1.html

  
#### Warnings ####

  * igt@gem_eio@kms:
    - shard-dg2:          [SKIP][262] ([i915#9197]) -> [FAIL][263] ([i915#5784])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@gem_eio@kms.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@gem_eio@kms.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [ABORT][264] ([i915#10131] / [i915#9697]) -> [ABORT][265] ([i915#10131] / [i915#9820])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-dg2:          [SKIP][266] -> [SKIP][267] ([i915#9197]) +3 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-8/igt@kms_big_fb@linear-16bpp-rotate-90.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
    - shard-dg2:          [SKIP][268] ([i915#9197]) -> [SKIP][269] +1 other test skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          [SKIP][270] ([i915#4538] / [i915#5190]) -> [SKIP][271] ([i915#5190] / [i915#9197]) +4 other tests skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
    - shard-dg2:          [SKIP][272] ([i915#5190] / [i915#9197]) -> [SKIP][273] ([i915#4538] / [i915#5190]) +7 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-7/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-dg2:          [SKIP][274] ([i915#5190] / [i915#9197]) -> [SKIP][275] ([i915#5190]) +1 other test skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_big_fb@yf-tiled-addfb.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc:
    - shard-dg2:          [SKIP][276] ([i915#9197]) -> [SKIP][277] ([i915#10307] / [i915#6095]) +4 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs:
    - shard-dg2:          [SKIP][278] ([i915#10307] / [i915#6095]) -> [SKIP][279] ([i915#9197])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-dg2:          [SKIP][280] ([i915#12313]) -> [SKIP][281] ([i915#9197])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_chamelium_hpd@vga-hpd-after-suspend:
    - shard-dg1:          [SKIP][282] ([i915#7828]) -> [SKIP][283] ([i915#4423] / [i915#7828])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg1-15/igt@kms_chamelium_hpd@vga-hpd-after-suspend.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-15/igt@kms_chamelium_hpd@vga-hpd-after-suspend.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-dg2:          [SKIP][284] ([i915#3299]) -> [SKIP][285] ([i915#9197])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_content_protection@dp-mst-type-1.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@lic-type-0:
    - shard-dg2:          [SKIP][286] ([i915#9424]) -> [TIMEOUT][287] ([i915#7173])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_content_protection@lic-type-0.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-10/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][288] ([i915#9197]) -> [SKIP][289] ([i915#7118] / [i915#9424])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_content_protection@type1.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-7/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-dg2:          [SKIP][290] ([i915#9197]) -> [SKIP][291] ([i915#3555]) +1 other test skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-32x10.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-dg2:          [SKIP][292] ([i915#11453] / [i915#3359]) -> [SKIP][293] ([i915#9197])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-dg2:          [SKIP][294] ([i915#3555]) -> [SKIP][295] ([i915#9197]) +1 other test skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-8/igt@kms_cursor_crc@cursor-onscreen-max-size.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-dg2:          [SKIP][296] ([i915#9197]) -> [SKIP][297] ([i915#5354]) +4 other tests skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          [SKIP][298] ([i915#5354]) -> [SKIP][299] ([i915#9197])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg2:          [SKIP][300] ([i915#9067]) -> [SKIP][301] ([i915#9197])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-dg2:          [SKIP][302] ([i915#9197]) -> [SKIP][303] ([i915#8812])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-dg2:          [SKIP][304] ([i915#9197]) -> [SKIP][305] ([i915#3840] / [i915#9053])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-dg2:          [SKIP][306] ([i915#3555] / [i915#5190]) -> [SKIP][307] ([i915#2672] / [i915#3555] / [i915#5190])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling:
    - shard-mtlp:         [SKIP][308] ([i915#3555] / [i915#8813]) -> [SKIP][309] ([i915#3555] / [i915#8810] / [i915#8813]) +5 other tests skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          [SKIP][310] ([i915#5354]) -> [SKIP][311] ([i915#8708]) +13 other tests skip
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:
    - shard-dg2:          [SKIP][312] ([i915#8708]) -> [SKIP][313] ([i915#5354]) +7 other tests skip
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt:
    - shard-dg2:          [SKIP][314] ([i915#3458]) -> [SKIP][315] ([i915#5354]) +5 other tests skip
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
    - shard-dg2:          [SKIP][316] ([i915#3458]) -> [SKIP][317] ([i915#10433] / [i915#3458])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][318] ([i915#5354]) -> [SKIP][319] ([i915#3458]) +4 other tests skip
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:
    - shard-dg2:          [SKIP][320] ([i915#10433] / [i915#3458]) -> [SKIP][321] ([i915#3458])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt:
    - shard-dg1:          [SKIP][322] ([i915#4423] / [i915#8708]) -> [SKIP][323] ([i915#8708])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          [SKIP][324] ([i915#9197]) -> [SKIP][325] ([i915#3555] / [i915#8228])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_hdr@static-toggle-suspend.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-7/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-dg2:          [SKIP][326] ([i915#12247] / [i915#6953] / [i915#9423]) -> [SKIP][327] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-25.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d:
    - shard-dg2:          [SKIP][328] ([i915#12247]) -> [SKIP][329] ([i915#12247] / [i915#8152])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-dg2:          [SKIP][330] ([i915#5190]) -> [SKIP][331] ([i915#5190] / [i915#9197])
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_vrr@lobf:
    - shard-dg2:          [SKIP][332] ([i915#9197]) -> [SKIP][333] ([i915#11920])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_vrr@lobf.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_vrr@lobf.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-dg2:          [SKIP][334] ([i915#9197]) -> [SKIP][335] ([i915#9906])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_vrr@seamless-rr-switch-vrr.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          [FAIL][336] ([i915#7484]) -> [FAIL][337] ([i915#9100]) +1 other test fail
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-4/igt@perf@non-zero-reason@0-rcs0.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-7/igt@perf@non-zero-reason@0-rcs0.html

  
  [i915#10030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10030
  [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441
  [i915#11453]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11521]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521
  [i915#11616]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616
  [i915#11808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11808
  [i915#11859]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859
  [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
  [i915#11980]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11980
  [i915#12031]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12031
  [i915#12193]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12193
  [i915#12216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216
  [i915#12231]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12231
  [i915#12238]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12238
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#12375]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12375
  [i915#12380]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12380
  [i915#12412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12412
  [i915#12511]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12511
  [i915#12548]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12548
  [i915#12580]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12580
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
  [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
  [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
  [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4565]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4565
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5507]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5507
  [i915#5566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
  [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
  [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
  [i915#7297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297
  [i915#7484]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7484
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
  [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
  [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8292]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292
  [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
  [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
  [i915#8806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806
  [i915#8810]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810
  [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
  [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
  [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
  [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
  [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
  [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
  [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
  [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
  [i915#9581]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9581
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9697
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
  [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
  [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906


Build changes
-------------

  * Linux: CI_DRM_15595 -> Patchwork_140486v1

  CI-20190529: 20190529
  CI_DRM_15595: 7cadd167321b3267a9803aba88f115fc9809d4ea @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8083: 73f910ebf47fe8f379d2e233cab754e4d6091701 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_140486v1: 7cadd167321b3267a9803aba88f115fc9809d4ea @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/index.html

--===============5064944207668155801==
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
<tr><td><b>Series:</b></td><td>drm/i915: add GEM_WARN_ON to remap_io_sg</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/140486/">https://patchwork.freedesktop.org/series/140486/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15595_full -&gt; Patchwork_140486v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_140486v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_140486v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (8 -&gt; 8)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_140486v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-8/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_140486v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-11/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@device_reset@unbind-reset-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5507">i915#5507</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@all-busy-check-all:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-3/igt@drm_fdinfo@all-busy-check-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414">i915#8414</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-8/igt@fbdev@write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@fbdev@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297">i915#7297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-tglu-7/igt@gem_ctx_engines@invalid-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-3/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12031">i915#12031</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-17/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@gem_exec_balancer@parallel-out-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334">i915#6334</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-glk5/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-rw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-8/igt@gem_exec_flush@basic-uc-rw-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@gem_exec_flush@basic-uc-rw-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-active:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@gem_exec_reloc@basic-cpu-gtt-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-8/igt@gem_exec_reloc@basic-wc-gtt-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@gem_exec_reloc@basic-wc-gtt-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-6/igt@gem_exec_reloc@basic-wc-gtt-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@gem_exec_suspend@basic-s4-devices.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213">i915#8213</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@gem_lmem_swapping@heavy-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@gem_lmem_swapping@verify-random-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12193">i915#12193</a>)</li>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-glk5/igt@gem_lmem_swapping@verify-random-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@gem_lmem_swapping@verify-random-ccs@lmem0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4565">i915#4565</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-5/igt@gem_mmap_gtt@cpuset-big-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-17/igt@gem_mmap_gtt@cpuset-big-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-3/igt@gem_mmap_gtt@cpuset-big-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-offset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-11/igt@gem_mmap_wc@bad-offset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-valid-protected-context:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-3/igt@gem_pxp@create-valid-protected-context.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-5/igt@gem_pxp@create-valid-protected-context.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@gem_pxp@display-protected-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-4/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@gem_userptr_blits@access-control.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-8/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-8/igt@gem_userptr_blits@relocations.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@gem_userptr_blits@relocations.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-6/igt@gem_userptr_blits@relocations.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen3_render_linear_blits:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@gen3_render_linear_blits.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-11/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681">i915#2681</a>) +1 other test warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12548">i915#12548</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591">i915#3591</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-mtlp-8/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-3/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216">i915#12216</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-14/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709">i915#8709</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709">i915#8709</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-17/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_big_fb@linear-16bpp-rotate-270.html">SKIP</a> +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-8/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-6/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-10/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-dp-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +158 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-3/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-snb7/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs.html">SKIP</a> +46 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +31 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +92 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-glk8/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1.html">SKIP</a> +72 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-8/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616">i915#11616</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213">i915#7213</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-4/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-single:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@kms_chamelium_frames@dp-crc-single.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-6/igt@kms_chamelium_frames@dp-crc-single.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-aspect-ratio:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_chamelium_frames@hdmi-aspect-ratio.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-4/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_content_protection@atomic-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-17/igt@kms_content_protection@atomic-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-4/igt@kms_content_protection@content-type-change.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_content_protection@lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-10/igt@kms_content_protection@lic-type-0@pipe-a-dp-3.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_content_protection@srm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-128x42:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-sliding-128x42.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html">SKIP</a> +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-3/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809">i915#9809</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469">i915#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_feature_discovery@display-2x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_flip@2x-flip-vs-panning.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-panning-vs-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-snb4/igt@kms_flip@2x-wf_vblank-ts-check.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-snb2/igt@kms_flip@2x-wf_vblank-ts-check.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-8/igt@kms_flip@flip-vs-fences-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381">i915#8381</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@kms_flip@flip-vs-fences-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381">i915#8381</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-6/igt@kms_flip@flip-vs-fences-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-glk3/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-glk2/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813">i915#8813</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813">i915#8813</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +4 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html">SKIP</a> +33 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-10/igt@kms_hdr@static-toggle-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-11/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@kms_joiner@basic-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-top-left:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-8/igt@kms_plane@plane-panning-top-left.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_plane@plane-panning-top-left.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825">i915#8825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-6/igt@kms_plane_multiple@tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806">i915#8806</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-8/igt@kms_plane_multiple@tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806">i915#8806</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-15/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-tglu-3/igt@kms_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295">i915#9295</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-rkl-5/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_properties@crtc-properties-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-8/igt@kms_properties@crtc-properties-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_properties@crtc-properties-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521">i915#11521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-glk5/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-snb2/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-5/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-3/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316">i915#12316</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-3/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area@pipe-a-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808">i915#9808</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-plane-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-8/igt@kms_psr@fbc-psr-cursor-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-blt@edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-6/igt@kms_psr@fbc-psr2-sprite-blt@edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@kms_psr@fbc-psr2-sprite-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-move:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@kms_psr@psr-sprite-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-cpu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_psr@psr2-sprite-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_psr@psr2-sprite-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_selftest@drm_framebuffer.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12231">i915#12231</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@wait-idle-hang:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_vblank@wait-idle-hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_vblank@wait-idle-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-1/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-5/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-glk7/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-19/igt@perf@mi-rpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434">i915#2434</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-50@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-glk2/igt@perf_pmu@busy-accuracy-50@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-glk3/igt@perf_pmu@busy-accuracy-50@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#4349</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait@rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-10/igt@perf_pmu@event-wait@rcs0.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_read@short-buffer-block:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@drm_read@short-buffer-block.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@drm_read@short-buffer-block.html">PASS</a> +26 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-rkl-5/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12031">i915#12031</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-3/igt@gem_ctx_engines@invalid-engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-glk5/igt@gem_ctx_isolation@preservation-s3@vecs0.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-glk8/igt@gem_ctx_isolation@preservation-s3@vecs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-tglu-6/igt@gem_ctx_persistence@hostile.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11980">i915#11980</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12580">i915#12580</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-2/igt@gem_ctx_persistence@hostile.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-10/igt@gem_eio@hibernate.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10030">i915#10030</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-11/igt@gem_eio@hibernate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@nop:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-mtlp-4/igt@gem_exec_balancer@nop.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12412">i915#12412</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-6/igt@gem_exec_balancer@nop.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-rkl-5/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-2/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-noreloc:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-glk6/igt@gem_exec_reloc@basic-write-wc-noreloc.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-glk6/igt@gem_exec_reloc@basic-write-wc-noreloc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441">i915#11441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-glk4/igt@gen9_exec_parse@allowed-single.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12375">i915#12375</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566">i915#5566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-glk7/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-tglu-7/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681">i915#2681</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-3/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12548">i915#12548</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-snb2/igt@i915_pm_rps@reset.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-snb4/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-glk8/igt@kms_atomic_transition@modeset-transition.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12238">i915#12238</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-glk5/igt@kms_atomic_transition@modeset-transition.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition@2x-outputs:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-glk8/igt@kms_atomic_transition@modeset-transition@2x-outputs.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859">i915#11859</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-glk5/igt@kms_atomic_transition@modeset-transition@2x-outputs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-tglu-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11808">i915#11808</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-tglu-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-snb4/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-snb2/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_flip@modeset-vs-vblank-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_flip@modeset-vs-vblank-race.html">PASS</a> +10 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_plane@pixel-format-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825">i915#8825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_plane@pixel-format-source-clamping.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@planar-pixel-format-settings:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_plane@planar-pixel-format-settings.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9581">i915#9581</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_plane@planar-pixel-format-settings.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-mid:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-mid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_plane_alpha_blend@constant-alpha-mid.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@cursor-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_pm_rpm@cursor-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-7/igt@kms_pm_rpm@cursor-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-plane-move@edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-mtlp-4/igt@kms_psr@psr2-cursor-plane-move@edp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12380">i915#12380</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12511">i915#12511</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-2/igt@kms_psr@psr2-cursor-plane-move@edp-1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@gem_eio@kms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@gem_eio@kms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131">i915#10131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9697">i915#9697</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131">i915#10131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-8/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-7/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-after-suspend:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg1-15/igt@kms_chamelium_hpd@vga-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-15/igt@kms_chamelium_hpd@vga-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_content_protection@lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-10/igt@kms_content_protection@lic-type-0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-7/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359">i915#3359</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-8/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067">i915#9067</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812">i915#8812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_dsc@dsc-with-output-formats-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_dsc@dsc-with-output-formats-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053">i915#9053</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813">i915#8813</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810">i915#8810</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813">i915#8813</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-7/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@lobf:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_vrr@lobf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_vrr@lobf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920">i915#11920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-2/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-3/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15595/shard-dg2-4/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7484">i915#7484</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140486v1/shard-dg2-7/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100">i915#9100</a>) +1 other test fail</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15595 -&gt; Patchwork_140486v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15595: 7cadd167321b3267a9803aba88f115fc9809d4ea @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8083: 73f910ebf47fe8f379d2e233cab754e4d6091701 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_140486v1: 7cadd167321b3267a9803aba88f115fc9809d4ea @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============5064944207668155801==--
