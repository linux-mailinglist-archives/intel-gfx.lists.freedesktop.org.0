Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2237C99CA73
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 14:44:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D90A910E14A;
	Mon, 14 Oct 2024 12:43:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 281B110E0EA;
 Mon, 14 Oct 2024 12:43:59 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7213168418833443730=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm=3A_Introduce_DRM_client?=
 =?utf-8?q?_library_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Oct 2024 12:43:59 -0000
Message-ID: <172890983914.1248353.13539318041974380252@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241014085740.582287-1-tzimmermann@suse.de>
In-Reply-To: <20241014085740.582287-1-tzimmermann@suse.de>
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

--===============7213168418833443730==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Introduce DRM client library (rev4)
URL   : https://patchwork.freedesktop.org/series/139221/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15531_full -> Patchwork_139221v4_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_139221v4_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_139221v4_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (8 -> 8)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_139221v4_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [PASS][1] -> [INCOMPLETE][2] +1 other test incomplete
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-vga-1:
    - shard-snb:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-snb4/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-vga-1.html

  * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area@pipe-a-edp-1:
    - shard-mtlp:         [PASS][4] -> [FAIL][5] +1 other test fail
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-mtlp-4/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area@pipe-a-edp-1.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-8/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area@pipe-a-edp-1.html

  
#### Warnings ####

  * igt@gem_ctx_engines@invalid-engines:
    - shard-glk:          [FAIL][6] ([i915#12027]) -> [FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-glk3/igt@gem_ctx_engines@invalid-engines.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-glk5/igt@gem_ctx_engines@invalid-engines.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_suspend@debugfs-reader:
    - {shard-tglu-1}:     NOTRUN -> [ABORT][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-1/igt@i915_suspend@debugfs-reader.html

  
New tests
---------

  New tests have been introduced between CI_DRM_15531_full and Patchwork_139221v4_full:

### New IGT tests (10) ###

  * igt@kms_atomic@atomic-plane-damage@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.65] s

  * igt@kms_atomic_interruptible@legacy-cursor@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [6.18] s

  * igt@kms_invalid_mode@zero-hdisplay@pipe-d-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_sequence@get-busy@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [2.74] s

  * igt@kms_sequence@get-busy@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [2.68] s

  * igt@kms_vblank@query-busy-hang@pipe-a-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [26.74] s

  * igt@kms_vblank@query-busy-hang@pipe-d-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [24.93] s

  * igt@kms_vblank@ts-continuation-dpms-rpm@pipe-a-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [1.79] s

  * igt@kms_vblank@ts-continuation-dpms-rpm@pipe-d-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.99] s

  * igt@kms_vblank@ts-continuation-modeset-rpm@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.40] s

  

Known issues
------------

  Here are the changes found in Patchwork_139221v4_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@cold-reset-bound:
    - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#11078])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@device_reset@cold-reset-bound.html

  * igt@drm_fdinfo@busy-check-all@bcs0:
    - shard-dg1:          NOTRUN -> [SKIP][10] ([i915#8414]) +5 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-15/igt@drm_fdinfo@busy-check-all@bcs0.html

  * igt@drm_read@short-buffer-block:
    - shard-dg2:          [PASS][11] -> [SKIP][12] ([i915#9197]) +31 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-3/igt@drm_read@short-buffer-block.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@drm_read@short-buffer-block.html

  * igt@fbdev@read:
    - shard-dg2:          NOTRUN -> [SKIP][13] ([i915#2582])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@fbdev@read.html

  * igt@gem_basic@multigpu-create-close:
    - shard-rkl:          NOTRUN -> [SKIP][14] ([i915#7697])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-tglu:         NOTRUN -> [SKIP][15] ([i915#3555] / [i915#9323])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-10/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-mtlp:         NOTRUN -> [SKIP][16] ([i915#9323])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][17] -> [INCOMPLETE][18] ([i915#7297])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-snb:          NOTRUN -> [SKIP][19] +1 other test skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-snb6/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-rkl:          [PASS][20] -> [FAIL][21] ([i915#12027])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-rkl-1/igt@gem_ctx_engines@invalid-engines.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@gem_ctx_engines@invalid-engines.html
    - shard-tglu:         [PASS][22] -> [FAIL][23] ([i915#12027])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-tglu-2/igt@gem_ctx_engines@invalid-engines.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-rkl:          NOTRUN -> [SKIP][24] ([i915#280])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@gem_ctx_sseu@mmap-args.html
    - shard-tglu:         NOTRUN -> [SKIP][25] ([i915#280])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@hibernate:
    - shard-tglu:         NOTRUN -> [ABORT][26] ([i915#10030] / [i915#7975] / [i915#8213])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-10/igt@gem_eio@hibernate.html
    - shard-dg2:          [PASS][27] -> [ABORT][28] ([i915#10030] / [i915#7975] / [i915#8213])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-11/igt@gem_eio@hibernate.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-1/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-rkl:          NOTRUN -> [SKIP][29] ([i915#4525]) +1 other test skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_capture@capture-invisible@lmem0:
    - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#6334]) +2 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@gem_exec_capture@capture-invisible@lmem0.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-glk:          NOTRUN -> [SKIP][31] ([i915#6334]) +1 other test skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-glk7/igt@gem_exec_capture@capture-invisible@smem0.html
    - shard-mtlp:         NOTRUN -> [SKIP][32] ([i915#6334]) +1 other test skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-3/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-rkl:          NOTRUN -> [FAIL][33] ([i915#2846])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace:
    - shard-dg1:          NOTRUN -> [SKIP][34] ([i915#3539])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-14/igt@gem_exec_fair@basic-pace.html

  * igt@gem_exec_flush@basic-wb-ro-before-default:
    - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#3539] / [i915#4852])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@gem_exec_flush@basic-wb-ro-before-default.html

  * igt@gem_exec_reloc@basic-active:
    - shard-dg1:          NOTRUN -> [SKIP][36] ([i915#3281])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-17/igt@gem_exec_reloc@basic-active.html

  * igt@gem_exec_reloc@basic-gtt-wc-active:
    - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#3281]) +1 other test skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@gem_exec_reloc@basic-gtt-wc-active.html
    - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#3281]) +1 other test skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-3/igt@gem_exec_reloc@basic-gtt-wc-active.html

  * igt@gem_exec_reloc@basic-write-wc-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#3281]) +3 other tests skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@gem_exec_reloc@basic-write-wc-noreloc.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#4537] / [i915#4812])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-5/igt@gem_exec_schedule@preempt-queue-contexts-chain.html
    - shard-mtlp:         NOTRUN -> [SKIP][41] ([i915#4537] / [i915#4812])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-2/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-mtlp:         NOTRUN -> [SKIP][42] ([i915#4613]) +1 other test skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-2/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@massive:
    - shard-tglu:         NOTRUN -> [SKIP][43] ([i915#4613])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-10/igt@gem_lmem_swapping@massive.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][44] ([i915#4613])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#4077]) +2 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
    - shard-dg1:          NOTRUN -> [SKIP][46] ([i915#4077])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-15/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html

  * igt@gem_mmap_gtt@hang-busy:
    - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#4077]) +1 other test skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-2/igt@gem_mmap_gtt@hang-busy.html

  * igt@gem_mmap_wc@bad-object:
    - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#4083])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@gem_mmap_wc@bad-object.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-tglu:         NOTRUN -> [WARN][49] ([i915#2658])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-10/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-rkl:          NOTRUN -> [SKIP][50] ([i915#4270]) +1 other test skip
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@gem_pxp@create-protected-buffer.html
    - shard-tglu:         NOTRUN -> [SKIP][51] ([i915#4270]) +1 other test skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_pxp@display-protected-crc:
    - shard-mtlp:         NOTRUN -> [SKIP][52] ([i915#4270])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-5/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#4270])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_readwrite@beyond-eob:
    - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#3282]) +2 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@gem_readwrite@beyond-eob.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][55] ([i915#8428])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-3/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html
    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#5190] / [i915#8428])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gem_tiled_pread_pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#4079])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@gem_tiled_pread_pwrite.html

  * igt@gem_userptr_blits@access-control:
    - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#3297])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@gem_userptr_blits@access-control.html
    - shard-tglu:         NOTRUN -> [SKIP][59] ([i915#3297])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@gem_userptr_blits@access-control.html

  * igt@gen7_exec_parse@basic-rejected:
    - shard-dg2:          NOTRUN -> [SKIP][60] +4 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@gen7_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@bb-large:
    - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#2856]) +1 other test skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-5/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#2527])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@gen9_exec_parse@bb-oversize.html
    - shard-tglu:         NOTRUN -> [SKIP][63] ([i915#2527] / [i915#2856]) +2 other tests skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@gen9_exec_parse@bb-oversize.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [PASS][64] -> [ABORT][65] ([i915#9820])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html
    - shard-tglu:         [PASS][66] -> [ABORT][67] ([i915#9820])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-tglu-9/igt@i915_module_load@reload-with-fault-injection.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_module_load@resize-bar:
    - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#6412])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@i915_module_load@resize-bar.html
    - shard-tglu:         NOTRUN -> [SKIP][69] ([i915#6412])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-dg1:          [PASS][70] -> [FAIL][71] ([i915#3591]) +1 other test fail
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         NOTRUN -> [ABORT][72] ([i915#12216]) +1 other test abort
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-3/igt@i915_selftest@live@workarounds.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#8709]) +3 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#8709]) +7 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-12/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][75] ([i915#8709]) +7 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-dg1:          [PASS][76] -> [DMESG-WARN][77] ([i915#4423])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg1-16/igt@kms_async_flips@test-time-stamp.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-13/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking:
    - shard-glk:          [PASS][78] -> [FAIL][79] ([i915#12177])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-glk1/igt@kms_atomic_transition@modeset-transition-nonblocking.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs:
    - shard-glk:          [PASS][80] -> [FAIL][81] ([i915#11859])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-glk1/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#1769] / [i915#3555])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
    - shard-tglu:         NOTRUN -> [SKIP][83] ([i915#1769] / [i915#3555])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#5286]) +2 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
    - shard-tglu:         NOTRUN -> [SKIP][85] ([i915#5286])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#3638]) +2 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         NOTRUN -> [SKIP][87] +2 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#4538] / [i915#5190])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#5190] / [i915#9197]) +2 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#12313])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
    - shard-tglu:         NOTRUN -> [SKIP][91] ([i915#12313])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][92] ([i915#6095]) +91 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-17/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#6095]) +79 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-8/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][95] ([i915#6095]) +9 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-5/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-c-edp-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][96] +61 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-glk7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#10307] / [i915#6095]) +155 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#6095]) +24 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#7213]) +3 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-5/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_cdclk@plane-scaling@pipe-c-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#4087]) +3 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_cdclk@plane-scaling@pipe-c-dp-3.html

  * igt@kms_chamelium_edid@dp-mode-timings:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#7828]) +2 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_chamelium_edid@dp-mode-timings.html

  * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
    - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#7828]) +4 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html
    - shard-tglu:         NOTRUN -> [SKIP][103] ([i915#7828]) +2 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html

  * igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][104] ([i915#7828]) +3 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-3/igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-tglu:         NOTRUN -> [SKIP][105] ([i915#3116] / [i915#3299])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-10/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#6944] / [i915#9424])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-5/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@srm:
    - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#7118])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_content_protection@srm.html
    - shard-tglu:         NOTRUN -> [SKIP][108] ([i915#6944] / [i915#7116] / [i915#7118])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@type1:
    - shard-tglu:         NOTRUN -> [SKIP][109] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424]) +1 other test skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-2/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#11453])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#3555])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
    - shard-tglu:         NOTRUN -> [SKIP][112] ([i915#3555])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-tglu:         NOTRUN -> [SKIP][113] ([i915#4103])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#9197]) +26 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][115] ([i915#9809])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-3/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][116] +12 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#4103])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#8588])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-5/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#3804])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#3840])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-10/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-dg1:          NOTRUN -> [SKIP][121] ([i915#3840])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-15/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_feature_discovery@psr1:
    - shard-tglu:         NOTRUN -> [SKIP][122] ([i915#658])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-10/igt@kms_feature_discovery@psr1.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
    - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#3637]) +1 other test skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][124] ([i915#3637]) +2 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-5/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html

  * igt@kms_flip@2x-plain-flip-fb-recreate:
    - shard-glk:          [PASS][125] -> [FAIL][126] ([i915#2122]) +5 other tests fail
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-tglu:         [PASS][127] -> [FAIL][128] ([i915#2122]) +3 other tests fail
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-tglu-2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a2:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][129] ([i915#6113])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a2.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-snb:          [PASS][130] -> [FAIL][131] ([i915#2122]) +5 other tests fail
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-snb4/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-snb6/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-dg2:          [PASS][132] -> [SKIP][133] ([i915#3555]) +2 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#3555]) +1 other test skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#2672] / [i915#3555]) +1 other test skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
    - shard-tglu:         NOTRUN -> [SKIP][136] ([i915#2672] / [i915#3555]) +1 other test skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#2672]) +1 other test skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html
    - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#2587] / [i915#2672]) +1 other test skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][139] ([i915#1825]) +7 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#8708]) +2 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
    - shard-dg1:          NOTRUN -> [SKIP][141]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:
    - shard-dg2:          [PASS][142] -> [SKIP][143] ([i915#5354]) +11 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - shard-dg2:          [PASS][144] -> [FAIL][145] ([i915#6880])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-dg1:          NOTRUN -> [SKIP][146] ([i915#5439])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#5354]) +25 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html
    - shard-mtlp:         NOTRUN -> [SKIP][148] ([i915#8708])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt:
    - shard-tglu:         NOTRUN -> [SKIP][149] +37 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
    - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#1825]) +20 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#3023]) +8 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#3458]) +1 other test skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-dg2:          [PASS][153] -> [SKIP][154] ([i915#3555] / [i915#8228])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-10/igt@kms_hdr@bpc-switch-suspend.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#3555] / [i915#8228])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_hdr@static-toggle-dpms.html
    - shard-tglu:         NOTRUN -> [SKIP][156] ([i915#3555] / [i915#8228])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#10656])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_joiner@basic-big-joiner.html
    - shard-tglu:         NOTRUN -> [SKIP][158] ([i915#10656])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#12394])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#12339])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-mtlp:         NOTRUN -> [SKIP][161] ([i915#4816])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#4816])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-rkl:          [PASS][163] -> [FAIL][164] ([i915#8292])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-rkl-2/igt@kms_plane_scaling@intel-max-src-size.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-3/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][165] ([i915#8292])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-3/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][166] ([i915#12247]) +9 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-10/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b:
    - shard-dg2:          [PASS][167] -> [SKIP][168] ([i915#12247]) +8 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#8152] / [i915#9423])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d:
    - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#8152])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:
    - shard-dg2:          [PASS][171] -> [SKIP][172] ([i915#12247] / [i915#8152] / [i915#9423]) +1 other test skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75:
    - shard-dg2:          [PASS][173] -> [SKIP][174] ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-75.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d:
    - shard-dg2:          [PASS][175] -> [SKIP][176] ([i915#12247] / [i915#8152]) +2 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling:
    - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#3555] / [i915#8152] / [i915#9423])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a:
    - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#12247]) +5 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d:
    - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#12247] / [i915#8152])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#12247] / [i915#6953])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#12247]) +1 other test skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#5354])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_pm_backlight@fade-with-dpms.html
    - shard-tglu:         NOTRUN -> [SKIP][183] ([i915#9812])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#5978])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_pm_dc@dc6-dpms.html
    - shard-mtlp:         NOTRUN -> [SKIP][185] ([i915#10139])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-3/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2:          [PASS][186] -> [SKIP][187] ([i915#9519]) +2 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          [PASS][188] -> [SKIP][189] ([i915#9519])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-rkl-3/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_prime@d3hot:
    - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#6524])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_prime@d3hot.html
    - shard-tglu:         NOTRUN -> [SKIP][191] ([i915#6524])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][192] ([i915#11520]) +1 other test skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-glk7/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#11520]) +2 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-tglu:         NOTRUN -> [SKIP][194] ([i915#11520]) +3 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-10/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#11520]) +3 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#9683])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#9683])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-psr-primary-blt:
    - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#1072] / [i915#9732]) +3 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_psr@fbc-psr-primary-blt.html

  * igt@kms_psr@fbc-psr-primary-page-flip@edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][199] ([i915#9688]) +1 other test skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-2/igt@kms_psr@fbc-psr-primary-page-flip@edp-1.html

  * igt@kms_psr@fbc-psr2-primary-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][200] ([i915#9732]) +9 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_psr@fbc-psr2-primary-mmap-gtt.html

  * igt@kms_psr@pr-cursor-plane-onoff:
    - shard-rkl:          NOTRUN -> [SKIP][201] ([i915#1072] / [i915#9732]) +9 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_psr@pr-cursor-plane-onoff.html

  * igt@kms_setmode@basic@pipe-b-hdmi-a-1:
    - shard-tglu:         [PASS][202] -> [FAIL][203] ([i915#5465])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-tglu-5/igt@kms_setmode@basic@pipe-b-hdmi-a-1.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-9/igt@kms_setmode@basic@pipe-b-hdmi-a-1.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglu:         NOTRUN -> [SKIP][204] ([i915#8623])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-10/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@negative-basic:
    - shard-tglu:         NOTRUN -> [SKIP][205] ([i915#3555] / [i915#9906])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-10/igt@kms_vrr@negative-basic.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#2436])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg2:          NOTRUN -> [FAIL][207] ([i915#6806])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-5/igt@perf_pmu@frequency@gt0.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#8516])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@perf_pmu@rc6@other-idle-gt0.html
    - shard-tglu:         NOTRUN -> [SKIP][209] ([i915#8516])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-write:
    - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#3291] / [i915#3708])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@fence-write-hang:
    - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#3708])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@prime_vgem@fence-write-hang.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#4818])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@tools_test@sysfs_l3_parity.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3:
    - shard-dg2:          [INCOMPLETE][213] ([i915#12353]) -> [PASS][214] +1 other test pass
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-5/igt@gem_ctx_isolation@preservation-s3.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-4/igt@gem_ctx_isolation@preservation-s3.html

  * igt@gem_ctx_persistence@hostile:
    - shard-tglu:         [FAIL][215] ([i915#11980]) -> [PASS][216]
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-tglu-5/igt@gem_ctx_persistence@hostile.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-9/igt@gem_ctx_persistence@hostile.html

  * igt@gem_exec_endless@dispatch@bcs0:
    - shard-dg2:          [TIMEOUT][217] ([i915#3778] / [i915#7016]) -> [PASS][218] +1 other test pass
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-7/igt@gem_exec_endless@dispatch@bcs0.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-1/igt@gem_exec_endless@dispatch@bcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-rkl:          [FAIL][219] ([i915#2842]) -> [PASS][220] +2 other tests pass
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          [ABORT][221] ([i915#9820]) -> [PASS][222]
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-glk4/igt@i915_module_load@reload-with-fault-injection.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-glk7/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg2:          [ABORT][223] ([i915#9820]) -> [PASS][224]
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         [ABORT][225] ([i915#10131] / [i915#10887] / [i915#9820]) -> [PASS][226]
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:
    - shard-dg1:          [FAIL][227] ([i915#3591]) -> [PASS][228] +1 other test pass
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-dg2:          [INCOMPLETE][229] -> [PASS][230]
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-11/igt@i915_pm_rpm@system-suspend-execbuf.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-5/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_atomic_transition@plane-all-transition-fencing:
    - shard-dg2:          [SKIP][231] ([i915#9197]) -> [PASS][232] +32 other tests pass
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_atomic_transition@plane-all-transition-fencing.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_atomic_transition@plane-all-transition-fencing.html

  * igt@kms_cursor_crc@cursor-offscreen-256x85:
    - shard-dg1:          [DMESG-WARN][233] ([i915#4423]) -> [PASS][234]
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg1-13/igt@kms_cursor_crc@cursor-offscreen-256x85.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-12/igt@kms_cursor_crc@cursor-offscreen-256x85.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
    - shard-snb:          [SKIP][235] -> [PASS][236] +8 other tests pass
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-snb2/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-snb2/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-snb:          [FAIL][237] -> [PASS][238]
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
    - shard-glk:          [FAIL][239] ([i915#2346]) -> [PASS][240]
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-glk:          [FAIL][241] ([i915#2122]) -> [PASS][242] +3 other tests pass
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-glk2/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-glk6/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-mtlp:         [FAIL][243] ([i915#2122]) -> [PASS][244] +2 other tests pass
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-mtlp-8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-6/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:
    - shard-snb:          [INCOMPLETE][245] ([i915#4839]) -> [PASS][246] +1 other test pass
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-snb1/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-snb6/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a2:
    - shard-glk:          [INCOMPLETE][247] ([i915#4839]) -> [PASS][248] +1 other test pass
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-glk5/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-glk1/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-dg2:          [SKIP][249] ([i915#3555]) -> [PASS][250] +4 other tests pass
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][251] ([i915#5354]) -> [PASS][252] +10 other tests pass
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - shard-dg1:          [INCOMPLETE][253] -> [PASS][254] +2 other tests pass
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg1-16/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-13/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_plane@plane-position-covered:
    - shard-dg2:          [SKIP][255] ([i915#8825]) -> [PASS][256] +1 other test pass
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_plane@plane-position-covered.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_plane@plane-position-covered.html

  * igt@kms_plane_alpha_blend@alpha-basic:
    - shard-dg2:          [SKIP][257] ([i915#7294]) -> [PASS][258] +1 other test pass
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-basic.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_plane_alpha_blend@alpha-basic.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format:
    - shard-dg2:          [SKIP][259] ([i915#8152] / [i915#9423]) -> [PASS][260]
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-b:
    - shard-dg2:          [SKIP][261] ([i915#12247]) -> [PASS][262] +2 other tests pass
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-b.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d:
    - shard-dg2:          [SKIP][263] ([i915#8152]) -> [PASS][264]
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu:         [SKIP][265] ([i915#4281]) -> [PASS][266]
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-10/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [SKIP][267] ([i915#9519]) -> [PASS][268] +2 other tests pass
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-dg2:          [SKIP][269] ([i915#9519]) -> [PASS][270] +2 other tests pass
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_universal_plane@cursor-fb-leak:
    - shard-mtlp:         [FAIL][271] ([i915#9196]) -> [PASS][272] +1 other test pass
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak.html

  
#### Warnings ####

  * igt@gem_ctx_engines@invalid-engines:
    - shard-mtlp:         [FAIL][273] ([i915#12031]) -> [FAIL][274] ([i915#12027])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-mtlp-8/igt@gem_ctx_engines@invalid-engines.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-6/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglu:         [FAIL][275] ([i915#2876]) -> [FAIL][276] ([i915#2842])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-tglu-6/igt@gem_exec_fair@basic-pace@rcs0.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-9/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg2:          [SKIP][277] ([i915#9197]) -> [SKIP][278] ([i915#1769] / [i915#3555])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-dg2:          [SKIP][279] ([i915#9197]) -> [SKIP][280] +1 other test skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
    - shard-dg2:          [SKIP][281] -> [SKIP][282] ([i915#9197])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-addfb-size-overflow:
    - shard-dg1:          [SKIP][283] ([i915#5286]) -> [SKIP][284] ([i915#4423] / [i915#5286])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg1-16/igt@kms_big_fb@4-tiled-addfb-size-overflow.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-13/igt@kms_big_fb@4-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - shard-dg2:          [SKIP][285] ([i915#4538] / [i915#5190]) -> [SKIP][286] ([i915#5190] / [i915#9197]) +3 other tests skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-3/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-addfb-size-overflow:
    - shard-dg2:          [SKIP][287] ([i915#5190] / [i915#9197]) -> [SKIP][288] ([i915#5190])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb-size-overflow.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_big_fb@y-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
    - shard-dg2:          [SKIP][289] ([i915#5190] / [i915#9197]) -> [SKIP][290] ([i915#4538] / [i915#5190]) +6 other tests skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc:
    - shard-dg2:          [SKIP][291] ([i915#10307] / [i915#6095]) -> [SKIP][292] ([i915#9197]) +4 other tests skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-dg2:          [SKIP][293] ([i915#9197]) -> [SKIP][294] ([i915#12313])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:
    - shard-dg2:          [SKIP][295] ([i915#9197]) -> [SKIP][296] ([i915#10307] / [i915#6095]) +6 other tests skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg2:          [SKIP][297] ([i915#9197]) -> [SKIP][298] ([i915#11616] / [i915#7213])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@plane-scaling:
    - shard-dg2:          [SKIP][299] ([i915#9197]) -> [SKIP][300] ([i915#4087])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_cdclk@plane-scaling.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_cdclk@plane-scaling.html

  * igt@kms_content_protection@content-type-change:
    - shard-snb:          [SKIP][301] -> [INCOMPLETE][302] ([i915#8816])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-snb5/igt@kms_content_protection@content-type-change.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-snb4/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          [SKIP][303] ([i915#7118] / [i915#9424]) -> [SKIP][304] ([i915#9197])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_content_protection@legacy.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@cursor-offscreen-32x32:
    - shard-dg2:          [SKIP][305] ([i915#9197]) -> [SKIP][306] ([i915#3555]) +1 other test skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-32x32.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_cursor_crc@cursor-offscreen-32x32.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg2:          [SKIP][307] ([i915#9197]) -> [SKIP][308] ([i915#11453]) +1 other test skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_cursor_crc@cursor-random-512x512.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-dg2:          [SKIP][309] ([i915#11453]) -> [SKIP][310] ([i915#9197])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-3/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
    - shard-dg2:          [SKIP][311] ([i915#5354]) -> [SKIP][312] ([i915#9197])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-3/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-dg2:          [SKIP][313] ([i915#9197]) -> [SKIP][314] ([i915#4103] / [i915#4213]) +1 other test skip
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          [SKIP][315] ([i915#9197]) -> [SKIP][316] ([i915#5354]) +3 other tests skip
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg2:          [SKIP][317] ([i915#4103] / [i915#4213]) -> [SKIP][318] ([i915#9197])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-dg2:          [SKIP][319] ([i915#8588]) -> [SKIP][320] ([i915#9197])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_display_modes@mst-extended-mode-negative.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-dg2:          [SKIP][321] ([i915#8812]) -> [SKIP][322] ([i915#9197])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-3/igt@kms_draw_crc@draw-method-mmap-gtt.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg2:          [SKIP][323] ([i915#9197]) -> [SKIP][324] ([i915#3555] / [i915#3840])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_dsc@dsc-basic.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_dsc@dsc-basic.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-dg1:          [SKIP][325] ([i915#4423] / [i915#9934]) -> [SKIP][326] ([i915#9934])
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg1-15/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-15/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
    - shard-dg2:          [SKIP][327] ([i915#2672] / [i915#3555] / [i915#5190]) -> [SKIP][328] ([i915#3555] / [i915#5190])
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][329] ([i915#5354]) -> [SKIP][330] ([i915#8708]) +10 other tests skip
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-dg1:          [SKIP][331] ([i915#8708]) -> [SKIP][332] ([i915#4423] / [i915#8708])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:
    - shard-dg2:          [SKIP][333] ([i915#10433] / [i915#3458]) -> [SKIP][334] ([i915#5354]) +1 other test skip
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-dg2:          [SKIP][335] ([i915#5354]) -> [SKIP][336] ([i915#10055])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
    - shard-dg2:          [SKIP][337] ([i915#3458]) -> [SKIP][338] ([i915#5354]) +1 other test skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:
    - shard-dg2:          [SKIP][339] ([i915#5354]) -> [SKIP][340] ([i915#3458]) +11 other tests skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][341] ([i915#10433] / [i915#3458]) -> [SKIP][342] ([i915#3458]) +3 other tests skip
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:
    - shard-dg2:          [SKIP][343] ([i915#3458]) -> [SKIP][344] ([i915#10433] / [i915#3458]) +4 other tests skip
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-dg2:          [SKIP][345] ([i915#8708]) -> [SKIP][346] ([i915#5354]) +6 other tests skip
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-dg2:          [SKIP][347] ([i915#9197]) -> [SKIP][348] ([i915#3555] / [i915#8228])
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_hdr@invalid-metadata-sizes.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_panel_fitting@legacy:
    - shard-dg2:          [SKIP][349] ([i915#9197]) -> [SKIP][350] ([i915#6301])
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_panel_fitting@legacy.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-dg2:          [SKIP][351] ([i915#5354] / [i915#9423]) -> [SKIP][352] ([i915#5354] / [i915#8152] / [i915#9423])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:
    - shard-dg2:          [SKIP][353] ([i915#12247] / [i915#8152] / [i915#9423]) -> [SKIP][354] ([i915#12247] / [i915#9423])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d:
    - shard-dg2:          [SKIP][355] ([i915#12247] / [i915#8152]) -> [SKIP][356] ([i915#12247]) +2 other tests skip
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
    - shard-dg2:          [SKIP][357] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) -> [SKIP][358] ([i915#12247] / [i915#6953] / [i915#9423]) +1 other test skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
    - shard-dg2:          [SKIP][359] ([i915#12247] / [i915#6953] / [i915#9423]) -> [SKIP][360] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d:
    - shard-dg2:          [SKIP][361] ([i915#12247]) -> [SKIP][362] ([i915#12247] / [i915#8152])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          [SKIP][363] ([i915#4281]) -> [SKIP][364] ([i915#3361])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-4/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          [SKIP][365] ([i915#9340]) -> [SKIP][366] ([i915#3828])
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-dg2:          [SKIP][367] ([i915#9197]) -> [SKIP][368] ([i915#11131])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_rotation_crc@primary-rotation-270.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-dg2:          [SKIP][369] ([i915#5190]) -> [SKIP][370] ([i915#5190] / [i915#9197])
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-dg2:          [SKIP][371] ([i915#9197]) -> [SKIP][372] ([i915#9906])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_vrr@flip-basic-fastset.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_vrr@flip-basic-fastset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10030
  [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
  [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
  [i915#10139]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10139
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10887]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131
  [i915#11453]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11616]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616
  [i915#11859]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859
  [i915#11980]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11980
  [i915#12027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12027
  [i915#12031]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12031
  [i915#12177]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12177
  [i915#12216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
  [i915#12353]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12353
  [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
  [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#2876]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2876
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3778]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3778
  [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
  [i915#3826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3826
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#3966]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3966
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
  [i915#4818]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5465]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465
  [i915#5978]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5978
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
  [i915#6117]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6117
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
  [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6806
  [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7016]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7016
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
  [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
  [i915#7297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
  [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
  [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8292]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8588]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8588
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
  [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
  [i915#8816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8816
  [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
  [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_15531 -> Patchwork_139221v4

  CI-20190529: 20190529
  CI_DRM_15531: 55d09c71b082354090e8a11b4854224ef73e0798 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8068: 8068
  Patchwork_139221v4: 55d09c71b082354090e8a11b4854224ef73e0798 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/index.html

--===============7213168418833443730==
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
<tr><td><b>Series:</b></td><td>drm: Introduce DRM client library (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/139221/">https://patchwork.freedesktop.org/series/139221/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15531_full -&gt; Patchwork_139221v4_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_139221v4_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_139221v4_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (8 -&gt; 8)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_139221v4_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@i915_pm_freq_api@freq-suspend@gt0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-snb4/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-vga-1.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-mtlp-4/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area@pipe-a-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-8/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area@pipe-a-edp-1.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_ctx_engines@invalid-engines:<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-glk3/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12027">i915#12027</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-glk5/igt@gem_ctx_engines@invalid-engines.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_suspend@debugfs-reader:<ul>
<li>{shard-tglu-1}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-1/igt@i915_suspend@debugfs-reader.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_15531_full and Patchwork_139221v4_full:</p>
<h3>New IGT tests (10)</h3>
<ul>
<li>
<p>igt@kms_atomic@atomic-plane-damage@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.65] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-cursor@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-hdisplay@pipe-d-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-busy@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.74] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-busy@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.68] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@query-busy-hang@pipe-a-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [26.74] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@query-busy-hang@pipe-d-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [24.93] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-rpm@pipe-a-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.79] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-rpm@pipe-d-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.99] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-modeset-rpm@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.40] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139221v4_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@device_reset@cold-reset-bound.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@bcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-15/igt@drm_fdinfo@busy-check-all@bcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414">i915#8414</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_read@short-buffer-block:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-3/igt@drm_read@short-buffer-block.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@drm_read@short-buffer-block.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +31 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@gem_basic@multigpu-create-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-10/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297">i915#7297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-snb6/igt@gem_create@create-ext-cpu-access-sanity-check.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-rkl-1/igt@gem_ctx_engines@invalid-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12027">i915#12027</a>)</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-tglu-2/igt@gem_ctx_engines@invalid-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12027">i915#12027</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-10/igt@gem_eio@hibernate.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10030">i915#10030</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213">i915#8213</a>)</li>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-11/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-1/igt@gem_eio@hibernate.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10030">i915#10030</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@gem_exec_capture@capture-invisible@lmem0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334">i915#6334</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-glk7/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334">i915#6334</a>) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-3/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334">i915#6334</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-14/igt@gem_exec_fair@basic-pace.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-before-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@gem_exec_flush@basic-wb-ro-before-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-17/igt@gem_exec_reloc@basic-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@gem_exec_reloc@basic-gtt-wc-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-3/igt@gem_exec_reloc@basic-gtt-wc-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@gem_exec_reloc@basic-write-wc-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-5/igt@gem_exec_schedule@preempt-queue-contexts-chain.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537">i915#4537</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-2/igt@gem_exec_schedule@preempt-queue-contexts-chain.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537">i915#4537</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-2/igt@gem_lmem_swapping@heavy-verify-multi.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-10/igt@gem_lmem_swapping@massive.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@gem_mmap_gtt@cpuset-big-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-odd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-15/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@hang-busy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-2/igt@gem_mmap_gtt@hang-busy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-object:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@gem_mmap_wc@bad-object.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-10/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@gem_pxp@create-protected-buffer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@gem_pxp@create-protected-buffer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-5/igt@gem_pxp@display-protected-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@gem_pxp@reject-modify-context-protection-off-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@gem_readwrite@beyond-eob.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-3/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@gem_tiled_pread_pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@gem_userptr_blits@access-control.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@gem_userptr_blits@access-control.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-rejected:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@gen7_exec_parse@basic-rejected.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-5/igt@gen9_exec_parse@bb-large.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>)</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-tglu-9/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@i915_module_load@resize-bar.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412">i915#6412</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@i915_module_load@resize-bar.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412">i915#6412</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591">i915#3591</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-3/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216">i915#12216</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709">i915#8709</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-12/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709">i915#8709</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709">i915#8709</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg1-16/igt@kms_async_flips@test-time-stamp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-13/igt@kms_async_flips@test-time-stamp.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-glk1/igt@kms_atomic_transition@modeset-transition-nonblocking.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12177">i915#12177</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-glk1/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859">i915#11859</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-17/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +91 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +79 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-8/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-5/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-c-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-glk7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a> +61 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +155 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-5/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213">i915#7213</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_cdclk@plane-scaling@pipe-c-dp-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-mode-timings:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_chamelium_edid@dp-mode-timings.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-cmp-planar-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-3/igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-10/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-5/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_content_protection@srm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_content_protection@srm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-2/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +26 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-3/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809">i915#9809</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-5/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8588">i915#8588</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-10/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-15/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-10/igt@kms_feature_discovery@psr1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-5/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-tglu-2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-snb4/igt@kms_flip@plain-flip-ts-check-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-snb6/igt@kms_flip@plain-flip-ts-check-interruptible.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +25 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html">SKIP</a> +37 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-10/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-5/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_joiner@basic-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_joiner@basic-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394">i915#12394</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_joiner@invalid-modeset-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339">i915#12339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-rkl-2/igt@kms_plane_scaling@intel-max-src-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-3/igt@kms_plane_scaling@intel-max-src-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-3/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-10/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-75.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_pm_backlight@fade-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_pm_backlight@fade-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5978">i915#5978</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-3/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10139">i915#10139</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-rkl-3/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_prime@d3hot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_prime@d3hot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-glk7/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-10/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-1/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_psr@fbc-psr-primary-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-page-flip@edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-2/igt@kms_psr@fbc-psr-primary-page-flip@edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-primary-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@kms_psr@fbc-psr2-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-plane-onoff:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@kms_psr@pr-cursor-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-tglu-5/igt@kms_setmode@basic@pipe-b-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-9/igt@kms_setmode@basic@pipe-b-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465">i915#5465</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-10/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-10/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-5/igt@perf_pmu@frequency@gt0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6806">i915#6806</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@perf_pmu@rc6@other-idle-gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-5/igt@perf_pmu@rc6@other-idle-gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-7/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@prime_vgem@fence-write-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@tools_test@sysfs_l3_parity.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818">i915#4818</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-5/igt@gem_ctx_isolation@preservation-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12353">i915#12353</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-4/igt@gem_ctx_isolation@preservation-s3.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-tglu-5/igt@gem_ctx_persistence@hostile.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11980">i915#11980</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-9/igt@gem_ctx_persistence@hostile.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@bcs0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-7/igt@gem_exec_endless@dispatch@bcs0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3778">i915#3778</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7016">i915#7016</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-1/igt@gem_exec_endless@dispatch@bcs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-glk4/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-glk7/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131">i915#10131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887">i915#10887</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-11/igt@i915_pm_rpm@system-suspend-execbuf.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-5/igt@i915_pm_rpm@system-suspend-execbuf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-fencing:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_atomic_transition@plane-all-transition-fencing.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_atomic_transition@plane-all-transition-fencing.html">PASS</a> +32 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-256x85:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg1-13/igt@kms_cursor_crc@cursor-offscreen-256x85.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-12/igt@kms_cursor_crc@cursor-offscreen-256x85.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-legacy:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-snb2/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-snb2/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-glk2/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-glk6/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-mtlp-8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-6/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-snb1/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-snb6/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-glk5/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-glk1/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">PASS</a> +10 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg1-16/igt@kms_pipe_crc_basic@suspend-read-crc.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-13/igt@kms_pipe_crc_basic@suspend-read-crc.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_plane@plane-position-covered.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825">i915#8825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_plane@plane-position-covered.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_plane_alpha_blend@alpha-basic.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-b:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-b.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-10/igt@kms_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196">i915#9196</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-mtlp-8/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12031">i915#12031</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-mtlp-6/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12027">i915#12027</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-tglu-6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2876">i915#2876</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-tglu-9/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg1-16/igt@kms_big_fb@4-tiled-addfb-size-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-13/igt@kms_big_fb@4-tiled-addfb-size-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-3/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb-size-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_big_fb@y-tiled-addfb-size-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616">i915#11616</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213">i915#7213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_cdclk@plane-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_cdclk@plane-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087">i915#4087</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-snb5/igt@kms_content_protection@content-type-change.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-snb4/igt@kms_content_protection@content-type-change.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8816">i915#8816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x32:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_cursor_crc@cursor-offscreen-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-3/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-3/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8588">i915#8588</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-3/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812">i915#8812</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg1-15/igt@kms_flip@2x-flip-vs-panning-vs-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-15/igt@kms_flip@2x-flip-vs-panning-vs-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055">i915#10055</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-4/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361">i915#3361</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_rotation_crc@primary-rotation-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_rotation_crc@primary-rotation-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131">i915#11131</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15531/shard-dg2-2/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139221v4/shard-dg2-3/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15531 -&gt; Patchwork_139221v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15531: 55d09c71b082354090e8a11b4854224ef73e0798 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8068: 8068<br />
  Patchwork_139221v4: 55d09c71b082354090e8a11b4854224ef73e0798 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============7213168418833443730==--
