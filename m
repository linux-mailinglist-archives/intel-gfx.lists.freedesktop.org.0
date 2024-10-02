Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D7B98E5BD
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 00:01:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A1C510E781;
	Wed,  2 Oct 2024 22:01:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D04B810E77E;
 Wed,  2 Oct 2024 22:01:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1113094680708416912=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915=3A_Rename_function?=
 =?utf-8?q?s_in_the_docs_to_match_code_changes?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Harshit Mogalapalli" <harshit.m.mogalapalli@oracle.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 02 Oct 2024 22:01:31 -0000
Message-ID: <172790649182.1165498.16340558263434249681@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241001062555.1908090-1-harshit.m.mogalapalli@oracle.com>
In-Reply-To: <20241001062555.1908090-1-harshit.m.mogalapalli@oracle.com>
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

--===============1113094680708416912==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Rename functions in the docs to match code changes
URL   : https://patchwork.freedesktop.org/series/139361/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15469_full -> Patchwork_139361v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_139361v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_139361v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 8)
------------------------------

  Missing    (2): shard-dg2-set2 shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_139361v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@cursor-vs-flip-legacy:
    - shard-glk:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-glk1/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-mtlp:         NOTRUN -> [SKIP][2] +2 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-7/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-dg2:          [PASS][3] -> [SKIP][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-10/igt@kms_joiner@basic-force-big-joiner.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-11/igt@kms_joiner@basic-force-big-joiner.html
    - shard-rkl:          NOTRUN -> [SKIP][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][6] +1 other test skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_joiner@basic-force-big-joiner:
    - {shard-tglu-1}:     NOTRUN -> [SKIP][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-1/igt@kms_joiner@basic-force-big-joiner.html

  
Known issues
------------

  Here are the changes found in Patchwork_139361v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@cold-reset-bound:
    - shard-rkl:          NOTRUN -> [SKIP][8] ([i915#11078])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@device_reset@cold-reset-bound.html

  * igt@drm_fdinfo@most-busy-check-all:
    - shard-dg1:          NOTRUN -> [SKIP][9] ([i915#8414]) +6 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@drm_fdinfo@most-busy-check-all.html

  * igt@drm_fdinfo@most-busy-check-all@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][10] ([i915#8414]) +24 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@drm_fdinfo@most-busy-check-all@bcs0.html

  * igt@drm_read@short-buffer-block:
    - shard-dg2:          NOTRUN -> [SKIP][11] ([i915#9197]) +20 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@drm_read@short-buffer-block.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          NOTRUN -> [SKIP][12] ([i915#9323])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-tglu:         NOTRUN -> [SKIP][13] ([i915#3555] / [i915#9323])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][14] ([i915#7297])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-6/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#7697])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-tglu:         NOTRUN -> [SKIP][16] ([i915#6335])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-tglu:         NOTRUN -> [SKIP][17] ([i915#280])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-9/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-rkl:          NOTRUN -> [SKIP][18] ([i915#280])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@hibernate:
    - shard-dg1:          [PASS][19] -> [ABORT][20] ([i915#7975] / [i915#8213])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg1-12/igt@gem_eio@hibernate.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-14/igt@gem_eio@hibernate.html
    - shard-rkl:          NOTRUN -> [ABORT][21] ([i915#7975] / [i915#8213])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-4/igt@gem_eio@hibernate.html

  * igt@gem_eio@unwedge-stress:
    - shard-dg1:          [PASS][22] -> [FAIL][23] ([i915#5784])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg1-15/igt@gem_eio@unwedge-stress.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-14/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-rkl:          NOTRUN -> [SKIP][24] ([i915#4525])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-6/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-rkl:          NOTRUN -> [SKIP][25] ([i915#6344])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-rkl:          [PASS][26] -> [FAIL][27] ([i915#2846])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-rkl-1/igt@gem_exec_fair@basic-deadline.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-7/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-vip:
    - shard-tglu:         NOTRUN -> [FAIL][28] ([i915#2842]) +3 other tests fail
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@gem_exec_fair@basic-none-vip.html

  * igt@gem_exec_fair@basic-pace:
    - shard-mtlp:         NOTRUN -> [SKIP][29] ([i915#4473] / [i915#4771])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-3/igt@gem_exec_fair@basic-pace.html

  * igt@gem_exec_fair@basic-pace-share:
    - shard-tglu:         [PASS][30] -> [FAIL][31] ([i915#2842]) +1 other test fail
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-tglu-2/igt@gem_exec_fair@basic-pace-share.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@gem_exec_fair@basic-pace-share.html

  * igt@gem_exec_fair@basic-sync:
    - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#3539]) +1 other test skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@gem_exec_fair@basic-sync.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#3539] / [i915#4852]) +2 other tests skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_flush@basic-batch-kernel-default-uc:
    - shard-dg1:          NOTRUN -> [SKIP][34] ([i915#3539] / [i915#4852]) +1 other test skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-14/igt@gem_exec_flush@basic-batch-kernel-default-uc.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#5107])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#3281]) +2 other tests skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][37] ([i915#3281])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-5/igt@gem_exec_reloc@basic-gtt-noreloc.html
    - shard-dg1:          NOTRUN -> [SKIP][38] ([i915#3281])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@gem_exec_reloc@basic-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#3281]) +12 other tests skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read-noreloc.html

  * igt@gem_exec_schedule@pi-common@vcs0:
    - shard-rkl:          NOTRUN -> [FAIL][40] ([i915#12296]) +4 other tests fail
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@gem_exec_schedule@pi-common@vcs0.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-dg2:          NOTRUN -> [ABORT][41] ([i915#7975] / [i915#8213]) +1 other test abort
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
    - shard-dg1:          NOTRUN -> [SKIP][42] ([i915#4860])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-14/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html
    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#4860])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-11/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-tglu:         NOTRUN -> [SKIP][44] ([i915#4613] / [i915#7582])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#4613]) +2 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][46] ([i915#4613]) +3 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#4613])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-7/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap@basic-small-bo:
    - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#4083])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@gem_mmap@basic-small-bo.html
    - shard-dg1:          NOTRUN -> [SKIP][49] ([i915#4083])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@gem_mmap@basic-small-bo.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#4077]) +3 other tests skip
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_partial_pwrite_pread@write:
    - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#3282]) +2 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@gem_partial_pwrite_pread@write.html

  * igt@gem_pread@exhaustion:
    - shard-dg1:          NOTRUN -> [SKIP][52] ([i915#3282]) +2 other tests skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@gem_pread@exhaustion.html
    - shard-tglu:         NOTRUN -> [WARN][53] ([i915#2658])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-self:
    - shard-mtlp:         NOTRUN -> [SKIP][54] ([i915#3282])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-5/igt@gem_pwrite@basic-self.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#4270])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_pxp@reject-modify-context-protection-off-3:
    - shard-tglu:         NOTRUN -> [SKIP][56] ([i915#4270]) +2 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@gem_pxp@reject-modify-context-protection-off-3.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#4270]) +2 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][58] ([i915#8428])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-8/igt@gem_render_copy@y-tiled-ccs-to-y-tiled.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#5190] / [i915#8428]) +2 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#8411]) +2 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-7/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-dg1:          NOTRUN -> [SKIP][61] ([i915#4079])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-18/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#3282]) +6 other tests skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_tiled_blits@basic:
    - shard-dg1:          NOTRUN -> [SKIP][63] ([i915#4077])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@gem_tiled_blits@basic.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][64] ([i915#3297]) +1 other test skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#3282] / [i915#3297])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-4/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#3297]) +1 other test skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#2527]) +2 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-tglu:         NOTRUN -> [SKIP][68] ([i915#2527] / [i915#2856])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [PASS][69] -> [ABORT][70] ([i915#10131] / [i915#9820])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#8399])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-dg1:          [PASS][72] -> [FAIL][73] ([i915#3591]) +1 other test fail
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_pm_rps@thresholds-idle-park:
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#11681])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@i915_pm_rps@thresholds-idle-park.html
    - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#11681])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@i915_pm_rps@thresholds-idle-park.html

  * igt@i915_query@hwconfig_table:
    - shard-tglu:         NOTRUN -> [SKIP][76] ([i915#6245])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@i915_query@hwconfig_table.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-mtlp:         NOTRUN -> [SKIP][77] ([i915#6188])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-7/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#4212])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-tglu:         NOTRUN -> [SKIP][79] ([i915#3826])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-9/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#8709]) +3 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#8709]) +7 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-18/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#1769] / [i915#3555])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition:
    - shard-dg1:          [PASS][83] -> [FAIL][84] ([i915#5956]) +1 other test fail
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg1-15/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-19/igt@kms_atomic_transition@plane-toggle-modeset-transition.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#5286]) +6 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-6/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-tglu:         NOTRUN -> [SKIP][86] ([i915#5286]) +4 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
    - shard-dg1:          NOTRUN -> [SKIP][87] ([i915#4538] / [i915#5286])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         [PASS][88] -> [FAIL][89] ([i915#5138]) +1 other test fail
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#3638]) +5 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][91] +3 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-3/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#5190] / [i915#9197]) +1 other test skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#3638])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-14/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb:
    - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#5190]) +1 other test skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@kms_big_fb@y-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][95] ([i915#4538])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#4538] / [i915#5190])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-10/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_busy@basic:
    - shard-dg2:          [PASS][97] -> [SKIP][98] ([i915#9197]) +12 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_busy@basic.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_busy@basic.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][99] ([i915#6095]) +113 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-13/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#10307] / [i915#6095]) +186 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-5/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#12313])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#6095]) +98 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
    - shard-glk:          NOTRUN -> [SKIP][103] +73 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-glk8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#12313])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-9/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][105] ([i915#6095]) +4 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-5/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#12313])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc:
    - shard-tglu:         NOTRUN -> [SKIP][107] ([i915#6095]) +44 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#7213]) +3 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#4087]) +4 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html

  * igt@kms_chamelium_frames@dp-frame-dump:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#7828]) +1 other test skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@kms_chamelium_frames@dp-frame-dump.html

  * igt@kms_chamelium_frames@vga-frame-dump:
    - shard-dg1:          NOTRUN -> [SKIP][112] ([i915#7828]) +1 other test skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-14/igt@kms_chamelium_frames@vga-frame-dump.html

  * igt@kms_chamelium_hpd@dp-hpd:
    - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#7828]) +8 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@kms_chamelium_hpd@dp-hpd.html

  * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
    - shard-tglu:         NOTRUN -> [SKIP][114] ([i915#7828]) +6 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-9/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html

  * igt@kms_content_protection@content-type-change:
    - shard-mtlp:         NOTRUN -> [SKIP][115] ([i915#6944] / [i915#9424])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-5/igt@kms_content_protection@content-type-change.html
    - shard-dg1:          NOTRUN -> [SKIP][116] ([i915#9424])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-mtlp:         NOTRUN -> [SKIP][117] ([i915#3299])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-7/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-tglu:         NOTRUN -> [SKIP][118] ([i915#3116] / [i915#3299])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@uevent:
    - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#7118] / [i915#9424])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#11453])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#11453]) +2 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#3555]) +4 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-32x32:
    - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#3555]) +4 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-9/igt@kms_cursor_crc@cursor-sliding-32x32.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][124] ([i915#4103] / [i915#4213])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - shard-tglu:         NOTRUN -> [SKIP][125] ([i915#4103]) +1 other test skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#4103] / [i915#4213])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
    - shard-mtlp:         NOTRUN -> [SKIP][127] ([i915#9809])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
    - shard-dg1:          NOTRUN -> [SKIP][128] +11 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-14/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#9067])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
    - shard-dg1:          NOTRUN -> [SKIP][130] ([i915#9067])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
    - shard-tglu:         NOTRUN -> [SKIP][131] ([i915#9067])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#4103])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#8588])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-7/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#3840])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-tglu:         NOTRUN -> [SKIP][135] ([i915#3840] / [i915#9053])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-9/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_feature_discovery@display-4x:
    - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#1839])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_feature_discovery@display-4x.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank:
    - shard-tglu:         NOTRUN -> [SKIP][137] ([i915#3637]) +3 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@kms_flip@2x-blocking-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-dg2:          NOTRUN -> [SKIP][138] +7 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
    - shard-dg1:          NOTRUN -> [SKIP][139] ([i915#9934])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@blocking-wf_vblank:
    - shard-rkl:          [PASS][140] -> [FAIL][141] ([i915#11961] / [i915#2122])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-rkl-3/igt@kms_flip@blocking-wf_vblank.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-3/igt@kms_flip@blocking-wf_vblank.html

  * igt@kms_flip@blocking-wf_vblank@a-hdmi-a2:
    - shard-rkl:          [PASS][142] -> [FAIL][143] ([i915#11961])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-rkl-3/igt@kms_flip@blocking-wf_vblank@a-hdmi-a2.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-3/igt@kms_flip@blocking-wf_vblank@a-hdmi-a2.html

  * igt@kms_flip@blocking-wf_vblank@b-hdmi-a2:
    - shard-rkl:          [PASS][144] -> [FAIL][145] ([i915#12053])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-rkl-3/igt@kms_flip@blocking-wf_vblank@b-hdmi-a2.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-3/igt@kms_flip@blocking-wf_vblank@b-hdmi-a2.html

  * igt@kms_flip@blocking-wf_vblank@b-vga1:
    - shard-snb:          [PASS][146] -> [FAIL][147] ([i915#2122]) +3 other tests fail
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-snb1/igt@kms_flip@blocking-wf_vblank@b-vga1.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-snb1/igt@kms_flip@blocking-wf_vblank@b-vga1.html

  * igt@kms_flip@blocking-wf_vblank@c-hdmi-a1:
    - shard-tglu:         [PASS][148] -> [FAIL][149] ([i915#2122]) +5 other tests fail
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-tglu-3/igt@kms_flip@blocking-wf_vblank@c-hdmi-a1.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-3/igt@kms_flip@blocking-wf_vblank@c-hdmi-a1.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#8381])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][151] ([i915#4839] / [i915#6113])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-mtlp:         NOTRUN -> [INCOMPLETE][152] ([i915#6113]) +1 other test incomplete
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][153] ([i915#4839])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-glk5/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][154] ([i915#6113]) +1 other test incomplete
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-15/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4.html

  * igt@kms_flip@flip-vs-suspend@b-hdmi-a1:
    - shard-snb:          [PASS][155] -> [INCOMPLETE][156] ([i915#4839]) +1 other test incomplete
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-snb5/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-snb6/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-dg2:          [PASS][157] -> [FAIL][158] ([i915#10826] / [i915#2122])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-7/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1:
    - shard-dg2:          NOTRUN -> [FAIL][159] ([i915#10826])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1:
    - shard-dg2:          NOTRUN -> [FAIL][160] ([i915#2122]) +5 other tests fail
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1.html

  * igt@kms_flip@wf_vblank-ts-check:
    - shard-mtlp:         [PASS][161] -> [FAIL][162] ([i915#11989] / [i915#2122])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-mtlp-7/igt@kms_flip@wf_vblank-ts-check.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-6/igt@kms_flip@wf_vblank-ts-check.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible:
    - shard-dg2:          [PASS][163] -> [FAIL][164] ([i915#2122]) +2 other tests fail
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-1/igt@kms_flip@wf_vblank-ts-check-interruptible.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-6/igt@kms_flip@wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1:
    - shard-rkl:          NOTRUN -> [FAIL][165] ([i915#2122]) +1 other test fail
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1:
    - shard-mtlp:         [PASS][166] -> [FAIL][167] ([i915#2122]) +5 other tests fail
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-mtlp-2/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-7/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html

  * igt@kms_flip@wf_vblank-ts-check@d-hdmi-a1:
    - shard-tglu:         NOTRUN -> [FAIL][168] ([i915#2122]) +1 other test fail
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@kms_flip@wf_vblank-ts-check@d-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#2672] / [i915#3555]) +1 other test skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#2672]) +1 other test skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][171] ([i915#2672] / [i915#3555]) +1 other test skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html
    - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#2672] / [i915#3555])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html
    - shard-dg1:          NOTRUN -> [SKIP][173] ([i915#2672] / [i915#3555])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][174] ([i915#2587] / [i915#2672])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#2672]) +4 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
    - shard-tglu:         NOTRUN -> [SKIP][176] ([i915#2587] / [i915#2672]) +1 other test skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling:
    - shard-dg2:          [PASS][177] -> [SKIP][178] ([i915#3555])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][179] ([i915#2672] / [i915#3555] / [i915#8813])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][180] ([i915#2672])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][181] ([i915#8708]) +1 other test skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          [PASS][182] -> [SKIP][183] ([i915#5354]) +1 other test skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#8708]) +4 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
    - shard-dg1:          NOTRUN -> [SKIP][185] ([i915#8708]) +2 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-glk:          [PASS][186] -> [DMESG-FAIL][187] ([i915#118])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-tglu:         NOTRUN -> [SKIP][188] ([i915#5439])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][189] ([i915#5354]) +19 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#3458]) +3 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][191] +34 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-blt:
    - shard-tglu:         NOTRUN -> [SKIP][192] +65 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][193] ([i915#3458]) +5 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][194] ([i915#1825]) +4 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#1825]) +36 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
    - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#3023]) +25 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-dg2:          [PASS][197] -> [SKIP][198] ([i915#3555] / [i915#8228])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-10/igt@kms_hdr@bpc-switch-suspend.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-tglu:         NOTRUN -> [SKIP][199] ([i915#3555] / [i915#8228])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#4070] / [i915#4816])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane@plane-position-covered:
    - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#8825])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_plane@plane-position-covered.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-dg2:          NOTRUN -> [SKIP][202] ([i915#5354] / [i915#9423])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][203] ([i915#8292])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-15/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#12247]) +10 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][205] ([i915#12247]) +18 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-9/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-c.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
    - shard-dg1:          NOTRUN -> [SKIP][206] ([i915#12247]) +8 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling:
    - shard-dg2:          [PASS][207] -> [SKIP][208] ([i915#12247] / [i915#3558] / [i915#8152] / [i915#9423])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
    - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#12247] / [i915#6953] / [i915#9423])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html
    - shard-dg1:          NOTRUN -> [SKIP][210] ([i915#12247] / [i915#6953])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html
    - shard-tglu:         NOTRUN -> [SKIP][211] ([i915#12247] / [i915#6953])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c:
    - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#12247]) +3 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][213] ([i915#12247] / [i915#3555])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:
    - shard-dg2:          [PASS][214] -> [SKIP][215] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c:
    - shard-dg2:          [PASS][216] -> [SKIP][217] ([i915#12247]) +5 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d:
    - shard-dg2:          [PASS][218] -> [SKIP][219] ([i915#12247] / [i915#8152]) +1 other test skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-tglu:         NOTRUN -> [SKIP][220] ([i915#9812])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][221] ([i915#5354])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-6/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#9685])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][223] ([i915#9340])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-tglu:         NOTRUN -> [SKIP][224] ([i915#8430])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#9519])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg2:          [PASS][226] -> [SKIP][227] ([i915#9519])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          [PASS][228] -> [SKIP][229] ([i915#9519]) +2 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-mtlp:         NOTRUN -> [SKIP][230] ([i915#9519])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-rkl:          NOTRUN -> [SKIP][231] ([i915#6524])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-6/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_properties@crtc-properties-atomic:
    - shard-dg2:          [PASS][232] -> [SKIP][233] ([i915#11521])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_properties@crtc-properties-atomic.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_properties@crtc-properties-atomic.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf:
    - shard-dg1:          NOTRUN -> [SKIP][234] ([i915#11520]) +2 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][235] ([i915#11520]) +1 other test skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-glk8/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][236] ([i915#11520]) +5 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:
    - shard-dg2:          NOTRUN -> [SKIP][237] ([i915#11520]) +3 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#11520]) +9 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-rkl:          NOTRUN -> [SKIP][239] ([i915#9683])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-dg1:          NOTRUN -> [SKIP][240] ([i915#9683])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-14/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-psr-cursor-plane-onoff:
    - shard-tglu:         NOTRUN -> [SKIP][241] ([i915#9732]) +14 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@kms_psr@fbc-psr-cursor-plane-onoff.html

  * igt@kms_psr@fbc-psr2-sprite-plane-move:
    - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#1072] / [i915#9732]) +4 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@kms_psr@fbc-psr2-sprite-plane-move.html
    - shard-dg1:          NOTRUN -> [SKIP][243] ([i915#1072] / [i915#9732]) +3 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_psr@fbc-psr2-sprite-plane-move.html

  * igt@kms_psr@psr2-cursor-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][244] ([i915#1072] / [i915#9732]) +23 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_psr@psr2-cursor-mmap-gtt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          NOTRUN -> [SKIP][245] ([i915#9685]) +2 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-rkl:          NOTRUN -> [SKIP][246] ([i915#5289])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-dg1:          NOTRUN -> [SKIP][247] ([i915#5289])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
    - shard-tglu:         NOTRUN -> [SKIP][248] ([i915#5289])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#11131] / [i915#5190])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-10/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-rkl:          NOTRUN -> [ABORT][250] ([i915#12231]) +1 other test abort
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-7/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_setmode@basic@pipe-a-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [FAIL][251] ([i915#5465]) +1 other test fail
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html

  * igt@kms_setmode@invalid-clone-exclusive-crtc:
    - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#3555]) +1 other test skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@kms_setmode@invalid-clone-exclusive-crtc.html
    - shard-dg1:          NOTRUN -> [SKIP][253] ([i915#3555])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_setmode@invalid-clone-exclusive-crtc.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-tglu:         NOTRUN -> [SKIP][254] ([i915#8623])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-9/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_universal_plane@cursor-fb-leak:
    - shard-mtlp:         [PASS][255] -> [FAIL][256] ([i915#9196]) +1 other test fail
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak.html

  * igt@kms_vrr@negative-basic:
    - shard-rkl:          NOTRUN -> [SKIP][257] ([i915#3555] / [i915#9906])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@kms_vrr@negative-basic.html

  * igt@kms_writeback@writeback-check-output:
    - shard-glk:          NOTRUN -> [SKIP][258] ([i915#2437])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-glk8/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-dg2:          NOTRUN -> [SKIP][259] ([i915#2437] / [i915#9412])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@gen12-group-concurrent-oa-buffer-read:
    - shard-rkl:          [PASS][260] -> [FAIL][261] ([i915#10538])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-rkl-1/igt@perf@gen12-group-concurrent-oa-buffer-read.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-7/igt@perf@gen12-group-concurrent-oa-buffer-read.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-rkl:          NOTRUN -> [SKIP][262] ([i915#2435])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@perf@per-context-mode-unprivileged.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [PASS][263] -> [FAIL][264] ([i915#4349]) +4 other tests fail
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-rkl:          NOTRUN -> [SKIP][265] ([i915#8516])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@perf_pmu@rc6-all-gts.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-rkl:          NOTRUN -> [SKIP][266] ([i915#9917])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@sriov_basic@enable-vfs-autoprobe-on.html

  * igt@syncobj_wait@invalid-wait-zero-handles:
    - shard-glk:          NOTRUN -> [FAIL][267] ([i915#9781])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-glk8/igt@syncobj_wait@invalid-wait-zero-handles.html

  
#### Possible fixes ####

  * igt@fbdev@nullptr:
    - shard-dg2:          [SKIP][268] ([i915#2582]) -> [PASS][269] +1 other test pass
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@fbdev@nullptr.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@fbdev@nullptr.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [INCOMPLETE][270] ([i915#7297]) -> [PASS][271]
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-10/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-6/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-tglu:         [FAIL][272] ([i915#12027]) -> [PASS][273]
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-tglu-9/igt@gem_ctx_engines@invalid-engines.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-9/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [FAIL][274] ([i915#5784]) -> [PASS][275]
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg1-14/igt@gem_eio@reset-stress.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-19/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-rkl:          [FAIL][276] ([i915#2842]) -> [PASS][277]
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-rkl-5/igt@gem_exec_fair@basic-none@vecs0.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg1:          [ABORT][278] ([i915#9820]) -> [PASS][279]
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg1-16/igt@i915_module_load@reload-with-fault-injection.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg2:          [ABORT][280] ([i915#9820]) -> [PASS][281]
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [ABORT][282] ([i915#12216]) -> [PASS][283] +1 other test pass
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-mtlp-3/igt@i915_selftest@live@workarounds.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-3/igt@i915_selftest@live@workarounds.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [INCOMPLETE][284] ([i915#4817]) -> [PASS][285]
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_cursor_crc@cursor-sliding-64x21:
    - shard-dg2:          [SKIP][286] ([i915#9197]) -> [PASS][287] +47 other tests pass
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-64x21.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@kms_cursor_crc@cursor-sliding-64x21.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][288] ([i915#2346]) -> [PASS][289]
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-dg2:          [SKIP][290] ([i915#1849]) -> [PASS][291]
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_fbcon_fbt@fbc.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-rkl:          [FAIL][292] ([i915#2122]) -> [PASS][293]
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a2:
    - shard-rkl:          [FAIL][294] ([i915#11961]) -> [PASS][295] +1 other test pass
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a2.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-hdmi-a4:
    - shard-dg1:          [FAIL][296] ([i915#2122]) -> [PASS][297] +4 other tests pass
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg1-14/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-hdmi-a4.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-16/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-hdmi-a4.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a2:
    - shard-glk:          [INCOMPLETE][298] ([i915#4839]) -> [PASS][299] +2 other tests pass
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-glk3/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-glk1/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-mtlp:         [FAIL][300] ([i915#11989] / [i915#2122]) -> [PASS][301]
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-mtlp-6/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-8/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
    - shard-mtlp:         [FAIL][302] ([i915#2122]) -> [PASS][303]
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-mtlp-6/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-8/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1:
    - shard-glk:          [FAIL][304] ([i915#2122]) -> [PASS][305] +6 other tests pass
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-glk2/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-glk5/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@b-vga1:
    - shard-snb:          [FAIL][306] ([i915#2122]) -> [PASS][307] +3 other tests pass
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-snb6/igt@kms_flip@wf_vblank-ts-check-interruptible@b-vga1.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-snb1/igt@kms_flip@wf_vblank-ts-check-interruptible@b-vga1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1:
    - shard-tglu:         [FAIL][308] ([i915#2122]) -> [PASS][309] +6 other tests pass
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-tglu-6/igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-5/igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-upscaling:
    - shard-dg2:          [SKIP][310] ([i915#3555]) -> [PASS][311] +2 other tests pass
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-upscaling.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-dg2:          [SKIP][312] ([i915#5354]) -> [PASS][313] +20 other tests pass
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_plane@plane-panning-top-left:
    - shard-dg2:          [SKIP][314] ([i915#8825]) -> [PASS][315]
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_plane@plane-panning-top-left.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-5/igt@kms_plane@plane-panning-top-left.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format:
    - shard-dg2:          [SKIP][316] ([i915#8152] / [i915#9423]) -> [PASS][317]
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-c:
    - shard-dg2:          [SKIP][318] ([i915#12247]) -> [PASS][319] +11 other tests pass
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-c.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-c.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d:
    - shard-dg2:          [SKIP][320] ([i915#8152]) -> [PASS][321]
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling:
    - shard-dg2:          [SKIP][322] ([i915#12247] / [i915#8152] / [i915#9423]) -> [PASS][323]
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-d:
    - shard-dg2:          [SKIP][324] ([i915#12247] / [i915#8152]) -> [PASS][325] +2 other tests pass
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-d.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:
    - shard-dg2:          [SKIP][326] ([i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][327] +1 other test pass
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html

  * igt@kms_pm_dc@dc5-dpms-negative:
    - shard-glk:          [DMESG-WARN][328] ([i915#118]) -> [PASS][329]
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-glk9/igt@kms_pm_dc@dc5-dpms-negative.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-glk5/igt@kms_pm_dc@dc5-dpms-negative.html
    - shard-dg2:          [SKIP][330] ([i915#9293]) -> [PASS][331]
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_pm_dc@dc5-dpms-negative.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_pm_dc@dc5-dpms-negative.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-rkl:          [SKIP][332] ([i915#9519]) -> [PASS][333]
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_properties@plane-properties-legacy:
    - shard-dg2:          [SKIP][334] ([i915#11521]) -> [PASS][335]
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_properties@plane-properties-legacy.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@kms_properties@plane-properties-legacy.html

  * igt@kms_setmode@basic:
    - shard-tglu:         [FAIL][336] -> [PASS][337] +2 other tests pass
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-tglu-9/igt@kms_setmode@basic.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-9/igt@kms_setmode@basic.html

  * igt@kms_setmode@basic@pipe-b-edp-1:
    - shard-mtlp:         [FAIL][338] ([i915#5465]) -> [PASS][339] +2 other tests pass
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-mtlp-1/igt@kms_setmode@basic@pipe-b-edp-1.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-4/igt@kms_setmode@basic@pipe-b-edp-1.html

  
#### Warnings ####

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-dg2:          [SKIP][340] ([i915#9197]) -> [SKIP][341] ([i915#7091])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-5/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_selftest@mock:
    - shard-dg1:          [DMESG-WARN][342] ([i915#9311]) -> [DMESG-WARN][343] ([i915#1982] / [i915#9311])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg1-13/igt@i915_selftest@mock.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@i915_selftest@mock.html

  * igt@kms_async_flips@invalid-async-flip:
    - shard-dg2:          [SKIP][344] ([i915#9197]) -> [SKIP][345] ([i915#6228])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_async_flips@invalid-async-flip.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-270:
    - shard-dg2:          [SKIP][346] -> [SKIP][347] ([i915#9197])
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
    - shard-dg2:          [SKIP][348] ([i915#9197]) -> [SKIP][349] +4 other tests skip
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-dg2:          [SKIP][350] ([i915#5190] / [i915#9197]) -> [SKIP][351] ([i915#4538] / [i915#5190]) +8 other tests skip
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
    - shard-dg2:          [SKIP][352] ([i915#4538] / [i915#5190]) -> [SKIP][353] ([i915#5190] / [i915#9197]) +2 other tests skip
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:
    - shard-dg2:          [SKIP][354] ([i915#9197]) -> [SKIP][355] ([i915#10307] / [i915#6095]) +11 other tests skip
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc:
    - shard-dg2:          [SKIP][356] ([i915#10307] / [i915#6095]) -> [SKIP][357] ([i915#9197]) +2 other tests skip
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_content_protection@atomic:
    - shard-dg2:          [SKIP][358] ([i915#9197]) -> [SKIP][359] ([i915#7118] / [i915#9424])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_content_protection@atomic.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          [SKIP][360] ([i915#3299]) -> [SKIP][361] ([i915#9197])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_content_protection@dp-mst-lic-type-1.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-dg2:          [SKIP][362] ([i915#9197]) -> [SKIP][363] ([i915#3299])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_content_protection@dp-mst-type-1.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-5/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          [SKIP][364] ([i915#9197]) -> [SKIP][365] ([i915#7118])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_content_protection@srm.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent:
    - shard-dg2:          [FAIL][366] ([i915#1339] / [i915#7173]) -> [SKIP][367] ([i915#7118] / [i915#9424])
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-10/igt@kms_content_protection@uevent.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-11/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-dg2:          [SKIP][368] ([i915#9197]) -> [SKIP][369] ([i915#3555]) +5 other tests skip
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-5/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
    - shard-dg2:          [SKIP][370] ([i915#9197]) -> [SKIP][371] ([i915#5354]) +4 other tests skip
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg2:          [SKIP][372] ([i915#9197]) -> [SKIP][373] ([i915#4103] / [i915#4213])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-dg2:          [SKIP][374] ([i915#9197]) -> [SKIP][375] ([i915#8588])
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_display_modes@mst-extended-mode-negative.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-10/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          [SKIP][376] ([i915#9197]) -> [SKIP][377] ([i915#8812])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-wc.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          [SKIP][378] ([i915#9197]) -> [SKIP][379] ([i915#3840] / [i915#9688])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-dg2:          [SKIP][380] ([i915#9197]) -> [SKIP][381] ([i915#3555] / [i915#3840])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_dsc@dsc-with-bpc.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-dg2:          [SKIP][382] ([i915#3555] / [i915#3840]) -> [SKIP][383] ([i915#9197])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_dsc@dsc-with-output-formats.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
    - shard-dg2:          [SKIP][384] ([i915#2672] / [i915#3555]) -> [SKIP][385] ([i915#3555])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
    - shard-dg2:          [SKIP][386] ([i915#3555]) -> [SKIP][387] ([i915#2672] / [i915#3555]) +2 other tests skip
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:
    - shard-dg2:          [SKIP][388] ([i915#3555] / [i915#5190]) -> [SKIP][389] ([i915#2672] / [i915#3555] / [i915#5190])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
    - shard-dg2:          [SKIP][390] ([i915#5354]) -> [FAIL][391] ([i915#6880])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][392] ([i915#5354]) -> [SKIP][393] ([i915#8708]) +15 other tests skip
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-dg2:          [SKIP][394] ([i915#5354]) -> [SKIP][395] ([i915#3458]) +11 other tests skip
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2:          [SKIP][396] ([i915#8708]) -> [SKIP][397] ([i915#5354]) +5 other tests skip
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:
    - shard-dg2:          [SKIP][398] ([i915#5354]) -> [SKIP][399] ([i915#10433] / [i915#3458])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-dg2:          [SKIP][400] ([i915#5354]) -> [SKIP][401] ([i915#10055])
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-dg2:          [SKIP][402] ([i915#4342] / [i915#5354]) -> [SKIP][403] ([i915#9766])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:
    - shard-dg2:          [SKIP][404] ([i915#3458]) -> [SKIP][405] ([i915#5354]) +1 other test skip
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          [SKIP][406] ([i915#3458]) -> [SKIP][407] ([i915#10433] / [i915#3458]) +1 other test skip
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-slowdraw:
    - shard-dg2:          [SKIP][408] ([i915#10433] / [i915#3458]) -> [SKIP][409] ([i915#3458]) +2 other tests skip
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-slowdraw.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-slowdraw.html

  * igt@kms_hdr@bpc-switch:
    - shard-dg2:          [SKIP][410] ([i915#3555] / [i915#8228]) -> [SKIP][411] ([i915#9197])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_hdr@bpc-switch.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          [SKIP][412] ([i915#9197]) -> [SKIP][413] ([i915#3555] / [i915#8228]) +1 other test skip
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_hdr@static-toggle-suspend.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_panel_fitting@legacy:
    - shard-dg2:          [SKIP][414] ([i915#9197]) -> [SKIP][415] ([i915#6301])
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_panel_fitting@legacy.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-dg2:          [SKIP][416] ([i915#3555] / [i915#8821]) -> [SKIP][417] ([i915#9197])
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_plane_lowres@tiling-yf.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling:
    - shard-dg2:          [SKIP][418] ([i915#12247] / [i915#8152] / [i915#9423]) -> [SKIP][419] ([i915#12247] / [i915#9423])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d:
    - shard-dg2:          [SKIP][420] ([i915#12247] / [i915#8152]) -> [SKIP][421] ([i915#12247]) +2 other tests skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
    - shard-dg2:          [SKIP][422] ([i915#12247] / [i915#3555] / [i915#8152] / [i915#9423]) -> [SKIP][423] ([i915#12247] / [i915#3555] / [i915#9423])
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
    - shard-dg2:          [SKIP][424] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) -> [SKIP][425] ([i915#12247] / [i915#6953] / [i915#9423])
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html

  * igt@kms_rotation_crc@sprite-rotation-90:
    - shard-dg2:          [SKIP][426] ([i915#9197]) -> [SKIP][427] ([i915#11131]) +1 other test skip
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_rotation_crc@sprite-rotation-90.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@kms_rotation_crc@sprite-rotation-90.html

  * igt@kms_setmode@basic:
    - shard-dg1:          [FAIL][428] ([i915#5465]) -> [FAIL][429] ([i915#12317] / [i915#5465])
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg1-18/igt@kms_setmode@basic.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-19/igt@kms_setmode@basic.html
    - shard-dg2:          [SKIP][430] ([i915#3555]) -> [FAIL][431] ([i915#5465])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_setmode@basic.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_setmode@basic.html

  * igt@kms_setmode@basic@pipe-a-hdmi-a-4:
    - shard-dg1:          [FAIL][432] ([i915#5465]) -> [FAIL][433] ([i915#12317])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg1-18/igt@kms_setmode@basic@pipe-a-hdmi-a-4.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-19/igt@kms_setmode@basic@pipe-a-hdmi-a-4.html

  * igt@kms_vblank@ts-continuation-suspend:
    - shard-glk:          [INCOMPLETE][434] -> [INCOMPLETE][435] ([i915#12276]) +1 other test incomplete
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-glk4/igt@kms_vblank@ts-continuation-suspend.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-glk8/igt@kms_vblank@ts-continuation-suspend.html

  * igt@perf@non-zero-reason:
    - shard-dg2:          [FAIL][436] ([i915#7484]) -> [FAIL][437] ([i915#9100]) +1 other test fail
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-5/igt@perf@non-zero-reason.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@perf@non-zero-reason.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the d

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/index.html

--===============1113094680708416912==
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
<tr><td><b>Series:</b></td><td>drm/i915: Rename functions in the docs to match code changes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/139361/">https://patchwork.freedesktop.org/series/139361/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15469_full -&gt; Patchwork_139361v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_139361v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_139361v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 8)</h2>
<p>Missing    (2): shard-dg2-set2 shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_139361v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-legacy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-glk1/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-7/igt@kms_joiner@basic-big-joiner.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-10/igt@kms_joiner@basic-force-big-joiner.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-11/igt@kms_joiner@basic-force-big-joiner.html">SKIP</a></li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_joiner@basic-force-big-joiner.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@kms_joiner@invalid-modeset-ultra-joiner.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_joiner@basic-force-big-joiner:<ul>
<li>{shard-tglu-1}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-1/igt@kms_joiner@basic-force-big-joiner.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139361v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@device_reset@cold-reset-bound.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@drm_fdinfo@most-busy-check-all.html">SKIP</a> ([i915#8414]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@drm_fdinfo@most-busy-check-all@bcs0.html">SKIP</a> ([i915#8414]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_read@short-buffer-block:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@drm_read@short-buffer-block.html">SKIP</a> ([i915#9197]) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-6/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> ([i915#6335])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-9/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg1-12/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-14/igt@gem_eio@hibernate.html">ABORT</a> ([i915#7975] / [i915#8213])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-4/igt@gem_eio@hibernate.html">ABORT</a> ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg1-15/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-14/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-6/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@gem_exec_capture@capture-recoverable.html">SKIP</a> ([i915#6344])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-rkl-1/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-7/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@gem_exec_fair@basic-none-vip.html">FAIL</a> ([i915#2842]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-3/igt@gem_exec_fair@basic-pace.html">SKIP</a> ([i915#4473] / [i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-tglu-2/igt@gem_exec_fair@basic-pace-share.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@gem_exec_fair@basic-pace-share.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@gem_exec_fair@basic-sync.html">SKIP</a> ([i915#3539]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a> ([i915#3539] / [i915#4852]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-uc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-14/igt@gem_exec_flush@basic-batch-kernel-default-uc.html">SKIP</a> ([i915#3539] / [i915#4852]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@gem_exec_params@rsvd2-dirt.html">SKIP</a> ([i915#5107])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SKIP</a> ([i915#3281]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-5/igt@gem_exec_reloc@basic-gtt-noreloc.html">SKIP</a> ([i915#3281])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@gem_exec_reloc@basic-gtt-noreloc.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read-noreloc.html">SKIP</a> ([i915#3281]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-common@vcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@gem_exec_schedule@pi-common@vcs0.html">FAIL</a> ([i915#12296]) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@gem_exec_suspend@basic-s4-devices.html">ABORT</a> ([i915#7975] / [i915#8213]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-14/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html">SKIP</a> ([i915#4860])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-11/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> ([i915#4613] / [i915#7582])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> ([i915#4613]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-7/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic-small-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@gem_mmap@basic-small-bo.html">SKIP</a> ([i915#4083])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@gem_mmap@basic-small-bo.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@gem_mmap_gtt@cpuset-big-copy.html">SKIP</a> ([i915#4077]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@gem_partial_pwrite_pread@write.html">SKIP</a> ([i915#3282]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@gem_pread@exhaustion.html">SKIP</a> ([i915#3282]) +2 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-self:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-5/igt@gem_pwrite@basic-self.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@gem_pxp@reject-modify-context-protection-off-1.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-3:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@gem_pxp@reject-modify-context-protection-off-3.html">SKIP</a> ([i915#4270]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-on.html">SKIP</a> ([i915#4270]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-8/igt@gem_render_copy@y-tiled-ccs-to-y-tiled.html">SKIP</a> ([i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs.html">SKIP</a> ([i915#5190] / [i915#8428]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-7/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> ([i915#8411]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-18/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> ([i915#3282]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@gem_tiled_blits@basic.html">SKIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-4/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a> ([i915#3282] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@gem_userptr_blits@unsync-unmap.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@gen9_exec_parse@allowed-all.html">SKIP</a> ([i915#2527]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10131] / [i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">FAIL</a> ([i915#3591]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@i915_pm_rps@thresholds-idle-park.html">SKIP</a> ([i915#11681])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@i915_pm_rps@thresholds-idle-park.html">SKIP</a> ([i915#11681])</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@i915_query@hwconfig_table.html">SKIP</a> ([i915#6245])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-7/igt@i915_query@query-topology-coherent-slice-mask.html">SKIP</a> ([i915#6188])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-9/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> ([i915#3826])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html">SKIP</a> ([i915#8709]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-18/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html">SKIP</a> ([i915#8709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg1-15/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-19/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">FAIL</a> ([i915#5956]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-6/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#5286]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a> ([i915#5286]) +4 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a> ([i915#4538] / [i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">FAIL</a> ([i915#5138]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> ([i915#3638]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-3/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html">SKIP</a> ([i915#5190] / [i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-14/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@kms_big_fb@y-tiled-addfb.html">SKIP</a> ([i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html">SKIP</a> ([i915#4538])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-10/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html">SKIP</a> ([i915#4538] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_busy@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_busy@basic.html">SKIP</a> ([i915#9197]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-13/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-3.html">SKIP</a> ([i915#6095]) +113 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-5/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-3.html">SKIP</a> ([i915#10307] / [i915#6095]) +186 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) +98 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-glk8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> +73 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-9/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-5/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1.html">SKIP</a> ([i915#6095]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> ([i915#6095]) +44 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html">SKIP</a> ([i915#7213]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html">SKIP</a> ([i915#4087]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-frame-dump:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@kms_chamelium_frames@dp-frame-dump.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@vga-frame-dump:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-14/igt@kms_chamelium_frames@vga-frame-dump.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@kms_chamelium_hpd@dp-hpd.html">SKIP</a> ([i915#7828]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-9/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html">SKIP</a> ([i915#7828]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-5/igt@kms_content_protection@content-type-change.html">SKIP</a> ([i915#6944] / [i915#9424])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_content_protection@content-type-change.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-7/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> ([i915#3116] / [i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_content_protection@uevent.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> ([i915#11453]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x32:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-9/igt@kms_cursor_crc@cursor-sliding-32x32.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103]) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html">SKIP</a> ([i915#9809])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-14/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-7/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-9/igt@kms_dsc@dsc-with-output-formats-with-bpc.html">SKIP</a> ([i915#3840] / [i915#9053])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_feature_discovery@display-4x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@kms_flip@2x-blocking-absolute-wf_vblank.html">SKIP</a> ([i915#3637]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@kms_flip@2x-flip-vs-panning-vs-hang.html">SKIP</a> +7 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_flip@2x-flip-vs-panning-vs-hang.html">SKIP</a> ([i915#9934])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-rkl-3/igt@kms_flip@blocking-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-3/igt@kms_flip@blocking-wf_vblank.html">FAIL</a> ([i915#11961] / [i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-rkl-3/igt@kms_flip@blocking-wf_vblank@a-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-3/igt@kms_flip@blocking-wf_vblank@a-hdmi-a2.html">FAIL</a> ([i915#11961])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@b-hdmi-a2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-rkl-3/igt@kms_flip@blocking-wf_vblank@b-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-3/igt@kms_flip@blocking-wf_vblank@b-hdmi-a2.html">FAIL</a> ([i915#12053])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@b-vga1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-snb1/igt@kms_flip@blocking-wf_vblank@b-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-snb1/igt@kms_flip@blocking-wf_vblank@b-vga1.html">FAIL</a> ([i915#2122]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@c-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-tglu-3/igt@kms_flip@blocking-wf_vblank@c-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-3/igt@kms_flip@blocking-wf_vblank@c-hdmi-a1.html">FAIL</a> ([i915#2122]) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_flip@flip-vs-fences-interruptible.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a> ([i915#4839] / [i915#6113])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-8/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a> ([i915#6113]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-glk5/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a2.html">INCOMPLETE</a> ([i915#4839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-15/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4.html">INCOMPLETE</a> ([i915#6113]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-snb5/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-snb6/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html">INCOMPLETE</a> ([i915#4839]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-7/igt@kms_flip@plain-flip-ts-check-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_flip@plain-flip-ts-check-interruptible.html">FAIL</a> ([i915#10826] / [i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html">FAIL</a> ([i915#10826])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1.html">FAIL</a> ([i915#2122]) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-mtlp-7/igt@kms_flip@wf_vblank-ts-check.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-6/igt@kms_flip@wf_vblank-ts-check.html">FAIL</a> ([i915#11989] / [i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-1/igt@kms_flip@wf_vblank-ts-check-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-6/igt@kms_flip@wf_vblank-ts-check-interruptible.html">FAIL</a> ([i915#2122]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-mtlp-2/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-7/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html">FAIL</a> ([i915#2122]) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@kms_flip@wf_vblank-ts-check@d-hdmi-a1.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +4 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-default-mode.html">SKIP</a> ([i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#5354]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +4 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">DMESG-FAIL</a> ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a> ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html">SKIP</a> ([i915#5354]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> ([i915#3458]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-blt.html">SKIP</a> +65 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([i915#3458]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt.html">SKIP</a> ([i915#1825]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> ([i915#1825]) +36 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-modesetfrombusy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html">SKIP</a> ([i915#3023]) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-10/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-6/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#4070] / [i915#4816])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_plane@plane-position-covered.html">SKIP</a> ([i915#8825])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> ([i915#5354] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-15/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a.html">SKIP</a> ([i915#12247]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-c:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-9/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-c.html">SKIP</a> ([i915#12247]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html">SKIP</a> ([i915#12247]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html">SKIP</a> ([i915#12247] / [i915#3558] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#9423])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c.html">SKIP</a> ([i915#12247]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c.html">SKIP</a> ([i915#12247]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> ([i915#9812])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-6/igt@kms_pm_backlight@fade-with-dpms.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> ([i915#9340])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-2/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> ([i915#8430])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([i915#9519]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-6/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_properties@crtc-properties-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_properties@crtc-properties-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_properties@crtc-properties-atomic.html">SKIP</a> ([i915#11521])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf.html">SKIP</a> ([i915#11520]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-glk8/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf.html">SKIP</a> ([i915#11520]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html">SKIP</a> ([i915#11520]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html">SKIP</a> ([i915#11520]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-14/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-plane-onoff:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@kms_psr@fbc-psr-cursor-plane-onoff.html">SKIP</a> ([i915#9732]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-plane-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@kms_psr@fbc-psr2-sprite-plane-move.html">SKIP</a> ([i915#1072] / [i915#9732]) +4 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_psr@fbc-psr2-sprite-plane-move.html">SKIP</a> ([i915#1072] / [i915#9732]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_psr@psr2-cursor-mmap-gtt.html">SKIP</a> ([i915#1072] / [i915#9732]) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> ([i915#9685]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> ([i915#5289])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-10/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> ([i915#11131] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-7/igt@kms_selftest@drm_framebuffer.html">ABORT</a> ([i915#12231]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#5465]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-exclusive-crtc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@kms_setmode@invalid-clone-exclusive-crtc.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@kms_setmode@invalid-clone-exclusive-crtc.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-9/igt@kms_tiled_display@basic-test-pattern.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak.html">FAIL</a> ([i915#9196]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@kms_vrr@negative-basic.html">SKIP</a> ([i915#3555] / [i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-glk8/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-concurrent-oa-buffer-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-rkl-1/igt@perf@gen12-group-concurrent-oa-buffer-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-7/igt@perf@gen12-group-concurrent-oa-buffer-read.html">FAIL</a> ([i915#10538])</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@perf@per-context-mode-unprivileged.html">SKIP</a> ([i915#2435])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</a> ([i915#4349]) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@perf_pmu@rc6-all-gts.html">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-glk8/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a> ([i915#9781])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@fbdev@nullptr.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@fbdev@nullptr.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-10/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#7297]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-6/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-tglu-9/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12027]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-9/igt@gem_ctx_engines@invalid-engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg1-14/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#5784]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-19/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-rkl-5/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg1-16/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-mtlp-3/igt@i915_selftest@live@workarounds.html">ABORT</a> ([i915#12216]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-3/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> ([i915#4817]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-64x21:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-64x21.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@kms_cursor_crc@cursor-sliding-64x21.html">PASS</a> +47 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_fbcon_fbt@fbc.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_fbcon_fbt@fbc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a2.html">FAIL</a> ([i915#11961]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a2.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg1-14/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-hdmi-a4.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-16/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-hdmi-a4.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-glk3/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html">INCOMPLETE</a> ([i915#4839]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-glk1/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-mtlp-6/igt@kms_flip@plain-flip-ts-check-interruptible.html">FAIL</a> ([i915#11989] / [i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-8/igt@kms_flip@plain-flip-ts-check-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-mtlp-6/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-8/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-glk2/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-glk5/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@b-vga1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-snb6/igt@kms_flip@wf_vblank-ts-check-interruptible@b-vga1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-snb1/igt@kms_flip@wf_vblank-ts-check-interruptible@b-vga1.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-tglu-6/igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-5/igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-upscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-upscaling.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html">PASS</a> +20 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-top-left:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_plane@plane-panning-top-left.html">SKIP</a> ([i915#8825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-5/igt@kms_plane@plane-panning-top-left.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html">SKIP</a> ([i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-c.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-c.html">PASS</a> +11 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d.html">SKIP</a> ([i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html">SKIP</a> ([i915#12247] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-d.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html">SKIP</a> ([i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-dpms-negative:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-glk9/igt@kms_pm_dc@dc5-dpms-negative.html">DMESG-WARN</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-glk5/igt@kms_pm_dc@dc5-dpms-negative.html">PASS</a></li>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_pm_dc@dc5-dpms-negative.html">SKIP</a> ([i915#9293]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_pm_dc@dc5-dpms-negative.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_properties@plane-properties-legacy.html">SKIP</a> ([i915#11521]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@kms_properties@plane-properties-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-tglu-9/igt@kms_setmode@basic.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-tglu-9/igt@kms_setmode@basic.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-mtlp-1/igt@kms_setmode@basic@pipe-b-edp-1.html">FAIL</a> ([i915#5465]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-mtlp-4/igt@kms_setmode@basic@pipe-b-edp-1.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-5/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html">SKIP</a> ([i915#7091])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg1-13/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915#9311]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-17/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915#1982] / [i915#9311])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_async_flips@invalid-async-flip.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_async_flips@invalid-async-flip.html">SKIP</a> ([i915#6228])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> ([i915#4538] / [i915#5190]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html">SKIP</a> ([i915#4538] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html">SKIP</a> ([i915#5190] / [i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> ([i915#10307] / [i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> ([i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_content_protection@atomic.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_content_protection@atomic.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#3299]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-5/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_content_protection@srm.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_content_protection@srm.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-10/igt@kms_content_protection@uevent.html">FAIL</a> ([i915#1339] / [i915#7173]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-11/igt@kms_content_protection@uevent.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-5/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html">SKIP</a> ([i915#3555]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> ([i915#5354]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-10/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#3840] / [i915#9688])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a> ([i915#3555] / [i915#3840]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html">SKIP</a> ([i915#3555] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html">FAIL</a> ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([i915#3458]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#8708]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#5354]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html">SKIP</a> ([i915#10433] / [i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html">SKIP</a> ([i915#10055])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> ([i915#4342] / [i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> ([i915#9766])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html">SKIP</a> ([i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html">SKIP</a> ([i915#5354]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> ([i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> ([i915#10433] / [i915#3458]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-slowdraw:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-slowdraw.html">SKIP</a> ([i915#10433] / [i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-slowdraw.html">SKIP</a> ([i915#3458]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_hdr@bpc-switch.html">SKIP</a> ([i915#3555] / [i915#8228]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_hdr@bpc-switch.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_panel_fitting@legacy.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_panel_fitting@legacy.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-3/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> ([i915#3555] / [i915#8821]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-2/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling.html">SKIP</a> ([i915#12247] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling.html">SKIP</a> ([i915#12247] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d.html">SKIP</a> ([i915#12247]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#3555] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#3555] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_rotation_crc@sprite-rotation-90.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@kms_rotation_crc@sprite-rotation-90.html">SKIP</a> ([i915#11131]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg1-18/igt@kms_setmode@basic.html">FAIL</a> ([i915#5465]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-19/igt@kms_setmode@basic.html">FAIL</a> ([i915#12317] / [i915#5465])</li>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-2/igt@kms_setmode@basic.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-4/igt@kms_setmode@basic.html">FAIL</a> ([i915#5465])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg1-18/igt@kms_setmode@basic@pipe-a-hdmi-a-4.html">FAIL</a> ([i915#5465]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg1-19/igt@kms_setmode@basic@pipe-a-hdmi-a-4.html">FAIL</a> ([i915#12317])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-suspend:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-glk4/igt@kms_vblank@ts-continuation-suspend.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-glk8/igt@kms_vblank@ts-continuation-suspend.html">INCOMPLETE</a> ([i915#12276]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15469/shard-dg2-5/igt@perf@non-zero-reason.html">FAIL</a> ([i915#7484]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139361v1/shard-dg2-1/igt@perf@non-zero-reason.html">FAIL</a> ([i915#9100]) +1 other test fail</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the d</p>

</body>
</html>

--===============1113094680708416912==--
